---
title: Working With Control Characters
second_title: Aspose.Words for Java
articleTitle: Working With Control Characters
linktitle: Working With Control Characters
description: "Introduction to working with control characters in Aspose.Words for Java."
type: docs
weight: 155
url: /java/working-with-control-characters/
---

Microsoft Word documents may contain various characters that have a special meaning. Normally they are used for formatting purposes and are not drawn in the normal mode. You can make them visible if you click the Show/Hide Formatting Marks button located on the Standard toolbar. Sometimes you may need to add or remove characters to/from the text. For instance, when obtaining text programmatically from the document, Aspose.Words preserves most of the control characters, so if you need to work with this text you should probably remove or replace the characters.

The [ControlChar](https://reference.aspose.com/words/java/com.aspose.words/ControlChar) class is a repository for the constants that represent control characters often encountered in documents. It provides both char and string versions of the same constants. For example, string [ControlChar.LineBreak](https://reference.aspose.com/words/java/com.aspose.words/controlchar#LINE_BREAK) and char [ControlChar.LineBreakChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar#LINE_BREAK_CHAR) has the same value.

{{% alert color="primary" %}}

Use this class whenever you want to deal with control characters.

{{% /alert %}}

The following code example demonstrates how to use control characters.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-UseControlCharacters-UseControlCharacters.java" >}}