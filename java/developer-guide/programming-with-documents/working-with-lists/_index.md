---
title: Working with Lists
type: docs
weight: 70
url: /java/working-with-lists/
---

## Lists Overview

This topic describes how to work programmatically with lists using Aspose.Words. Lists can be used in your documents to format, arrange, and emphasize text. Lists are a great way to organize data in documents, and they make it easier for readers to understand key points. 

A list in a Microsoft Word document is a set of list formatting properties. Each list can have up to 9 levels and formatting properties, such as number style, start value, indent, tab position etc are defined separately for each level. A List object always belongs to the ListCollection collection.

## How to Restart List for each Section

You can restart a list for each section using List.IsRestartAtEachSection() property. Note that this option is supported only in RTF, DOC and DOCX document formats. This option will be written to DOCX only if OoxmlCompliance is higher then Ecma376. Following code example shows how to create a list and restart it for each section. 

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}




