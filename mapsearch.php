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
<html> 
	<body>
  		<ul> 
<?php   
  echo $search_string;
  $RSS_PHP->load($feed_url); 
  foreach($RSS_PHP->items as $item) 
  { 
//   	echo "<li><a href=\"";
// 	print_r($item['link']['value']);
// 	echo "\">";
// 	print_r($item['title']['value']);
//         echo "</a></li><br/>"; 
    $mappageurl = $item['link']['value'];
    $getresult=http_get($mappageurl);
    $mappagebody = http_parse_message($getresult)->body;
    preg_match('/fullmaps_am.*?OpenElement/', $mappagebody, $mapPDFurl);
    echo "<li><a href=\"http://www.reliefweb.int/rw/";
    print_r($mapPDFurl[0]);
    echo "\">";
    print_r($item['title']['value']);
    echo "</a></li><br/>"; 
  } 
?> 
		</ul> 
	</body> 
</html>
