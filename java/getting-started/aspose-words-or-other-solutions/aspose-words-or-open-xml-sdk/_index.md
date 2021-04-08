---
title: Aspose.Words or Open XML SDK
type: docs
weight: 20
url: /java/why-not-open-xml-sdk/
---

We sometimes hear this question: **Why should we use Aspose products rather than the free Open XML SDK?** 
This question is easy to answer: **features and functionality**.

## What is Open XML SDK?

According to the [MSDN Library](http://msdn.microsoft.com/en-us/library/bb448854.aspx), Open XML SDK is defined as:
*The Open XML SDK 2.0 simplifies the task of manipulating Open XML packages and the underlying Open XML schema elements within a package. The Open XML SDK 2.0 encapsulates many common tasks that developers perform on Open XML packages, so that you can perform complex operations with just a few lines of code.*

OOXML documents are essentially zipped XML files and Open XML SDK is a collection of classes that allows you to work with the content of OOXML documents in a strongly-typed way. That is instead of unzipping a file to extract XML, loading that XML into a DOM tree and working with XML elements and attributes directly, Open XML SDK provides classes to do that.

## What is Aspose.Words?

Aspose.Words is a class library that allows your application to perform the following document processing tasks:

- High quality conversions from one document format to another.
- Programming with a document object model.
- Generating reports, populating documents with data from a data source.
- Rendering documents to fixed-page formats PDF, XPS and printing.

## Compare Open XML SDK and Aspose.Words

{{% alert color="primary" %}} 

The following table compares Open XML SDK and Aspose.Words features.

{{% /alert %}} 

|Feature or Feature Category|Open XML SDK|Aspose.Words|
| :- | :- | :- |
|Supported document formats |DOCX |DOC, RTF, WordML 2003, DOCX, HTML, MHTML, ODT, EPUB, PDF, XPS |
|Convert between document formats |No |Yes |
|<p>High-level programming with a document object model:</p><p>- Field update engine.</p><p>- Find and replace.</p><p>- Assemble documents.</p><p>- Copy fragments between documents.</p>|No |Yes |
|Detailed programming with a document object model, access to individual elements and formatting such as lists, paragraphs, fields, bookmarks. |Yes |Yes |
|Low-level direct and full access to the underlying XML elements and attributes such as relationship identifiers, list identifiers of an OOXML document. |Yes |No |
|At least a basic knowledge of the Open XML Specification required. |Yes |No |
|<p>Generate reports, populate documents with data:</p><p>- Simple mail merge-like reports.</p><p>- Nested parent-child mail merge regions.</p><p>- Custom data sources.</p>|No |Yes |
|Detailed documentation and numerous code samples readily available. |No |Yes |
|Render documents into pages and save to PDF, XPS, TIFF, display on screen or print. |No |Yes |
|Supported platforms |Windows, .NET |Windows, Linux, Java, .NET, Mono |

## Conclusion

Open XML SDK and Aspose.Words do not compete head to head because they address quite different needs and audiences. Open XML SDK is a class library to provide a strong-typed way to work with OOXML documents. Aspose.Words is a very useful document processing library that provides great support for all Microsoft Word and other document formats.

If all you need to do is a fairly basic programming operation on a DOCX document, then Open XML SDK might be a suitable choice. With Open XML SDK you will be fairly comfortable doing simple tasks like generating a simple DOCX document or removing comments, headers/footers, extracting images.

Some tasks can be achieved with Open XML SDK, but cannot be achieved with Aspose.Words. For example, if you need to directly access the XML elements and attributes of an OOXML document, then you should use Open XML SDK.

However, if you need to perform complex operations on documents, such as some of the following tasks, then using Aspose.Words is your best option:

- Support other document formats in addition to DOCX.
- Copy fragments between documents or join documents in a way that combines styles and lists in an appropriate manner.
- Replace formatted or unformatted text.
- Insert and update TOC, formula and other fields.
- Generate a business document, such as an order with order details from a data source.
- Convert a document to PDF or XPS so it appears exactly like Microsoft Word would have converted it.
- Develop a .NET or Java application.

## OOXML is Open, Why Use Aspose.Words?

Being XML-based, Office Open XML is heralded as an enabling technology. It is true that Office Open XML makes it possible to build document processing and generating applications using just the XML classes without relying on third-party libraries such as Aspose.Words. However, we strongly believe it is still very beneficial to use Aspose.Words when you have to deal with OOXML documents, rather than work through XML or other libraries.

The OOXML specification is several thousand pages long. Being open and standard does not mean being simple. To correctly process or generate OOXML documents one must invest in learning the format well.

In addition to making it simpler to correctly process and generate valid documents, Aspose.Words provides the following important features you would not have when working with OOXML files directly via XML or other third-party libraries:

- Quality conversions between many popular document formats, including conversion to PDF and XPS.
- Ability to build documents from fragments from one or multiple documents, while automatically merging per-document structures such as styles and lists.
- High-level functions such as field update, accept revisions or mail merge can be invoked with just one line of code.
- Access to flat Range-like operations such as find and replace, get/set the text of a bookmark, form field, document field or a node.

Consider the following example. It is a simple paragraph that contains the text “Hello World” and the word “Hello” is bold. Now imagine you need to write a program that will search for all “Hello World” phrases in the document and replace them with “Goodbye Earth”.

What started out as a seemingly simple task of loading, modifying and saving an XML file does not look so simple anymore. In fact, it has become very complex. It takes a non-trivial algorithm to find and replace flat text across an XML tree. Have you ever wondered why standard XML classes such as **XmlDocument** do not offer the find and replace functionality?

**A fragment of an Office Open XML document.**

**XML**

{{< highlight xml >}}
<w:p w:rsidR="00C07F31" w:rsidRDefault="003F6D7A">
<w:r w:rsidRPr="003F6D7A">
<w:rPr>
<w:b /> 
</w:rPr>
<w:t>Hello</w:t> 
</w:r>
<w:r>
<w:t xml:space="preserve">World.</w:t> 
</w:r>
</w:p>
{{< /highlight >}}

Implementing even a simple find and replace operation over an Office Open XML document yourself is far from easy. It might be that your boss will enjoy you coding this yourself, but maybe not. Our advice: remember that open and standard does not mean simple and use Aspose.Words.