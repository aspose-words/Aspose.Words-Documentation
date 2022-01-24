---
title: Clean Up a Document
description: "Aspose.Words for .NET allows you to remove unused or duplicate information to reduce output size and processing time. Remove unused styles, unused built-in styles, duplicate styles, or unused lists."
type: docs
weight: 25
url: /net/clean-up-a-document/
---

Sometimes you may need to remove unused or duplicate information to reduce the size of the output document and processing time.

While you can find and remove unused data, such as styles or lists, or duplicate information manually, it will be much more convenient to do this using features and capabilities provided by Aspose.Words.

The [CleanupOptions](https://apireference.aspose.com/words/net/aspose.words/cleanupoptions) class allows you to specify options for document cleaning. To remove duplicate styles or just unused styles or lists from the document, you can use the [Cleanup](https://apireference.aspose.com/words/net/aspose.words.document/cleanup/methods/1) method.

## Remove Unused Information from a Document

You can use the [UnusedStyles](https://apireference.aspose.com/words/net/aspose.words/cleanupoptions/properties/unusedstyles) and [UnusedBuiltinStyles](https://apireference.aspose.com/words/net/aspose.words/cleanupoptions/properties/unusedbuiltinstyles) properties to detect and remove styles that are marked as "unused".

You can use the [UnusedLists](https://apireference.aspose.com/words/net/aspose.words/cleanupoptions/properties/unusedlists) property to detect and remove lists and list definitions that are marked as "unused".

The following code example shows how to remove only unused styles from a document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.cs" >}}

## Remove Duplicate Information from a Document

You can also use the [DuplicateStyle](https://apireference.aspose.com/words/net/aspose.words/cleanupoptions/properties/duplicatestyle) property to substitute all duplicate styles with the original one and remove duplicates from a document.

The following code example shows how to remove duplicate styles from a document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.cs" >}}