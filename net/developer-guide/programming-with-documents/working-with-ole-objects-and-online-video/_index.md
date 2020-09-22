---
title: Working with Ole Objects and Online Video
type: docs
weight: 160
url: /net/working-with-ole-objects-and-online-video/
---

## **Inserting Ole Object**

If you want Ole Object call DocumentBuilder.InsertOleObject. Pass to this method the ProgId explicitly with other parameters. Below example shows how to insert Ole Object into a document.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cs" >}}

### **Set File Name and Extension when Inserting Ole Object**

OLE package is a legacy and "undocumented" way to store embedded object if OLE handler is unknown. Early Windows versions such as Windows 3.1, 95 and 98 had Packager.exe application which could be used to embed any type of data into the document. Now, this application is excluded from Windows but MS Word and other applications still use it to embed data if OLE handler is missing or unknown. OlePackage class allows accessing OLE Package properties. Below example shows how to set the file name, extension and display name for OLE Package.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cs" >}}

### **Get Access to OLE Object Raw Data**

The following code example demonstrates how to get OLE Object raw data using OleFormat.GetRawData() method.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.cs" >}}

## **Inserting Online Video**

Online video can be inserted in MS Word from Insert tab > Online Video. You can insert online video into the document at the current location by calling [DocumentBuilder.InsertOnlineVideo](http://www.aspose.com/api/net/words/aspose.words/documentbuilder/methods/insertonlinevideo/index) method. Four overloads of this method have introduced in DocumentBuilder class. The first one works with the most popular video resources and takes the URL to the video as a parameter. 

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideo-InsertOnlineVideo.cs" >}}


Simple insertion of online video from the following resources is supported:

– <https://www.youtube.com/> 
– <https://vimeo.com/>

The second overload works with all other video resources and takes embed Html code as a parameter:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideoWithEmbedHtml-InsertOnlineVideoWithEmbedHtml.cs" >}}

The Html code for embedding video can vary between providers, consult your corresponding provider of choice for details. Note that the document will be automatically optimized for MS Word 2013 to show video.
