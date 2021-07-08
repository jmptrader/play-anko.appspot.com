<html>
<head>
    <link rel="stylesheet" href="/static/style.css" />
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <script src="/static/jquery-linedtextarea.js"></script>
    <title>Anko Playground</title>
</head>
<body>
<div id="banner">
    <div id="head" itemprop="name">Anko Playground</div>
    <div id="controls">
        <input type="button" value="Run" id="run">
        <input type="button" value="Share" id="share">
    </div>
</div>

<div style="position: absolute; top: 60px; font-size: 11px; width: 75%">
   This is where you can test out <a href="https://github.com/mattn/anko">anko</a> rev <a href="https://github.com/mattn/anko/commit/{{.Commit}}">{{.CommitShort}}</a>, a scriptable interpreter written in golang. If you find any behaviors that you think should work but don't, <a href="https://github.com/mattn/anko/issues">please file an issue</a> with the link to this code (press the "Share" button above, then copy the URL)
</div>

<div id="wrap">
    <textarea itemprop="description" id="code" name="code" autocorrect="off" autocomplete="off" autocapitalize="off" spellcheck="false">{{.Code}}</textarea>
</div>

<div><pre id="output"></pre></div>

<script type="text/javascript">
<!--
    $(document).ready(function() {
        $('#code').linedtextarea();
        $('#share').click(function() {
            $.ajax({
                url: "/api/save",
                type: "POST",
                data: {
                    code: $('#code').val(),
                },
                success: function(data) {
                    location.href = "/p/" + data
                },
                error: function(data) {
                    alert(data.responseText)
                }
            })
        })
        $('#run').click(function() {
            $.ajax({
                url: "/api/play",
                type: "POST",
                data: {
                    code: $('#code').val(),
                },
                success: function(data) {
                    $('#output').text(data)
                },
                error: function(data) {
                    $('#output').text(data.responseText)
                }
            })
        })
    })
-->
</script>
</body>
</html>
