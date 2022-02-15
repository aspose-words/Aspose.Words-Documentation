---
title: Clean Up a Document – Aspose.Words for Python via .NET
articleTitle: Clean Up a Document
linktitle: Clean Up a Document
description: "Aspose.Words for Python via .NET allows you to remove unused or duplicate information to reduce output size and processing time. Remove unused styles, unused built-in styles, duplicate styles, or unused lists."
type: docs
weight: 25
url: /python-net/clean-up-a-document/
aliases: [/python/clean-up-a-document/]
---

Sometimes you may need to remove unused or duplicate information to reduce the size of the output document and processing time.

While you can find and remove unused data, such as styles or lists, or duplicate information manually, it will be much more convenient to do this using features and capabilities provided by Aspose.Words.

The **CleanupOptions** class allows you to specify options for document cleaning. To remove duplicate styles or just unused styles or lists from the document, you can use the **cleanup** method.

## Remove Unused Information from a Document

You can use the **unused_styles** and **unused_builtin_styles** properties to detect and remove styles that are marked as "unused".

You can use the **unused_lists** property to detect and remove lists and list definitions that are marked as "unused".

The following code example shows how to remove only unused styles from a document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupUnusedStylesandLists.py" >}}

## Remove Duplicate Information from a Document

You can also use the **duplicate_style** property to substitute all duplicate styles with the original one and remove duplicates from a document.

The following code example shows how to remove duplicate styles from a document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupDuplicateStyle.py" >}}