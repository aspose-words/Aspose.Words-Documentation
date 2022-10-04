---
title: Remove Fields C++
second_title: Aspose.Words for C++
articleTitle: Remove Fields
linktitle: Remove Fields
description: "Learn how to remove fields in C++. Remove fields programmatically using C++ API."
type: docs
weight: 35
url: /cpp/remove-fields/
---

Sometimes it is necessary to remove a field from a document. This may occur when it needs to be replaced with a different field type or when the field is no longer needed in the document. For example the TOC field when saving to HTML.

To remove a field inserted into a document using [DocumentBuilder](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder).[InsertField](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder#insertfield_fieldtype_bool), use the returned [Field](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field) object, which provides a convenient [Remove](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field#remove) method for easily removing the field from the document.

The following code example shows how to remove a field from the document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RemoveField-RemoveField.cpp" >}}
