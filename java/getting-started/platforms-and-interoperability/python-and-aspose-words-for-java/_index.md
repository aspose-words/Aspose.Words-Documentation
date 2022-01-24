---
title: Python and Aspose.Words for Java
description: "Python: how to use Aspose.Words for Java."
type: docs
weight: 50
url: /java/python-and-aspose-words-for-java/
aliases:
  - /java/aspose-words-java-for-python/
---

## Prerequisites

{{% alert color="primary" %}} 

Python developers need to install JPype to make use of Java from Python. You can download JPype from here <http://jpype.sourceforge.net/>

Download [the latest version of Aspose.Words for Java](https://downloads.aspose.com/words/java). Extract files and copy the lib folder with jar files to the root folder of your project. 

{{% /alert %}} 

## Hello World!

This is a simple application that creates an empty document, inserts some content and saves it as a Microsoft Word .DOC document.

**Python**

{{< highlight csharp >}}

#!c:\python25\python.exe

import jpype
import os.path
jarpath = os.path.join(os.path.abspath("."), "lib")
jpype.startJVM(jpype.getDefaultJVMPath(), "-Djava.ext.dirs=%s" % jarpath)
Document = jpype.JClass("com.aspose.words.Document")
DocumentBuilder = jpype.JClass("com.aspose.words.DocumentBuilder")
doc = Document()
builder = DocumentBuilder(doc)
builder.write("Hello world!")
doc.save("C:\\Temp\\out.doc")
{{< /highlight >}}

## Simple Mail Merge

Aspose.Words provides a reporting generation facility similar to Microsoft Word’s mail merge. Here is a code example to perform a simple mail merge using Aspose.Words.

**Python**

{{< highlight csharp >}}

#!c:\python25\python.exe

import jpype
import os.path

### path to directory with Aspose.Words.jar 

jarpath = os.path.join(os.path.abspath("."), "lib")

#### JVM

jpype.startJVM(jpype.getDefaultJVMPath(), "-Djava.ext.dirs=%s" % jarpath)

##### Document type

Document = jpype.JClass("com.aspose.words.Document")

#Open template document

doc = Document ("C:\\Temp\\in.doc")

###### names and values arrays

names = ["Name", "Company", "City"]
values = ["Alexey Noskov", "Aspose", "Auckland"]

####### mail merge

doc.getMailMerge().execute(names, values)

#Save output document

doc.save("C:\\Temp\\out.doc")
{{< /highlight >}}

## Invoke Static Methods

Some methods in the Aspose.Words object model are static. For example, there is the **Document.DetectFormat** method that allows you to detect the original format of a file.

**Python**

{{< highlight csharp >}}

#!c:\python25\python.exe

import jpype
import os.path
\# Get path to directory with Aspose.Words.jar 
jarpath = os.path.join(os.path.abspath("."), "lib")
\# Start JVM
jpype.startJVM(jpype.getDefaultJVMPath(), "-Djava.ext.dirs=%s" % jarpath)
\# Create Document type
Document = jpype.JClass("com.aspose.words.Document")
\# Create LoadFormat type
LoadFormat = jpype.JClass("com.aspose.words.LoadFormat");
\# Now we can call static methods on the class object.
format = Document.detectFileFormat("C:\\Temp\\in.doc");
if (format == LoadFormat.DOC):
    print "DOC"
elif (format == LoadFormat.HTML):
    print "HTML"
else:
print "Unknown format"
{{< /highlight >}}

## Save or Convert a Document

With Aspose.Words, you can save a document in a variety of formats. For the full list of formats and identifiers see the **SaveFormat** enumeration.

**Python**

{{< highlight csharp >}}

### a document in a variety of formats.

SaveFormat = jpype.JClass("com.aspose.words.SaveFormat")
doc.save("C:\\Temp\\out.doc", SaveFormat.DOC)
doc.save("C:\\Temp\\out.html", SaveFormat.HTML)
doc.save("C:\\Temp\\out.txt ", SaveFormat.TEXT)
{{< /highlight >}}

## Mail Merge with Regions

First, create a Java class that would return a **ResultSet** object as shown below. Compile it, put it in a jar file, and place it in the “lib” folder inside your application root folder.

**Java**

{{< highlight csharp >}}
public class RelationSet 
{
    public static ResultSet execQuery()
    {
        try
        {
            //Create database query
            String sqlString = "SELECT * FROM Users";
            //Create statement
            Statement stmt = createStatement();
            //Return ResultSet object
            return stmt.executeQuery(sqlString);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return null;
    }
    /**
    * Utility function that creates a connection to the Database.
    */
    private static Statement createStatement() throws Exception
    {
        //Load a DB driver that is used by the demos
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        //Compose connection string.
        String connectionString = "jdbc:odbc:DRIVER={Microsoft Access Driver (*.mdb)};DBQ=C:\\Temp\\test.mdb;UID=Admin";
        //DSN-less DB connection.
        Connection connection = DriverManager.getConnection(connectionString);
        //Reutrn Statement
        return connection.createStatement();
    }
}
{{< /highlight >}}

Next, write your Python code.

**Python**

{{< highlight csharp >}}

#!c:\python25\python.exe

import jpype
import os.path

### path to directory with Aspose.Words.jar 

jarpath = os.path.join(os.path.abspath("."), "lib")

#### JVM

jpype.startJVM(jpype.getDefaultJVMPath(), "-Djava.ext.dirs=%s" % jarpath)

##### Document type

Document = jpype.JClass("com.aspose.words.Document")

###### RelationSet type

RelationSet = jpype.JClass("RelationSet")

#Open template document

doc = Document ("C:\\Temp\\in.doc")

###### a method of RelationSet: the database query

myResultSet = RelationSet.execQuery()

####### mail merge with regions

doc.getMailMerge().executeWithRegions("Users", myResultSet)

#Save output document

doc.save("C:\\Temp\\out.doc")
{{< /highlight >}}
