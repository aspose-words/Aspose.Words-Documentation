---
title: Working with OLE Objects and Online Video in C#
second_title: Aspose.Words for .NET
articleTitle: Working with OLE Objects and Online Video
linktitle: Working with OLE Objects and Online Video
description: "Create and modify OLE embedding in your document using C#."
type: docs
weight: 360
url: /net/working-with-ole-objects/
aliases: [/net/working-with-ole-objects-and-online-video/]
---

OLE (Object Linking and Embedding) is a technology by which users can work with documents containing "objects" created or edited by third-party applications. That is, OLE allows an editing application to export these "objects" to another editing application and then import them with additional content.

In this article, we will talk about inserting an OLE object and setting its properties, as well as inserting an online video into a document.

## Insert OLE Object

If you want OLE Object, call the [InsertOleObject](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobject/) method and pass it the **ProgId** explicitly with other parameters.

The following code example shows how to insert OLE Object into a document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cs" >}}

### Set File Name and Extension when Inserting OLE Object

OLE package is a legacy and "undocumented" way to store embedded objects if an OLE handler is unknown.

Early Windows versions such as Windows 3.1, 95, and 98 had a Packager.exe application that could be used to embed any type of data into the document. This application is now excluded from Windows, but Microsoft Word and other applications still use it to embed data if the OLE handler is missing or unknown. The `OlePackage` class allows users to access the OLE Package properties.

The following code example shows how to set the file name, extension, and display name for OLE Package:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cs" >}}

### Get Access to OLE Object Raw Data

Users can access OLE object data using various properties and methods of the `OleFormat` class. For example, it is possible to get the `OLE` object raw data or the path and name of a source file for the linked OLE object.

The following code example shows how to get OLE Object raw data using the [GetRawData](https://reference.aspose.com/words/net/aspose.words.drawing/oleformat/getrawdata/) method:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.cs" >}}

### Insert OLE Object as an Icon

OLE objects can also be inserted into documents as images.

The following code example shows how to insert OLE Object as an icon. For this purpose, the [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) class exposes the [InsertOleObjectAsIcon](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobjectasicon/) method:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cs" >}}

The following code example shows how to inserts an embedded OLE object as an icon from a stream into the document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.cs" >}}

{{% alert color="primary" %}}

Maximum size of the icon must be 32x32 for the correct display.

{{% /alert %}}

## Insert Online Video

Online video can be inserted into Word document from the *"Insert" > "Online Video"* tab. You can insert an online video into a document at the current location by calling the [InsertOnlineVideo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertonlinevideo/) method.

The [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) class introduces four overloads of this method. The first one works with the most popular video resources and takes the URL of the video as a parameter. For example, the first overload supports simple insertion of online videos from [YouTube](https://www.youtube.com/) and [Vimeo](https://vimeo.com/) resources.

The following code example shows how to insert an online video from *Vimeo* into a document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideo-InsertOnlineVideo.cs" >}}

The second overload works with all other video resources and takes embedded HTML code as a parameter. The HTML code for embedding a video may vary depending on the provider, so contact the respective provider for details.

{{% alert color="primary" %}}

Please note that the document will be automatically optimized for MS Word 2013 to show video.

{{% /alert %}}

The following code example shows how to insert an online video into a document using such HTML code:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideoWithEmbedHtml-InsertOnlineVideoWithEmbedHtml.cs" >}}