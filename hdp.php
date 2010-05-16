<?php

//Connect to database
mysql_connect("localhost","reliefweb","reliefweb") or die(mysql_error());
mysql_select_db("reliefweb") or die(mysql_error());

//Check input values
$regionid = "";
$condition = "";
$terms = "";
$countryid = "";
$regionid = "";
$dataCategoryid = "";
$dataTypeid = "";
$clusterid = "";
$showall = false;

if(isset($_GET['Showall']))
{
	$showall = true;
}
else
{
	if(isset($_GET['country']) && $_GET['country'] !="")
	{
		$country = $_GET['country'];
		$result = mysql_query("SELECT id FROM country WHERE name='".$country."'") or die(mysql_error());
		$row = mysql_fetch_array($result);
		$countryid = $row['id'];
		$condition = $condition."countryid = '".$countryid."'";
	}
	if(isset($_GET['region']) && $_GET['region'] != "")
	{
		$region = $_GET['region'];
		$result = mysql_query('SELECT id FROM region WHERE name="'.$region.'"') or die(mysql_error());
		$row = mysql_fetch_array($result);
		$regionid = $row['id'];
		if($condition != "")
		{
			$condition .= " and ";
		}
		$condition = $condition."regionid = '".$regionid."'";
	}
	if(isset($_GET['datacategory'])&& $_GET['datacategory'] != "")
	{
		$dataCategory = $_GET['datacategory'];
		$result = mysql_query('SELECT id FROM dataCategory WHERE name="'.$dataCategory.'"') or die(mysql_error());
		$row = mysql_fetch_array($result);
		$dataCategoryid = $row['id'];
		if($condition != "")
		{
			$condition .= " and ";
		}
		$condition = $condition."dataCategoryid = '".$dataCategoryid."'";
	}
	if(isset($_GET['datatype'])&& $_GET['datatype'] != "")
	{
		$dataType = $_GET['datatype'];
		$result = mysql_query('SELECT id FROM dataType WHERE name="'.$dataType.'"') or die(mysql_error());
		$row = mysql_fetch_array($result);
		$dataTypeid = $row['id'];
		if($condition != "")
		{
			$condition .= " and ";
		}
		$condition = $condition."dataTypeid = '".$dataTypeid."'";
	}
	if(isset($_GET['cluster'])&& $_GET['cluster'] != "")
	{
		$cluster = $_GET['cluster'];
		$result = mysql_query('SELECT id FROM cluster WHERE name="'.$cluster.'"') or die(mysql_error());
		$row = mysql_fetch_array($result);
		$clusterid = $row['id'];
		if($condition != "")
		{
			$condition .= " and ";
		}
		$condition = $condition."clusterid = '".$clusterid."'";
	}
}
//HTML top
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
<title>Humanitarian Data Portal</title>
</head>
<body>


<!-- Display search form for inventory items that match the input values -->
<form method="get" action="hdp.php">
	 Region:
	 <select name="region">
	 <?php
	$results = mysql_query('SELECT name FROM region') or die(mysql_error());
	echo '<option value=""></option>';
	while($theResult = mysql_fetch_array($results))
	{
		if ($theResult['name'] == $_GET['region']) $selected = " selected"; else $selected = "";
		echo '<option value="'.$theResult['name'].'"'.$selected.'>'.$theResult['name'].'</option>';
	}
	?>
	</select>
	<br />Country:
	<select name="country">
	<?php
	if ($regionid != "") $where = ' where regionid = "'.$regionid.'"'; else $where = "";
	$results = mysql_query('SELECT name FROM country'.$where) or die(mysql_error());
	echo '<option value=""></option>';
	while($theResult = mysql_fetch_array($results))
	{   
		if ($theResult['name'] == $_GET['country']) $selected = " selected"; else $selected = "";
		echo '<option value="'.$theResult['name'].'"'.$selected.'>'.$theResult['name'].'</option>';
	}?>
	</select>
	<br />Data Category:
	<select name="datacategory">
	<?php
	$results = mysql_query('SELECT name FROM dataCategory') or die(mysql_error());
	echo '<option value=""></option>';
	while($theResult = mysql_fetch_array($results))
	{
		if ($theResult['name'] == $_GET['datacategory']) $selected = " selected"; else $selected = "";
		echo '<option value="'.$theResult['name'].'"'.$selected.'>'.$theResult['name'].'</option>';
	}
	?>
	</select>
	<br />Data Type:
	<select name="datatype">
	<?php
	$results = mysql_query('SELECT name FROM dataType') or die(mysql_error());
	echo '<option value=""></option>';
	while($theResult = mysql_fetch_array($results))
	{   
		if ($theResult['name'] == $_GET['datatype']) $selected = " selected"; else $selected = "";
		echo '<option value="'.$theResult['name'].'"'.$selected.'>'.$theResult['name'].'</option>';
	}?>
	</select>
	<br />Cluster:
	<select name="cluster">
	<?php
	$results = mysql_query('SELECT name FROM cluster') or die(mysql_error());
	echo '<option value=""></option>';
	while($theResult = mysql_fetch_array($results))
	{
		if ($theResult['name'] == $_GET['cluster']) $selected = " selected"; else $selected = "";
		echo '<option value="'.$theResult['name'].'"'.$selected.'>'.$theResult['name'].'</option>';
	}?>
	</select>
	<br />
	<input type="submit" value="Search">
	<input type="submit" name="Showall" value="Show All">
</form>

<?php
//HTML Footer
if (isset($_GET['dataname']) && $_GET['dataname'] != "")
{
	
	$results2 = mysql_query('SELECT * FROM inventory WHERE id="'.$_GET['dataname'].'"') or die(mysql_error());
	$row = mysql_fetch_array($results2);
	echo "<p><b>Data name:</b> ".$row['dataName'].'</p>';
	echo "<p><b>Point of Contact:</b> ".$row['pointOfContact'].'</p>';
	echo "<p><b>Processing Instructions:</b> ".$row['processingInstructions'].'</p>';
	echo "<p><b>Notes:</b> ".$row['notes'].'</p>';
}
else 
{
	if (($condition != "") || $showall)
	{
		//print the table list, with search terms removed and a clickable name for each line
		//Search database
		$condition = " WHERE ".$condition;
		if($showall == false)
		{
			$conditon .= " and ";
		}
		$condition .= "isPublished = TRUE";
		$results2 = mysql_query('SELECT * FROM inventory'.$condition) or die(mysql_error());
		echo "Got results";
	?>
		<table border="1">
		<tr>
		<th>Data Name</th>
		<th>Data Access</th>
		<th>Access Level</th>
		<th>Data Type</th>
		<th>Data Category</th>
		<th>Data Indicator</th>
		<th>Cluster</th>
		<th>Data Format</th>
		<th>Data Region</th>
		<th>Data Country</th>
		<th>Source</th>
		<th>Resolution</th>
		</tr>
	<?php
		//Show these if list clicked on: pointOfContact,processingInstructions,notes
		while($theResult = mysql_fetch_array($results2))
		{
			echo "<tr>";
			echo '<td><a href="./hdp.php?dataname='.$theResult['id'].'">'.$theResult['dataName'].'</a></td>';
			echo '<td><a href="'.$theResult['dataAccess'].'">website</a></td>';
			$queryData = mysql_query('SELECT name FROM access WHERE id = '.$theResult['accessid']) or die(mysql_error()); 
			$row = mysql_fetch_array($queryData);
			echo "<td>".$row['name']."&nbsp;</td>";
			$queryData = mysql_query('SELECT name FROM datatype WHERE id = '.$theResult['dataTypeid']) or die(mysql_error()); 
			$row = mysql_fetch_array($queryData);
			echo "<td>".$row['name']."&nbsp;</td>";
			$queryData = mysql_query('SELECT name FROM datacategory WHERE id = '.$theResult['dataCategoryid']) or die(mysql_error()); 
			$row = mysql_fetch_array($queryData);
			echo "<td>".$row['name']."&nbsp;</td>";
			$queryData = mysql_query('SELECT name FROM dataindicator WHERE id = '.$theResult['dataIndicatorid']) or die(mysql_error()); 
			$row = mysql_fetch_array($queryData);
			echo "<td>".$row['name']."&nbsp;</td>";
			$queryData = mysql_query('SELECT name FROM cluster WHERE id = '.$theResult['clusterid']) or die(mysql_error()); 
			$row = mysql_fetch_array($queryData);
			echo "<td>".$row['name']."&nbsp;</td>";
			$queryData = mysql_query('SELECT name FROM dataformat WHERE id = '.$theResult['dataFormatid']) or die(mysql_error()); 
			$row = mysql_fetch_array($queryData);
			echo "<td>".$row['name']."&nbsp;</td>";
			$queryData = mysql_query('SELECT name FROM region WHERE id = '.$theResult['regionid']) or die(mysql_error()); 
			$row = mysql_fetch_array($queryData);
			echo "<td>".$row['name']."&nbsp;</td>";
			$queryData = mysql_query('SELECT name FROM country WHERE id = '.$theResult['countryid']) or die(mysql_error()); 
			$row = mysql_fetch_array($queryData);
			echo "<td>".$row['name']."&nbsp;</td>";
			$queryData = mysql_query('SELECT shortName FROM source WHERE id = '.$theResult['sourceid']) or die(mysql_error()); 
			$row = mysql_fetch_array($queryData);
			echo "<td>".$row['shortName']."&nbsp;</td>";
			echo "<td>".$theResult['resolution']."&nbsp;</td>";
		} ?>
	</table>
<?php 
	}
}
?>

</body>
</html>
