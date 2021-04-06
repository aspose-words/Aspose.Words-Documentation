---
title: Supported Features on Document Load
type: docs
weight: 20
url: /java/supported-features-on-document-load/
aliases: [/java/document-loading-overview/]
---

Any supported source document is loaded into Aspose.Words by using the [Document](https://apireference.aspose.com/java/words/com.aspose.words/Document) class. This class is the central object in the Aspose.Words library and represents the document as represented in the [Aspose.Words Document Object Model](/words/java/aspose-words-document-object-model/).

This model represents the document content of a document in the form of a tree and contains all other nodes of the document. The tree is a Composite design pattern and in many ways similar to **XmlDocument**. The content of the document can be freely manipulated. There are many methods in Aspose.Words API and samples which assist with this. We also provide the [Range](https://apireference.aspose.com/java/words/com.aspose.words/Range) class to work with the document tree in a “flat” form such as when replacing text over multiple paragraphs.

You load a document into the Document Object Model by using the constructor of the [Document](https://apireference.aspose.com/java/words/com.aspose.words/Document) class. You can load a document from either a file or from a memory stream. Additionally, you can create your own blank documents from scratch. Loading of encrypted and passworded documents also supported.

Aspose.Words strives to support all features for all supported formats. Almost all features of Microsoft Word documents are supported and are faithfully preserved during conversion. Using Aspose.Words you can load and convert a document of any size and can easily handle the conversion of a document consisting of thousands of pages within seconds. The only limitation is the amount of available working memory on the machine.

We are constantly adding further support for document features, so if you require a certain conversion feature you can ask we and we will considering implementing it as soon as possible.

The following pages describe how each Microsoft Word feature is handled and the current level of support during loading of a document to the chosen format. There is also helpful information about how the particular feature is represented and supported in the Aspose.Words DOM along with any other useful information.