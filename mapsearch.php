<?php 
/* 
 * Created on 30 Jan 2010
 * 
 * To change the template for this generated file go to 
 * Window - Preferences - PHPeclipse - PHP - Code Templates 
 */ 
  
$country = $_GET['country'];
$doctype = $_GET['doctype'];
$source = $_GET['source'];
$database = $_GET['database'];
$search = $_GET['search'];

require_once('reliefweb_rss.php');
require_once('reliefweb_hdp.php');


if ($database == "RSS")
{
    $results = &get_rss_results($country, $doctype, $search);
}
else
{
    $results = &get_hdp_results($country, $doctype, $source, $search);
}

if (count($results) == 0)
{
    header('Location: index.php?failed=1&country=' . $country . '&doctype=' . $doctype . '&search=' . $search);
    exit;
//    $message = "No search results were found. Please search again.";
}

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
		<?php
  			$title = 'Haiti - Maps - ' . $search_string;
 			echo "<title>$title</title>"; 
		?>
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
<?php
  echo "<h1>Search Results for Country Specific Information</h1>\n";
 
  echo "<p>$title</p>\n";

  echo "<ul>\n"; 

foreach($results as $result)
{
    echo "<li>\n";
    echo $result. "\n";
    echo "</li>\n";
}

  echo "</ul>\n";
	
?> 		 
	<a href="index.php">Back to search</a>
	</body> 
</html>

