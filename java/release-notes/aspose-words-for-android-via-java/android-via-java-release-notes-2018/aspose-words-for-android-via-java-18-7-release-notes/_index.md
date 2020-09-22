---
title: Aspose.Words for Android via Java 18.7 Release Notes
type: docs
weight: 30
url: /java/aspose-words-for-android-via-java-18-7-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Android via Java 18.7](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/18.7).

{{% /alert %}} 

## **Major Features**

There are 90 improvements and fixes in this regular monthly release. The most notable are:

- API's codebase is upgraded to the version Aspose.Words for Java 18.7.
- New typed (generic) collections and enumerators were introduced in Aspose.Words public API
- Added public property HeaderFooterBookmarksExportMode in PdfSaveOptions 
- Added FontSourceBase.GetAvailableFonts method 
- Added public API for revision groups 
- Introduced new comparison settings 
- A new limo stretch algorithm for VML shapes rendering was developed, which most accurately repeats the output of MS Word (limo-stretched shapes)
- Public property OutlineOptions.CreateOutlinesForHeadingsInTables added allowing to specify whether or not to create outlines for headings inside tables
- Public method FontSourceBase.GetAvailableFonts added. It returns the list of fonts available via specific font source
- Improved rendering of DrawingML shapes with specified parent object extents
- EffectExtent attributes are now taken into account when calculating the bounding box for DrawingML shapes
- Improved EMR_ALPHABLEND record handling while rendering metafiles
- Now hidden shapes inside the group are not visible during rendering
- Fixed the leading spaces handling while processing EMF+ DrawString records
- Fixed a bug when grayscale effect was incorrectly applied to metafile
- Fixed a bug with the graphic frame rendering (invalid frame layout on the page)
- Fixed rendering of shadow effect for transparent shapes
- Fixed a bug with rendering of the MathML object if balanceSingleByteDoubleByteWidth property and UseFELayout property are specified
- Improved rendering of \0 characters
- Improved column balancing when column has footnotes
- Improved handling of table grid when layout is changed programmatically
- Improved table breaking in 2013 mode when it overlaps footer
- Improved handling of "don't add space between paragraphs of the same style" option when only one of the paragraphs have this option set
- Fixed issue when hanging punctuation precedes inline shape
- Fixed issue when Kinsoku rule is analyzed for shapes

'Aspose.Words for Android via Java' 18.7 also includes the current 'Aspose.Words for Java' features. See the full list of changes in [Aspose.Words for Java 18.7 Release Notes](/words/java/aspose-words-for-java-18-7-release-notes/).

## **Full List of Issues Covering all Changes in this Release**

|**Key**|**Summary**|**Category**|
| :- | :- | :- |
| |Upgrade to the latest version of Aspose.Words for Java (18.7)|New Feature|

Since the code base of 'Aspose.Words for Android via Java' matches the code of relevant .NET and Java versions, most of the changes, enhancements and fixes included in the Aspose.Words for .NET 18.7 and Aspose.Words for Java 18.7 are also included in this 'Aspose.Words for Android via Java' 18.7.
