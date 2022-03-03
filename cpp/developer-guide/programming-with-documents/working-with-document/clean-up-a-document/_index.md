---
title: Clean Up a Document in C++
second_title: Aspose.Words for C++
articleTitle: Clean Up a Document
linktitle: Clean Up a Document
description: "Remove unused or duplicate information to reduce output size and processing time using C++. Remove unused styles, unused built-in styles, duplicate styles, or unused lists."
type: docs
weight: 15
url: /cpp/clean-up-a-document/
---

Sometimes you may need to remove unused or duplicate information to reduce the size of the output document and processing time.

While you can find and remove unused data, such as styles or lists, or duplicate information manually, it will be much more convenient to do this using features and capabilities provided by Aspose.Words.

The [CleanupOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.cleanup_options) class allows you to specify options for document cleaning. To remove duplicate styles or just unused styles or lists from the document, you can use the [Cleanup](https://apireference.aspose.com/words/cpp/class/aspose.words.document#cleanup) method.

## Remove Unused Information from a Document

You can use the [UnusedStyles](https://apireference.aspose.com/words/cpp/class/aspose.words.cleanup_options#get_unusedstyles_const) and [UnusedBuiltinStyles](https://apireference.aspose.com/words/cpp/class/aspose.words.cleanup_options#get_unusedbuiltinstyles_const) properties to detect and remove styles that are marked as "unused".

You can use the [UnusedLists](https://apireference.aspose.com/words/cpp/class/aspose.words.cleanup_options#get_unusedlists_const) property to detect and remove lists and list definitions that are marked as "unused".

The following code example shows how to remove only unused styles from a document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.h" >}}

## Remove Duplicate Information from a Document

You can also use the [DuplicateStyle](https://apireference.aspose.com/words/cpp/class/aspose.words.cleanup_options#get_duplicatestyle_const) property to substitute all duplicate styles with the original one and remove duplicates from a document.

The following code example shows how to remove duplicate styles from a document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.h" >}}
