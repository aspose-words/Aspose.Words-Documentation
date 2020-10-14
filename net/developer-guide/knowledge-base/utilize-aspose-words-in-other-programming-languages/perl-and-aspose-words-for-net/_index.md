---
title: Perl and Aspose.Words for .NET
type: docs
weight: 60
url: /net/perl-and-aspose-words-for-net/
---

#### Prerequisites

{{% alert color="primary" %}} 

You should have the Win32::OLE extension installed. See <http://search.cpan.org/~jdb/Win32-OLE-0.1709/lib/Win32/OLE.pm> for more information.

See [Using Aspose.Words for .NET via COM Interop](/words/net/use-aspose-words-for-net-via-com-interop/) . 

{{% /alert %}} 

#### Hello World!

This is a simple application that creates an empty document, inserts some content and saves it as a Microsoft Word .DOC document.

**Perl**

{{< highlight csharp >}}

#!C:\Perl\bin\perl.exe

use Win32::OLE;
my $doc = CreateObject Win32::OLE 'Aspose.Words.Document';
my $builder = CreateObject Win32::OLE 'Aspose.Words.DocumentBuilder';
$builder->{Document} = $doc;
$builder->Write("Hello World!");
$doc->Save("C:\\Temp\\out.doc");
{{< /highlight >}}

#### Simple Mail Merge

Aspose.Words provides a reporting generation facility similar to Microsoft Word’s mail merge. Here is a code example to perform a simple mail merge using Aspose.Words.

**Perl**

{{< highlight csharp >}}

#!C:\Perl\bin\perl.exe

use Win32::OLE;

#Create instance of ComHelper class

my $helper = CreateObject Win32::OLE 'Aspose.Words.ComHelper';

#Open a template document

my $doc = $helper->Open("C:\\Temp\\in.doc");

#Connect to Database

my $dbfile ='C:\\Temp\\test.mdb';
my $conn =  CreateObject Win32::OLE 'ADODB.Connection';
$conn->Open("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=".$dbfile);

#Select records fromDB

my $rs = $conn->Execute("SELECT * FROM Users");

#Execute mail merge

$doc->MailMerge->ExecuteADO($rs);

#Save generated document

$doc->Save("C:\\Temp\\out.doc");

#Close RecordSet

$rs->Close();
{{< /highlight >}}

#### Save or Convert a Document

With Aspose.Words, you can save a document in a variety of formats. For the full list of formats and identifiers see the SaveFormat enumeration.

**Perl**

{{< highlight csharp >}}

#Save a document in a variety of formats.

#SaveFormat.Doc = 1, therefore 1 is passed as a parameter to indicate save format.

$doc->.Save_2("C:\\Temp\\out.doc", 1);
$doc->Save_2("C:\\Temp\\out.txt", 2);
$doc->Save_2("C:\\Temp\\out.html", 4);
$doc->Save_2("C:\\Temp\\out.rtf", 6);
$doc->Save_2("C:\\Temp\\out.docx", 8);
{{< /highlight >}}
