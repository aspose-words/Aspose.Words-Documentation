---
title: "Save a Document"
aliases: [/net/saving-a-document/]
type: docs
description: "Aspose.Words for .NET allows you to save a document in any supported format. This is useful for most tasks performed using Aspose.Words."
keywords: "save a document c#, save a document to file c#, save a document to stream c#, save a document Aspose .NET, save formats supported by Aspose.Words .NET"
weight: 20
url: /net/save-a-document/
---

Most of the tasks you need to perform with Aspose.Words involve saving a document. To save a document Aspose.Words provides the [Save](https://apireference.aspose.com/words/net/aspose.words/document/methods/save/index) method of the [Document](https://apireference.aspose.com/words/net/aspose.words/document) class. There are overloads that allow saving a document to a file, stream, or ASP .NET HttpResponse object for sending to a client browser. The document can be saved in any save format supported by Aspose.Words. For the list of all supported save formats, see the [SaveFormat](https://apireference.aspose.com/words/net/aspose.words/saveformat) enumeration.

## Save to a File {#save-a-document-to-a-file}

Simply use the [Save](https://apireference.aspose.com/words/net/aspose.words.document/save/methods/2) method with a file name. Aspose.Words will determine the save format from the file extension that you specify.

The following code example demonstrates how to load and save a document to a file:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveToDisk-LoadAndSave.cs" >}}

{{% alert color="primary" %}} 

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}} 

## Save a Document to a Stream {#save-a-document-to-a-stream}

Pass a stream object to the [Save](https://apireference.aspose.com/words/net/aspose.words/document/methods/save) method. It's necessary to specify the save format explicitly when saving to a stream.

The following code example demonstrates how to load and save a document to a stream:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveToStream-LoadAndSaveToStream.cs" >}}

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

## Sending a Document to a Browser {#sending-a-document-to-a-client-browser}

In order to send a document to a client browser, use a special overload that takes four parameters: file name, save format, save type, and an ASP .NET HttpResponse object. The way the document will be presented to the user is represented by the [ContentDisposition](https://apireference.aspose.com/words/net/aspose.words/contentdisposition) enumeration, which determines whether the document sent to the browser will provide an option to open itself directly in the browser or in the application associated with the file extension.

The following code example shows how to send a document to the client browser from an ASP.NET code:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SendToClientBrowser-SendToClientBrowser.cs" >}}

{{% alert color="primary" %}} 

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}} 

This overload of the Save method is not available when using the .NET Client Profile DLL. This DLL is located in the **net3.5_ClientProfile** folder. The .NET Client Profile excludes assemblies such as **System.Web**, therefore, **HttpResponse** is not available. This is entirely by design.

This may manifest as an error:

**"No overload for method 'Save' takes '4' parameters."**

If you need to use Aspose.Words in ASP.NET application, It is recommended to use the .NET 2.0 DLL where the correct overload is available, as described in this article.

## Save a Document to PCL {#save-a-document-to-pcl}

Aspose.Words supports saving a document into PCL (Printer Command Language). Aspose.Words can save documents into PCL 6 (PCL 6 Enhanced or PCL XL) format. The PclSaveOptions class can be used to specify additional options when saving a document into the PCL format.

The following code example shows how to save a document to PCL using save options:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToPCL-ConvertDocumentToPCL.cs" >}}

## See Also

- Information about ASP .NET [HttpResponse](http://msdn.microsoft.com/en-us/library/system.web.httpresponse.aspx) object
