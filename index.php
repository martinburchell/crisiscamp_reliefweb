<?php
  $search = $_GET['search'];
  $country = $_GET['country'];
  $doctype = $_GET['doctype'];
  $failed = $_GET['failed'];
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

  <meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
  <title>Quick Search For Country Specific Information</title>


  <style type="text/css">

/*<![CDATA[*/
@import url(styles.css);
<!--[if gte IE 5]>
#container {
/* For Internet Explorer: */
width: expression(Math.min(parseInt(this.offsetWidth), 58 ) + "em");
width: expression( document.body.clientWidth > (500/12) * parseInt(document.body.currentStyle.fontSize)? "58em":"auto" ); }
<![endif]-->
/*]]>*/
  </style>
</head>


<body>

<a class="imagelink" href="http://www.reliefweb.int"><img src="reliefweb.png" alt="ReliefWeb" height="56" width="217"></a>
<h1>Quick Search for Country Specific Information</h1>

<?php
if ($failed)
{
  echo "<p>No results were found. Please search again.</p>";
}
?>

<form action="mapsearch.php"> <label> Which country?
  <select name="country">
  <option selected="selected" value="haiti">Haiti</option>
  <!-- option value="uk">UK</option -->
  </select>

  </label> <label>What type of information?
  <select name="doctype">
  <option selected="selected" value="map">Map</option>
  <!-- option value="proj_des">Project Descriptions</option -->
  </select>

  </label>
  <label>Keywords, eg hospital <input name="search" value="<?php echo $search ?>"></label>
  <input class="submit" value="Search" type="submit"></form>

</body>
</html>

