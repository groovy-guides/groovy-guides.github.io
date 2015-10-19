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
def resources = [
    'Working with files': [
        [title: 'Introduction to directories and files',
        description: 'Groovy extends the Java file libraries to make reading and writing files really easy.',
        url: 'http://www.groovy-tutorial.org/basic-files/']
    ],
    'General': [
        [title: 'A tour through a small Gradle-Groovy project',
        description: 'A small demonstration of a Groovy application using the Gradle build tool.',
        url: 'http://www.groovy-tutorial.org/shapes-demo/']
    ],
    'Works in progress': [
        [title: 'JSON Files',
        description: 'Groovy does the heavy lifting when working with JSON files',
        url: 'http://www.groovy-tutorial.org/basic-json/'],
        [title: 'CSV Files',
        description: 'Reading CSV files can be annoying but Groovy makes it a little less so.',
        url: 'http://www.groovy-tutorial.org/basic-csv/'],
        [title: 'Excel files',
        description: 'A small example of reading data in an Excel spreadsheet',
        url: 'http://www.groovy-tutorial.org/basic-xlsx/']
    ]
]
%>


<% resources.each { title, sections -> %>
    <div class="mdl-grid">
        <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone">
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
