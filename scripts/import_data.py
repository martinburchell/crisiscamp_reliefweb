#!/usr/bin/python
import MySQLdb
import sys
from hdp_importer import HdpImporter

db_name = "reliefweb"
sql_username = "reliefweb"
sql_password = "reliefweb"
sql_server = "localhost"

data_dir = "/home/daniell/data/"
file_prefix = data_dir + "20100310_inventory_of_data_"
inventory_file = file_prefix + "inventory.csv"
access_file = file_prefix + "access.csv"
cluster_file = file_prefix + "cluster.csv"
country_file = file_prefix + "country.csv"
datacategory_file = file_prefix + "datacategory.csv"
dataformat_file = file_prefix + "dataformat.csv"
dataindicator_file = file_prefix + "dataindicator.csv"
datatype_file = file_prefix + "datatype.csv"
region_file = file_prefix + "region.csv"
source_file = file_prefix + "source.csv"
                
print "Importing HDP inventory..."
try:
	importer = HdpImporter(sql_server, sql_username, sql_password, db_name)
	importer.import_data(access_file, "access")
	importer.import_data(cluster_file, "cluster")
	importer.import_data(country_file, "country")
	importer.import_data(datacategory_file, "dataCategory")
	importer.import_data(dataformat_file, "dataFormat")
	importer.import_data(dataindicator_file, "dataIndicator")
	importer.import_data(datatype_file, "dataType")
	importer.import_data(region_file, "region")
	importer.import_data(source_file, "source")
	importer.import_data(inventory_file, "inventory")
# Borrowed from http://www.kitebird.com/articles/pydbapi.html on 01/04/2010

except MySQLdb.Error, e:
	print "Error %d: %s" % (e.args[0], e.args[1])
	sys.exit (1)

