#!/usr/bin/python

from hdp_importer import HdpImporter

db_name = "reliefweb"
sql_username = "reliefweb"
sql_password = "reliefweb"
sql_server = "localhost"

data_dir = "/home/aptivate/crisis_camp/reliefweb/crisiscamp_reliefweb/data/"
file_prexix = data_dir + "20100310_inventory_of_data_"
inventory_file = file_prefix + "inventory.csv"
access_file = file_prefix + "access.csv"
cluster_file = file_prefix + "cluster.csv"
country_file = file_prefix + "country.csv"
datacategory_file = file_prefix + "datacategory.csv"
dataformat_file = file_prefix + "dataformat.csv"
dataindicator_file = file_prefix + "dataindicator.csv"
region_file = file_prefix + "region.csv"
source_file = file_prefix + "source.csv"
                
print "Importing HDP inventory..."
importer = HdpImporter(sql_server, sql_username, sql_password, db_name)
importer.import_data(inventory_file)

