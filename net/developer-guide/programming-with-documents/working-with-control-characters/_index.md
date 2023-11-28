---
title: Working With Control Characters
second_title: Aspose.Words for .NET
articleTitle: Working With Control Characters
linktitle: Working With Control Characters
description: "Introduction to working with control characters in Aspose.Words for .NET."
type: docs
weight: 400
url: /net/working-with-control-characters/
---

Microsoft Word documents may contain various characters that have a special meaning. Normally they are used for formatting purposes and are not drawn in the normal mode. You can make them visible if you click the Show/Hide Formatting Marks button located on the Standard toolbar.

Sometimes you may need to add or remove characters to/from the text. For instance, when obtaining text programmatically from the document, Aspose.Words preserves most of the control characters, so if you need to work with this text you should probably remove or replace the characters.

The [ControlChar](https://reference.aspose.com/words/net/aspose.words/controlchar/) class is a repository for the constants that represent control characters often encountered in documents. It provides both char and string versions of the same constants. For example, string [LineBreak](https://reference.aspose.com/words/net/aspose.words/controlchar/linebreak/) and char [LineBreakChar](https://reference.aspose.com/words/net/aspose.words/controlchar/linebreakchar) has the same value.

The following code example shows how to use control characters:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cs" >}}/words/net/working-with-content-control-sdt/)
