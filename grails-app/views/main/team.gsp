<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <asset:javascript src="jquery.orgchart.min.js"/>
    <asset:stylesheet src="jquery.orgchart.css"/>
    <%--
    <script type="text/javascript" src="https://www.google.com/jsapi?autoload={'modules':[{'name':'visualization','version':'1.1','packages':['orgchart']}]}"></script>
    --%>
    <script type="text/javascript">
        $(function() {
            $("#basic-chart-source").orgChart({
                container: $("#chart"),
                interactive: true,
                showLevels: 3
            });
            $("#basic-chart-source").hide();
        });
        <%--
        google.setOnLoadCallback(drawChart);
        function drawChart() {
          var data = new google.visualization.DataTable();
          data.addColumn('string', 'Name');
          data.addColumn('string', 'Manager');
          data.addColumn('string', 'ToolTip');

          data.addRows([
            [{v:'Carles Feixa', f:'Carles Feixa<div style="color:blue; font-style:italic">(Main Researcher)</div>'}, '', ''],
            [{v:'Carles Feixa2', f:'Carles Feixa<div style="color:blue; font-style:italic">(Ethnography)</div>'}, 'Carles Feixa', ''],
            [{v:'Clara Rubio', f:'Clara Rubio<div style="color:blue; font-style:italic">(Main Coordinator)</div>'}, 'Carles Feixa2', ''],
            [{v:'Research TeamE', f:'Research Team'}, 'Clara Rubio', ''],
            [{v:'Francesc Solsona', f:'Francesc Solsona<div style="color:blue; font-style:italic">(Computer Science)</div>'}, 'Carles Feixa', ''],
            [{v:'Jordi Vilaplana', f:'Jordi Vilaplana<div style="color:blue; font-style:italic">(Computer Science Coordinator)</div>'}, 'Francesc Solsona', ''],
            [{v:'Research TeamC', f:'Research Team'}, 'Jordi Vilaplana', ''],
            [{v:'Joan Ganau', f:'Joan Ganau<div style="color:blue; font-style:italic">(Geography)</div>'}, 'Carles Feixa', ''],
            [{v:'Research TeamG', f:'Research Team'}, 'Joan Ganau', ''],
            [{v:'Carme Bellet', f:'Carme Bellet<div style="color:blue; font-style:italic">(Social Movements)</div>'}, 'Carles Feixa', ''],
            [{v:'Research TeamM', f:'Research Team'}, 'Carme Bellet', ''],
            [{v:'External Advisors', f:'External Advisors<div style="color:blue; padding: 0px 20px;"><ul><li>Dr. David Block</li><li>Dra. Aludena Moreno</li></ul></div>'}, '', '']
          ]);

          var chart = new google.visualization.OrgChart(document.getElementById('chart_div'));
          chart.draw(data, {allowHtml:true});
        }
        --%>
    </script>
    <style>
    div.orgChart div.node {
        width: 158px;
        height: 123px;
    }
    div.orgChart div.node img {
        margin-top: 4px;
        border: 2px solid black;
        border-radius: 4px;
    }
    </style>
</head>
<body>
<a name="top"></a>
<div class="mdl-typography--text-center">
    <div class="android-font"><h2>#eMOVIX Team</h2></div>
    <%--<div id="chart_div"></div>--%>
    <div id="chart"></div>
</div>

<div class="mdl-grid">
    <div class="mdl-cell mdl-cell--4-col">
        <div class="mdl-card mdl-shadow--2dp mdl-card--horizontal">
            <div class="mdl-card__media">
                <img src="${resource(dir: 'images', file: 'team/team_feixa.png')}" alt="Carles Feixa">
            </div>
            <div class="mdl-card__title">
                <h2 class="mdl-card__title-text">Carles Feixa</h2>
            </div>
            <div class="mdl-card__supporting-text">
                <g:message code="main.team.ip" />.
            </div>
            <div class="mdl-card__actions mdl-card--border">
                <a href="http://www.geosoc.udl.es/professorat/Feixa.htm" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" data-upgraded=",MaterialButton,MaterialRipple">
                    <g:message code="main.team.udl" />
                </a>
            </div>
        </div>
    </div>
    <div class="mdl-cell mdl-cell--4-col">
        <div class="mdl-card mdl-shadow--2dp mdl-card--horizontal">
            <div class="mdl-card__media">
                <img src="${resource(dir: 'images', file: 'team/team_ganau.png')}" alt="Joan Ganau">
            </div>
            <div class="mdl-card__title">
                <h2 class="mdl-card__title-text">Joan Ganau</h2>
            </div>
            <div class="mdl-card__supporting-text">
                <g:message code="main.team.codirector" />.
            </div>
            <div class="mdl-card__actions mdl-card--border">
                <a href="http://www.geosoc.udl.cat/professorat/Ganau.htm" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" data-upgraded=",MaterialButton,MaterialRipple">
                    <g:message code="main.team.udl" />
                </a>
            </div>
        </div>
    </div>
    <div class="mdl-cell mdl-cell--4-col">
        <div class="mdl-card mdl-shadow--2dp mdl-card--horizontal">
            <div class="mdl-card__media">
                <img src="${resource(dir: 'images', file: 'team/team_solsona.png')}" alt="Francesc Solsona">
            </div>
            <div class="mdl-card__title">
                <h2 class="mdl-card__title-text">Francesc Solsona</h2>
            </div>
            <div class="mdl-card__supporting-text">
                <g:message code="main.team.codirector" />.
            </div>
            <div class="mdl-card__actions mdl-card--border">
                <a href="http://gcd.udl.cat/users/francesc-solsona" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" data-upgraded=",MaterialButton,MaterialRipple">
                    <g:message code="main.team.udl" />
                </a>
            </div>
        </div>
    </div>
</div>

<%--
<ul id="basic-chart-source" class="hide">
    <li>
        <br />
        <a href="http://www.geosoc.udl.es/professorat/Feixa.htm" target="_blank">
            Carles Feixa
        </a>
        <br />(Main Researcher)
        <ul>
            <li>
                <br />
                <a href="http://www.geosoc.udl.es/professorat/Feixa.htm" target="_blank">
                    Carles Feixa
                </a>
                <br />(Ethnography)
                <ul>
                    <li>
                        <br />
                        Clara Rubio<br />
                        (Main Coordinator)
                        <ul>
                            <li><br />Research Team</li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li>
                <br />
                Francesc Solsona<br />
                (Computer Science)
                <ul>
                    <li>
                        <br />
                        Jordi Vilaplana
                        (Computer Science Coordinator)
                        <ul>
                            <li>
                                <br />
                                Research Team
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li>
                <br />
                Joan Ganau<br />
                (Geography)
                <ul>
                    <li>
                        <br />
                        Research Team
                    </li>
                </ul>
            </li>
            <li>
                <br />
                Carme Bellet<br />
                (Social Movements)
                <ul>
                    <li>
                        <br />
                        Research Team
                    </li>
                </ul>
            </li>
            <li>
                <br />
                External Advisors
                <ul>
                    <li>
                        <br />
                        Dr. David Block
                    </li>
                    <li>
                        <br />
                        Dra. Aludena Moreno
                    </li>
                </ul>
            </li>
        </ul>
    </li>
</ul>
--%>
</body>
</html>
