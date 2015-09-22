<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title><%if (content.title) {%>${content.title}<% } else { %>The Groovy Tutorial<% }%></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Duncan Dickinson">
    <meta name="keywords" content="groovy java">
    <meta name="generator" content="JBake">

    <!-- Le styles -->
    <link rel="stylesheet" href="https://storage.googleapis.com/code.getmdl.io/1.0.1/material.blue_grey-blue.min.css"/>
    <script src="https://storage.googleapis.com/code.getmdl.io/1.0.1/material.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>

    <link href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>css/local.css" rel="stylesheet">

    <link rel="shortcut icon" href="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>favicon.ico">
</head>
<body>
<div class="mdl-layout mdl-js-layout mdl-layout--overlay-drawer-button">
<!-- Uses a header that scrolls with the text, rather than staying locked at the top -->
    <header class="mdl-layout__header mdl-layout__header--scroll">
        <div class="mdl-layout__header-row">
            <!-- Title -->
            <h1 class="mdl-layout-title">The Groovy Tutorial</h1>
            <!-- Add spacer, to align navigation to the right -->
            <div class="mdl-layout-spacer"></div>
            <!-- Navigation -->
            <%include "navigation.gsp"%>

        </div>
    </header>
    <div class="mdl-layout__drawer">
        <span class="mdl-layout-title">Groovy Tutorial</span>
        <%include "navigation.gsp"%>
    </div>
    <main class="mdl-layout__content">
        <div class="page-content" style="min-height: 600px;">
