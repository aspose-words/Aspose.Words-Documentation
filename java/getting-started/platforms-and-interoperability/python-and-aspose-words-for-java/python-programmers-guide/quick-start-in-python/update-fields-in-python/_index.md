---
title: Update Fields in Python – Aspose.Words for Java
articleTitle: Update Fields in Python
linktitle: Update Fields in Python
description: "Update fields of Word Document using Python."
type: docs
weight: 80
url: /java/update-fields-in-python/
---

## Aspose.Words - Update Fields

To update fields of Word Document using Aspose.Words Java Apis in Python, simply invoke updateFields of Document object.

**Python Code**

{{< highlight csharp >}}
Document = jpype.JClass("com.aspose.words.Document")
DocumentBuilder = jpype.JClass("com.aspose.words.DocumentBuilder")
BreakType = jpype.JClass("com.aspose.words.BreakType")
StyleIdentifier = jpype.JClass("com.aspose.words.StyleIdentifier")
\# Demonstrates how to insert fields and update them using Aspose.Words.
\# First create a blank document.
doc = Document()
\# Use the document builder to insert some content and fields.
builder = DocumentBuilder(doc)
\# Start the actual document content on the second page.
builder.insertBreak(BreakType.SECTION_BREAK_NEW_PAGE)
\# Call the method below to update the TOC.
doc.updateFields()
{{< /highlight >}}

## Download Running Code

Download **Update Fields (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Python/tests/quickstart/updatefields/UpdateFields.py)
