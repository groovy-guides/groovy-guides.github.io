<%include "header.gsp"%>

<%
def resources = [
'Websites' : [
    [title: 'groovy-lang.org',
    description: 'The home of Groovy!',
    url: 'http://www.groovy-lang.org/'],
    [title: 'mr haki',
    description: 'A trove of Groovy code snippets!',
    url: 'http://mrhaki.blogspot.com/search/label/Groovy']
],
'Groovy Tech' : [
    [title: 'Awesome Groovy',
    description: 'A curated list of Groovy tech',
    url: 'https://github.com/kdabir/awesome-groovy']
],
'Books' : [
    [title: 'Groovy in Action',
    description: 'Groovy in Action, Second Edition is a thoroughly revised, comprehensive guide to Groovy programming. It introduces Java developers to the dynamic features that Groovy provides, and shows how to apply Groovy to a range of tasks including building new apps, integration with existing code, and DSL development. Covers Groovy 2.4.',
    url: 'http://www.manning.com/koenig2/'],
    [title: 'The Groovy 2 Tutorial',
    description: 'The Groovy 2 Tutorial is a primer for those who are new to the Groovy language and want to know how Groovy works. Groovy is a great language for those who want the flexibility of a dynamic language and the support of the Java ecosystem. Groovy is also a key to unlocking a range of other great technologies including Gradle, Grails and Android development.',
    url: 'https://leanpub.com/groovytutorial/']
],
'News': [
        [title: 'Groovy Weekly',
         description: 'Prepared by Guillaume Laforge and always brimming with news.',
         url: 'http://glaforge.appspot.com/category/Groovy%20Weekly'],
        [title: 'Groovy Calamari',
        description: 'Groovy Calamari is a weekly curated publication full of interesting, relevant links about the Groovy Ecosystem.',
        url: 'http://groovycalamari.com/'],
        [title: 'The Groovy Podcast',
        description: 'Peter, Ken and Baruch with the latest news from the Groovy sphere',
        url: 'https://github.com/pledbrook/groovypodcast']
    ]
]
%>

<% resources.each { title, sections -> %>
    <div class="mdl-grid">
        <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-phone mdl-cell--4-col-phone">
            <div class="title-card mdl-card">
                <div class="mdl-card__title">
                    <h2 class="mdl-card__title-text">$title</h2>
                </div>
            </div>
        </div>
    </div>
    <div class="mdl-grid">
        <% sections.each { item -> %>
            <div class="mdl-cell mdl-cell--4-col">
                <div class="mdl-card mdl-shadow--16dp">
                    <div class="mdl-card__title mdl-card--expand">
                        <h3 class="mdl-card__title-text">${item.title}</h3>
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
        <% } %>
    </div>
<% } %>

<%include "footer.gsp"%>
