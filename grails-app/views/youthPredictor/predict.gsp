<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <script>
    function checkPrediction() {
        console.log("checkPrediction !");
        $.getJSON( "${g.createLink(action: 'ajaxCheckPrediction', params: [username: username])}",
            function(data) {
                if(data['group']) {
                    var group = data['group'];
                    if(group == 1) $("#prediction-result-group-1").removeClass("hidden");
                    else if(group == 2) $("#prediction-result-group-2").removeClass("hidden");
                    else if(group == 3) $("#prediction-result-group-3").removeClass("hidden");
                    else if(group == 4) $("#prediction-result-group-4").removeClass("hidden");
                    //$("#prediction-result-group").html(data['group']);
                    //$("#prediction-result-score").html(data['n_score']);
                    //$("#prediction-result-certain").html(data['certain']);
                    $("#waiting-result").addClass("hidden");
                    $("#prediction-result-card").removeClass("hidden");
                    $("#positive-feedback-link").attr("href", $("#positive-feedback-link").attr("href") + "&group=" + data['group']);
                }
            }
         );
     }
    $(function() {
        setInterval(function() {
            if($("#prediction-result-card").hasClass("hidden")) {
                checkPrediction();
            }
        }, 3000);
    });
</script>
</head>
<body>
<div class="container">
    <a name="top"></a>
    <div class="mdl-typography--text-center">
        <div class="android-font"><h3>Ets una persona jove?</h3></div>
    </div>
    <div class="mdl-typography--text-justify">
        <div class="mdl-color-text--grey-700 mdl-card__supporting-text">

            <div id="waiting-result" class="center">
                <p class="center">
                    Waiting to analyze user ${username} ...
                </p>
                <p class="center">
                    There are ${queue - 1} jobs before you ....
                </p>
                <asset:image src="ajax-loader.gif" />
            </div>

            <div class="mdl-grid">
                <div class="mdl-layout-spacer"></div>
                <div class="mdl-cell mdl-cell--6-col">
                    <div id="prediction-result-card" style="width: 500px;" class="mdl-card mdl-shadow--2dp hidden">
                        <div class="mdl-card__title">
                            <h2 class="mdl-card__title-text">
                                <a href="https://twitter.com/${username}" target="_blank">@${username}</a></h2>
                        </div>
                        <div class="mdl-card__supporting-text">
                            <div id="prediction-result-group">
                                <div id="prediction-result-group-1" class="hidden">
                                    <h5>Sí, ets una persona jove!</h5>
                                    <hr />
                                    <p>Concretament, ets una persona de menys de 25 anys.</p>
                                </div>
                                <div id="prediction-result-group-2" class="hidden">
                                    <h5>Sí, ets una persona jove!</h5>
                                    <hr />
                                    <p>Concretament, ets una persona d'entre 25 i 34 anys.</p>
                                </div>
                                <div id="prediction-result-group-3" class="hidden">
                                    <h5>Sí, ets una persona jove!</h5>
                                    <hr />
                                    <p>Concretament, ets una persona d'entre 35 i 39 anys.</p>
                                </div>
                                <div id="prediction-result-group-4" class="hidden">
                                    <h5>Ups, potser ja no ets massa jove ...</h5>
                                    <hr />
                                    <p>Concretament, ets una persona de més de 39 anys.</p>
                                </div>
                            </div>
                            <div id="prediction-result-score"></div>
                            <div id="prediction-result-certain"></div>
                            <p>Hem encertat?</p>
                            <p>
                                <g:link action="feedback" params="[guessed: true]" elementId="positive-feedback-link" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
                                    <i class="material-icons">mood</i> Sí, sou uns cracks!
                                </g:link>
                            </p>
                        </div>
                        <div class="mdl-card__actions mdl-card--border">
                            <g:link action="feedback" params="[guessed: false, group: 1]" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
                                No, tinc menys de 25 anys!
                            </g:link>
                            <g:link action="feedback" params="[guessed: false, group: 2]" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
                                No, tinc entre 25 i 34 anys!
                            </g:link>
                            <g:link action="feedback" params="[guessed: false, group: 3]" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
                                No, tinc entre 35 i 39 anys!
                            </g:link>
                            <g:link action="feedback" params="[guessed: false, group: 4]" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
                                No, tinc més de 39 anys!
                            </g:link>
                        </div>
                        <div class="mdl-card__menu">
                            <a href="https://twitter.com/intent/tweet?text=Ets%20una%20persona%20jove?%20Prova-ho%20amb%20el%20predictor%20del%20projecte%20%23eMOVIX%20http%3A%2F%2Femovix.udl.cat%2FyouthPredictor%2F" target="_blank" class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect">
                                <i class="material-icons">share</i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="mdl-layout-spacer"></div>
            </div>
        </div>
    </div>
</div>
</body>
</body>
</html>
