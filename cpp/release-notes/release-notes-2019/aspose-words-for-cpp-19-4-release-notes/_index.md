---
title: Aspose.Words for CPP 19.4 Release Notes – Aspose.Words for С++
articleTitle: Aspose.Words for CPP 19.4 Release Notes
linktitle: Aspose.Words for CPP 19.4 Release Notes
description: "Aspose.Words for CPP 19.4 Release Notes – the latest updates and fixes."
type: docs
weight: 110
url: /cpp/aspose-words-for-cpp-19-4-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for C++ 19.4](https://www.nuget.org/packages/Aspose.Words.CPP/19.4)

{{% /alert %}}

## Major Features

This is the third release of Aspose.Words for C++, it took some time to prepare this release since it includes some major features, we are happy to present to you, like Layout Engine, Updating all fields, support HTML and PDF formats. Here is the list of features included since the previous release of Aspose.Words for C++:

- Layout Engine (the module that allows building page by page model of a document).
- Rendering document to PDF.
- Rendering document to Image (This feature is included, however, we are still working on its improvement, so note it is in beta state).
- Loading and saving HTML documents.
- Loading and saving EPUB document.
- Loading and saving MHTML documents.
- Loading MOBI documents.
- Insertion of HTML into the document.
- Insertion of SVG images into the document.
- Insertion online video.
- Creation Dml Charts.
- Updating fields that depend on document layout, like TOC, PAGE etc.

## Limitations and API Differences

Aspose.Words for C++ has some differences as compared to its equivalent .NET version of the API. This section contains information about all such functionality that is not available in the current release.
The missing features will be added in the future releases.

- The current release supports limited set of file formats (DOC, DOCX, RTF, TXT, PDF, some image formats, HTML, EPUB, MHTML)
- The current release doesn't support encrypted documents.
- The current release doesn't support downloading remote resources from the Internet.
- The current release has limited and unstable support for Rendering features. It will be improved in the following releases.
- The current release doesn't support Reporting features
- The current release only supports Microsoft Visual C++ version 2015 or higher and only for the x64 platform.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSCPP-602|Include Updating fields (including layout) to porting.|Feature|
|WORDSCPP-601|Include Layout engine to porting.|Feature|
|WORDSCPP-600|Include Insertionhtmlinto the document to porting.|Feature|
|WORDSCPP-599|Include Insertion charts to porting.|Feature|
|WORDSCPP-598|Include Insertion online video to porting.|Feature|
|WORDSCPP-583|Include Epub codec to porting.|Feature|
|WORDSCPP-582|Include Mhtml codec to porting.|Feature|
|WORDSCPP-581|Include Html codec to porting.|Feature|
|WORDSCPP-704|Fix VS2017 libraries naming|Enhancement|
|WORDSCPP-610|XmlDocument.PreserveWhitespace throws NotImplementedException|Enhancement|
|WORDSCPP-757|Incorrect behaviour of StreamWriter.Writeline(chararray, index, count)|Bug|
|WORDSCPP-756|Encoding.Clone() losing information about UTF8Encoding.EncoderShouldEmitUTF8Identifier|Bug|
|WORDSCPP-750|ZipReaderPal can't extract zip with password / TestAsian.TestJira8745A|Bug|
|WORDSCPP-749|Angle brackets in regular expressions are ported improperly.|Bug|
|WORDSCPP-703|Stack overflow during dtor call|Bug|
|WORDSCPP-698|Can't add HeaderPrimary to an empty document / TestHeaders.TestHeaderFooterLinkToPrevious|Bug|
|WORDSCPP-697|Non-empty result of SelectNodes of HeaderFooter for empty document / TestHeaders.TestNoHeaders|Bug|
|WORDSCPP-683|Unexpected exception suffix message for NotSupportedException exception|Bug|
|WORDSCPP-682|Cannot find resource Aspose.Resources.MsOfficeFallbackSetting.xml|Bug|
|WORDSCPP-677|Move to the public includes any structs used as class fields (even private)|Bug|
|WORDSCPP-673|System::Array&lt;System::String&gt;::Sort does not work the same as in .NET|Bug|
|WORDSCPP-672|bool vs String ambiguity detector doesn't work with params arguments|Bug|

