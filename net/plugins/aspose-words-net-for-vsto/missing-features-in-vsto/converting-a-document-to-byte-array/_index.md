---
title: Converting a Document to Byte Array
type: docs
weight: 70
url: /net/converting-a-document-to-byte-array/
---

{{% alert color="primary" %}} 

This article shows how to serialize a Document object to obtain a byte array representing the Document and then how to unserialize the byte array to obtain a Document object again. This technique is often required when storing a document in a database or for preparing a Document for transmission across the web.

Please note that an **Document** object cannot be serialized using built in .NET serialization techniques but instead can be serialized by using the method detailed below.

{{% /alert %}} 

## The Code The simplest method used to serialize a Document object is to first save it to a MemoryStream using the Document.Save method overload of the Document class. The ToArray method is then called on the stream which returns an array of bytes representing the document in byte form.The save format chosen is important as to ensure the highest fidelity is retained upon saving and reloading into the Document object. For this reasons an OOXML format is suggested.The steps above are then reversed to load the bytes back into a Document object.

### Example

*Shows how to convert a document object to an array of bytes and back into a document object again.*

**C#**

{{< highlight csharp >}}

// Load the document.
Document doc = new Document(MyDir + "Document.doc");

// Create a new memory stream.
MemoryStream outStream = new MemoryStream();

// Save the document to stream.
doc.Save(outStream, SaveFormat.Docx);

// Convert the document to byte form.
byte[] docBytes = outStream.ToArray();

// The bytes are now ready to be stored/transmitted.

// Now reverse the steps to load the bytes back into a document object.
MemoryStream inStream = new MemoryStream(docBytes);

// Load the stream into a new document object.
Document loadDoc = new Document(inStream);
{{< /highlight >}}

### Download Running Examples

- [Codeplex](https://asposewordsvsto.codeplex.com/SourceControl/latest#Aspose.Words Features missing in VSTO/Convert a Document to a Byte Array/)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose.Words%20Vs%20VSTO%20Word/Aspose.Words%20Features%20missing%20in%20VSTO/Convert%20a%20Document%20to%20a%20Byte%20Array)
- [Code.MSDN](https://code.msdn.microsoft.com/AsposeWords-Features-bfd6167c/view/SourceCode#content)

### Download Sample Code

- [Codeplex](https://asposewordsvsto.codeplex.com/releases/view/619474)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MissingFeaturesofVSTOv1.1)
- [Code.MSDN](https://code.msdn.microsoft.com/AsposeWords-Features-bfd6167c#content)

For more details, see [Convert a Document to Byte Array](https://docs.aspose.com/words/net/serialize-and-work-with-a-document-in-a-database/#convert-a-document-to-byte-array).
