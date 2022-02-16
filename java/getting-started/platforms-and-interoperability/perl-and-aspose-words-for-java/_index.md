---
title: Perl and Aspose.Words for Java
articleTitle: Perl and Aspose.Words for Java
linktitle: Perl and Aspose.Words for Java
type: docs
weight: 30
url: /java/perl-and-aspose-words-for-java/
---

## Prerequisites

{{% alert color="primary" %}} 

The **Inline::Java** module allows you to put Java source code directly "inline" in a Perl script or module. A Java compiler is launched and the Java code is compiled. Then Perl asks the Java classes what public methods have been defined. These classes and methods are available to the Perl program as if they had been written in Perl. See [search.cpan.org](https://metacpan.org/dist/Inline-Java) to learn more about Inline::Java.

Here are the steps to install the Inline::Java module: 

1. Add theoryx5 ppm repo using the following command: C:\Perl\bin> ppm repo add <https://theoryx5.uwinnipeg.ca/ppms/> 
1. Install the Inline::Java module: **C:\Perl\bin> ppm install inline::Java** 
1. Set path to your JDK: **C:\Perl\bin> set** **PERL** **_INLINE_JAVA_J2SDK=C:\Program Files\Java\jdk1.6.0_03** 

Download the [latest version of Aspose.Words for Java](https://downloads.aspose.com/words/java) . Extract files and copy the lib folder with jar files to the root folder of your project. 

{{% /alert %}} 

## Hello World!

This is a simple application that creates an empty document, inserts some content and saves it as a Microsoft Word .DOC document.

**Perl**

{{< highlight csharp >}}

#!C:\Perl\bin\perl.exe

use Inline Java => <<'END_OF_JAVA_CODE', CLASSPATH=> 'lib/Aspose.Words.jdk16.jar';
    import com.aspose.words.*;
    class Words
    {
        public Words()
        {
        }
        public void HelloWorld() throws Exception
        {
            //Create new Document
            Document doc = new Document();
            //Create DocumentBuilder
            DocumentBuilder builder = new DocumentBuilder(doc);
            //Insert some text into the document
            builder.write("Hello world!!!");
            //Save output document
            doc.save("C:\\Temp\\out.doc");
        }
    }
END_OF_JAVA_CODE
my $words = new Words();
$words->HelloWorld();
{{< /highlight >}}

This is a simple application that creates an empty document, inserts some content and saves it as a Microsoft Word .DOC document.

**Perl**

{{< highlight csharp >}}
oleobject doc;
oleobject builder
doc = CREATE oleobject;
doc.ConnectToNewObject("Aspose.Words.Document");
builder = CREATE oleobject;
builder.ConnectToNewObject("Aspose.Words.DocumentBuilder");
builder.Document = doc;
builder.Write("Hello world!");
doc.Save("C:\Temp\out.doc");
{{< /highlight >}}

## Simple Mail Merge

Aspose.Words provides a reporting generation facility similar to Microsoft Word’s mail merge. Here is a code example to perform a simple mail merge using Aspose.Words.

**Perl**

{{< highlight csharp >}}

// Declare local variables
string connectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Temp\myDb.mdb";
string commandString = "SELECT * FROM Clients";
oleobject connection;
oleobject RS;
oleobject doc;
oleobject helper;

// Create ComHelper, it is needed to open existing document
helper = CREATE oleobject;
helper.ConnectToNewObject("Aspose.Words.ComHelper");

// Open template
doc = helper.Open("C:\Temp\in.doc");

// Create database connection
connection = CREATE oleobject;
connection.ConnectToNewObject("ADODB.Connection");
connection.Open(connectionString);
//Perform data selection
RS = connection.Execute(commandString);
//Execute mail merge
doc.MailMerge.ExecuteADO(RS);
RS.Close();
connection.Close();
//Save generated docuemnt
doc.Save("C:\Temp\out.doc");
{{< /highlight >}}

## Save or Convert a Document

With Aspose.Words, you can save a document in a variety of formats. For the full list of formats and identifiers see the **SaveFormat** enumeration. 

**Perl**

{{< highlight csharp >}}

### a document in a variety of formats.

#### = 1, therefore 1 is passed as a parameter to indicate save format.

doc.Save_2("C:\Temp\out.doc", 1);
doc.Save_2("C:\Temp\out.txt", 2);
doc.Save_2("C:\Temp\out.html", 4);
doc.Save_2("C:\Temp\out.rtf", 6);
doc.Save_2("C:\Temp\out.docx", 8);
{{< /highlight >}}
