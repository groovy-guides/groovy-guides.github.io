<%include "header.gsp"%>

<div class="mdl-grid">
    <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-phone mdl-cell--4-col-phone">
        <div class="title-card mdl-card">
            <div class="mdl-card__title">
                <h2 class="mdl-card__title-text">Welcome!</h2>
            </div>
            <div class="mdl-card__supporting-text">
                This site has been developed to accompany <a href="https://leanpub.com/groovytutorial">The Groovy
                2 Tutorial</a>. Over time I'm going to be adding various tutorials to supplement the book and show off Groovy.
            </div>
        </div>
    </div>
</div>

<%
def guides = [
[title: 'A tour through a small Gradle-Groovy project',
description: 'A small demonstration of a Groovy application using the Gradle build tool.',
url: 'http://www.groovy-tutorial.org/shapes-demo/']
]
%>


<div class="mdl-grid">
    <%
    def tags = [:]
    guides.each { item -> %>
    <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone">
        <div class="mdl-card mdl-shadow--16dp">
            <div class="mdl-card__title mdl-card--expand">
                <h2 class="mdl-card__title-text">${item.title}</h2>
            </div>
            <div class="mdl-card__supporting-text">
                ${item.description}
            </div>
            <div class="mdl-card__actions mdl-card--border">
                <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect"
                   href="${item.url}">
                    Go
                </a>
            </div>
        </div>
    </div>
    <%}%>
</div>

<%include "footer.gsp"%>
