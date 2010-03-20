<?php
require_once("./rss_php.php"); 

function get_rss_results()
{
    $results = array();

    $feed_url = ""; 

    $RSS_PHP = new rss_php; 
    $localmapdir = "mapfiles/";
    switch($search) 
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
            $results[] = $item['title']['value'] .
                " (<a href=\"" . $localuntiledfile . "\">PDF</a>) (no images yet)";
        }
        if (file_exists($localtiledfile))
        {
            $results[] = $item['title']['value'] .
                " (<a href=\"" . $localtiledfile . "\">PDF</a>) (<a href=\"" . $localtileviewer . "\">images</a>)";
        }
    }

    return $results;
} 
