---
title: PHP and Aspose.Words for .NET
type: docs
weight: 80
url: /net/php-and-aspose-words-for-net/
---

## Prerequisites

{{% alert color="primary" %}} 

Configure your PHP to work with COM. See <http://www.php.net/manual/en/book.com.php> for more information.

Also See [Using Aspose.Words for .NET via COM Interop](/words/net/use-aspose-words-for-net-via-com-interop/) . 

{{% /alert %}} 

### Hello World!

This is a simple application that creates an empty document, inserts some content and saves it as a Microsoft Word .DOC document.

**PHP**

{{< highlight csharp >}}
<?php 
$doc = new COM("Aspose.Words.Document");
$builder = new COM("Aspose.Words.DocumentBuilder");
$builder->Document = $doc;
$builder->Write("Hello world!");
$doc->Save("C:\\Temp\\out.doc");
?>
{{< /highlight >}}

#### Simple Mail Merge

Aspose.Words provides a reporting generation facility similar to Microsoft Word’s mail merge. Here is a code example to perform a simple mail merge using Aspose.Words.

**PHP**

{{< highlight csharp >}}
<?php 
//Create instance of ComHelper class
$helper = new COM("Aspose.Words.ComHelper");
//Open a template document
$doc = $helper->Open("C:\\Temp\\in.doc");
//Connect to Database
$dbfile ='C:\\Temp\\myDb.mdb';
$conn = new COM("ADODB.Connection");
$conn->Open("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=".$dbfile);
//Select records fromDB
$rs = $conn->Execute("SELECT * FROM Clients");
//Execute mail merge
$doc->MailMerge->ExecuteADO($rs);
//Save generated document
$doc->Save("C:\\Temp\\out.doc");
//Close RecordSet
$rs->Close();
?>
{{< /highlight >}}

#### Save or Convert a Document

With Aspose.Words, you can save a document in a variety of formats. For the full list of formats and identifiers see the SaveFormat enumeration.

**PHP**

{{< highlight csharp >}}
//Save a document in a variety of formats.
//SaveFormat.Doc = 1, therefore 1 is passed as a parameter to indicate save format.
$doc->Save_2("C:\\Temp\\out.doc", 1);
$doc->Save_2("C:\\Temp\\out.txt", 2);
$doc->Save_2("C:\\Temp\\out.html", 4);
$doc->Save_2("C:\\Temp\\out.rtf", 6);
$doc->Save_2("C:\\Temp\\out.docx", 8);
{{< /highlight >}}
