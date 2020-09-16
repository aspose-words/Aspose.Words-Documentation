---
title: Aspose.Words for Android via Java 17.9 Release Notes
type: docs
weight: 40
url: /java/aspose-words-for-android-via-java-17-9-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Android via Java 17.9](http://maven.aspose.com/repository/simple/ext-release-local/com/aspose/aspose-words/17.9/).

{{% /alert %}} 
## **Major Features**
There are 80+ improvements and fixes in this regular monthly release. The most notable are:

- TIFF reading support.
- New performance fixes.
- Caching of shading patterns for PDF output implemented. The output size of PDF documents with the repeating images (e.g. in header/footer) is now significantly reduced.
- Precaching of printer settings implemented. Calling of AsposeWordsPrintDocument.CachePrinterSettings() reduces the time for the first call of Print() method making the sequential calls of Print() method uniform.Metafiles with EMR_ALPHABLEND record with 32bpp ARGB raw bitmap data rendering implemented.
- Improved character spacing control handling for Asian text.
- Improved table grid calculation when a paragraph in a cell has large indents.
- Improved text wrapping in narrow line band when there is a leading tab stop.
- Added feature to set Placeholder Text of Structured Document Tag.
- Added feature to support w:dirty attribute on a field.
- Updating value of SaveDate field just by doing open/save.

'Aspose.Words for Android via Java' 17.9 also includes the current 'Aspose.Words for Java' features. See the full list of changes in [Aspose.Words for Java 17.9 Release Notes](/words/java/aspose-words-for-java-17-9-release-notes/).
## **Full List of Issues Covering all Changes in this Release**

|**Key**|**Summary**|**Category**|
| :- | :- | :- |
|WORDSJAND-119|Support Reading TIFF files|New Feature|
|WORDSJAND-308|Picture has Incorrect colors|Bug|
|WORDSJAND-289|Extra pixel is shown when gradient tiling is used|Bug|
|WORDSJAND-286|Inverted color after Metafile raster operation|Bug|
|WORDSJAND-284|Hebrew date is different from Java's Gold|Bug|
|WORDSJAND-283|Shadow's size and appearance is not correct|Bug|
|WORDSJAND-279|Margin is incorrect|Bug|
|WORDSJAND-277|PathGradient: Rotation is incorrect|Bug|
|WORDSJAND-276|Gradient is not shown|Bug|
|WORDSJAND-243|Red cross instead of the image|Bug|
|WORDSJAND-193|Paragraph space after is changed after mail merge|Bug|
|WORDSJAND-98|Android can't read 32BppArgb Bitmaps|Bug|
|WORDSJAND-87|Text's outline is now drawn or has incorrect position|Bug|
|WORDSJAND-34|Some images have opaque background|Bug|

Since the code base of 'Aspose.Words for Android via Java' matches the code of relevant .NET and Java versions, most of the changes, enhancements and fixes included in the Aspose.Words for .NET 17.9 and Aspose.Words for Java 17.9 are also included in this 'Aspose.Words for Android via Java' 17.9.
