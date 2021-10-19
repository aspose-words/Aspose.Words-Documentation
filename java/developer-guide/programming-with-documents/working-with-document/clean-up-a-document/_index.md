---
title: Clean Up a Document
description: "Aspose.Words for Java enables you to remove unused or duplicate information to reduce output size and processing time. Remove unused styles, unused built-in styles, duplicate styles, or unused lists."
type: docs
weight: 15
url: /java/clean-up-a-document/
---

Sometimes you may need to remove unused or duplicate information to reduce the size of the output document and processing time.

While you can find and remove unused data, such as styles or lists, or duplicate information manually, it will be much more convenient to do this using features and capabilities provided by Aspose.Words.

The [CleanupOptions](https://apireference.aspose.com/words/java/com.aspose.words/CleanupOptions) class enables you to specify options for document cleaning. To remove duplicate styles or just unused styles or lists from the document, you can use the [Cleanup](https://apireference.aspose.com/words/java/com.aspose.words/document#cleanup()) method.

## Remove Unused Information from a Document

You can use the [UnusedStyles](https://apireference.aspose.com/words/java/com.aspose.words/cleanupoptions#UnusedStyles) and [UnusedBuiltinStyles](https://apireference.aspose.com/words/java/com.aspose.words/cleanupoptions#UnusedBuiltinStyles) properties to detect and remove styles that are marked as "unused".

You can use the [UnusedLists](https://apireference.aspose.com/words/java/com.aspose.words/cleanupoptions#UnusedLists) property to detect and remove lists and list definitions that are marked as "unused".

The following code example shows how to remove only unused styles from a document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## Remove Duplicate Information from a Document

You can also use the [DuplicateStyle](https://apireference.aspose.com/words/java/com.aspose.words/cleanupoptions#DuplicateStyle) property to substitute all duplicate styles with the original one and remove duplicates from a document.

The following code example shows how to remove duplicate styles from a document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
