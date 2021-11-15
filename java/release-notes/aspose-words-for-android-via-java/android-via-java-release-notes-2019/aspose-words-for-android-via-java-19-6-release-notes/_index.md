---
title: Aspose.Words for Android via Java 19.6 Release Notes
type: docs
weight: 30
url: /java/aspose-words-for-android-via-java-19-6-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Android via Java 19.6](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/19.6).

{{% /alert %}} 

## Major Features

- Enhanced the image scaling workflow.
- Improved the charset recognition process.
- API's codebase is upgraded to the version Aspose.Words for Java 19.6
- Improved loading license in multi-thread environment.
- Provided API to Extract VBA Macros from Word Document.
- Added a new DocSaveOptions.AlwaysCompressMetafiles option.
- Implemented table style public API.
- Improved rendering of CurvedArrow shapes with basic and custom adjustment points.
- Improved rendering of DrawingML charts with scaling of the vertical axis if the chart legend has a manual layout.
- FontInfo substitution was tuned to prefer symbolic fonts as a substitution for symbolic fonts and regular fonts as a substitution for regular fonts. This fixes the customer issue with selecting symbolic "XVMSymbol" font as a substitution for a regular font.
- Fixed a bug with scale changing when rendering DrawingML charts.
- Fixed a bug with text inner shadow rendering when converting to HTML.
- Fixed a bug with Stacked Area Chart rendering, if the series have a different number of values.
- Fixed a bug with second empty chart with hidden axes.
- Fixed a bug with missing vowel glyph when rendering Thai fonts.
- Fixed issue with incorrect calculation of start and closing points for small ellipses when rendering DrawingML objects.
- Fixed table grid calculation issue when auto table has pct width mixed with %.
- Fixed exception when table which spans multiple pages and has many nested floaters is broken across pages.
- Improved text positioning when there is a paragraph-relative shape with anchor wrapped around multiple floaters.
- Improved calculation of space before a paragraph when its first in the document and there is a floater before it.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSJAND-428|Out of memory exception during the conversion to PDF|Bug|
|WORDSJAND-430|Some reflections are not rendered|Bug|
|WORDSJAND-434|Font is not the same as requested|Bug|

Since the code base of 'Aspose.Words for Android via Java' matches the code of relevant .NET and Java versions, most of the changes, enhancements, and fixes included in the Aspose.Words for .NET 19.6 and Aspose.Words for Java 19.6 are also included in this 'Aspose.Words for Android via Java' 19.6.
