---
title: Aspose.Words for Android via Java 18.2 Release Notes
articleTitle: Aspose.Words for Android via Java 18.2 Release Notes
linktitle: Aspose.Words for Android via Java 18.2 Release Notes
description: "Aspose.Words for Android via Java 18.2 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 70
url: /java/aspose-words-for-android-via-java-18-2-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Android via Java 18.2](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/18.2/).

{{% /alert %}} 

## Major Features

There are 100+ improvements and fixes in this regular monthly release. The most notable are:

- FontSettings.EnableFontSubstitution option added
- Support to insert Style Separator to put different Paragraph styles
- HtmlSaveOptions.MetafileFormat property added 
- KeepSourceFormatting logic improved
- Rendering of SVG graphics elements embedded into DrawingML objects (svgBlip) implemented
- Added option to disable the internal font substitution mechanism and use the default font instead while rendering to PDF. (FontSettings.EnableFontSubstitution)
- Fixed "Compound lines are not supported" warning generation
- Fixed problem with path gradient brush scaling while rendering metafiles
- Spacing  between legend items in DrawingML Charts rendering fixed
- The data series line with "Round" cap type is rendered properly when exporting DrawingML Charts into PDF now
- Rotated VML text boxes with non-default alignment rendering fixed
- Auto-size calculation of rotated VML text boxes with vertical layout fixed
- Implemented none wrapping for text frames
- Improved paragraph spacing computation with hidden paragraphs
- Improved custom tab stops handling around hidden paragraphs
- Improved line wrapping around dashes
- Improved character spacing control for complex code point sequences
- Improved processing of out-of-order footnotes
- Implemented mirror margins and gutter position handling when page orientation changes
- Improved performance of reflow when document is large and has fields in headers/footers
- Fixed text box width issue with left-aligned RTL text

'Aspose.Words for Android via Java' 18.2 also includes the current 'Aspose.Words for Java' features. See the full list of changes in [Aspose.Words for Java 18.2 Release Notes](/words/java/aspose-words-for-java-18-2-release-notes/).

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSJAND-339|File paths get saved incorrectly in content.xml|Bug|
|WORDSJAND-288|Background is incorrect when WrapMode.CLAMP is used|Bug|
|WORDSJAND-315|PathGradient disappeared|Bug|
|WORDSJAND-342|Incorrect result while calculation in FieldFormText|Bug|
|WORDSJAND-343|HtmlReader can't find installed font by its font's family|Bug|
|WORDSJAND-344|The string with the French (Switzerland) currency symbol cannot be parsed|Bug|
|WORDSJAND-345|Some fields containing functions returns '!Syntax Error'|Bug|
|WORDSJAND-346|Incorrect Russian months names|Bug|
|WORDSJAND-310|Incorrect PathGradient's pattern|Bug|

Since the code base of 'Aspose.Words for Android via Java' matches the code of relevant .NET and Java versions, most of the changes, enhancements and fixes included in the Aspose.Words for .NET 18.2 and Aspose.Words for Java 18.2 are also included in this 'Aspose.Words for Android via Java' 18.2.
