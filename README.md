####CSVKeep 

CSVKeep is an Importer/Exporter which allows you to import CSV files and save to your database. It also allows you to export your data in a JSON format. 


####Design
I designed this script to be easily expandable to support other formats if needed. 

####Installation
In #Rails #3, you need to specify the Attr Accessible parameters in your model. 


####Usage
You can use a #Method to run the tasks, or you can use a #Rake task

###Method 
Place the Import and Export methods in your app, then call the method you need

##Import CSV

Stock.import('your_file_path.csv')


##Export to JSON

Stock.export


###Rake Task
Alternatively, you can run a rake task.

##Import CSV

Rake data:import


##Export to JSON

Rake data:export



###Minor issues and Roadmap
I am still working on fixing some of these bugs:

1) Some conflicts with "id" and "primary id"
2) Modifier(s) need to be placed in an array when exporting to json.
3) Primary id, and Timestamps need to be removed from json output.
4) Need to write better tests to prevent issues like scalability when using large files and other issues.






