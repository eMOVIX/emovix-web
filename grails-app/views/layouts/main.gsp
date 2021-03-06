<!doctype html>

<!--
  #eMOVIX Project webpage
  Copyright 2015 Jordi Vilaplana. All rights reserved.

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      https://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License
-->

<html lang="en" class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><g:layoutTitle default="${g.message(code: 'layouts.main.title')}"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://code.getmdl.io/1.1.3/material.indigo-pink.min.css">
    <script defer src="https://code.getmdl.io/1.1.3/material.min.js"></script>
    <script
            src="https://code.jquery.com/jquery-3.1.1.min.js"
            integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <asset:stylesheet src="application.css"/>
    <g:layoutHead/>
</head>
<body>
<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">

    <div class="android-header mdl-layout__header mdl-layout__header--waterfall">
        <div class="mdl-layout__header-row">
            <span class="android-title mdl-layout-title">
                <img class="emovix-logo-image" src="${resource(dir: 'images', file: 'emovix-logo-small.png')}" alt="#eMOVIX Logo"/>
            </span>
            <!-- Add spacer, to align navigation to the right in desktop -->
            <div class="android-header-spacer mdl-layout-spacer"></div>
            <!--
            <div class="android-search-box mdl-textfield mdl-js-textfield mdl-textfield--expandable mdl-textfield--floating-label mdl-textfield--align-right mdl-textfield--full-width">
              <label class="mdl-button mdl-js-button mdl-button--icon" for="search-field">
                <i class="material-icons">search</i>
              </label>
              <div class="mdl-textfield__expandable-holder">
                <input class="mdl-textfield__input" type="text" id="search-field" />
              </div>
            </div>
            -->
            <!-- Navigation -->
            <div class="android-navigation-container">
                <nav class="android-navigation mdl-navigation">

                    <g:link controller="main" action="index" class="${controllerName.equals("main") && actionName.equals("index") ? "is_nav_active" : ""} mdl-navigation__link mdl-typography--text-uppercase">
                        <g:message code="layout.main.home" />
                    </g:link>
                    <%--
                    <g:link controller="main" action="about" class="${controllerName.equals("main") && actionName.equals("about") ? "is_nav_active" : ""} mdl-navigation__link mdl-typography--text-uppercase">
                        <g:message code="layout.main.about" />
                    </g:link>
                    --%>
                    <g:link controller="main" action="team" class="${controllerName.equals("main") && actionName.equals("team") ? "is_nav_active" : ""} mdl-navigation__link mdl-typography--text-uppercase">
                        <g:message code="layout.main.team" />
                    </g:link>
                    <g:link controller="main" action="forum" class="${controllerName.equals("main") && actionName.equals("forum") ? "is_nav_active" : ""} mdl-navigation__link mdl-typography--text-uppercase">
                        <g:message code="layout.main.forum" />
                    </g:link>
                    <%--
                    <g:link controller="main" action="survey" class="${controllerName.equals("main") && actionName.equals("survey") ? "is_nav_active" : ""} mdl-navigation__link mdl-typography--text-uppercase">
                        <g:message code="layout.main.survey" />
                    </g:link>
                    --%>
                    <%--
                    <a id="twitterSubmenu" class="mdl-navigation__link mdl-typography--text-uppercase" href="#">
                        <g:message code="layout.main.twitter" />
                    </a>
                    --%>
                </nav>
                <%--
                <!-- sub menu only visible when clicked on the link above -->
                <ul class="mdl-menu mdl-menu--bottom-left mdl-js-menu mdl-js-ripple-effect"
                    for="twitterSubmenu">
                    <li class="mdl-menu__item">
                        <g:link controller="twitterUserMonitor" action="index" class="mdl-navigation__link mdl-typography--text-uppercase">
                            <g:message code="layout.main.monitoredUsers" />
                        </g:link>
                    </li>
                </ul>
                --%>
            </div>
            <%--
            <button class="android-more-button mdl-button mdl-js-button mdl-button--icon mdl-js-ripple-effect" id="more-button">
                <i class="material-icons">more_vert</i>
            </button>
            <ul class="mdl-menu mdl-js-menu mdl-menu--bottom-right mdl-js-ripple-effect" for="more-button">
                <li class="mdl-menu__item">
                    <g:link controller="mongo" class="mdl-navigation__link">
                        <g:message code="layout.main.databaseAccess" />
                    </g:link>
                </li>
                <li disabled class="mdl-menu__item">---</li>
                <sec:ifLoggedIn>
                    <li class="mdl-menu__item"><g:link controller="logout" class="mdl-navigation__link"><i class="icon-off"></i> <g:message code="layout.main.logout" /> (${sec.loggedInUserInfo(field: "username")})</g:link></li>
                </sec:ifLoggedIn>
            </ul>
            --%>
            <span class="android-mobile-title mdl-layout-title">
                <img class="emovix-logo-image" src="${resource(dir: 'images', file: 'emovix-logo-small.png')}" alt="#eMOVIX Logo">
            </span>
        </div>
    </div>

    <div class="android-drawer mdl-layout__drawer">
        <span class="mdl-layout-title">
            <img class="emovix-logo-image" src="${resource(dir: 'images', file: 'emovix-logo-small.png')}">
        </span>
        <nav class="mdl-navigation">
            <g:link controller="main" action="index" class="mdl-navigation__link  mdl-typography--text-uppercase">
                <g:message code="layout.main.home" />
            </g:link>
            <%--
            <g:link controller="main" action="about" class="mdl-navigation__link  mdl-typography--text-uppercase">
                <g:message code="layout.main.about" />
            </g:link>
            --%>
            <g:link controller="main" action="team" class="mdl-navigation__link  mdl-typography--text-uppercase">
                <g:message code="layout.main.team" />
            </g:link>
            <g:link controller="main" action="forum" class="mdl-navigation__link  mdl-typography--text-uppercase">
                <g:message code="layout.main.forum" />
            </g:link>
            <div class="android-drawer-separator"></div>
            <img class="nav_logo center-block" src="${resource(dir: 'images', file: 'logo_recercaixa_acup_obra.png')}" alt="RecerCaixa-Acup-Obra Social La Caixa">
            <img class="nav_logo center-block" src="${resource(dir: 'images', file: 'udl.png')}" alt="UdL">
            <%--
            <g:link controller="main" action="survey" class="mdl-navigation__link  mdl-typography--text-uppercase">
                <g:message code="layout.main.survey" />
            </g:link>
            --%>
            <%--
            <div class="android-drawer-separator"></div>
            <span class="mdl-navigation__link  mdl-typography--text-uppercase" href="">
                <g:message code="layout.main.twitter" />
            </span>
            <g:link controller="twitterUserMonitor" action="index" class="mdl-navigation__link  mdl-typography--text-uppercase">
                <g:message code="layout.main.monitoredUsers" />
            </g:link>
            <div class="android-drawer-separator"></div>
            <span class="mdl-navigation__link  mdl-typography--text-uppercase" href="">
                Admin
            </span>
            <g:link controller="mongo" class="mdl-navigation__link mdl-typography--text-uppercase">
                <g:message code="layout.main.databaseAccess" />
            </g:link>
            --%>
        </nav>
    </div>
    <div class="android-content mdl-layout__content">
        <g:layoutBody/>

        <!--
        <div class="android-screen-section mdl-typography--text-center">
          <a name="screens"></a>
          <div class="mdl-typography--display-1-color-contrast">Powering screens of all sizes</div>
          <div class="android-screens">
            <div class="android-wear android-screen">
              <a class="android-image-link" href="">
                <img class="android-screen-image" src="images/wear-silver-on.png">
                <img class="android-screen-image" src="images/wear-black-on.png">
              </a>
              <a class="android-link mdl-typography--font-regular mdl-typography--text-uppercase" href="">Android Wear</a>
            </div>
            <div class="android-phone android-screen">
              <a class="android-image-link" href="">
                <img class="android-screen-image" src="images/nexus6-on.jpg">
              </a>
              <a class="android-link mdl-typography--font-regular mdl-typography--text-uppercase" href="">Phones</a>
            </div>
            <div class="android-tablet android-screen">
              <a class="android-image-link" href="">
                <img class="android-screen-image" src="images/nexus9-on.jpg">
              </a>
              <a class="android-link mdl-typography--font-regular mdl-typography--text-uppercase" href="">Tablets</a>
            </div>
            <div class="android-tv android-screen">
              <a class="android-image-link" href="">
                <img class="android-screen-image" src="images/tv-on.jpg">
              </a>
              <a class="android-link mdl-typography--font-regular mdl-typography--text-uppercase" href="">Android TV</a>
            </div>
            <div class="android-auto android-screen">
              <a class="android-image-link" href="">
                <img class="android-screen-image" src="images/auto-on.jpg">
              </a>
              <a class="android-link mdl-typography--font-regular mdl-typography--text-uppercase mdl-typography--text-left" href="">Coming Soon: Android Auto</a>
            </div>
          </div>
        </div>
        <div class="android-wear-section">
          <div class="android-wear-band">
            <div class="android-wear-band-text">
              <div class="mdl-typography--display-2 mdl-typography--font-thin">The best of Google built in</div>
              <p class="mdl-typography--headline mdl-typography--font-thin">
                Android works perfectly with your favourite apps like Google Maps,
                Calendar and YouTube.
              </p>
              <p>
                <a class="mdl-typography--font-regular mdl-typography--text-uppercase android-alt-link" href="">
                  See what's new in the Play Store&nbsp;<i class="material-icons">chevron_right</i>
                </a>
              </p>
            </div>
          </div>
        </div>
        <div class="android-customized-section">
          <div class="android-customized-section-text">
            <div class="mdl-typography--font-light mdl-typography--display-1-color-contrast">Customised by you, for you</div>
            <p class="mdl-typography--font-light">
              Put the stuff that you care about right on your home screen: the latest news, the weather or a stream of your recent photos.
              <br>
              <a href="" class="android-link mdl-typography--font-light">Customise your phone</a>
            </p>
          </div>
          <div class="android-customized-section-image"></div>
        </div>
        <div class="android-more-section">
          <div class="android-section-title mdl-typography--display-1-color-contrast">More from Android</div>
          <div class="android-card-container mdl-grid">
            <div class="mdl-cell mdl-cell--3-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp">
              <div class="mdl-card__media">
                <img src="images/more-from-1.png">
              </div>
              <div class="mdl-card__title">
                 <h4 class="mdl-card__title-text">Get going on Android</h4>
              </div>
              <div class="mdl-card__supporting-text">
                <span class="mdl-typography--font-light mdl-typography--subhead">Four tips to make your switch to Android quick and easy</span>
              </div>
              <div class="mdl-card__actions">
                 <a class="android-link mdl-button mdl-js-button mdl-typography--text-uppercase" href="">
                   Make the switch
                   <i class="material-icons">chevron_right</i>
                 </a>
              </div>
            </div>

            <div class="mdl-cell mdl-cell--3-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp">
              <div class="mdl-card__media">
                <img src="images/more-from-4.png">
              </div>
              <div class="mdl-card__title">
                 <h4 class="mdl-card__title-text">Create your own Android character</h4>
              </div>
              <div class="mdl-card__supporting-text">
                <span class="mdl-typography--font-light mdl-typography--subhead">Turn the little green Android mascot into you, your friends, anyone!</span>
              </div>
              <div class="mdl-card__actions">
                 <a class="android-link mdl-button mdl-js-button mdl-typography--text-uppercase" href="">
                   androidify.com
                   <i class="material-icons">chevron_right</i>
                 </a>
              </div>
            </div>

            <div class="mdl-cell mdl-cell--3-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp">
              <div class="mdl-card__media">
                <img src="images/more-from-2.png">
              </div>
              <div class="mdl-card__title">
                 <h4 class="mdl-card__title-text">Get a clean customisable home screen</h4>
              </div>
              <div class="mdl-card__supporting-text">
                <span class="mdl-typography--font-light mdl-typography--subhead">A clean, simple, customisable home screen that comes with the power of Google Now: Traffic alerts, weather and much more, just a swipe away.</span>
              </div>
              <div class="mdl-card__actions">
                 <a class="android-link mdl-button mdl-js-button mdl-typography--text-uppercase" href="">
                   Download now
                   <i class="material-icons">chevron_right</i>
                 </a>
              </div>
            </div>

            <div class="mdl-cell mdl-cell--3-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp">
              <div class="mdl-card__media">
                <img src="images/more-from-3.png">
              </div>
              <div class="mdl-card__title">
                 <h4 class="mdl-card__title-text">Millions to choose from</h4>
              </div>
              <div class="mdl-card__supporting-text">
                <span class="mdl-typography--font-light mdl-typography--subhead">Hail a taxi, find a recipe, run through a temple – Google Play has all the apps and games that let you make your Android device uniquely yours.</span>
              </div>
              <div class="mdl-card__actions">
                 <a class="android-link mdl-button mdl-js-button mdl-typography--text-uppercase" href="">
                   Find apps
                   <i class="material-icons">chevron_right</i>
                 </a>
              </div>
            </div>
          </div>
        </div>
        -->

        <footer class="android-footer mdl-mega-footer">
            <div class="mdl-mega-footer--top-section">
                <div class="mdl-mega-footer__left-section">

                </div>
                <div class="mdl-mega-footer--right-section">
                    <a href="https://twitter.com/e_movix" class="twitter-follow-button" data-show-count="false" data-size="large">Follow @e_movix</a>
                    <script>
                        !function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');
                    </script>
                </div>
            </div>
            <!--
              <button class="mdl-mega-footer--social-btn">

              </button>
              &nbsp;
              <button class="mdl-mega-footer--social-btn"></button>
              &nbsp;
              <button class="mdl-mega-footer--social-btn"></button>
            </div>
            <div class="mdl-mega-footer--right-section">
              <a class="mdl-typography--font-light" href="#top">
                Back to Top
                <i class="material-icons">expand_less</i>
              </a>
              -->

            <div class="mdl-mega-footer__middle-section">
                <div class="mdl-mega-footer--left-section">
                    <span class="mdl-typography--font-light font-acknowledgments">
                        <g:message code="layout.main.acknowledgments" />
                    </span>
                </div>
            </div>
            <div class="mdl-mega-footer__bottom-section">
                <div class="mdl-mega-footer--left-section">
                    <div class="center">

                        <%--
                        <img class="footer_logo" src="${resource(dir: 'images', file: 'logo_recercaixa.png')}" alt="RecerCaixa">
                        --%>
                    </div>
                </div>
                <div class="mdl-mega-footer--middle-section">
                    <div class="center">
                        <img class="footer_logo" src="${resource(dir: 'images', file: 'udl.png')}" alt="UdL">
                        <img class="footer_logo" src="${resource(dir: 'images', file: 'logo_recercaixa_acup_obra.png')}" alt="RecerCaixa-Acup-Obra Social La Caixa">
                    </div>
                </div>
                <%--
                <div class="mdl-mega-footer--right-section">
                    <div style="display: block;">
                        <img class="footer_logo" src="${resource(dir: 'images', file: 'logo_acup.png')}" alt="ACUP">
                        <img class="footer_logo" src="${resource(dir: 'images', file: 'logo_obra_social.png')}" alt="Obra Social 'la Caixa'">
                    </div>
                </div>
                --%>
            </div>
            <!--
          <div class="mdl-mega-footer--bottom-section">
            <a class="android-link android-link-menu mdl-typography--font-light" id="version-dropdown">
              Versions
              <i class="material-icons">arrow_drop_up</i>
            </a>
            <ul class="mdl-menu mdl-js-menu mdl-menu--top-left mdl-js-ripple-effect" for="version-dropdown">
              <li class="mdl-menu__item"><g:link controller="mongo">MongoDB</g:link></li>
            </ul>
            <a class="android-link android-link-menu mdl-typography--font-light" id="developers-dropdown">
              For Developers
              <i class="material-icons">arrow_drop_up</i>
            </a>
            <ul class="mdl-menu mdl-js-menu mdl-menu--top-left mdl-js-ripple-effect" for="developers-dropdown">
              <li class="mdl-menu__item">App developer resources</li>
              <li class="mdl-menu__item">Android Open Source Project</li>
              <li class="mdl-menu__item">Android SDK</li>
              <li class="mdl-menu__item">Android for Work</li>
            </ul>
            <a class="android-link mdl-typography--font-light" href="">Blog</a>
            <a class="android-link mdl-typography--font-light" href="">Privacy Policy</a>
          </div>
          -->

        </footer>
    </div>
</div>
<asset:javascript src="application.js"/>
<!-- Custom placeholder for page scripts -->
<g:ifPageProperty name="page.footScripts">
    <g:pageProperty name="page.footScripts" />
</g:ifPageProperty>
</body>
</html>
