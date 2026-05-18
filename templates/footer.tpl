</div><!-- /.container#content -->
</main>
{{{ if !isSpider }}}
<div component="toaster/tray" class="alert-window">
  <div id="reconnect-alert" class="alert alert-dismissible alert-warning fade hide" component="toaster/toast">
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-hidden="true"></button>
    <p class="mb-0">[[global:reconnecting-message, {config.siteTitle}]]</p>
  </div>
</div>
{{{ end }}}
<!-- Footer -->
<footer class="footer">
    <div class="footer-main-wrapper">
        <div class="footer-top-links-group">
            <div class="footer-links-wrapper">
                <div class="links-list-wrapper list-width-left-col">
                    <h4 class="links-header">[[global:Menu]]</h4>
                    <ul class="links-list-wrapper">
                        <li><a class="footer-main__link" target="_blank" href="[[links:Documentation]]">[[global:Documentation]]</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:SDK]]">[[global:SDK]]</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:Chatbots]]">[[global:Chatbots]]</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:Integrations]]">[[global:Integrations]]</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:Releases]]">[[global:Releases]]</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:Articles]]">[[global:Articles]]</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:Blog]]">[[global:Blog]]</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:News]]">[[global:News]]</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:NewsArchive]]">[[global:NewsArchive]]</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:FAQ]]">[[global:FAQ]]</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:Partnership]]">[[global:Partnership]]</a>
                        </li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:Tariffs]]">[[global:Tariffs]]</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:LinkBuilder]]">[[global:LinkBuilder]]</a>
                        </li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:AboutUs]]">[[global:AboutUs]]</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:Contacts]]">[[global:Contacts]]</a></li>
                        {{{ if (config.userLang == "ru") }}}
                            <li><a class="footer-main__link" target="_blank" href="/vacancies">Работа у нас</a></li>
                        {{{ end }}}
                        <li><a class="footer-main__link" target="_blank" href="https://status.green-api.com/">GREEN-API status</a></li>
                    </ul>
                </div>
                <div class="links-list-wrapper list-width-left-col">
                    <h4 class="links-header">[[global:Integrations]]</h4>
                    <ul class="links-list-wrapper">
                        <li><a class="footer-main__link" target="_blank" href="[[links:Make]]">Make</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:MSExcel]]">MS Excel</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:GoHighLevel]]">GoHighLevel</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:Rocket.chat]]">Rocket.chat</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:Zapier]]">Zapier</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:Zabbix]]">Zabbix</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:Slack]]">Slack</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:n8n]]">n8n</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:AllIntegrations]]">[[global:AllIntegrations]]</a></li>
                    </ul>
                </div>
                <div class="links-list-wrapper list-width-left-col">
                    <h4 class="links-header">[[global:SDK]]</h4>
                    <ul class="links-list-wrapper">
                        <li><a class="footer-main__link" target="_blank" href="[[links:PythonSDK]]">Python</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:NodeJSSDK]]">Node.js</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:HTML]]">HTML</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:1cSDK]]">[[global:1c]]</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:PHP]]">PHP</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:Java]]">Java</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:GoSDK]]">Go</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:C++]]">C++</a></li>
                    </ul>
                </div>
                <div class="links-list-wrapper list-width-left-col">
                    <h4 class="links-header">[[global:Chatbots]]</h4>
                    <ul class="links-list-wrapper">
                        <li><a class="footer-main__link" target="_blank" href="[[links:Python]]">Python</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:Java]]">Java</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:Go]]">Go</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:1c]]">[[global:1c]]</a>
                        </li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:Node.js]]">Node.js</a></li>
                    </ul>
                </div>
                <div class="links-list-wrapper legal-notes legal-notes-left-col">
                    <h4 class="links-header">[[global:LegalNotes]]</h4>
                    <ul class="links-list-wrapper">
                        <li><a class="footer-main__link" target="_blank" href="[[links:UserAgreement]]">[[global:UserAgreement]]</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:LicenseAgreement]]">[[global:LicenseAgreement]]</a></li>
                        {{{ if (config.userLang == "ru") }}}
                            <li><a class="footer-main__link" target="_blank" href="[[links:RecurringPaymentAgreement]]">[[global:RecurringPaymentAgreement]]</a></li>
                        {{{ end }}}
                        <li style="line-height: 1.8"><a class="footer-main__link" target="_blank"
                                                        href="[[links:PrivacyPolicy]]">[[global:PrivacyPolicy]]</a></li>
                        {{{ if (config.userLang == "ru") }}}
                            <li><a class="footer-main__link" target="_blank" href="/reestr/description">[[global:ReestrDescription]]</a></li>
                        {{{ end }}}
                        <li><a class="footer-main__link" target="_blank" href="https://github.com/green-api/logo">GREEN-API:
                            Logo</a></li>
                    </ul>
                    {{{ if ((config.userLang == "ru" ) || (config.userLang == "en")) }}}
                        <h4 class="links-header">[[global:Bitrix24]]</h4>
                        <ul class="links-list-wrapper">
                            <li><a class="footer-main__link" target="_blank" href="[[links:UserAgreementBitrix24]]">[[global:UserAgreementBitrix24]]</a></li>
                            <li><a class="footer-main__link" target="_blank" href="[[links:PrivacyPolicyBitrix24]]">[[global:PrivacyPolicyBitrix24]]</a></li>
                        </ul>
                    {{{ end }}}
                </div>
                <div class="links-list-wrapper products">
                    <h4 class="links-header">[[global:Products]]</h4>
                    <ul class="links-list-wrapper">
                        <li><a class="footer-main__link" target="_blank" href="[[links:GREEN-API]]">GREEN-API</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:GREEN-API-WABA]]">GREEN-API: WABA</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:GREEN-API-GPT]]">GREEN-API: GPT</a></li>
                        {{{ if (config.userLang == "ru") }}}
                            <li><a class="footer-main__link" target="_blank" href="/max">GREEN-API: MAX</a></li>
                            <li><a class="footer-main__link" target="_blank" href="/max-bot-api">GREEN-API: MAX BOT API</a></li>
                        {{{ end }}}
                        <li><a class="footer-main__link" target="_blank" href="/marketing">GREEN-API: Marketing </a></li>
                        <li><a class="footer-main__link" target="_blank" href="/telegram">GREEN-API: Telegram 🔥</a></li>
                    </ul>
                </div>
            </div>
            <div style="display: flex; gap: 20px; width: 100%">
                <div class="links-list-wrapper legal-notes legal-notes-right-col">
                    <h4 class="links-header">[[global:LegalNotes]]</h4>
                    <ul class="links-list-wrapper">
                        <li><a class="footer-main__link" target="_blank" href="[[links:UserAgreement]]">[[global:UserAgreement]]</a></li>
                        <li><a class="footer-main__link" target="_blank" href="[[links:LicenseAgreement]]">[[global:LicenseAgreement]]</a></li>
                        {{{ if (config.userLang == "ru") }}}
                           <li><a class="footer-main__link" target="_blank" href="[[links:RecurringPaymentAgreement]]">[[global:RecurringPaymentAgreement]]</a></li>
                        {{{ end }}}
                        <li style="line-height: 1.8"><a class="footer-main__link" target="_blank" href="[[links:PrivacyPolicy]]">[[global:PrivacyPolicy]]</a></li>
                        {{{ if (config.userLang == "ru") }}}
                           <li><a class="footer-main__link" target="_blank" href="/reestr/description">[[global:ReestrDescription]]</a></li>
                        {{{ end }}}
                        <li><a class="footer-main__link" target="_blank" href="https://github.com/green-api/logo">GREEN-API: Logo</a></li>
                    </ul>
                    {{{ if ((config.userLang == "ru" ) || (config.userLang == "en")) }}}
                        <h4 class="links-header">[[global:Bitrix24]]</h4>
                        <ul class="links-list-wrapper">
                            <li><a class="footer-main__link" target="_blank" href="[[links:UserAgreementBitrix24]]">[[global:UserAgreementBitrix24]]</a></li>
                            <li><a class="footer-main__link" target="_blank" href="[[links:PrivacyPolicyBitrix24]]">[[global:PrivacyPolicyBitrix24]]</a></li>
                        </ul>
                    {{{ end }}}
                </div>
                <div class="right-col-wrapper">
                    <div class="lang-selector-wrapper">
                        <div class="links-list-wrapper tech-support">
                            <h4 class="links-header">[[global:Support]]</h4>
                            <ul class="links-list-wrapper">
                                <li><a class="footer-main__link group-link-item"
                                       href="[[links:Forum]]"
                                       target="_blank" rel="noreferrer">
                                    <img src="/assets/plugins/nodebb-theme-custom/images/icons/github.svg" loading="lazy" alt="github icon" width="25"
                                         height="25"/>
                                    <span>[[global:Forum]]</span>
                                </a></li>
                                <li><a class="footer-main__link group-link-item"
                                       href="[[links:ContactSupport]]"
                                       target="_blank" rel="noreferrer">
                                    <img src="/assets/plugins/nodebb-theme-custom/images/icons/github.svg" loading="lazy" alt="github icon" width="25"
                                         height="25"/>
                                    <span>[[global:ContactSupport]]</span>
                                </a></li>
                                <li><a class="footer-main__link group-link-item" href="[[links:Email]]"
                                       target="_blank" rel="noreferrer">
                                    <img src="/assets/plugins/nodebb-theme-custom/images/icons/email.svg" loading="lazy" alt="email icon" width="25"
                                         height="25"/>
                                    <span>support@green-api.com</span>
                                </a></li>
                                <li><a class="footer-main__link group-link-item" href="[[links:WhatsappSupportChannel]]"
                                       target="_blank" rel="noreferrer">
                                    <img src="/assets/plugins/nodebb-theme-custom/images/icons/whatsapp.svg" loading="lazy" alt="whatsapp icon" width="25"
                                         height="25"/>
                                    <span>[[global:WhatsappSupportChannel]]</span>
                                </a></li>
                                <li><a class="footer-main__link group-link-item"
                                       href="[[links:TelegramSupportChannel]]"
                                       target="_blank" rel="noreferrer">
                                    <img src="/assets/plugins/nodebb-theme-custom/images/icons/telegram.svg" loading="lazy" alt="telegram icon" width="25"
                                         height="25"/>
                                    <span>[[global:TelegramSupportChannel]]</span>
                                </a></li>
                                {{{ if (config.userLang == "ru") }}}
                                    <li>
                                        <a class="footer-main__link group-link-item" href="https://max.ru/id5047259512_bot" target="_blank" rel="noreferrer">
                                            <img src="/assets/plugins/nodebb-theme-custom/images/icons/max.svg" loading="lazy" alt="max icon" width="25" height="25"/>
                                            <span>Канал поддержки MAX</span>
                                        </a>
                                    </li>
                                {{{ end }}}
                            </ul>
                        </div>
                        <div class="mobile-apps">
                            {{{ if (config.userLang == "ru") }}}
                            <div class="mobile-apps-list">
                                <a href="https://play.google.com/store/apps/details?id=com.greenapi.console"
                                   target="_blank"
                                   rel="noreferrer">
                                    <img width="135" src="/assets/plugins/nodebb-theme-custom/images/mobile-apps/google-play.svg"
                                         alt="googlePlay"/>
                                </a>
                                <a href="https://www.rustore.ru/catalog/app/com.greenapi.console" target="_blank"
                                   rel="noreferrer">
                                    <img width="135" src="/assets/plugins/nodebb-theme-custom/images/mobile-apps/rustore.svg"
                                         alt="googlePlay"/>
                                </a>
                                <a
                                        href="https://green-api.com/"
                                        class="footer-main__nav-link footer-main__group-links-item"
                                >
                                    <img
                                            width="135"
                                            alt="Powered by GREEN-API"
                                            src="/assets/plugins/nodebb-theme-custom/images/powered-green-api.png"
                                    />
                                </a>
                            </div>
                            {{{ else }}}
                            <div class="mobile-apps-list">
                            <a href="https://play.google.com/store/apps/details?id=com.greenapi.console"
                                                               target="_blank"
                                                               rel="noreferrer">
                                                                <img width="135" src="/assets/plugins/nodebb-theme-custom/images/mobile-apps/google-play-en.svg"
                                                                     alt="googlePlay"/>
                                                            </a>
                                                            <a
                                                                    href="https://green-api.com/en"
                                                                    class="footer-main__nav-link footer-main__group-links-item"
                                                            >
                                                                <img
                                                                        width="135"
                                                                        alt="Powered by GREEN-API"
                                                                        src="/assets/plugins/nodebb-theme-custom/images/powered-green-api.png"
                                                                />
                                                            </a>
                            </div>
                            {{{ end }}}
                        </div>
                    </div>
                    <div class="astana-hub-wrapper astana-hub-tech-support">
                        <img src="/assets/plugins/nodebb-theme-custom/images/astana-hub.svg" width="182" alt="astana hub logo"/>
                        <div style="line-height: 1.8">[[global:AstanaHub]]</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-company-info-wrapper">
            <div class="mobile-apps-company-info">
                <div class="mobile-apps-list">
                    <a href="https://play.google.com/store/apps/details?id=com.greenapi.console" target="_blank"
                       rel="noreferrer">
                        <img width="135" src="/assets/plugins/nodebb-theme-custom/images/mobile-apps/google-play.svg"
                             alt="googlePlay"/>
                    </a>
                    <a href="https://www.rustore.ru/catalog/app/com.greenapi.console" target="_blank" rel="noreferrer">
                        <img width="135" src="/assets/plugins/nodebb-theme-custom/images/mobile-apps/rustore.svg" alt="googlePlay"/>
                    </a>
                    <a
                            href="https://green-api.com/"
                            class="footer-main__nav-link footer-main__group-links-item"
                    >
                        <img
                                width="135"
                                alt="Powered by GREEN-API"
                                src="/assets/plugins/nodebb-theme-custom/images/powered-green-api.png"
                        />
                    </a>
                </div>
            </div>
            <div class="footer-company-info">
                <div>[[global:LLC]]</div>
                <div>[[global:TIN]]</div>
                <div>
                    [[global:Telephone]]: <a class="footer-telephone footer-main__link" href="[[links:Telephone]]">+7-999-333-12-23</a>
                </div>
                <div style="line-height: 1.8">
                    [[global:LLC_Address]]
                </div>
            </div>
            <div class="astana-hub-wrapper astana-hub-company-info">
                <img src="/assets/plugins/nodebb-theme-custom/images/astana-hub.svg" width="182" alt="astana hub logo"/>
                <div style="line-height: 1.8">[[global:AstanaHub]]</div>
            </div>
            <div class="footer-social-list social-list-company-info">
                <div class="footer-social__item" title="WhatsApp">
                    <a
                            class="footer-social__item"
                            href="https://whatsapp.com/channel/0029VaHUM5TBA1f7cG29nO1C"
                            target="_blank"
                            rel="noreferrer"
                    >
                        <span class="icon">
                          <img width="30" height="30" src="/assets/plugins/nodebb-theme-custom/images/icons/whatsappWhite.svg" alt="WhatsApp"/>
                        </span>
                    </a>
                </div>
                <div class="footer-social__item" title="Telegram">
                    <a
                            class="footer-social__item"
                            href="https://t.me/green_api"
                            target="_blank"
                            rel="noreferrer"
                    >
                        <span class="icon">
                          <img width="30" height="30" src="/assets/plugins/nodebb-theme-custom/images/icons/telegramWhite.svg" alt="Telegram"/>
                        </span>
                    </a>
                </div>
                <div class="footer-social__item" title="YouTube Канал">
                    <a
                            class="footer-social__item"
                            href="https://www.youtube.com/@green-api"
                            target="_blank"
                            rel="noreferrer"
                    >
                        <span class="icon">
                          <img width="30" height="30" src="/assets/plugins/nodebb-theme-custom/images/icons/youtube.svg" alt="YouTube"/>
                        </span>
                    </a>
                </div>
                <div class="footer-social__item" title="RuTube Канал">
                    <a
                            class="footer-social__item"
                            href="https://rutube.ru/channel/49192924"
                            target="_blank"
                            rel="noreferrer"
                    >
                        <span class="icon">
                          <img width="30" height="30" src="/assets/plugins/nodebb-theme-custom/images/icons/rutube.svg" alt="RuTube"/>
                        </span>
                    </a>
                </div>
                <div class="footer-social__item" title="LinkedIn">
                    <a
                            class="footer-social__item"
                            href="https://www.linkedin.com/company/green-api/posts/"
                            target="_blank"
                            rel="noreferrer"
                    >
                        <span class="icon">
                          <img width="30" height="30" src="/assets/plugins/nodebb-theme-custom/images/icons/linkedin.svg" alt="LinkedIn"/>
                        </span>
                    </a>
                </div>
                <!--        <div class="footer-social__item" title="Instagram">-->
                <!--          <a-->
                <!--                  class="footer-social__item"-->
                <!--                  href="https://www.instagram.com/green_api/"-->
                <!--                  target="_blank"-->
                <!--                  rel="noreferrer"-->
                <!--          >-->
                <!--                        <span class="icon">-->
                <!--                          <img width="30" height="30" src="/assets/plugins/nodebb-theme-custom/images/icons/instagram.svg" alt="Instagram"/>-->
                <!--                        </span>-->
                <!--          </a>-->
                <!--        </div>-->
                <!--        <div class="footer-social__item" title="Facebook">-->
                <!--          <a class="footer-social__item"-->
                <!--             href="https://www.facebook.com/people/GREEN-API/61574272050054/"-->
                <!--             target="_blank"-->
                <!--             rel="noreferrer">-->
                <!--                        <span class="icon">-->
                <!--                          <img width="30" height="30" src="/assets/plugins/nodebb-theme-custom/images/icons/facebook.svg" alt="Facebook"/>-->
                <!--                        </span>-->
                <!--          </a>-->
                <!--        </div>-->
                <div class="footer-social__item" title="Dzen">
                    <a
                            class="footer-social__item"
                            href="https://dzen.ru/id/67d93508575f0a425c77809e"
                            target="_blank"
                            rel="noreferrer"
                    >
                        <span class="icon">
                          <img width="30" height="30" src="/assets/plugins/nodebb-theme-custom/images/icons/dzen.svg" alt="Dzen"/>
                        </span>
                    </a>
                </div>
                <div class="footer-social__item" title="VK">
                    <a
                            class="footer-social__item"
                            href="https://vk.com/green_api"
                            target="_blank"
                            rel="noreferrer"
                    >
                        <span class="icon">
                          <img width="30" height="30" src="/assets/plugins/nodebb-theme-custom/images/icons/vk.svg" alt="VK"/>
                        </span>
                    </a>
                </div>
            </div>
        </div>
        <div class="footer-payments">
            <svg
                    width="153"
                    height="50"
                    viewBox="0 0 153 50"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
            >
                <path
                        fillRule="evenodd"
                        clipRule="evenodd"
                        d="M117.965 29.8625L123.632 14.3394H126.599L132.225 29.8625H128.706L127.679 26.8913H122.427L121.402 29.8625H117.965ZM126.683 24.0077L125.986 21.9901C125.889 21.6795 125.784 21.3477 125.667 20.9923C125.449 20.3222 125.258 19.6402 125.073 18.959C124.612 20.6522 123.993 22.3551 123.422 24.0077H126.683Z"
                        fill="white"
                />
                <path
                        fillRule="evenodd"
                        clipRule="evenodd"
                        d="M51.7937 30.0841C50.6478 30.0841 49.615 29.8845 48.6944 29.4859C45.7984 28.23 44.2444 25.3847 44.2444 22.0573C44.2444 18.6971 45.9762 15.8499 48.8785 14.6273C50.5075 13.9415 52.5348 13.8295 54.2186 14.3618C55.4674 14.7563 56.734 15.4932 57.584 16.579L55.4359 19.0188C54.4346 17.9934 53.3333 17.3998 51.9374 17.3998C49.4947 17.3998 47.825 19.4691 47.825 22.0573C47.825 24.6736 49.6813 26.7138 52.1011 26.7138C53.4838 26.7138 55.0167 25.7907 55.123 24.1634L51.6717 24.1639V21.1692H58.4021C58.4297 21.3319 58.4501 21.554 58.4637 21.8351C58.5373 23.3007 58.5666 24.6081 58.0037 26.0151C56.9241 28.7149 54.4312 30.0841 51.7937 30.0841Z"
                        fill="white"
                />
                <path
                        fillRule="evenodd"
                        clipRule="evenodd"
                        d="M96.6992 29.8625V14.3394H99.8295L106.562 24.234C106.438 23.0759 106.336 21.9214 106.305 20.7481C106.249 18.6175 106.275 16.4718 106.275 14.3394H109.671V29.8625H106.499L99.8444 20.1573C99.9923 21.7021 100.116 23.2072 100.116 24.7626V29.8625H96.6992Z"
                        fill="white"
                />
                <path
                        d="M144.673 29.8625V26.6697H147.087V17.5327H144.673V14.3394H153V17.5327H150.586V26.6697H153V29.8625H144.673Z"
                        fill="white"
                />
                <path
                        d="M132.699 29.8625V14.3394H138.898C139.799 14.3394 140.604 14.5615 141.313 15.0044C142.022 15.4482 142.582 16.051 142.99 16.8119C143.4 17.5732 143.605 18.4419 143.605 19.418C143.605 20.408 143.4 21.303 142.99 22.1012C142.582 22.8994 142.022 23.528 141.313 23.9856C140.604 24.4442 139.799 24.6737 138.898 24.6737H136.199V29.8625H132.699ZM136.158 21.3251H138.428C138.729 21.3251 138.997 21.2472 139.236 21.0923C139.475 20.9366 139.67 20.7186 139.819 20.4375C139.97 20.1573 140.045 19.8388 140.045 19.4844C140.045 19.1143 139.97 18.7968 139.819 18.5313C139.67 18.2645 139.475 18.0571 139.236 17.9101C138.997 17.7622 138.729 17.688 138.428 17.688H136.158V21.3251Z"
                        fill="white"
                />
                <path d="M111.209 25.1176V21.8584H118.247V25.1176H111.209Z" fill="white"/>
                <path
                        d="M84.8079 29.8625V14.3394H94.7922V17.5774H88.2243V20.4158H93.8917V23.5201H88.2243V26.625H95.0172V29.8625H84.8079Z"
                        fill="white"
                />
                <path
                        d="M72.9175 29.8625V14.3394H82.9019V17.5774H76.3339V20.4158H82.0013V23.5201H76.3339V26.625H83.1268V29.8625H72.9175Z"
                        fill="white"
                />
                <path
                        d="M59.8186 29.8625V14.3394H66.3041C67.2319 14.3394 68.0636 14.5537 68.8 14.9832C69.5369 15.4113 70.1202 15.9994 70.5497 16.746C70.9791 17.4926 71.1947 18.3461 71.1947 19.307C71.1947 20.2826 70.9791 21.155 70.5497 21.9237C70.1202 22.6929 69.5364 23.3022 68.8 23.7529C68.7247 23.7994 68.6486 23.8428 68.5713 23.8842L71.767 29.8846L67.7774 29.8625L64.9626 24.4294H63.1534V29.8625H59.8186ZM63.1538 21.4799H65.9971C66.3521 21.4799 66.6626 21.3951 66.9283 21.2251C67.1945 21.055 67.399 20.8218 67.5419 20.5269C67.6856 20.231 67.7566 19.8913 67.7566 19.5065C67.7566 19.1074 67.672 18.7599 67.5015 18.4641C67.3305 18.1682 67.092 17.9359 66.785 17.7654C66.4784 17.5958 66.1132 17.511 65.6906 17.511H63.1534L63.1538 21.4799Z"
                        fill="white"
                />
                <path
                        d="M3.79217 0.00172664C2.84186 0.0229262 1.90429 0.444615 1.21505 1.16402C0.498602 1.90185 0.0564148 2.94662 0.00751745 4.02227C-0.00693916 4.49327 0.00453486 4.96472 0.0011333 5.43572C0.0011333 18.8486 0.000282914 32.2615 0.0011333 45.6748C0.0151647 46.7104 0.352356 47.7316 0.917439 48.5589C1.35369 49.193 1.95447 49.7253 2.66752 49.9212C3.12036 50.0498 3.60468 50.017 4.04603 49.8521C14.3306 46.4403 24.6161 43.0295 34.8998 39.6164C35.7664 39.3196 36.6214 38.9237 37.3357 38.2987C37.8825 37.8208 38.3247 37.1784 38.519 36.4355C38.6347 36.0166 38.6602 35.5755 38.6513 35.1395C38.6504 24.826 38.6517 14.5133 38.6505 4.19971C38.6411 3.14295 38.255 2.09679 37.5896 1.33223C36.9174 0.547382 35.9641 0.061642 34.9832 0.00818217C34.5533 -0.00748707 34.1234 0.00494614 33.6939 0.000798397C23.7427 0.000798397 13.7915 0.000344063 3.84065 0.00172664C3.82407 0.00172664 3.80875 0.00172664 3.79217 0.00172664ZM25.4647 25.5062L19.8122 25.5053V20.6031H30.8349C30.8796 20.8699 30.9132 21.2326 30.9349 21.693C30.9574 22.1525 30.974 22.5954 30.9854 23.0185C30.9961 23.442 31.0021 23.7747 31.0021 24.0167C31.0021 25.6633 30.7282 27.1699 30.1814 28.5373C29.6342 29.906 28.8633 31.0854 27.8696 32.0785C26.8759 33.0703 25.7084 33.8395 24.3686 34.3842C23.0284 34.9289 21.5768 35.2008 20.0133 35.2008C18.1374 35.2008 16.4455 34.8746 14.9378 34.2211C13.4296 33.5676 12.129 32.6472 11.035 31.461C9.94008 30.2747 9.10286 28.8824 8.52204 27.2846C7.94123 25.6873 7.65079 23.9443 7.65079 22.0557C7.65079 20.1681 7.96376 18.4251 8.58838 16.8268C9.21426 15.229 10.0906 13.8377 11.2191 12.651C12.3462 11.4647 13.6864 10.5448 15.2392 9.89132C16.7916 9.23828 18.4945 8.91061 20.3484 8.91061C21.6214 8.91061 22.8328 9.09266 23.9834 9.45535C25.1335 9.81897 26.1833 10.3153 27.1323 10.9439C28.0814 11.5735 28.8693 12.2878 29.4939 13.0869L25.9767 17.0812C25.1722 16.2586 24.3074 15.6106 23.3804 15.1387C22.4535 14.6663 21.4088 14.4308 20.2481 14.4308C19.2871 14.4308 18.3997 14.6179 17.5842 14.993C16.7691 15.3686 16.0544 15.9009 15.4404 16.5913C14.826 17.2807 14.351 18.0923 14.0164 19.0237C13.6809 19.956 13.5138 20.9672 13.5138 22.0557C13.5138 23.1457 13.692 24.1503 14.0496 25.0702C14.4072 25.9901 14.9042 26.7952 15.5407 27.4851C16.1772 28.1746 16.9196 28.7133 17.7683 29.1009C18.6174 29.4885 19.5329 29.6816 20.5159 29.6816C21.2086 29.6816 21.8506 29.5668 22.4416 29.3364C23.0339 29.1069 23.5586 28.7917 24.0174 28.3926C24.4741 27.9935 24.8317 27.5211 25.0885 26.9768C25.3062 26.5164 25.4311 26.0265 25.4647 25.5062Z"
                        fill="white"
                />
            </svg>
            <span class="footer-year">
                GREEN-API © 2015 - <span id="copyright_year">2026</span>
            </span>
            <div class="footer-social-list social-list-payments">
                <div class="footer-social__item" title="WhatsApp">
                    <a
                            class="footer-social__item"
                            href="https://whatsapp.com/channel/0029VaHUM5TBA1f7cG29nO1C"
                            target="_blank"
                            rel="noreferrer"
                    >
                        <span class="icon">
                          <img width="30" height="30" src="/assets/plugins/nodebb-theme-custom/images/icons/whatsappWhite.svg" alt="WhatsApp"/>
                        </span>
                    </a>
                </div>
                <div class="footer-social__item" title="Telegram">
                    <a
                            class="footer-social__item"
                            href="https://t.me/green_api"
                            target="_blank"
                            rel="noreferrer"
                    >
                        <span class="icon">
                          <img width="30" height="30" src="/assets/plugins/nodebb-theme-custom/images/icons/telegramWhite.svg" alt="Telegram"/>
                        </span>
                    </a>
                </div>
                <div class="footer-social__item" title="YouTube Канал">
                    <a
                            class="footer-social__item"
                            href="https://www.youtube.com/@green-api"
                            target="_blank"
                            rel="noreferrer"
                    >
                        <span class="icon">
                          <img width="30" height="30" src="/assets/plugins/nodebb-theme-custom/images/icons/youtube.svg" alt="YouTube"/>
                        </span>
                    </a>
                </div>
                <div class="footer-social__item" title="RuTube Канал">
                    <a
                            class="footer-social__item"
                            href="https://rutube.ru/channel/49192924"
                            target="_blank"
                            rel="noreferrer"
                    >
                        <span class="icon">
                          <img width="30" height="30" src="/assets/plugins/nodebb-theme-custom/images/icons/rutube.svg" alt="RuTube"/>
                        </span>
                    </a>
                </div>
                <div class="footer-social__item" title="LinkedIn">
                    <a
                            class="footer-social__item"
                            href="https://www.linkedin.com/company/green-api/posts/"
                            target="_blank"
                            rel="noreferrer"
                    >
                        <span class="icon">
                          <img width="30" height="30" src="/assets/plugins/nodebb-theme-custom/images/icons/linkedin.svg" alt="LinkedIn"/>
                        </span>
                    </a>
                </div>
                <div class="footer-social__item" title="Instagram">
                    <a
                            class="footer-social__item"
                            href="https://www.instagram.com/green_api/"
                            target="_blank"
                            rel="noreferrer"
                    >
                        <span class="icon">
                          <img width="30" height="30" src="/assets/plugins/nodebb-theme-custom/images/icons/instagram.svg" alt="Instagram"/>
                        </span>
                    </a>
                </div>
                <div class="footer-social__item" title="Dzen">
                    <a
                            class="footer-social__item"
                            href="https://dzen.ru/id/67d93508575f0a425c77809e"
                            target="_blank"
                            rel="noreferrer"
                    >
                        <span class="icon">
                          <img width="30" height="30" src="/assets/plugins/nodebb-theme-custom/images/icons/dzen.svg" alt="Dzen"/>
                        </span>
                    </a>
                </div>
                <div class="footer-social__item" title="VK">
                    <a
                            class="footer-social__item"
                            href="https://vk.com/green_api"
                            target="_blank"
                            rel="noreferrer"
                    >
                        <span class="icon">
                          <img width="30" height="30" src="/assets/plugins/nodebb-theme-custom/images/icons/vk.svg" alt="VK"/>
                        </span>
                    </a>
                </div>
            </div>
            <div class="payments-list">
                <img src="/assets/plugins/nodebb-theme-custom/images/payments/mir.svg" width="54" height="20" alt="MIR">
                <img src="/assets/plugins/nodebb-theme-custom/images/payments/mir-accept.svg" width="36" height="20" alt="MIRAccept">
                <img src="/assets/plugins/nodebb-theme-custom/images/payments/visa.svg" width="46" height="20" alt="VISA">
                <img src="/assets/plugins/nodebb-theme-custom/images/payments/verified-by-visa.svg" width="34" height="20" alt="verified by visa">
                <img src="/assets/plugins/nodebb-theme-custom/images/payments/master-card.svg" width="29" height="30" alt="mastercard">
                <img src="/assets/plugins/nodebb-theme-custom/images/payments/master-card-secure.svg" width="40" height="20"
                     alt="mastercard SecureCode">
            </div>
        </div>
    </div>
</footer>

<div id="taskbar" component="taskbar" class="taskbar fixed-bottom">
  <div class="navbar-inner"><ul class="nav navbar-nav"></ul></div>
</div>
<script defer src="{relative_path}/assets/nodebb.min.js?{config.cache-buster}"></script>
{{{each scripts}}}
<script defer type="text/javascript" src="{scripts.src}"></script>
{{{end}}}
<script>
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', prepareFooter);
  } else {
    prepareFooter();
  }
  function prepareFooter() {
    {{{ if useCustomJS }}}
    {{customJS}}
    {{{ end }}}
    $(document).ready(function () {
      app.coldLoad();
    });
  }
</script>
</body>
</html>
