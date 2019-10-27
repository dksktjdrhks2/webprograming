<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Datepicker - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <style>
  #draggable { width: 150px; height: 150px; padding: 0.5em; }
  label {
    display: inline-block;
    width: 5em;
  }
  </style>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
	  $( "#date1" ).datepicker();
	  $( "#date2" ).datepicker();
	  $( "#draggable" ).draggable();
	  $( "#dialog" ).dialog();
	  $( document ).tooltip();
  } );
  </script>
</head>
<body>
 
<p>cafe in Date: <input type="text" id="date1"></p>
<p>cafe out Date: <input type="text" id="date2"></p>
<hr>
<div id="draggable" class="ui-widget-content">
  <p>Drag me around</p>
</div>
<div id="dialog" title="Basic dialog">
  <p>This is the default dialog which is useful for displaying information. The dialog window can be moved, resized and closed with the 'x' icon.</p>
</div>
<p><label for="age">Your age:</label><input id="age" title="ing"></p>
 
</body>
</html>