<!doctype html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <script src="//d3js.org/d3.v3.min.js" charset="utf-8"></script>
        <asset:javascript src="c3.min.js"/>
        <asset:stylesheet src="c3.min.css"/>
    </head>
    <body>
      <a name="top"></a>
      <div class="mdl-typography--text-center">
        <div class="android-font android-slogan">
          @${params.id}'s snapshots <small>(${snapshots.size()})</small>
        </div>
      </div>
      ${snaps}
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
      <div id="chart"></div>

      <content tag="footScripts">
      <script>
      $(function() {
        <g:applyCodec encodeAs="none">
        var chart_dates = ${chart_dates};
        </g:applyCodec>
        var chart_statuses_count = ${chart_statuses_count};
        var chart_followers_count = ${chart_followers_count};
        var chart_friends_count = ${chart_friends_count};

        chart_dates.unshift('x');
        chart_statuses_count.unshift('# Tweets');
        chart_followers_count.unshift('# Followers');
        chart_friends_count.unshift('# Following');

        var chart = c3.generate({
          bindto: '#chart',
          data: {
            x: 'x',
            xFormat: '%Y-%m-%d', // 'xFormat' can be used as custom format of 'x'
            columns: [
              chart_dates,
              chart_statuses_count,
              chart_followers_count,
              chart_friends_count
            ]
          },
          axis: {
            x: {
                type: 'timeseries',
                tick: {
                    format: '%Y-%m-%d'
                }
            }
          }
        });
      });
      </script>
      </content>
    </body>
</html>
