<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "title">
        ${msg("updatePasswordTitle")}
    <#elseif section = "header">
        ${msg("updatePasswordTitle")}
    <#elseif section = "form">

    <div class="mdl-grid">
        <div class="mdl-layout-spacer"></div>
        <div class="mdl-cell mdl-cell--4-col mdl-cell--12-col-phone">
            <div class="demo-card-wide mdl-card mdl-shadow--2dp mdl-textfield--full-width">
                <div class="mdl-card__title">
                    <h2 class="mdl-card__title-text">Welcome</h2>
                </div>
                <div class="mdl-card__supporting-text">
                    <form id="kc-passwd-update-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">

                        <input type="text" readonly value="this is not a login form" style="display: none;">
                        <input type="password" readonly value="this is not a login form" style="display: none;">

                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-textfield--full-width">
                            <input class="mdl-textfield__input" type="password" id="password-new" name="password-new" autofocus autocomplete="off">
                            <button class="mdl-button mdl-js-button mdl-button--icon show-password" id="kc-password-show" type="button" onclick="return false;">
                                <i class="material-icons">visibility</i>
                            </button>
                            <label class="mdl-textfield__label" for="password-new">${msg("passwordNew")}</label>
                            <span class="mdl-textfield__error">${msg("passwordNew")} ${msg("empty")}</span>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-textfield--full-width">
                            <input class="mdl-textfield__input" type="password" id="password-confirm" name="password-confirm" autocomplete="off">
                            <label class="mdl-textfield__label" for="password-confirm">${msg("passwordConfirm")}</label>
                            <span class="mdl-textfield__error" id="error-confirm">${msg("passwordConfirm")} ${msg("empty")}</span>
                        </div>


                        <div id="wrap-text-password-strength">
                            <div id="progress-password-strength" class="mdl-progress mdl-js-progress"></div>
                            <span id="percent-text-password-strength"></span><span id="text-password-strength"></span>
                        </div>

                        <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                            <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" type="submit" id="kc-submit">
                            ${msg("doSubmit")}
                            </button>
                        </div>
                    </form>

                    <script>

                        $('#password-new').password({ animate: true, showPercent: true, showText: true });
                    </script>
                </div>
                <div class="mdl-card__actions mdl-card--border">
                    <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                        <div class="${properties.kcFormOptionsWrapperClass!}">
                            <span><a href="${url.loginUrl}">${msg("backToLogin")}</a></span>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="mdl-layout-spacer"></div>
    </div>
    </#if>
</@layout.registrationLayout>