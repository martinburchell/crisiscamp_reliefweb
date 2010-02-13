<?php 
/* 
 * Created on 30 Jan 2010
 * 
 * To change the template for this generated file go to 
 * Window - Preferences - PHPeclipse - PHP - Code Templates 
 */ 
  
  include "./rss_php.php"; 
 /* country 
  * doctype 
  * search 
  */ 
  $feed_url = ""; 
  $search_string = $_GET['search']; 
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
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
		<?php
			echo "<title>Haiti " . $search_string . " search</title>" 
		?>
	</head> 
	<body>
<?php   
  echo "<h1>Haiti " . $search_string . " search</h1>";
  echo "<ul>"; 
  $RSS_PHP->load($feed_url); 
  foreach($RSS_PHP->items as $item) 
  { 
    $mappageurl = $item['link']['value'];
    $localuntiledfile = $localmapdir . $item['guid']['value'] . '.pdf';
    $localtiledfile = $localmapdir . $item['guid']['value'] . '/' . $item['guid']['value'] . '.pdf';
    $localtileviewer = $localmapdir . $item['guid']['value'] . '/openlayers.html';
    if (!file_exists($localtiledfile) and !file_exists($localuntiledfile))
    {
      $getresult=http_get($mappageurl);
      $mappagebody = http_parse_message($getresult)->body;
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
	</body> 
</html>
