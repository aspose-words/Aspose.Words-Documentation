---
title: ColdFusion and Aspose.Words for .NET
type: docs
weight: 50
url: /net/coldfusion-and-aspose-words-for-net/
---

## Prerequisites

{{% alert color="primary" %}} 

To use Aspose.Words for .NET in ColdFusion projects you must install the ColdFusion .NET extension and run the ColdFusion 9 .NET service on the system that hosts the assemblies. You can find detailed instructions about using .NET assemblies in ColdFusion from the article [here](http://help.adobe.com/en_US/ColdFusion/9.0/Developing/WSc3ff6d0ea77859461172e0811cbec13e1a-7ffd.html).

{{% /alert %}} 

### Simple Mail Merge

Aspose.Words provides a reporting generation facility similar to Microsoft Word’s mail merge. Here is a code example to perform a simple mail merge using Aspose.Words.

**ColdFusion**

{{< highlight csharp >}}
<html>
<head><title>Execute Simple Mail</title></head>
<body>
    <b>This example shows how to execute simple mail merge using Aspose.Words</b>
    <cfset assemblyPath="C:\Program Files\Aspose\Aspose.Words\Bin\net2.0\Aspose.Words.dll">
    <cfset doc=CreateObject(".NET", "Aspose.Words.Document", assemblyPath).Init("C:\Temp\in.doc")>
    <cfset names=["FullName", "Company", "City"]>
    <cfset values=["Alexey Noskov", "Aspose", "Auckland"]>
    <cfset doc.Get_MailMerge().Execute(names, values)>
    <cfset doc.Save("C:\Temp\out.doc")>
</body>
</html>
{{< /highlight >}}

#### Invoke Static Methods

Some methods in the Aspose.Words object model are static. For example, there is the FileFormatUtil.DetectFileFormat method that allows you to detect the original format of a file.

**ColdFusion**

{{< highlight csharp >}}
<html>
<head><title>Invoke Static Methods</title></head>
<body>
    <b>This example shows how to detect the original format of a file using Aspose.Words</b><br />
    <cfset assemblyPath="C:\Program Files\Aspose\Aspose.Words\Bin\net2.0\Aspose.Words.dll">
<cfset formatUtil=CreateObject(".NET", "Aspose.Words.FileFormatUtil", assemblyPath)>
<cfset info=formatUtil.DetectFileFormat("C:\Temp\out.doc")>
    <cfset format=info.Get_LoadFormat()>
    <span>The original format of the file is </span>
    <i><cfoutput>#format#</cfoutput></i>
</body>
</html>
{{< /highlight >}}

#### Save or Convert a Document

With Aspose.Words, you can save a document in a variety of formats. For the full list of formats and identifiers see the SaveFormat enumeration.

**ColdFusion**

{{< highlight csharp >}}
<html>
<head><title>Save or Convert a Document</title></head>
<body>
    <b>This example shows how to convert a document to various formats using Aspose.Words</b>
    <cfset assemblyPath="C:\Program Files\Aspose\Aspose.Words\Bin\net2.0\Aspose.Words.dll">
    <cfset doc=CreateObject(".NET", "Aspose.Words.Document", assemblyPath).Init("C:\Temp\in.doc")>
    <cfset saveFormat=CreateObject(".NET", "Aspose.Words.SaveFormat", assemblyPath)>
    <cfset doc.Save("C:\Temp\out.doc", saveFormat.Doc)>
    <cfset doc.Save("C:\Temp\out.docx", saveFormat.Docx)>
    <cfset doc.Save("C:\Temp\out.rtf", saveFormat.Rtf)>
    <cfset doc.Save("C:\Temp\out.html", saveFormat.Html)>
    <cfset doc.Save("C:\Temp\out.odt", saveFormat.Odt)>
    <cfset doc.Save("C:\Temp\out.txt", saveFormat.Text)>
    <cfset doc.Save("C:\Temp\out.xml", saveFormat.WordML)>
    <cfset doc.Save("C:\Temp\out.mhtml", saveFormat.Mhtml)>
    <cfset doc.Save("C:\Temp\out.epub", saveFormat.Epub)>
    <cfset doc.Save("C:\Temp\out.pdf", saveFormat.Pdf)>
</body>
</html>
{{< /highlight >}}

#### Merge documents

You can use Document.AppendDocument method to append one document to another.

**ColdFusion**

{{< highlight csharp >}}
<html>
<head><title>Merge documents</title></head>
<body>
    <b>This example shows how to append one docuemnt to another using Aspose.Words</b>
    <cfset assemblyPath="C:\Program Files\Aspose\Aspose.Words\Bin\net2.0\Aspose.Words.dll">
    <cfset dstDoc=CreateObject(".NET", "Aspose.Words.Document", assemblyPath).Init("C:\Temp\doc1.doc")>
    <cfset srcDoc=CreateObject(".NET", "Aspose.Words.Document", assemblyPath).Init("C:\Temp\doc2.doc")>
    <cfset importFormatMode=CreateObject(".NET", "Aspose.Words.ImportFormatMode", assemblyPath)>
    <cfset dstDoc.AppendDocument(srcDoc, importFormatMode.KeepSourceFormatting)>
    <cfset dstDoc.Save("C:\Temp\out.doc")>
</body>
</html>
{{< /highlight >}}
