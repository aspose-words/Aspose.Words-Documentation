---
title: ColdFusion and Aspose.Words for Java
articleTitle: ColdFusion and Aspose.Words for Java
linktitle: ColdFusion and Aspose.Words for Java
description: "Using Aspose.Words for Java in ColdFusion applications."
type: docs
weight: 20
url: /java/coldfusion-and-aspose-words-for-java/
---

## Prerequisites

{{% alert color="primary" %}}

To use Aspose.Words for Java in ColdFusion applications, you simply need to copy the Aspose.Words.jar to **ColdFusion8\wwwroot\WEB-INF\lib** folder. You can learn more about using Java libraries in ColdFusion from the article [here](https://help.adobe.com/en_US/ColdFusion/9.0/Developing/WSc3ff6d0ea77859461172e0811cbec13e1a-7ffd.html).

{{% /alert %}}

Don’t forget to restart the “ColdFusion Application Server” after putting the new jars into the “lib” folder. 

## Hello World

This is a simple application that creates an empty document, inserts some content and saves it as a Microsoft Word .DOC document.

**ColdFusion**

{{< highlight csharp >}}
<html>
<head><title>Hello World!</title></head>
<body>
    <b>This example shows how to create a simple MS Word document using Aspose.Words</b>
    <cfset doc=CreateObject("java", "com.aspose.words.Document").init()>
    <cfset builder=CreateObject("java", "com.aspose.words.DocumentBuilder").init(doc)>
    <cfset builder.write("Hello World!!!")>
    <cfset doc.save("C:\Temp\out.doc")>
</body>
</html>
{{< /highlight >}}

## Simple Mail Merge

Aspose.Words provides a reporting generation facility similar to Microsoft Word’s mail merge. Here is a code example to perform a simple mail merge using Aspose.Words.

**ColdFusion**

{{< highlight csharp >}}
<html>
<head><title>Simple Mail Merge</title></head>
<body>
    <b>This example shows how to execute simple mail merge using Aspose.Words</b>
    <cfset doc=CreateObject("java", "com.aspose.words.Document").init("C:\Temp\in.doc")>
    <cfset names=["FullName", "Company", "City"]>
    <cfset values=["Alexey Noskov", "Aspose", "Auckland"]>
    <cfset doc.getMailMerge().execute(names, values)>
    <cfset doc.save("C:\Temp\out.doc")>
</body>
</html>
{{< /highlight >}}

## Invoke Static Methods

Some methods in the Aspose.Words object model are static. For example, there is the **detectFileFormat** method that allows you to detect the original format of a file.

**ColdFusion**

{{< highlight csharp >}}
<html>
<head><title>Invoke Static Methods</title></head>
<body>
    <b>This example shows how to detect the original format of a file using Aspose.Words</b><br />
    <cfset doc=CreateObject("java", "com.aspose.words.Document")>
    <cfset format=doc.detectFileFormat("C:\Temp\out.doc")>
    <span>The original format of the file is </span>
    <cfswitch expression="#format#">
       <cfcase value="1">
          <i>DOC</i>
       </cfcase>
       <cfcase value="2">
          <i>HTML</i>
       </cfcase>
       <cfcase value="3">
          <i>RTF</i>
       </cfcase>
       <cfcase value="5">
          <i>DOCX</i>
       </cfcase>
       <cfcase value="6">
          <i>ODT</i>
       </cfcase>
       <cfdefaultcase>
          <i>Unknown</i>
       </cfdefaultcase>
    </cfswitch>
</body>
</html>
{{< /highlight >}}

## Save or Convert a Document

With Aspose.Words, you can save a document in a variety of formats. For the full list of formats and identifiers see the **SaveFormat** enumeration.

**ColdFusion**

{{< highlight csharp >}}
<html>
<head><title>Save or Convert a Document</title></head>
<body>
    <b>This example shows how to convert a document to various formats using Aspose.Words</b>
    <cfset doc=CreateObject("java", "com.aspose.words.Document").init("C:\Temp\in.doc")>
    <cfset saveFormat=CreateObject("java", "com.aspose.words.SaveFormat")>
    <cfset doc.save("C:\Temp\out.doc", saveFormat.DOC)>
    <cfset doc.save("C:\Temp\out.docx", saveFormat.DOCX)>
    <cfset doc.save("C:\Temp\out.rtf", saveFormat.RTF)>
    <cfset doc.save("C:\Temp\out.html", saveFormat.HTML)>
    <cfset doc.save("C:\Temp\out.odt", saveFormat.ODT)>
    <cfset doc.save("C:\Temp\out.txt", saveFormat.TEXT)>
</body>
</html>
{{< /highlight >}}

## Mail Merge with Regions

First, create a Java class that returns a **ResultSet** object as shown below. Compile it, and place in a jar file, and place it in the **“ColdFusion8\wwwroot\WEB-INF\lib”** folder.

**Java**

{{< highlight csharp >}}
public class RelationSet 
{
    public static ResultSet execQuery()
    {
        try
        {
            // Create the database query
            String sqlString = "SELECT * FROM Users";

            // Create statement
            Statement stmt = createStatement();

            // Return the ResultSet object
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
        // Load a DB driver that is used by the demos
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

        // Compose connection string.
        String connectionString = "jdbc:odbc:DRIVER={Microsoft Access Driver (*.mdb)};DBQ=C:\\Temp\\test.mdb;UID=Admin";

        // DSN-less DB connection.
        Connection connection = DriverManager.getConnection(connectionString);

        // Return Statement
        return connection.createStatement();
    }
}
{{< /highlight >}}

{{% alert color="primary" %}}

Next we write the ColdFusion code to execute mail merge and save the document to disk. 

{{% /alert %}}

**HTML**

{{< highlight csharp >}}
<html>
<head><title>Mail Merge with Regions</title></head>
<body>
    <b>This example shows how to execute mail merge with regions using Aspose.Words</b>
    <cfset doc=CreateObject("java", "com.aspose.words.Document").init("C:\Temp\in.doc")>
    <cfset myQueryResult=CreateObject("java", "RelationSet").init()>
    <cfset myResultSet=myQueryResult.execQuery()>
    <cfset doc.getMailMerge().executeWithRegions("Users", myResultSet)>
    <cfset doc.save("C:\Temp\out.doc")>
</body>
</html>
{{< /highlight >}}
