<?php
	//Connect to database
	mysql_connect("reliefweb.db.4961304.hostedresource.com","reliefweb","S0meth1ng") or die(mysql_error());
	mysql_select_db("reliefweb") or die(mysql_error());
	
	$dataname = "";
	$dataaccess = "";
	$accessid = "";
	$datatypeid = "";
	$datacategoryid = "";
	$dataindicatorid = "";
	$dataformatid= "";
	$clusterid = "";
	$regionid = "";
	$countryid = "";
	$sourcedid = "";
	$resolution = "";
	$pointofcontact = "";
	$processinginstructions = "";
	$notes = "";
	
	if(isset($_POST['dataName']))
	{	
		$dataname = mysql_real_escape_string($_POST['dataName']);
		$dataaccess = mysql_real_escape_string($_POST['dataAccess']);
		if(isset($_POST['accessid']))
		{
			$accessid = mysql_real_escape_string($_POST['accessid']);
		}
		if(isset($_POST['dataTypeid']))
		{
			$datatypeid = mysql_real_escape_string($_POST['dataTypeid']);
		}
		if(isset($_POST['dataCategoryid']))
		{
			$datacategoryid = mysql_real_escape_string($_POST['datacategoryid']);
		}
		if(isset($_POST['dataIndicatorid']))
		{
			$dataindicatorid = mysql_real_escape_string($_POST['dataIndicatorid']);
		}
		if(isset($_POST['dataFormatid']))
		{
			$dataformatid = mysql_real_escape_string($_POST['dataFormatid']);
		}
		if(isset($_POST['clusterid']))
		{
			$clusterid = mysql_real_escape_string($_POST['clusterid']);
		}
		if(isset($_POST['regionid']))
		{
			$regionid = mysql_real_escape_string($_POST['regionid']);
		}
		if(isset($_POST['countryid']))
		{
			$countryid = mysql_real_escape_string($_POST['countryid']);
		}
		if(isset($_POST['sourceid']))
		{
			$sourceid = mysql_real_escape_string($_POST['sourceid']);
		}
		if(isset($_POST['resolution']))
		{
			$resolution = mysql_real_escape_string($_POST['resolution']);
		}
		if(isset($_POST['pointOfContact']))
		{
			$pointofcontact = mysql_real_escape_string($_POST['pointOfContact']);
		}
		if(isset($_POST['processingInstructions']))
		{
			$processingInstructions = mysql_real_escape_string($_POST['processingInstructions']);
		}
		if(isset($_POST['notes']))
		{
			$notes = mysql_real_escape_string($_POST['notes']);
		}
		$insertString = "INSERT INTO inventory (dataName, dataAccess"; 
		$valueString = " VALUES('$dataname', '$dataaccess'"; 
		if($accessid != "")
		{
			$insertString .= ", accessid,";
			$valueString .= ", $accessid,"; 
		}
		if($dataTypeid != "")
		{
			$insertString .= ", dataTypeid";
			$valueString .= ", $dataTypeid"; 
		}
		if($dataCategoryid != "")
		{
			$insertString .= ", dataCategoryid";
			$valueString .= ", $dataCategoryid"; 
		}
		if($dataIndicatorid != "")
		{
			$insertString .= ", dataIndicatorid";
			$valueString .= ", $dataIndicatorid"; 
		}
		if($dataFormatid != "")
		{
			$insertString .= ", dataFormatid";
			$valueString .= ", $dataFormatid"; 
		}
		if($clusterid != "")
		{
			$insertString .= ", clusterid";
			$valueString .= ", $clusterid"; 
		}
		if($regionid != "")
		{
			$insertString .= ", regionid";
			$valueString .= ", $regionid"; 
		}
		if($countryid != "")
		{
			$insertString .= ", countryid";
			$valueString .= ", $countryid"; 
		}
		if($sourceid != "")
		{
			$insertString .= ", sourceid";
			$valueString .= ", $sourceid"; 
		}
		if($resolution != "")
		{
			$insertString .= ", resolution";
			$valueString .= ", '$resolution'"; 
		}
		if($pointOfContact != "")
		{
			$insertString .= ", pointOfContact";
			$valueString .= ", '$pointOfContact'"; 
		}
		if($processingInstructions != "")
		{
			$insertString .= ", processingInstructions";
			$valueString .= ", '$processingInstructions'"; 
		}
		if($notes != "")
		{
			$insertString .= ", notes";
			$valueString .= ", '$notes'"; 
		}
		$insertString .= ") ";
		$valueString .= ")";
		$queryString = $insertString . $valueString;
		mysql_query($queryString) or die(mysql_error());
		echo "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">";
		echo "<html>";
		echo "<head>";
		echo "<meta content=\"text/html; charset=ISO-8859-1\" http-equiv=\"content-type\">";
		echo "<title>Humanitarian Data Portal - Inventory Updated</title>";
		echo "</head>";
		echo "<body>";
		echo "Item added to inventory.<br />";
		echo "<a href=\"updateinventory.php\">Add another item</a>";
		echo "</body>";
		echo "</html>";
		unset($_POST['dataName']);	 
	}
	else
	{?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
<script type="text/javascript">
function CheckValues()
{
	var myForm = document.frmInventoryItem;
	if(myForm.dataName.value.length == 0)
	{
		alert("Please enter a name for the item.");
		return false;
	}
	if(myForm.dataAccess.value.length == 0)
	{
		alert("Please enter a place where the site can be accessed");
		return false;
	}
	return true;
}
/*
formValidator.setAddnlValidationFunction("CheckPasswords");
	Taken from:
	http://www.javascript-coder.com/javascript-form/javascript-form-submit.phtml on:
    19/10/2006
*/
function SubmitForm()
{
	if(CheckValues())
	{
		document.frmInventoryItem.submit();
	}
}</script>
<title>Humanitarian Data Portal - Update Inventory</title>
</head>
<body>
<!-- Display form to add an item to the inventory -->
<form method="post" name="frmInventoryItem" action="updateinventory.php">
	 Name:<input type="text" name="dataName" /><br />
	 Access: <input type="text" name="dataAccess" /> <br />
	 Access Level:
	 <select name="accessid">
	 <?php
	$results = mysql_query('SELECT id, name FROM access') or die(mysql_error());
	echo '<option value=""></option>';
	while($theResult = mysql_fetch_array($results))
	{
		if ($theResult['id'] == $_POST['accessid']) $selected = " selected=\"selected\""; else $selected = "";
		echo '<option value="'.$theResult['id'].'"'.$selected.'>'.$theResult['name'].'</option>';
	}
	?>
	</select>
	<br />Data Type:
	<select name="dataTypeid">
	<?php
	$results = mysql_query('SELECT id, name FROM dataType') or die(mysql_error());
	echo '<option value=""></option>';
	while($theResult = mysql_fetch_array($results))
	{   
		if ($theResult['id'] == $_POST['dataTypeid']) $selected = " selected"; else $selected = "";
		echo '<option value="'.$theResult['id'].'"'.$selected.'>'.$theResult['name'].'</option>';
	}?>
	</select>
	<br />Data Category:
	<select name="dataCategoryid">
	<?php
	$results = mysql_query('SELECT id, name FROM dataCategory') or die(mysql_error());
	echo '<option value=""></option>';
	while($theResult = mysql_fetch_array($results))
	{
		if ($theResult['id'] == $_POST['dataCategoryid']) $selected = " selected=\"selected\""; else $selected = "";
		echo '<option value="'.$theResult['id'].'"'.$selected.'>'.$theResult['name'].'</option>';
	}
	?>
	</select>
	<br />Data Indicator:
	<select name="dataIndicatorid">
	<?php
	$results = mysql_query('SELECT id, name FROM dataIndicator') or die(mysql_error());
	echo '<option value=""></option>';
	while($theResult = mysql_fetch_array($results))
	{
		if ($theResult['id'] == $_POST['dataIndicatorid']) $selected = " selected=\"selected\""; else $selected = "";
		echo '<option value="'.$theResult['id'].'"'.$selected.'>'.$theResult['name'].'</option>';
	}
	?>
	</select>
	<br />Data Format:
	<select name="dataFormatid">
	<?php
	$results = mysql_query('SELECT id, name FROM dataFormat') or die(mysql_error());
	echo '<option value=""></option>';
	while($theResult = mysql_fetch_array($results))
	{
		if ($theResult['id'] == $_POST['dataFormatid']) $selected = " selected=\"selected\""; else $selected = "";
		echo '<option value="'.$theResult['id'].'"'.$selected.'>'.$theResult['name'].'</option>';
	}
	?>
	</select>
	<br />Cluster:
	<select name="clusterid">
	<?php
	$results = mysql_query('SELECT id, name FROM cluster') or die(mysql_error());
	echo '<option value=""></option>';
	while($theResult = mysql_fetch_array($results))
	{
		if ($theResult['id'] == $_POST['clusterid']) $selected = " selected"; else $selected = "";
		echo '<option value="'.$theResult['id'].'"'.$selected.'>'.$theResult['name'].'</option>';
	}?>
	</select>
	 <br />Region:
	 <select name="regionid">
	 <?php
	$results = mysql_query('SELECT id, name FROM region') or die(mysql_error());
	echo '<option value=""></option>';
	while($theResult = mysql_fetch_array($results))
	{
		if ($theResult['id'] == $_POST['regionid']) $selected = " selected=\"selected\""; else $selected = "";
		echo '<option value="'.$theResult['id'].'"'.$selected.'>'.$theResult['name'].'</option>';
	}
	?>
	</select>
	<br />Country:
	<select name="countryid">
	<?php
	if ($regionid != "") $where = ' where regionid = "'.$regionid.'"'; else $where = "";
	$results = mysql_query('SELECT id, name FROM country'.$where) or die(mysql_error());
	echo '<option value=""></option>';
	while($theResult = mysql_fetch_array($results))
	{   
		if ($theResult['id'] == $_POST['countryid']) $selected = " selected=\"selected\""; else $selected = "";
		echo '<option value="'.$theResult['id'].'"'.$selected.'>'.$theResult['name'].'</option>';
	}?>
	</select>
	<br />Source:
	<select name="sourceid">
	<?php
	$results = mysql_query('SELECT id, shortName FROM source') or die(mysql_error());
	echo '<option value=""></option>';
	while($theResult = mysql_fetch_array($results))
	{
		if ($theResult['id'] == $_POST['sourceid']) $selected = " selected"; else $selected = "";
		echo '<option value="'.$theResult['id'].'"'.$selected.'>'.$theResult['name'].'</option>';
	}?>
	</select>
	<br />Resolution:
	<input type="text" name="resolution" />
	<br />Point of contact:
	<input type="text" name="pointOfContact" />
	<br />Processing Instructions:
	<input type="text" name="processingInstructions" />
	<br />Notes:
	<input type="text" name="notes"><br />
	<input type="button" value="Add item" onclick="SubmitForm()">
</form>
</body>
</html><?php 
}?>