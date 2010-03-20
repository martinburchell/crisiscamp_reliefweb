import csv
import MySQLdb

from importer import Importer

class HdpImporter(Importer):
        
    def import_data(self, filename):
        self.db.query("truncate table hdp;")

        reader = csv.reader(open(filename), delimiter=',', quotechar='"')

        first_row = True
    
        for row in reader:
            if first_row:
                first_row = False
            else:
                title = row[1]

                self.db.query("insert into hdp values(" + \
                              "null," + \
                              self.get_sql_value(title) + \
                              "null);")
