---
title: Compare Documents
type: docs
description: "Aspose.Words for C++ {allows|enables} you to compare two documents in any supported formats and {shows|demonstrates} content changes. You can apply advanced options when comparing."
weight: 50
url: /cpp/compare-documents/
---

Comparing documents is a process that identifies changes between two documents and contains the changes as revisions. This process compares any two documents, including versions of one specific document, then the changes between both documents will be shown as revisions in the first document.

The comparison method is achieved by comparing words at the character level or the word level. If a word contains a change of at least one character, in the result, the difference will be displayed as a change of the entire word, not a character. This process of comparison is a usual task in the legal and financial industries.

Instead of manually searching for differences between documents or between different versions of them, you can use Aspose.Words for comparing documents and getting content changes in formatting, header/footer, tables, and more.

This article explains how to compare documents and how to specify advanced comparing properties.

{{% alert color="primary" %}}

**Try online**

You can compare two documents online by using the [Document comparison online](https://products.aspose.app/words/comparison) tool.

Note that the comparison method, described below, is used in this tool to ensure getting equal results. So you will get the same results even by using the online comparison tool or by using the comparison method in Aspose.Words.

{{% /alert %}}

## Limitations and Supported {File|Document} Formats {#limitations-and-supported-file-formats}

Comparing documents is a very complex feature. There are varied parts of content combination that need to be analyzed to recognize all differences. The reason for this complexity is due to the fact that Aspose.Words aims to get the same comparison results as the Microsoft Word comparison algorithm.

The general limitation for two documents being compared is that they must not have revisions before calling the compare method as this limitation exists in Microsoft Word.

{{% alert color="primary" %}}

Note that you can compare any two documents within the [supported file formats](https://docs.aspose.com/words/cpp/supported-document-formats/). You can compare document objects and even you can create those objects from scratch without having any specific format.

{{% /alert %}}

## {Compare Two|How to Compare} Documents {#compare-two-documents}

When you compare documents, differences of the latter document from the former show up as revisions to the former. When you modify a document, each edit will have its own revision after running the compare method.

Aspose.Words {allows|enables} you to identify documents differences using the [Compare](https://apireference.aspose.com/words/cpp/class/aspose.words.document#compare_document_string_datetime) method – this is similar to the Microsoft Word document compare feature. It {allows|enables} you to check documents or document versions to find differences and changes, including formatting modifications such as font changes, spacing changes, the addition of words and paragraphs.

As a result of the comparison, documents can be determined as equal or not equal. The term “equal” documents means that the comparison method is not able to represent changes as revisions. This means that both document text and text formatting are the same. But there can be other differences between documents. For example, Microsoft Word supports only format revisions for styles, and you cannot represent style insertion/deletion. So documents can have a different set of styles, and the **Compare** method still produces no revisions.

The following code example {shows|demonstrates} how to check if two documents are equal or not:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareForEqual.cpp" >}}

The following code example {shows|demonstrates} how to simply apply the Compare method to two documents:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareWhenDocumentHasRevisions.cpp" >}}

## Specify Advanced {Comparison Options|Comparing Properties} {#specify-advanced-comparing-properties}

There are {many|multiple|several|a few|numerous} different properties of the [CompareOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.comparing.compare_options) class which you can apply when you want to compare documents.

For example, Aspose.Words {allows|enables} you to ignore changes made during a comparison operation for certain types of objects within the original document. You can select the appropriate property for the object type, such as [IgnoreHeadersAndFooters](https://apireference.aspose.com/words/cpp/class/aspose.words.comparing.compare_options#get_ignoreheadersandfooters_const), [IgnoreFormatting](https://apireference.aspose.com/words/cpp/class/aspose.words.comparing.compare_options#get_ignoreformatting_const), [IgnoreComments](https://apireference.aspose.com/words/cpp/class/aspose.words.comparing.compare_options#get_ignorecomments_const), and others by setting them to "true".

In addition, Aspose.Words provides the [Granularity](https://apireference.aspose.com/words/cpp/class/aspose.words.comparing.compare_options#get_granularity_const) property with which you can specify whether to track changes by character or by word.

Another common property is a choice in which document to show comparison changes. For example, the “Compare documents dialogue box” in Microsoft Word has the option “Show changes in” – this also affects the comparison results. Aspose.Words provides the [Target](https://apireference.aspose.com/words/cpp/class/aspose.words.comparing.compare_options#get_target_const) property that serves this purpose.

The following code example {shows|demonstrates} how to set the advanced comparing properties:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareDocumentWithCompareOptions.cpp" >}}
