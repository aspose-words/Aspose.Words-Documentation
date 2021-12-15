---
title: PHP and Aspose.Words for Java
description: "PHP: how to use Aspose.Words for Java."
type: docs
weight: 40
url: /java/php-and-aspose-words-for-java/
---

## Prerequisites

{{% alert color="primary" %}}
Install and configure the PHP/Java Bridge to make use of Java from PHP. For more details about installing and configuring the PHP see <https://www.php.net/manual/en/install.php>.

Also, you can download PHP/Java Bridge that doesn’t require a java extension from <http://php-java-bridge.sourceforge.net/pjb/>. The installation instruction for installing PHP/ Java Bridge can be found here <http://php-java-bridge.sourceforge.net/pjb/installation.php>. 

Download [the latest version of Aspose.Words for Java](https://downloads.aspose.com/words/java). Extract files and copy the lib folder with jar files to the root folder of your project. 

{{% /alert %}}

## Hello World!

This is a simple application that creates an empty document, inserts some content and saves it as a Microsoft Word .DOC document.

**PHP**

{{< highlight csharp >}}
<?php 
require_once("http://localhost:8080/JavaBridge/java/Java.inc"); 
java_require("lib\\Aspose.Words.jdk15.jar;lib\\jaxen-1.1.jar");
$doc = new Java("com.aspose.words.Document");
$builder = new Java("com.aspose.words.DocumentBuilder");
$builder->setDocument($doc);
$builder->write("Hello world!");
$doc->save("C:\\Temp\\out.doc");
?>
{{< /highlight >}}

## Simple Mail Merge

Aspose.Words provides a reporting generation facility similar to Microsoft Word’s mail merge. Here is a code example to perform a simple mail merge using Aspose.Words.

**PHP**

{{< highlight csharp >}}
<?php 
require_once("http://localhost:8080/JavaBridge/java/Java.inc"); 
java_require("lib\\Aspose.Words.jdk15.jar;lib\\jaxen-1.1.jar");

// Open template file
$doc = new Java("com.aspose.words.Document", "C:\\Temp\\in.doc");

// Create names and values arrays
$names = array("FullName", "Company", "City");
$values = array("Alexey Noskov", "Aspose", "Auckland");

// Execute mailmerge
$doc->getMailMerge()->execute($names, $values);

// Save generated report
$doc->save("C:\\Temp\\out.doc");
?>
{{< /highlight >}}

## Invoke Static Methods

Some methods in the Aspose.Words object model are static. For example, there is the Document.DetectFileFormat method that allows you to detect the original format of a file.

**PHP**

{{< highlight csharp >}}
<?php 
require_once("http://localhost:8080/JavaBridge/java/Java.inc"); 
java_require("lib\Aspose.Words.jdk15.jar;lib\jaxen-1.1.jar");
$loadFormat = new Java("com.aspose.words.LoadFormat");

// Note creating a class object, not an instance.
$doc = new JavaClass("com.aspose.words.Document");

// Now we can call static methods on the class object.
$test = $doc->detectFileFormat("C:\\Temp\\out.doc");
if ($test == $loadFormat->DOC)
{
    echo("DOC");
}
else if ($test == $loadFormat->HTML)
{
    echo("HTML");
}
else
{
    echo("Unknown format");
}
?>
{{< /highlight >}}

## Save or Convert a Document

With Aspose.Words, you can save a document in a variety of formats. For the full list of formats and identifiers see the **SaveFormat** enumeration.

**PHP**

{{< highlight csharp >}}
//Save a document in a variety of formats.
$saveFormat = new Java("com.aspose.words.SaveFormat");
$doc->save("C:\\Temp\\out.doc", $saveFormat->DOC);
$doc->save("C:\\Temp\\out.html", $saveFormat->HTML);
$doc->save("C:\\Temp\\out.txt", $saveFormat->TEXT
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

Next, write your PHP code.

**PHP**

{{< highlight csharp >}}
<?php 
require_once("http://localhost:8080/JavaBridge/java/Java.inc"); 
//Load libraries
java_require("lib\Aspose.Words.jdk15.jar;lib\jaxen-1.1.jar;lib\RelationSet.jar");
//Open document
$doc = new Java("com.aspose.words.Document", "C:\\Temp\\in.doc");
//Create ResultSet
$myResultSet = new Java("java.sql.ResultSet");
//creates an instance of my own class and executes a method of it: the database query
$myQueryResult = new Java("RelationSet");  
$myResultSet = $myQueryResult->execQuery();
//Execute mailMerge
$doc->getMailMerge()->executeWithRegions("Users", $myResultSet);
//Save document
$doc->save("C:\\Temp\\out.doc");
?>
{{< /highlight >}}
