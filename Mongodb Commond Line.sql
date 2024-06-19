# The command contains the username and password to connect to the MongoDB server (the text after the -p option is the password). Your output will be different from the one shown here.
mongosh -u root -p PASSWORD --authenticationDatabase admin local

# This code will show the version of the MongoDB server.
db.version()

# This command will print a list of the databases present on the server, including default and user-defined.
show dbs

# This command will switch the context to the database named training. If the database training doesn't exist, MongoDB will create it for you when you insert data.
use training

# This command will create a collection name mycollection inside the training database
db.createCollection("mycollection")

# This command will print the list of collections in your current database.
show collections

# The above command inserts the json document for example: {"color":"white","example":"milk"} into the collection.
db.mycollection.insert({"color":"white","example":"milk"})

# The previous command inserts the JSON document {"color":"blue","example":"sky"} into the collection.
db.mycollection.insert({"color":"blue","example":"sky"})

# This command gives you the number of documents in the collection.
db.mycollection.countDocuments()

# This command lists all the documents in the collection mycollection
# Notice that MongoDB automatically adds an _id field to every document to identify the document.
db.mycollection.find()

# Disconnect from MongoDB server
exit