---
title: Aspose.Words for Android via Java 18.10 Release Notes
second_title: Aspose.Words for Android via Java
articleTitle: Aspose.Words for Android via Java 18.10 Release Notes
linktitle: Aspose.Words for Android via Java 18.10 Release Notes
description: "Aspose.Words for Android via Java 18.10 Release Notes – the latest updates and fixes."
type: docs
weight: 20
url: /java/aspose-words-for-android-via-java-18-10-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for Android via Java 18.10](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/18.10).

{{% /alert %}}

## Major Features

There are 84 improvements and fixes in this regular monthly release. The most notable are:

- API's codebase is upgraded to the version Aspose.Words for Java 18.10
- Aspose.Words for Java is FIPS compliant now. The single sentence 'SecuritySettings.startFipsMode()' switches current Aspose.Words thread to the FIPS mode.
- Support Conholdate.Total for Java licensing system.
- Compatibility within GroupDocs Total package is improved.
- Just another Veracode Security Scan Report is fixed.
- Java 10/11 compatibility updates caused few bugs on some old Java Runtime Environments. We managed to fix these bugs quickly.
- Massive JavaDoc fixes.
- Aspose.BarCode compatibility changed to a new architecture that started from v.18.8. BarCode inside AW documents is more consistent now.
- Implemented new API to set up font fallback mechanism through XML configuration.
- Provide option to Use a style to format text typed into the SDT control.
- Add feature to insert Horizontal Rule into document.
- PNG images with a corrupted file structure are not skipped now from the rendering if it is possible to read information about their size.
- Improved rendering of abscissa labels of a DrawingML Chart if the axis contains a large number of dummy values.
- Improved scaling of the vertical axis of DrawingML Charts if a small range is used.
- Fixed an error causing an exception while rendering pattern-filled DrawingML shapes when pattern is not specified.
- Fixed a rendering glitch caused by negative arcsize of rounded rectangle VML shapes.
- Fixed a bug with rendering of the gridlines in a DrawingML Chart if the interval between tick marks is specified.
- Fixed a bug with rendering of the second axis title in a DrawingML Chart if manual layout is set.
- Fixed issue with paragraph above spacing for page break lines in compatibility mode.
- Fixed rendering of hidden paragraph in TOC fields.
- Fixed line wrapping in compatibility mode when line break follows inline shape wider that column.
- Improved rendering of underlines, it is now based on fields of the POST table in OTF fonts.
- Improved alignment of page relative shapes for documents created in Word 2013 and later.
- LINQ Reporting Engine supports removal of paragraphs becoming empty after template syntax tags are removed or replaced with empty values.

'Aspose.Words for Android via Java' 18.10 also includes the current 'Aspose.Words for Java' features. See the full list of changes in [Aspose.Words for Java 18.10 Release Notes](/words/java/aspose-words-for-java-18-10-release-notes/).

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
| |Upgrade to the latest version of Aspose.Words for Java (18.10)|New Feature|
|WORDSJAND-405|Currency formatting issue.|Bug|
|WORDSJAND-399|Embedded font looks differently.|Bug|
|WORDSJAND-398|Line disappeared in Metafile.|Bug|

Since the code base of 'Aspose.Words for Android via Java' matches the code of relevant .NET and Java versions, most of the changes, enhancements and fixes included in the Aspose.Words for .NET 18.10 and Aspose.Words for Java 18.10 are also included in this 'Aspose.Words for Android via Java' 18.10.
