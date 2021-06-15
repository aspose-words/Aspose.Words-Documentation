---
title: Aspose.Words or Open XML SDK
description: "Aspose.Words for .NET is a very useful document processing library that provides great support for all Microsoft Word and other document formats. Open XML SDK and Aspose.Words do not compete with each other because they address quite different needs."
type: docs
weight: 20
url: /net/aspose-words-or-open-xml-sdk/
aliases: [/net/why-not-open-xml-sdk/]
---

Sometimes we get the following question: why should we use Aspose products rather than the free Open XML SDK? This question is easy to answer: features and functionality.

The Open XML SDK and Aspose.Words do not compete with each other because they address quite different needs and audiences. The Open XML SDK is a class library that provides a strongly typed way to work with OOXML documents. Aspose.Words is a very useful document processing library that provides great support for all Microsoft Word and other document formats.

In this article, we will look at when it makes sense for you to prefer Aspose.Words.

## Why not Open XML SDK

If all you have to do is a fairly simple programming operation on a DOCX document, then the Open XML SDK might be a suitable choice. With the Open XML SDK, you will be comfortable enough to perform simple tasks such as generating a simple DOCX document or removing comments, headers/footers, or extracting images.

It is worth noting that some tasks can be achieved with the Open XML SDK, but cannot be accomplished with Aspose.Words. For example, if you need direct access to the XML elements and attributes of an OOXML XML document, you should use the Open XML SDK. However, if you need to perform complex operations on documents such as some of the following tasks, then using Aspose.Words is your best option:

* Support document formats other than DOCX – DOC, RTF, HTML, [and others](https://docs.aspose.com/words/net/supported-document-formats/)
* Create documents by [copying or joining fragments of one or more documents](https://docs.aspose.com/words/net/insert-and-append-documents/) with automatically merging per-document structures such as styles and lists
* Provide access to complex operations such as [find and replace](https://docs.aspose.com/words/net/find-and-replace/), insert and update a table of contents, formula or fields, and others
* Generate business documents such as orders or reports populated with data from various data source
* Convert documents between many popular document formats, including converting to PDF, XPS, and printing, to make it look exactly like Microsoft Word would convert it
* And others

In the following sections, we will take a closer look at some of the features and abilities provided by Aspose.Words.

### Security

Aspose.Words software can be considered more secure compared to Open XML SDK as it is developed in a governed condition that our employees having excellent experience in this specific area abide.

### Stability

Aspose components are thoroughly tested. Since Aspose components are packaged into a single DLL, there will never be a need to install any additional parts or pieces for them to function. This allows not only to provide a stable work with Aspose.Words, but also reduce the risk of unforeseen situations to virtually zero.

### Scalability and Minimal Learning Curve

Being XML-based, Office Open XML is heralded as an enabling technology. It is true that Office Open XML makes it possible to build document processing and generating applications using only XML classes, without relying on third-party libraries such as Aspose.Words. OOXML documents are essentially zipped XML files, and the Open XML SDK is a collection of classes that allows you to work with the content of OOXML documents in a strongly typed way. That is, instead of unzipping a file to extract XML, loading that XML into the DOM tree, and working with the XML elements and attributes directly, Open XML SDK provides classes to do this.

However, the OOXML specification is several thousand pages long. Being open and standard does not mean being simple. To properly process or generate OOXML documents one must invest in learning the format well. Thus, working with the Open XML SDK requires at least a basic knowledge of the Open XML Specification, which can take a long time to learn.

At the same time, the learning curve for working with Aspose.Words is minimal because its API has been carefully thought out and designed with the .NET Framework design guidelines in mind. This helps ensure ease of use and manipulation of document elements.

### Features

We strongly believe that using Aspose.Words is still very beneficial when dealing with OOXML documents rather than working with XML or other libraries. In addition to making it easier to properly process and generate valid documents, Aspose.Words provides the following important features that you would not have when working with OOXML files directly via XML or other third-party libraries:

* Quality [conversion between many popular document formats](https://docs.aspose.com/words/net/convert-a-document/) and [printing](https://docs.aspose.com/words/net/print-a-document-programmatically-or-using-dialogs/)
* The ability to create documents from fragments of one or more documents, as well as the ability to fill documents with data from various sources
* Programmatic access to the document properties that provide users with features such as, for example, [splitting a document into parts](https://docs.aspose.com/words/net/split-a-document/) or [comparing two documents](https://docs.aspose.com/words/net/compare-documents/)
* And others

## OOXML is Open, Why Use Aspose.Words?

As stated above, the main reason is the difference in functionality.

Consider the following example. This is a simple paragraph that contains the text “Hello World” and the word “Hello” is bold. Now imagine that you need to write a program that will search for all the “Hello World” phrases in the document and replace them with “Goodbye Earth”.

What started out as a seemingly simple task of loading, modifying, and saving an XML file no longer looks so easy. In fact, it has become very complex. It takes a non-trivial algorithm to find and replace flat text across an XML tree.

The following is a fragment of an Office Open XML document:

**XML**

```
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
```

Have you ever wondered why standard XML classes such as XmlDocument do not offer to find and replace functionality? Implementing even a simple find and replace operation over an Office Open XML document yourself is far from easy. It might be that your boss will enjoy you code it yourself, but maybe not.

Our advice: remember that open and standard does not mean simple and use Aspose.Words for such cases. As an example, you can study our article ["Find and Replace"](https://docs.aspose.com/words/net/find-and-replace/).