---
title: How to Find Field Properties
second_title: Aspose.Words for Java
articleTitle: Find Field Properties
linktitle: Find Field Properties
description: "How to find some field properties like field code and field result in Java"
type: docs
weight: 25
url: /java/find-field-properties/
---

A field which is inserted using [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder#insertField(int,boolean)) returns a [Field](https://reference.aspose.com/words/java/com.aspose.words/field/) object. This is a facade class which provides useful methods to quickly find such properties of a field.

The following code example shows how to find the field code and field result:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldCode.java" >}}

Note if you are only looking for the names of merge fields in the document then you can instead use the built-in method [GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge#getFieldNames()).

The following code example shows how to get names of all merge fields in a document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldNames.java" >}}
