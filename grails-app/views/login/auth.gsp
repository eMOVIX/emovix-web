<!doctype html>
<html>
<head>
  <meta name="layout" content="main"/>
  <asset:stylesheet src="login.css"/>
</head>
<body>
  <div class="login-centered">
    <div class="mdl-card mdl-shadow--6dp">
      <div class="mdl-card__title mdl-color--primary mdl-color-text--white">
        <h2 class="mdl-card__title-text">
          <g:message code="login.auth.title" />
        </h2>
      </div>
      <form action='/j_spring_security_check' method='POST' id='loginForm' autocomplete='off'>
        <div class="mdl-card__supporting-text">
          <div class="mdl-textfield mdl-js-textfield">
            <input type='text' class='mdl-textfield__input' name='j_username' id='username'/>
            <label class="mdl-textfield__label" for="username">
              <g:message code="login.auth.username" />
            </label>
          </div>
          <div class="mdl-textfield mdl-js-textfield">
            <input type='password' class='mdl-textfield__input' name='j_password' id='password'/>
            <label class="mdl-textfield__label" for="password">
              <g:message code="login.auth.password" />
            </label>
          </div>
          <p id="remember_me_holder">
            <input type='checkbox' class='chk' name='_spring_security_remember_me' id='remember_me' />
            <label for='remember_me'>
              <g:message code="login.auth.rememberMe" />
            </label>
          </p>
        </div>
        <div class="mdl-card__actions mdl-card--border">
          <button class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
            <g:message code="login.auth.login" />
          </button>
        </div>
      </form>
    </div>
  </div>
</div>
</body>
</html>
