---
title: Aspose.Words for Android via Java 18.12 Release Notes
type: docs
weight: 10
url: /java/aspose-words-for-android-via-java-18-12-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Android via Java 18.12](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/18.12).

{{% /alert %}} 

## Major Features

There are 108 improvements and fixes in this regular monthly release. The most notable are:

- Java 11 compatibility is checked and updated.
- ExternalImageLibTest utility class added to check external image libraries on user side.
- Implemented WMF fonts scaling, according to metafile size on the page, and public option to control it (MetafileRenderingOptions.ScaleWmfFontsToMetafileSize).
- Improved the default font fallback mechanism to better fit the MW behavior.
- Optimized metafile from SVG rendering to skip redundant line segments.
- Fixed a bug that caused an exception when rendering metafiles filled with gradient.
- Fixed a bug with the order of legend items of the stacked DrawingML chart when rendering.
- Fixed a bug with text clipping when rendering the DrawingML charts.
- Fixed a bug with rendering of minor tick marks and clipping the rightmost bar of DrawingML charts.
- Fixed a bug with rendering data labels for points, located on the border of the DrawingML chart plot area.
- Implemented support for RTL comments rendering, e.g. Arabic.
- Improved hyphenation logic for numerous cases.
- Improved page numbering for sections starting in new columns.
- Improved table row alignment.
- Improved tab stop calculations with paragraph indents.
- Improved table breaking logic for a few complex cases.
- Improved handling of character compression within mixed ltr/rtl text.
- Fixed exception in rare case when field update causes line to contain only zero length spans.
- Fixed exception in rare case when floating object is pushed beyond empty column.
- Fixed layout when tables merge over the hidden paragraph

'Aspose.Words for Android via Java' 18.12 also includes the current 'Aspose.Words for Java' features. See the full list of changes in [Aspose.Words for Java 18.12 Release Notes](/words/java/aspose-words-for-java-18-12-release-notes/).

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
| |Upgrade to the latest version of Aspose.Words for Java (18.12)|New Feature|
|WORDSJAND-393|Dashed lines disappeared.|Bug|
|WORDSJAND-411|java.lang.IllegalStateException occurs upon setting License.|Bug|

Since the code base of 'Aspose.Words for Android via Java' matches the code of relevant .NET and Java versions, most of the changes, enhancements and fixes included in the Aspose.Words for .NET 18.12 and Aspose.Words for Java 18.12 are also included in this 'Aspose.Words for Android via Java' 18.12.
