'use strict';

define('composer/customField', [], function() {
  const CustomField = {};

  CustomField.init = function() {
    // Функция вызывается при инициализации композера
    console.log('Custom topic field initialized');
  };

  // Добавляем обработчик для получения значения поля
  CustomField.getData = function() {
    const value = document.getElementById('custom_topic_field').value;
    return {
      custom_topic_field: value
    };
  };

  return CustomField;
});