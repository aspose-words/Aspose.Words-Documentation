---
title: How to Recognize That the Font Was Replaced in C++
second_title: Aspose.Words for C++
articleTitle: How to Recognize That the Font Was Replaced
linktitle: How to Recognize That the Font Was Replaced
description: "If you're not sure why a document's layout has changed or why a certain font doesn't look as expected, font substitution warnings messages can help."
type: docs
weight: 13
url: /cpp/how-to-recognize-that-the-font-was-replaced/
timestamp: 2024-09-24-14-35-44
---

Sometimes, it may be unclear why the document layout has changed, or why some font does not look as expected. In such cases, font substitution warnings messages implemented by the IWarningCallback interface come to rescue. They have the [FontSubstitution](https://reference.aspose.com/words/cpp/aspose.words/warningtype/) warning type and the standard description text format, "Font '<OriginalFont>' has not been found. Using '<SubstitutionFont>' font instead. Reason: <Reason>", with the following reasons:

- "alternative name from the document" – for substitution by [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/)
- "fontconfig substitution" – for substitution by font config rule
- "table substitution" – for substitution by table rule
- "font info substitution" – for substitution by font info rule
- "default font substitution" – for substitution by default font rule
- "first available font" – for substitution with first available font
