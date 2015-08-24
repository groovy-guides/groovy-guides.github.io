<%include "header.gsp"%>

<article>
    <header>
        <h1>${content.title}</h1>
    </header>

    <p>${content.body}</p>

    <footer>
        <p>${content.date.format("dd MMMM yyyy")}</p>
    </footer>
</article>

<%include "footer.gsp"%>