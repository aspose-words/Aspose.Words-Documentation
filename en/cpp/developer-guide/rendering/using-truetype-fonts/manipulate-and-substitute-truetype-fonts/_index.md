---
title: Manipulate and Substitute TrueType Fonts in C++
second_title: Aspose.Words for C++
articleTitle: Manipulate and Substitute TrueType Fonts
linktitle: Manipulate and Substitute TrueType Fonts
description: "Aspose.Words for C++ can embed the correct TrueType fonts into the resulting document to ensure that it displays accurately. If a font or a specific character is not available, Aspose.Words searches for a suitable font replacement or uses the Font fallback mechanism."
type: docs
weight: 10
url: /cpp/manipulate-and-substitute-truetype-fonts/
---

Aspose.Words requires TrueType fonts for a variety of tasks, including rendering documents to fixed-page formats, for example, PDF or XPS. When Aspose.Words renders a document, it needs to perform embedding and subset embedding of TrueType fonts into the resulting document, which is a normal practice during a document generation, including popular PDF or XPS formats. This ensures that the document will appear the same to any viewer. Moreover, the XPS specification requires fonts to always be embedded in the document.

To ensure Aspose.Words accurately measures the characters and successfully embeds relevant fonts, the following conditions must be met:

1. Aspose.Words should be able to find and access TrueType font files on the system.
1. There must be sufficient TrueType fonts available to Aspose.Words, preferably with the same font family names as the ones used in the document.

Note that the font in the document represents an entity, such as family name, style, size, color, that is different from the `TrueType` font (physical font) entity. Aspose.Words resolves the font in the document to a physical font at some stage of processing. This enables certain tasks, most commonly the task of calculating text size during layout construction and embedding/subsetting to fixed-page formats. A number of other less popular tasks, such as font resolving and substitution while loading HTML or embedding/subsetting to some flow formats, are likewise enabled.

## Where Aspose.Words Looks for Fonts

Aspose.Words attempts to find TrueType fonts on the file system automatically. Usually, you can rely on the default behavior of Aspose.Words to find the `TrueType` fonts, but sometimes you need to specify your own folders containing TrueType fonts. The [Specify TrueType Fonts Location](/words/cpp/specify-truetype-fonts-location/) topic describes how and where Aspose.Words looks for fonts, as well as how to specify your own font locations.

## Differences in Processing of Font Formats in Aspose.Words and Microsoft Word

There are some differences in the processing of font formats in Aspose.Words and Microsoft Word as shown in the table below:

| |Microsoft Word|Aspose.Words|
| :- | :- | :- |
|TrueType fonts and OpenType fonts with TrueType outlines|Supported.|Supported.|
|OpenType fonts with PostScript outlines|Supported for most scenarios. Embedding to fixed-page formats such as PDF and XPS are not supported. The text is replaced with bitmap images.|Supported for most scenarios, including embedding to fixed-page formats.|
|OpenType Font Variations|Only named instances are supported. Continuous variations not supported.|Supported for the only default instance. Named instances and continuous variations are not supported.|
|Type1 fonts|Supported on Windows versions prior to 2013 and on MacOS versions. Support is dropped on Windows versions starting from 2013.|Not supported.|


