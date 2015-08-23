<%include "header.gsp"%>

<div class="mdl-grid">
    <div class="mdl-cell mdl-cell--10-col">
        <div class="mdl-card news-card-wide">

            <div class="mdl-card__title">
                <h2 class="mdl-card__title-text">Welcome!</h2>
            </div>
            <div class="mdl-card__supporting-text">
                This site is being developed to accompany <a href="https://leanpub.com/groovytutorial">The Groovy
                2 Tutorial</a>. I'm going to be adding various tutorials to supplement the book and show off Groovy.
            </div>
        </div>
    </div>
</div>

<!--
<%include "guide-cards.gsp"%>
-->

<!--
<div class="mdl-grid">
    <div class="mdl-cell mdl-cell--10-col">
        <div class="mdl-card news-card-wide">

            <div class="mdl-card__title">
                <h2 class="mdl-card__title-text">News</h2>
            </div>
            <div class="mdl-card__supporting-text">
                <%published_posts.each {post ->%>
                <p>${post.title}</p>
                <p>${post.date.format("dd MMMM yyyy")}</p>
                ${post.description}
                <a href="${post.uri}">more...</a>
                <%}%>
                <div class="mdl-card__actions mdl-card--border">
                    <a href="${config.archive_file}"
                       class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
                        Older posts...
                    </a>
                </div>
            </div>

        </div>
    </div>
</div>
-->



<%include "footer.gsp"%>
