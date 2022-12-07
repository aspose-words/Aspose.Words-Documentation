---
title: Remove Fields in Java
second_title: Aspose.Words for Java
articleTitle: Remove Fields
linktitle: Remove Fields
description: "Learn how to remove fields in Java. Remove fields programmatically using Java API."
type: docs
weight: 35
url: /java/remove-fields/
---

Sometimes it is necessary to remove a field from the document. This may occur when it is to be replaced with a different field type or when the field is no longer needed in the document. For example a TOC field when saving to HTML.

To remove a field inserted into a document using [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder#insertField(int,boolean)), use the returned [Field](https://reference.aspose.com/words/java/com.aspose.words/field/) object, which provides a convenient [Remove](https://reference.aspose.com/words/java/com.aspose.words/field#remove()) method for easily removing the field from the document.

The following code example shows how to remove a field from the document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RemoveField-RemoveField.java" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Various%20fields.docx).

{{% /alert %}}
