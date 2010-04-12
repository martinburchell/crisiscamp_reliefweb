import csv
import MySQLdb

class Importer(object):
    def __init__(self, sql_server, sql_username, sql_password, db_name):
        self.db = MySQLdb.connect(host=sql_server, user=sql_username, passwd=sql_password, db=db_name)
        
    def __del__(self):
        self.db.close()
        
    def get_sql_value(self, value, integer=False):
        if integer or value == "null":
            return value + ","
    
        return "'" + value.replace("'", "\\\'") + "'"
    
    
