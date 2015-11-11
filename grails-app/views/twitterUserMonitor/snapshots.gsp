<!doctype html>
<html>
    <head>
        <meta name="layout" content="main"/>
    </head>
    <body>
      <a name="top"></a>
      <div class="mdl-typography--text-center">
        <div class="android-font android-slogan">
          @${params.id}'s snapshots <small>(${snapshots.size()})</small>
        </div>
      </div>
      <table class="mdl-data-table mdl-js-data-table mdl-shadow--2dp full-width">
        <thead>
          <tr>
            <th>Date</th>
            <th># Tweets</th>
            <th>
              # Followers
            </th>
            <th>
              # Following
            </th>
            <th>
              Location
            </th>
          </tr>
        </thead>
        <tbody>
          <g:each in="${snapshots}" var="snapshot">
            <tr>
              <td>
                <g:formatDate format="dd-MM-yyyy" date="${new Date( ((long)snapshot._id.getTimestamp()) * 1000)}" /></td>
              <td>
                ${snapshot.statuses_count}
              </td>
              <td>
                ${snapshot.followers_count}
              </td>
              <td>
                ${snapshot.friends_count}
              </td>
              <td>
                ${snapshot.location}
              </td>
            </tr>
          </g:each>
        </tbody>
      </table>
    </body>
</html>
