<?php 
/* 
 * Created on 30 Jan 2010
 * 
 * To change the template for this generated file go to 
 * Window - Preferences - PHPeclipse - PHP - Code Templates 
 */ 
  
  $search_string = $_GET['search'];
  $country = $_GET['country'];
  $doctype = $_GET['doctype'];

  include "./rss_php.php"; 
 /* country 
  * doctype 
  * search 
  */ 
  $feed_url = ""; 

  $RSS_PHP = new rss_php; 
  $localmapdir = "mapfiles/";
  switch($search_string) 
  { 
  	case "hospitals": 
  		$feed_url = "http://www.reliefweb.int/RWFeed/FastRSS?fql=and%28meta.collection%3Aor%28rwmaps%29%2Crwcc%3Ahti%2Crwrc%3A2%2Crwarchived%3Anot%28%271%27%29%2Cstring%28%22hospital%22%2C+mode%3D%22simpleall%22%2Cannotation_class%3D%22user%22%29%29&view=rwallsppublished&hits=25&offset=0&qtf_lemmatize=1&sortby=rwpubdate-rwpubdatedisplay&sortdirection=descending&collapseon=batvuigeneric1"; 
		break;
  	case "idp": 
  		$feed_url = "http://www.reliefweb.int/RWFeed/FastRSS?fql=and%28meta.collection%3Aor%28rwmaps%29%2Crwcc%3Ahti%2Crwrc%3A2%2Crwarchived%3Anot%28%271%27%29%2Cstring%28%22IDP%22%2C+mode%3D%22simpleall%22%2Cannotation_class%3D%22user%22%29%29&view=rwallsppublished&hits=25&offset=0&qtf_lemmatize=1&sortby=rwpubdate-rwpubdatedisplay&sortdirection=descending&collapseon=batvuigeneric1"; 
		break;
  	default: 
  		$feed_url = "http://www.reliefweb.int/RWFeed/FastRSS?fql=and%28meta.collection%3Aor%28rwmaps%29%2Crwcc%3Ahti%2Crwrc%3A2%2Crwarchived%3Anot%28%271%27%29%2Cstring%28%22%22%2C+mode%3D%22simpleall%22%2Cannotation_class%3D%22user%22%29%29&view=rwallsppublished&hits=25&offset=0&qtf_lemmatize=1&sortby=rwpubdate-rwpubdatedisplay&sortdirection=descending&collapseon=batvuigeneric1"; 
		break;
  }  
  $RSS_PHP->load($feed_url);

  if (count($RSS_PHP->items) == 0)
  {
    header('Location: index.php?failed=1&country=' . $country . '&doctype=' . $doctype . '&search=' . $search_string);
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
  echo "<h1>Search Results for Country Specific Information</h1>";
 
  echo "<p>$title</p>";

  echo "<ul>"; 

  foreach($RSS_PHP->items as $item) 
  { 
    $mappageurl = $item['link']['value'];
    $localuntiledfile = $localmapdir . $item['guid']['value'] . '.pdf';
    $localtiledfile = $localmapdir . $item['guid']['value'] . '/' . $item['guid']['value'] . '.pdf';
    $localtileviewer = $localmapdir . $item['guid']['value'] . '/openlayers.html';
    if (!file_exists($localtiledfile) and !file_exists($localuntiledfile))
    {
      $mappagebody=file_get_contents($mappageurl);
      preg_match('/fullmaps_am.*?OpenElement/', $mappagebody, $mapPDFname);
      $mapPDFurl = "http://www.reliefweb.int/rw/" . $mapPDFname[0];
      $pdffile = file_get_contents($mapPDFurl);
      file_put_contents($localuntiledfile, $pdffile);
    }
    if (file_exists($localuntiledfile))
    {
      echo "<li>";
      print_r($item['title']['value']);
      echo " (<a href=\"" . $localuntiledfile . "\">PDF</a>) (no images yet)";
      echo "</li>";
    }
    if (file_exists($localtiledfile))
    {
      echo "<li>";
      print_r($item['title']['value']);
      echo " (<a href=\"" . $localtiledfile . "\">PDF</a>) (<a href=\"" . $localtileviewer . "\">images</a>)";
      echo "</li>";
    }
  } 
  echo "</ul>";
	
?> 		 
	<a href="index.php">Back to search</a>
	</body> 
</html>

