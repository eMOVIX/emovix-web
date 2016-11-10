<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>
<div class="container">
    <a name="top"></a>
    <div class="mdl-typography--text-center">
        <div class="android-font"><h3>Ets una persona jove?</h3></div>
    </div>
    <div class="mdl-typography--text-justify">
        <div class="mdl-color-text--grey-700 mdl-card__supporting-text">
            <p>
                Des del projecte "#eMOVIX. Emigració juvenil, nous moviments socials i xarxes digitals" estem estudiant diferents aspectes de les persones joves Catalanes dins i fora de les xarxes socials.
            </p>
            <p>
                Un dels objectius de la recerca és conèixer la demografia de les persones catalanes a Twitter, i en aquesta línia hem desenvolupat un algorisme de predicció d'edat.
            </p>
            <p>
                Vols provar-ho amb el teu usuari de Twitter? Escriu-lo en el camp de text inferior i provarem d'encertar el teu rang d'edat!
            </p>
        </div>
    </div>
    <div class="card blue lighten-5">
        <div class="card-content">
            <div class="row">
                <g:form action="predict" class="col s12">
                    <div class="row">
                        <div class="input-field col s10">
                            <g:textField name="username" />
                            <label for="username">Usuari de Twitter (Exemple: @e_movix)</label>
                        </div>
                        <div class="input-field col s2">
                            <g:submitButton name="submit" value="Envia"
                                            class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored"/>
                        </div>
                    </div>
                </g:form>
            </div>
        </div>
    </div>
</div>
</body>
</body>
</html>
