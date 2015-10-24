<!doctype html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <script type="text/javascript" src="https://www.google.com/jsapi?autoload={'modules':[{'name':'visualization','version':'1.1','packages':['orgchart']}]}"></script>
        <script type="text/javascript">
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
       </script>
    </head>
    <body>
    <a name="top"></a>
    <div class="mdl-typography--text-center">
      <div class="android-font"><h2>#eMOVIX Team</h2></div>
      <div id="chart_div"></div>
    </div>
    </body>
</html>
