---
title: Convert Document to Byte Array
type: docs
weight: 20
url: /net/convert-document-to-byte-array/
---

It shows how to serialize a Document object to obtain a byte array representing the **Document** and then how to unserialize the byte array to obtain a Document object again. This technique is often required when storing a document in a database or for preparing a Document for transmission across the web.

Please note that an **Document** object cannot be serialized using built in .NET serialization techniques but instead can be serialized by using the method detailed below.

The simplest method used to serialize a Document object is to first save it to a **MemoryStream** using the Document.Save method overload of the Document class. The **ToArray** method is then called on the stream which returns an array of bytes representing the document in byte form.

The save format chosen is important as to ensure the highest fidelity is retained upon saving and reloading into the Document object. For this reasons an **OOXML** format is suggested.

The steps above are then reversed to load the bytes back into a **Document** object.

{{< highlight csharp >}}

 string FilePath = @"..\..\..\Sample Files\";

string FileName = FilePath + "Converting Document.docx";

// Load the document.

Document doc = new Document(FileName);

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
## **Download Sample Code**
- [Codeplex](https://asposeopenxml.codeplex.com/releases/view/617779)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MissingFeaturesofOpenXMLWordsv1.1)
- [Code.MSDN](https://code.msdn.microsoft.com/Missing-Features-in-6a2c882b)
