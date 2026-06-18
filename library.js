'use strict';

const meta = require.main.require('./src/meta');

const controllers = require('./lib/controllers');

const library = module.exports;

library.init = async function (params) {
	const { router, middleware } = params;
	const routeHelpers = require.main.require('./src/routes/helpers');
	routeHelpers.setupAdminPageRoute(router, '/admin/plugins/persona', [], controllers.renderAdminPage);

	routeHelpers.setupPageRoute(router, '/user/:userslug/theme', [
		middleware.exposeUid,
		middleware.ensureLoggedIn,
		middleware.canViewUsers,
		middleware.checkAccountPermissions,
	], controllers.renderThemeSettings);
};

library.addAdminNavigation = async function (header) {
	header.plugins.push({
		route: '/plugins/persona',
		icon: 'fa-paint-brush',
		name: 'Persona Theme',
	});
	return header;
};

library.addProfileItem = async (data) => {
	data.links.push({
		id: 'theme',
		route: 'theme',
		icon: 'fa-paint-brush',
		name: '[[themes/persona:settings.title]]',
		visibility: {
			self: true,
			other: false,
			moderator: false,
			globalMod: false,
			admin: false,
		},
	});

	return data;
};

library.defineWidgetAreas = async function (areas) {
	const locations = ['header', 'sidebar', 'footer'];
	const templates = [
		'categories.tpl', 'category.tpl', 'topic.tpl', 'users.tpl',
		'unread.tpl', 'recent.tpl', 'popular.tpl', 'top.tpl', 'tags.tpl', 'tag.tpl',
		'login.tpl', 'register.tpl', 'world.tpl',
	];
	function capitalizeFirst(str) {
		return str.charAt(0).toUpperCase() + str.slice(1);
	}
	templates.forEach((template) => {
		locations.forEach((location) => {
			areas.push({
				name: `${capitalizeFirst(template.split('.')[0])} ${capitalizeFirst(location)}`,
				template: template,
				location: location,
			});
		});
	});

	areas = areas.concat([
		{
			name: 'Main post header',
			template: 'topic.tpl',
			location: 'mainpost-header',
		},
		{
			name: 'Main post footer',
			template: 'topic.tpl',
			location: 'mainpost-footer',
		},
		{
			name: 'Account Header',
			template: 'account/profile.tpl',
			location: 'header',
		},
	]);
	return areas;
};

library.getThemeConfig = async function (config) {
	const settings = await meta.settings.get('persona');

	config.hideSubCategories = settings.hideSubCategories === 'on';
	config.hideCategoryLastPost = settings.hideCategoryLastPost === 'on';
	config.enableQuickReply = settings.enableQuickReply === 'on';

	return config;
};

library.modifyCategory = function (config) {
  const { category, data } = config;

  return {
    category: {
      ...category,
      handle: data.url,
      slug: `${category.cid}/${data.url}`,
    }
  }
}

library.addCustomField = async function(hookData) {
  // Добавляем HTML-код поля в форму
  hookData.templateData.customField = {
    name: 'custom_topic_field',
    label: 'Custom Slug for topic url',
    placeholder: 'Enter value',
    required: false
  };
  return hookData;
};

library.saveCustomField = async function(hookData) {
  const { topic, data } = hookData;

  // Получаем значение из данных формы
  const customValue = data.custom_topic_field || '';

  // Сохраняем как дополнительное поле темы
  if (customValue) {
    await topic.setTopicField('custom_topic_field', customValue);
  }

  return hookData;
};

library.getCustomField = async function(hookData) {
  const { topics } = hookData;

  if (topics && topics.length) {
    for (const topic of topics) {
      // Загружаем сохраненное значение
      const customValue = await topic.getTopicField('custom_topic_field');
      if (customValue) {
        topic.custom_topic_field = customValue;
      }
    }
  }

  return hookData;
};