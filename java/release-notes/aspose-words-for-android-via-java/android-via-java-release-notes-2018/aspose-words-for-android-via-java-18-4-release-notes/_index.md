---
title: Aspose.Words for Android via Java 18.4 Release Notes
second_title: Aspose.Words for Android via Java
articleTitle: Aspose.Words for Android via Java 18.4 Release Notes
linktitle: Aspose.Words for Android via Java 18.4 Release Notes
description: "Aspose.Words for Android via Java 18.4 Release Notes – the latest updates and fixes."
type: docs
weight: 50
url: /java/aspose-words-for-android-via-java-18-4-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for Android via Java 18.4](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/18.4).

{{% /alert %}}

## Major Features

There are 70+ improvements and fixes in this regular monthly release. The most notable are:

- Added public Ref&lt;T&gt; class for out/ref emulation in public API.
- Provide an ability to work with password-protected ODT and OTT file formats
- Preserve PaperTray information in PCL       
- Added ShapeBase.IsLayoutInCell property 
- Implemented optimization of metafile rendering vector output. Optimization includes applying intermediate transformations directly to the graphics and removing redundant canvases. Such optimization is also performed by MW when saving metafiles as vector graphics to PDF, XPS, etc.
- PaperTray information is now saved in PCL output
- "DrawingML shapes are not fully supported" warning is not thrown anymore, more specific warnings are used instead while rendering
- DrawingML shapes with auto-size and empty textboxes don't throw exception while rendering now
- WordArt objects with empty fill now cast only outline shadows while rendering. Previously the whole shape cast a shadow
- Improved rendering of MathAccentElement. The accent symbol is rendered in accordance with the letter's height
- Improved rendering of PieChart, if data labels have a manual layout
- Improved rendering of the text boxes with OleObjects (e.g. Math equation)
- Improved rendering of WordArt objects with gradient fill
- Fixed a bug causing the corruption of radial gradient fill for rotated shapes while rendering
- Fixed rendering of “Monotype Hadassah” font with legacy encoding
- Fixed a problem with META_SETPIXEL WMF record while rendering meta-files
- Improved frame width calculation when paragraph has right indent
- Improved computation of widths of ideographic space when combined with document grid, space inside footnotes
- Improved floating table positioning for RTL tables in 2013 compatibility mode
- Improved layout of 2013 compatible documents when page break overlaps footer
- Improved positioning of wrapped lines in 2013 compatibility mode, and lines with large inline images
- Fixed issue with character compressing when Kinsoku rule is ignored by document
- Fixed incorrect glyph selection for Zero Width No-Break Space when font does not have this glyph
- Fixed comment range highlighting issue when comment spans multiple pages inside a repeated header row of a table
- Fixed rendering of text in merged cells when row contains hidemark attribute on the cell break and all remaining cells are merged

'Aspose.Words for Android via Java' 18.4 also includes the current 'Aspose.Words for Java' features. See the full list of changes in [Aspose.Words for Java 18.4 Release Notes](/words/java/aspose-words-for-java-18-4-release-notes/).

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSJAND-359|Dml fill type is incorrect|Bug|
|WORDSJAND-362|Mhtml is getting parsed incorrectly|Bug|
|WORDSJAND-365|Incorrect reading and writing extensions of the graphic frame|Bug|
|WORDSJAND-369|Color tags are not getting formatted|Bug|
|WORDSJAND-378|Reader with UTF7 encoding returns incorrect characters|Bug|
|WORDSJAND-372|Brush position is incorrect|Bug|
|WORDSJAND-382|Certificate information should be in readable format|Bug|
|WORDSJAND-380|Resource loading issue|Bug|
|WORDSJAND-371|Brush size is incorrect|Bug|
|WORDSJAND-391|msURI parses Unix style path incorrectly|Bug|
|WORDSJAND-387|NPE while loading the image|Bug|

Since the code base of 'Aspose.Words for Android via Java' matches the code of relevant .NET and Java versions, most of the changes, enhancements and fixes included in the Aspose.Words for .NET 18.4 and Aspose.Words for Java 18.4 are also included in this 'Aspose.Words for Android via Java' 18.4.
