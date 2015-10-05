<%include "header.gsp"%>

<div class="mdl-grid">
    <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-phone mdl-cell--4-col-phone">
        <div class="title-card mdl-card">
            <div class="mdl-card__title">
                <h2 class="mdl-card__title-text">${content.title}</h2>
            </div>
            <div class="mdl-card__supporting-text">
                ${content.body}
            </div>
        </div>
    </div>
</div>

<%include "footer.gsp"%>
