---
title: Why not Open XML SDK
type: docs
weight: 60
url: /net/why-not-open-xml-sdk/
---

{{% alert color="primary" %}} 

We sometimes hear this question:

**Why should we use Aspose products rather than the free Open XML SDK?**

This question is easy to answer: **features and functionality**. 

{{% /alert %}} 

## **What is Open XML SDK?**

According to the MSDN Library, Open XML SDK is defined as:*The Open XML SDK 2.0 simplifies the task of manipulating Open XML packages and the underlying Open XML schema elements within a package. The Open XML SDK 2.0 encapsulates many common tasks that developers perform on Open XML packages, so that you can perform complex operations with just a few lines of code.*OOXML documents are essentially zipped XML files and Open XML SDK is a collection of classes that allows you to work with the content of OOXML documents in a strongly-typed way. That is instead of unzipping a file to extract XML, loading that XML into a DOM tree and working with XML elements and attributes directly, Open XML SDK provides classes to do that.

## **What is Aspose.Words?**

Aspose.Words is a class library that allows your application to perform the following document processing tasks:

- High quality conversions from one document format to another.
- Programming with a document object model.
- Generating reports, populating documents with data from a data source.
- Rendering documents to fixed-page formats PDF, XPS and printing.

## **Compare Open XML SDK and Aspose.Words**

The following table compares Open XML SDK and Aspose.Words features.

|Feature or Feature Category|Open XML SDK|Aspose.Words|
| :- | :- | :- |
|Supported document formats|DOCX|DOC, RTF, WordML 2003, DOCX, HTML, MHTML, ODT, EPUB, PDF, XPS|
|Convert between document formats|No|Yes|
|<p>High-level programming with a document object model:</p><p>- Field update engine.</p><p>- Find and replace.</p><p>- Assemble documents.</p><p>- Copy fragments between documents.</p>|No|Yes|
|Detailed programming with a document object model, access to individual elements and formatting such as lists, paragraphs, fields, bookmarks.|Yes|Yes|
|Low-level direct and full access to the underlying XML elements and attributes such as relationship identifiers, list identifiers of an OOXML document.|Yes|No|
|At least a basic knowledge of the Open XML Specification required.|Yes|No|
|<p>Generate reports, populate documents with data:</p><p>- Simple mail merge-like reports.</p><p>- Nested parent-child mail merge regions.</p><p>- Custom data sources.</p>|No|Yes|
|Detailed documentation and numerous code samples readily available.|No|Yes|
|Render documents into pages and save to PDF, XPS, TIFF, display on screen or print.|No|Yes|
|Update dynamic fields such as the page numbers of a TOC |No |Yes |
|Supported platforms|Windows, .NET|Windows, Linux, Java, .NET, Mono|
***Conclusion*** Open XML SDK and Aspose.Words do not compete head to head because they address quite different needs and audiences.Open XML SDK is a class library to provide a strong-typed way to work with OOXML documents. Aspose.Words is a very useful document processing library that provides great support for all Microsoft Word and other document formats. If all you need to do is a fairly basic programming operation on a DOCX document, then Open XML SDK might be a suitable choice. With Open XML SDK you will be fairly comfortable doing simple tasks like generating a simple DOCX document or removing comments, headers/footers, extracting images. Some tasks can be achieved with Open XML SDK, but cannot be achieved with Aspose.Words. For example, if you need to directly access the XML elements and attributes of an OOXML document, then you should use Open XML SDK. However, if you need to perform complex operations on documents, such as some of the following tasks, then using Aspose.Words is your best option:* Support other document formats in addition to DOCX.* Copy fragments between documents or join documents in a way that combines styles and lists in an appropriate manner.* Replace formatted or unformatted text.* Insert and update TOC, formula and other fields.* Generate a business document, such as an order with order details from a data source.* Convert a document to PDF or XPS so it appears exactly like Microsoft Word would have converted it.* Develop a .NET or Java application.
