---
title: XXX
second_title: XXX
articleTitle: XXX
linktitle: XXX
description: "XXX"
type: docs
weight: 130
url: /java/working-with-fields/
---

## Removing a Field

Sometimes it is necessary to remove a field from the document. This may occur when it is to be replaced with a different field type or when the field is no longer needed in the document. For example a TOC field when saving to HTML. A field inserted into the document using DocumentBuilder.insertField returns a Field object which provides a convenience method to easily remove the field from the document. Below example removes a field from the document. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Various%20fields.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RemoveField-RemoveField.java" >}}