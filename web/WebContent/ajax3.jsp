<!doctype html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Datepicker - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#date1" ).datepicker();
    $( "#date2" ).datepicker();
    $("#dialog").dialog();
    $( document ).tooltip();
  } );
  </script>
</head>
<body>
 
<p>cafe in Date: <input type="text" id="date1"></p>
<p>cafe out Date: <input type="text" id="date2"></p>
<hr color="red">
<div id="dialog" title="select!!!!">
  <p>I am dialog....</p>
</div>
<a href="http://www.naver.com" 
   title="move to NAVER">Naver portal</a>
 
 
</body>
</html>