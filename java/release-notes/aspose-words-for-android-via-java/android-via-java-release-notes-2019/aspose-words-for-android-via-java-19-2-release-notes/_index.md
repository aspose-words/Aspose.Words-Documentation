---
title: Aspose.Words for Android via Java 19.2 Release Notes
type: docs
weight: 50
url: /java/aspose-words-for-android-via-java-19-2-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Android via Java 19.2](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/19.2).

{{% /alert %}} 
## **Major Features**
- API's codebase is upgraded to the version Aspose.Words for Java 19.2
- Supported inlining of syntax error messages into templates instead of exception throwing for LINQ Reporting Engine.
- Improved font fetching and substitution mechanism with corresponding API changes.
- Improved warnings for image processing issues when rendering to PDF.
- Improved font fallback rendering for full-width character Unicode ranges.
- Metafiles with "HeaderPlaceable" structure is now rendering regardless of structure checksum. (MS Word behaviour).
- The width of the DrawingML outline is now normalized if it is below the minimum value while rendering. (MS Word behaviour).
- Fixed a bug with incorrect calculation of DrawingML TextBox shape bounds.
- Fixed a bug with the calculation of the shape boundaries if the document contains the attribute.ShapeLayoutLikeWW8 (the behaviour of MS WORD 97 should be emulated).
- Fixed a bug that caused an exception when rendering ultra-small text boxes in GDI+.
- Fixed a bug with the distorted filling of the DrawingML shape outline when rendering grouped shapes.
- Fixed a bug causing the creation of blank images with zero sizes while rendering into HTML.
- Improved ordering of number in RTL list labels.
- Improved checkbox size calculation when active form fields are exported to PDF.
- Fixed issue when a document has “printer metrics” enabled and Windows has no printer driver installed.
- Fixed hang when the table cell is broken across pages when there is a floating shape anchor in it.
- Fixed issue when text which has borders is wrapped around a shape and does not fit.
## **Full List of Issues Covering all Changes in this Release**

|**Key**|**Summary**|**Category**|
| :- | :- | :- |
|WORDSJAND-414|Image cannot be drawn.|Bug|
|WORDSJAND-416|Incorrect float formatting if pattern mixes '#' and '0'.|Bug|
|WORDSJAND-418|Metafile picture disappeared.|Bug|
|WPRDSJAND-420|Wrong background color or transparency.|Bug|

Since the code base of 'Aspose.Words for Android via Java' matches the code of relevant .NET and Java versions, most of the changes, enhancements, and fixes included in the Aspose.Words for .NET 19.2 and Aspose.Words for Java 19.2 are also included in this 'Aspose.Words for Android via Java' 19.2.
