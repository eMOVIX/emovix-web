<!doctype html>
<html>
    <head>
        <meta name="layout" content="main"/>
    </head>
    <body>
      <a name="top"></a>
      <div class="mdl-typography--text-center">
        <div class="android-font android-slogan">
          Monitored Twitter Users <small>(${monitoredUsers.size()})</small>
        </div>
      </div>
      <table class="mdl-data-table mdl-js-data-table mdl-shadow--2dp full-width">
        <thead>
          <tr>
            <th>Twitter User</th>
            <th>Enabled</th>
            <th>
              Actions
            </th>
          </tr>
        </thead>
        <tbody>
          <g:each in="${monitoredUsers}" var="user">
            <tr>
              <td><a href="https://twitter.com/${user.screen_name}" target="_blank">@${user.screen_name}</a></td>
              <td>
                <g:if test="${user.enabled}">
                  <i class="material-icons">done</i>
                </g:if>
                <g:else>
                  <i class="material-icons">highlight_off</i>
                </g:else>
              </td>
              <td>
                <g:link action="snapshots" id="${user.screen_name}">Show snapshots</g:link>
              </td>
            </tr>
          </g:each>
          <tr>
            <td colspan="2">Total: ${monitoredUsers.size()}</td>
          </tr>
        </tbody>
      </table>
    </body>
</html>
