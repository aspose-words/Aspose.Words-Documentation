---
title: Compare Documents in Java
second_title: Aspose.Words for Java
articleTitle: Compare Documents
linktitle: Compare Documents
type: docs
description: "Compare two documents in any supported formats and shows content changes. You can apply advanced options when comparing using Java."
weight: 50
url: /java/compare-documents/
aliases: [/java/how-to-compare-two-word-documents/]
---

Comparing documents is a process that identifies changes between two documents and contains the changes as revisions. This process compares any two documents, including versions of one specific document, then the changes between both documents will be shown as revisions in the first document.

The comparison method is achieved by comparing words at the character level or at the word level. If a word contains a change of at least one character, in the result, the difference will be displayed as a change of the entire word, not a character. This process of comparison is a usual task in the legal and financial industries.

Instead of manually searching for differences between documents or between different versions of them, you can use Aspose.Words for comparing documents and getting content changes in formatting, header/footer, tables, and more.

This article explains how to compare documents and how to specify advanced comparing properties.

{{% alert color="primary" %}}

**Try online**

You can compare two documents online by using the [Document comparison online](https://products.aspose.app/words/comparison) tool.

Note that the comparison method, described below, is used in this tool to ensure getting equal results. So you will get the same results even by using the online comparison tool or by using the comparison method in Aspose.Words.

{{% /alert %}}

## Limitations and Supported File Formats {#limitations-and-supported-file-formats}

Comparing documents is a very complex feature. There are varied parts of content combination that need to be analyzed to recognize all differences. The reason for this complexity is because Aspose.Words aims to get the same comparison results as the Microsoft Word comparison algorithm.

The general limitation for two documents being compared is that they must not have revisions before calling the compare method as this limitation exists in Microsoft Word.

{{% alert color="primary" %}}

Note that you can compare any two documents within the [supported file formats](/words/java/supported-document-formats/). Basically, you can compare document objects and even you can create those objects from scratch without having any specific format.

{{% /alert %}}

## Compare Two Documents {#compare-two-documents}

When you compare documents, differences of the latter document from the former show up as revisions to the former. When you modify a document, each edit will have its own revision after running the compare method.

Aspose.Words allows you to identify documents differences using the [Compare](https://reference.aspose.com/words/java/com.aspose.words/Document#compare(com.aspose.words.Document,java.lang.String,java.util.Date)) method – this is similar to the Microsoft Word document compare feature. It allows you to check documents or document versions to find differences and changes, including formatting modifications such as font changes, spacing changes, the addition of words and paragraphs.

As a result of the comparison, documents can be determined as equal or not equal. The term “equal” documents mean that the comparison method is not able to represent changes as revisions. This means that both document text and text formatting are the same. But there can be other differences between documents. For example, Microsoft Word supports only format revisions for styles, and you cannot represent style insertion/deletion. So documents can have a different set of styles, and the **Compare** method still produces no revisions.

The following code example shows how to check if two documents are equal or not:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-wordDocumentsAreEqual.java" >}}

The following code example shows how to simply apply the Compare method to two documents:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-caseWhenDocumentHasRevisions.java" >}}

## Specify Advanced Comparison Options {#specify-advanced-comparing-properties}

There are many different properties of the [CompareOptions](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/) class which you can apply when you want to compare documents.

For example, Aspose.Words allows you to ignore changes made during a comparison operation for certain types of objects within the original document. You can select the appropriate property for the object type, such as [IgnoreHeadersAndFooters](https://reference.aspose.com/words/java/com.aspose.words/compareoptions#IgnoreHeadersAndFooters), [IgnoreFormatting](https://reference.aspose.com/words/java/com.aspose.words/compareoptions#IgnoreFormatting), [IgnoreComments](https://reference.aspose.com/words/java/com.aspose.words/compareoptions#IgnoreComments), and others by setting them to "true".

In addition, Aspose.Words provides the [Granularity](https://reference.aspose.com/words/java/com.aspose.words/compareoptions#Granularity) property with which you can specify whether to track changes by character or by word.

Another common property is a choice in which document to show comparison changes. For example, the “Compare documents dialogue box” in Microsoft Word has the option “Show changes in” – this also affects the comparison results. Aspose.Words provides the [Target](https://reference.aspose.com/words/java/com.aspose.words/compareoptions#Target) property that serves this purpose.

The following code example shows how to set the advanced comparing properties:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-AdvancedComparingProperties.java" >}}
