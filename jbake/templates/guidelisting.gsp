<%include 'header.gsp'%>

<section>
    <header>
        <h1>${content.title}</h1>
    </header>
    <p>${content.body}</p>


    <div class="mdl-grid">
        <%
        def tags = [:]
        for (guide in guides.sort{it.title}) {
            if (guide.status != 'published' || guide.level != content.level) {
                continue
            }
        %>
        <div class="mdl-cell mdl-cell--4-col">
            <div class="mdl-card mdl-shadow--2dp ${guide.level}-card-square">
                <div class="mdl-card__title mdl-card--expand">
                    <h2 class="mdl-card__title-text">${guide.title}</h2>
                </div>
                <div class="mdl-card__supporting-text">
                    ${guide.description}
                </div>
                <div class="mdl-card__actions mdl-card--border">
                    <a href="${guide.uri}"
                       class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
                        view...
                    </a>
                </div>
            </div>
        </div>
    <%
        for (tag in guide.tags) {
            def key = tag.trim()
            if (key in tags) {
                tags."$key" << ["$guide.uri": guide.title]
            } else {
                tags."$key" = ["$guide.uri": guide.title]
            }
        }
    }%>
    </div>

    <section>
        <header><h2>Tags</h2></header>
        <ul>
            <% tags.sort{it.key}.each { tag, item -> %>
            <li>${tag}:
                <ul>
                    <% item.sort{it.value}.each { uri, title -> %>
                    <li><a href="${content.rootpath}${uri}">${title}</a></li>
                    <% } %>
                </ul>
            </li>
            <% } %>
        </ul>
    </section>

</section>
<%include "footer.gsp"%>