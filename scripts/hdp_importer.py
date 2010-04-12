import csv
import MySQLdb

from importer import Importer

class HdpImporter(Importer):

	field_name_conversions = {\
				"abbreviation":"code",\
				"Area of Interest":"areaOfInterest",\
				"Sector":"sector",\
				"Data Name":"dataName",\
				"Data Access":"dataAccess",\
				"Access":"accessid",\
				"DataType":"dataTypeid",\
				"DataCategory(s)":"dataCategoryid",\
				"DataIndicator(s)":"dataIndicatorid",\
				"Cluster(s)":"clusterid",\
				"DataFormat(s)":"dataFormatid",\
				"Region":"regionid",\
				"Country(s)":"countryid",\
				"Source":"sourceid",\
				"Resolution":"resolution",\
				"Point of Contact":"pointOfContact",\
				"Processing Instructions":"processingInstructions",\
				"Notes":"notes"\
				}	
	
        def get_col_data(self, row, first_row):
		first_col = True
		temp_string = ""
		if len(row) == 1:
			temp_string = self.get_sql_value(row[0], row[0].isdigit())
			return temp_string
		for col in row:
			if first_row:
				if first_col:
					if col in self.field_name_conversions:
						temp_string = temp_string + self.field_name_conversions[col]
					else:
						temp_string = temp_string + col
					first_col = False
				else:
					if col in self.field_name_conversions:
						temp_string = temp_string + ", " + self.field_name_conversions[col]
					else:
						temp_string = temp_string + ", " + col
			else:
				if first_col:
					temp_string = temp_string + self.get_sql_value(col, col.isdigit())
					first_col = False
				else:
					temp_string = temp_string + ", " + self.get_sql_value(col, col.isdigit())
		
		return temp_string

	def import_data(self, filename, tablename):
	        self.db.query("truncate table " + tablename + ";")

	        reader = csv.reader(open(filename), delimiter=',', quotechar='"')

	        first_row = True    
		the_query = ""
		headers = ""	

	        for row in reader:
			the_query = "insert into " + tablename + "("
	   		if first_row:
				print row
				headers = self.get_col_data(row, first_row)
				if headers.find(",") == -1:
					the_query = the_query + "name) values(" + headers
				first_row = False 
	   		else:
				if headers.find(",") == -1:
					the_query = the_query + "name"
				else:
					the_query = the_query + headers
				 
				the_query = the_query + ") values("
				the_query = the_query + self.get_col_data(row, first_row)

			if the_query.find("values") != -1 and row != []:
				the_query = the_query + ");"
				print the_query
	               		self.db.query(the_query)				
