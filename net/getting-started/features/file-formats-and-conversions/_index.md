---
title: File Formats and Conversions
description: "With Aspose.Words for .NET, you can quickly and reliably convert documents from any supported load to save format with just two lines of code. It provides high-quality conversions."
type: docs
weight: 30
url: /net/file-formats-and-conversions/
aliases: [/net/high-quality-conversions/]
---

{{% alert color="primary" %}}

**Try online**

You can try the conversion functionality by using our [Free online converter](https://products.aspose.app/words/conversion) tool.

{{% /alert %}}

The ability to quickly and reliably convert various document formats with a high degree of precision is Aspose.Words's flagship feature. This is often a good enough reason to choose Aspose.Words for .NET.

With Aspose.Words you can convert documents from any supported load format to any supported save format using just two lines of code:

1. Load a document from a file or stream
2. Save it to any supported format

The following code example shows how to convert a document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Doc2Pdf-Doc2Pdf.cs" >}}

For more details on loading, converting, and saving documents, see the ["Loading, Saving and Converting"](https://docs.aspose.com/words/cpp/loading-saving-and-converting/) section.

## High Fidelity

One of the main goals of Aspose.Words is to provide high-fidelity conversion between document formats. We use the word “high-fidelity” to describe conversions where the output document retains all the content and formatting of the original.

Modern word processing document formats are complex and include hundreds of features. Sometimes, when a vendor claims that their solution supports a particular document format – it means only the basic features of the format are supported. For example, Microsoft Word documents have advanced features such as footnotes, text boxes, auto shapes, OLE objects, fields, and advanced formatting attributes. Many of these elements are often ignored in document processing libraries, but not in Aspose.Words.

Aspose.Words Document Object Model (DOM) was designed with Microsoft Word document formats in mind. Therefore, our level of support for those formats, such as DOC, DOCX, RTF, or WordprocessingML, is unprecedented. Conversion in any direction between these formats is high-fidelity.

Below are examples of conversions from DOC to some formats.

---

*DOC to RTF – high-fidelity conversion:*

<img src="high-quality-conversions_1.png" alt="high-quality-conversions_1" style="width:500px; vertical-align: top"/> <img src="high-quality-conversions_2.png" alt="high-quality-conversions_2" style="width:500px; vertical-align: top"/>

---

*DOC to PDF – high-fidelity conversion:*

<img src="high-quality-conversions_1.png" alt="high-quality-conversions_1" style="width:500px; vertical-align: top"/> <img src="high-quality-conversions_3.png" alt="high-quality-conversions_3" style="width:500px; vertical-align: top"/>

---

*DOC to ODT – high-fidelity conversion:*

<img src="high-quality-conversions_1.png" alt="high-quality-conversions_1" style="width:500px; vertical-align: top"/> <img src="high-quality-conversions_4.png" alt="high-quality-conversions_4" style="width:500px; vertical-align: top"/>

---

Although all of the converters in Aspose.Words are great, sometimes you will not be able to get the same appearence for documents in different formats.

{{% alert color="primary" %}}

Note that in such situations, Aspose.Words has the conversion marked "high-fidelity" and the output document will be the same as after converting via Microsoft Word.

{{% /alert %}}

For example, there is no simple one-to-one match between all the features of HTML and Microsoft Word documents. There are no headers/footers, sections, fields, and tabs in HTML. Conversely, not all CSS attributes and rules can be mapped to a Microsoft Word document.

Below is an example of conversions from DOC to HTML.

---

DOC to HTML – high-fidelity conversion:

<img src="high-quality-conversions_1.png" alt="high-quality-conversions_1" style="width:500px; vertical-align: top"/> <img src="high-quality-conversions_5.png" alt="high-quality-conversions_5" style="width:500px; vertical-align: top"/>

---

## High Scalability

Scalable server-side scenarios use Aspose.Words mainly because of its simple and clean design – Aspose.Words supports multithreading. [Document](https://apireference.aspose.com/words/net/aspose.words/Document) objects are independent of each other, and as long as only one thread can modify a document at a time (a typical requirement for any collection class), multiple threads can process any number of documents at the same time.

## High Performance

Aspose.Words demonstrates high performance when loading and saving documents. In testing, a DOC file over 5Mb in size was loaded in less than 1 second and then saved in less than 1 second on a P4 3GHz machine. Smaller files can be processed at thousands-per-minute speeds.

On several occasions, our customers have reported to us that they could not believe the speed of Aspose.Words. They stepped over the line of code that was loading a huge document into the debugger, and it was so instantaneous that they could not believe the file was loaded into the Document object.

The following code example shows how you can load and save such a large document if you want to:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveToDisk-LoadAndSave.cs" >}}
