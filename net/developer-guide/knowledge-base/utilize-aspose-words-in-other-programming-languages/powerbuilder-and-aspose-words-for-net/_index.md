---
title: PowerBuilder and Aspose.Words for .NET
type: docs
weight: 70
url: /net/powerbuilder-and-aspose-words-for-net/
---

#### **Prerequisites**
{{% alert color="primary" %}} 

See [Use Aspose.Words for .NET via COM Interop](/words/net/use-aspose-words-for-net-via-com-interop-html/).

{{% /alert %}} 
#### **Hello World!**
This is a simple application that creates an empty document, inserts some content and saves it as a Microsoft Word .DOC document.

**PowerBuilder**

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
#### **Simple Mail Merge**
Aspose.Words provides a reporting generation facility similar to Microsoft Word’s mail merge. Here is a code example to perform a simple mail merge using Aspose.Words.

**PowerBuilder**

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
#### **Save or Convert a Document**
With Aspose.Words, you can save a document in a variety of formats. For the full list of formats and identifiers see the SaveFormat enumeration.

**PowerBuilder**

{{< highlight csharp >}}

 #Save a document in a variety of formats.

#SaveFormat.Doc = 1, therefore 1 is passed as a parameter to indicate save format.

doc.Save_2("C:\Temp\out.doc", 1);

doc.Save_2("C:\Temp\out.txt", 2);

doc.Save_2("C:\Temp\out.html", 4);

doc.Save_2("C:\Temp\out.rtf", 6);

doc.Save_2("C:\Temp\out.docx", 8);



{{< /highlight >}}
