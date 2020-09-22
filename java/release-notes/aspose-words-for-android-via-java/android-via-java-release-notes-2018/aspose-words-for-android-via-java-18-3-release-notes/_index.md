---
title: Aspose.Words for Android via Java 18.3 Release Notes
type: docs
weight: 60
url: /java/aspose-words-for-android-via-java-18-3-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Android via Java 18.3](http://maven.aspose.com/repository/simple/ext-release-local/com/aspose/aspose-words/18.3/).

{{% /alert %}} 

## **Major Features**

There are 70+ improvements and fixes in this regular monthly release. The most notable are:

- Public API to get Subject and Issuer names from DigitalCertificate (instead obsolete properties).
- Add support of CssClassNamesPrefix in HtmlSaveOptions
- A number of obsolete properties were removed from PdfSaveOptions class. Please refer to public API changes section for details
- PdfSaveOptions.EscapeUri property was added to allow the usage of custom URI strings without the automatic escape while rendering into PDF
- The automatic font color calculation now takes the fill of the background shape into account while rendering
- Added fallback rendering for Unicode range [U+1F300; U+1F5FF] - Miscellaneous Symbols and Pictographs; This range includes such symbols as Emoji and alike
- Implemented processing of empty EMR_EXTTEXTOUTW records in metafiles rendering
- Improved rendering of DML Chart plot area with a manual layout. The additional offset is calculated for the rotated labels of horizontal axis
- Fixed a bug where the gradient brush with transformation would mess up the texture upon rendering. Texture scaling improved
- Fixed a problem of axis scaling when rendering DML Charts with Arial Narrow font
- Fixed a bug causing freezes when converting to PDF a document with DML Charts with a huge number of data points
- Fixed a symbol positioning bug when rendering MathML equations
- A reflection effect is now applied correctly for 3D rotated WordArt objects

'Aspose.Words for Android via Java' 18.3 also includes the current 'Aspose.Words for Java' features. See the full list of changes in [Aspose.Words for Java 18.3 Release Notes](/words/java/aspose-words-for-java-18-3-release-notes/).

## **Full List of Issues Covering all Changes in this Release**

|**Key**|**Summary**|**Category**|
| :- | :- | :- |
|WORDSJAND-349|Attributes are sorted incorrectly|Bug|
|WORDSJAND-352|Result Docx document has incorrect settings.xml file|Bug|
|WORDSJAND-350|Date displays Monday instead of Tuesday (Ru)|Bug|
|WORDSJAND-351|Image disappeared|Bug|
|WORDSJAND-353|Incorrect image position|Bug|
|WORDSJAND-356|AUTOTEXT field is not getting updated|Bug|
|WORDSJAND-357|Finnish (Finland) locale has incorrect day names|Bug|
|WORDSJAND-364|External CSS issue|Bug|
|WORDSJAND-370|Incorrect theme's colors|Bug|
|WORDSJAND-361|Sdt content is not being updated|Bug|
|WORDSJAND-363|Incorrect number formatting|Bug|
|WORDSJAND-367|Shape must be empty when image is broken|Bug|

Since the code base of 'Aspose.Words for Android via Java' matches the code of relevant .NET and Java versions, most of the changes, enhancements and fixes included in the Aspose.Words for .NET 18.3 and Aspose.Words for Java 18.3 are also included in this 'Aspose.Words for Android via Java' 18.3.
