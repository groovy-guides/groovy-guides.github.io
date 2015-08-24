<%include "header.gsp"%>

<article class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">

	<header>
		<h1>${content.title}</h1>
	</header>
	<main>

	${content.body}

	</main>
	<footer>
		<p>${content.date.format("dd MMMM yyyy")}</p>
	</footer>
</article>

<%include "footer.gsp"%>