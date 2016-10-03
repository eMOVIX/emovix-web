<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>
<div class="container">
    <a name="top"></a>
    <div class="mdl-typography--text-center">
        <div class="android-font"><h3>Enquesta Anònima a Usuaris Catalans de Twitter</h3></div>
    </div>
    <div class="mdl-typography--text-justify">
        <div class="mdl-color-text--grey-700 mdl-card__supporting-text">
            <p>
                Des de la coordinació del projecte "#eMOVIX. Emigració juvenil, nous moviments socials i xarxes digitals" us volem demanar la vostra col·laboració.
            </p>
            <p>
                Un dels objectius de la recerca és conèixer la demografia de les persones catalanes a Twitter.
            </p>
            <p>
                Per poder assolir aquest objectiu us demanem que respongueu la següent pregunta indicant a quin grup d'edat pertanyeu. Moltes gràcies!
            </p>
            <p>
                (<a href="http://www.joventut.udl.cat/?p=225" target="_blank">Més informació sobre el projecte</a>)
            </p>
        </div>
    </div>
    <div class="card blue lighten-5">
        <div class="card-content white-text">
            <div class="row">
                <g:form action="submitTwitterSurvey" class="col s12">
                    <p>
                        <input class="with-gap" name="ageGroup" type="radio" id="ageGroup1" value="1" required />
                        <label for="ageGroup1">Menys de 25 anys</label>
                    </p>

                    <p>
                        <input class="with-gap" name="ageGroup" type="radio" id="ageGroup2" value="2"/>
                        <label for="ageGroup2">Entre 25 i 34 anys</label>
                    </p>

                    <p>
                        <input class="with-gap" name="ageGroup" type="radio" id="ageGroup3" value="3"/>
                        <label for="ageGroup3">Entre 34 i 39 anys</label>
                    </p>

                    <p>
                        <input class="with-gap" name="ageGroup" type="radio" id="ageGroup4" value="4"/>
                        <label for="ageGroup4">Més de 39 anys</label>
                    </p>
                    <g:submitButton name="submit" value="Envia"
                                    class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored"/>
                </g:form>
            </div>
        </div>
    </div>
</div>
</body>
</body>
</html>
