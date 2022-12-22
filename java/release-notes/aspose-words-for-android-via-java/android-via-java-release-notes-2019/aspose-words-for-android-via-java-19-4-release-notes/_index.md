---
title: 19.4 Release Notes
second_title: Aspose.Words for Android via Java
articleTitle: Aspose.Words for Android via Java 19.4 Release Notes
linktitle: Aspose.Words for Android via Java 19.4 Release Notes
description: "Aspose.Words for Android via Java 19.4 Release Notes – the latest updates and fixes."
type: docs
weight: 40
url: /java/aspose-words-for-android-via-java-19-4-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for Android via Java 19.4](https://releases.aspose.com/words/java/19-4/).

{{% /alert %}}

## Major Features

- API's codebase is upgraded to the version Aspose.Words for Java 19.4
- MailMerge performance improved.
- Cold startup time improved by 10%.
- Added a new ImportFormatOptions class for more flexible control over importing tasks.
- Provide API to change how text is vertically aligned within the Text Box.
- Added a new ImportFormatOptions.KeepSourceNumbering option for use in import operations.
- Added a new ImportFormatOptions.IgnoreTextBoxes option for use in import operations.
- Added property PdfSaveOptions.AdditionalTextPositioning to control writing of additional text positioning operators in PDF.
- Implemented processing of fonts with "_GB2312" name suffixes (e.g. “KaiTi” font) when rendering metafiles.
- Improved calculation of extrema when rendering DrawingML charts.
- Improved vertical axis scaling of the chart with a manual layout of the plot area when rendering.
- Improved impact assessment of the chart title size on the vertical axis scaling when rendering.
- Improved vertical axis scaling when rendering DrawingML charts with the specified legend and the manual layout of the plot area.
- Fixed a bug that caused a violation of PDF A-1b compliance when writing large text position adjustment values.
- Fixed a bug with calculating extremums of the vertical axis when rendering DrawingML charts.
- Fixed a bug with exception when converting a radar chart with empty Y-values to PDF.
- Fixed a bug with rendering of transparent shapes with line caps specified.
- Fixed infinite loop when shape overlapping is computed.
- Improved shading rendering for condensed text.
- Improved overlapping logic for frames and tables.
- Improved Keep With Next rule handling for paragraph splits.
- Improved Keep Lines Together rule handling in presence of floaters.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSJAND-424|Built-in substitution rule is not used.|Bug|
|WORDSJAND-425|A picture cannot be drawn|Bug|

Since the code base of 'Aspose.Words for Android via Java' matches the code of relevant .NET and Java versions, most of the changes, enhancements, and fixes included in the Aspose.Words for .NET 19.4 and Aspose.Words for Java 19.4 are also included in this 'Aspose.Words for Android via Java' 19.4.
