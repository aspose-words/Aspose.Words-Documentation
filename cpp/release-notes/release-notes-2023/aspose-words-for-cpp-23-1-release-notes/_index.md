---
title: Aspose.Words for C++ 23.1 Release Notes
description: "Aspose.Words for C++ 23.1 Release Notes – the latest updates and fixes."
type: docs
weight: 70
url: /cpp/aspose-words-for-cpp-23-1-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for C++ 23.1](https://www.nuget.org/packages/Aspose.Words.Cpp/23.1.0).

{{% /alert %}}

## Major Features

There are 75 improvements and fixes in this regular monthly release. The most notable are:

- Significantly improved performance and quality of emulation of raster operations with metafiles.
- Implemented an ability to work with shading theme colors.
- Added the ability to generate TOC (table of contents) for AZW3 documents.
- Provided the way to control how the list items are exported to the Markdown format.
- Added support of R-squared coefficient in DML charts trendline labels when rendering.

## Limitations and API Differences

Aspose.Words for C++ has some differences as compared to its equivalent .NET version of the API. This section contains information about all such functionality that is not available in the current release. The missing features will be added in future releases.

- The current release does not support Metered license.
- The current release does not support LINQ and Reporting features.
- The current release does not support OpenGL 3D Shapes rendering.
- The current release does not support loading PDF documents.
- The current release has limited support for database features - C++ doesn't have common API for DB like .NET System.Data.
- The current release supports Microsoft Visual C++ version 2017 or higher.
- The current release supports GCC 6.3 or higher and Clang 3.9.1 or higher on Linux and only for the x86_x64 platform.
- The current release supports macOS Big Sur or later (11.5+) for 64-bit Intel Mac platform.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-15063|Add feature to support PDF/X-1a:2001 compliance level|New Feature
|WORDSNET-15131|Support of DOCX to PDF_X_1A conversion|New Feature
|WORDSNET-6609|PDF/X3 support in Aspose.Words|New Feature
|WORDSNET-15132|Support of DOCX to PDF_X_3 conversion|New Feature
|WORDSNET-6615|Support of PdfCompliance PDF/E|New Feature
|WORDSNET-24389|Add TOC (table of contents) to AZW3/MOBI file formats|New Feature
|WORDSNET-24610|Rendering of the coefficient of determination in the trendline data label|New Feature
|WORDSNET-24544|DOCX to MD: Converting to .md file does not change heading numbering|New Feature
|WORDSNET-22857|Document.Compare ignores the Move revisions|New Feature
|WORDSNET-24456|Add Shading.ThemeColor|New Feature
|WORDSNET-24554|Support of manual layout settings for trendline data labels|New Feature
|WORDSNET-24652|Data label font size and color options in charts|Enhancement
|WORDSNET-24257|Consider providing Node.Revisions property to retrieve revisions of the current node|Enhancement
|WORDSNET-23984|Problem when rendering Shape in Header|Enhancement
|WORDSNET-18608|Aspose.Words does not generate Moved Down or Moved Up Revisions during Compare|Enhancement
|WORDSNET-24187|Rendering of document with text effects is slow|Enhancement
|WORDSNET-24742|Inaccurate line wrapping when saving to PDF|Bug
|WORDSNET-18185|Image color is changed after conversion from DOC to HTMLFixed|Bug
|WORDSNET-24587|Text is wrapped improperly upon rendering|Bug
|WORDSNET-23763|Slow rendering of document with metafile|Bug
|WORDSNET-15507|When DOCX is converted to PDF, an image in output looks different|Bug
|WORDSNET-24477|High peak memory usage when working with the document containing a large number of images|Bug
|WORDSNET-24765|EQ fields with math formulas are replaced with "Error" on rendering|Bug
|WORDSNET-24722|GetChildNodes method from StructuredDocumentTag class throws "OutOfMemory" exception|Bug
|WORDSNET-24532|Aspose.Words returns incorrect font for Run with revision|Bug
|WORDSNET-24065|Image resolution is changed after saving to HTML with ScaleImageToShapeSize = false for grouped images|Bug
|WORDSNET-24738|Comparing documents throws "System.ArgumentException"|Bug
|WORDSNET-24745|Document compare throws System.InvalidOperationException: NC sync failed|Bug
|WORDSNET-24750|DOCX to PDF NullReferenceException occurs|Bug
|WORDSNET-24528|Spacing between characters in office math is wrong|Bug
|WORDSNET-24626|Incorrect coefficients of trendline formula after converting to PDF|Bug
|WORDSNET-24744|Incorrect applying of styles for formula|Bug
|WORDSNET-24244|An empty paragraph disappears after saving to HTML|Bug
|WORDSNET-24606|Document tags structure exported to PDF differs from MS Word|Bug
|WORDSNET-24729|Remove empty list levels from PDF logical structure|Bug
|WORDSNET-24693|Column with is wrong after open/save document|Bug
|WORDSNET-24692|Spacing between columns is wrong after open/save document|Bug
|WORDSNET-24530|Unexpected warning while validating the document|Bug
|WORDSNET-24655|Multi-level category labels are lost after open/save DOCX document|Bug
|WORDSNET-24671|NullReferenceException is thrown upon rendering document|Bug
|WORDSNET-24657|Fix the margins for it-It locale|Bug
|WORDSNET-24508|NUMPAGES issue in PageExtractor|Bug
|WORDSNET-23456|Incorrect placement of legend items if the legend has a manual layout|Bug
|WORDSNET-24268|Legend overlaps part of chart|Bug
|WORDSNET-24501|Table header is located on the wrong page when saving to PDF|Bug
|WORDSNET-24500|Incorrect header rendering when saving to PDF|Bug
|WORDSNET-24644|Revision in SDT content is lost after open/save document|Bug
|WORDSNET-21034|Incorrect rendering of Radar Type Chart in PDF|Bug
|WORDSNET-24775|FileCorruptedException is thrown upon loading DOC document|Bug
|WORDSNET-24718|Reference in .NET6 Aspose.Words.Pdf2Word dll|Bug
|WORDSNET-24723|FileCorruptedException on loading ODT document|Bug
|WORDSNET-24725|Allow comparing charts|Bug
|WORDSNET-18547|Missing revision of type Moving after Document.Compare|Bug
|WORDSNET-14445|Document.Compare ignores the Move revisions|Bug
|WORDSNET-24651|PdfJPXDecodeFilter throws NullReferenceException|Bug
|WORDSNET-24650|PdfASCII85DecodeFilter throws ArgumentOutOfRangeException|Bug
|WORDSNET-24661|KeyNotFoundException in SetPageHyperlinksStep|Bug
|WORDSNET-24660|InvalidOperationException: MediaBox is null|Bug
|WORDSNET-24665|IndexOutOfRangeException at SixLabors.ImageSharp.ICC.Calculators.LutCalculator.Lookup()|Bug
|WORDSNET-24526|Moving of the footnote line from the previous page|Bug
|WORDSNET-24347|Table is moved to previous page and overlaps footnote|Bug
|WORDSNET-24627|Secondary axis becomes visible after rendering chart if HarfBuzz text shaping is used|Bug
|WORDSNET-24663|InvalidOperationException: Failed to find the start of the hex number|Bug
|WORDSNET-24678|PdfTilingPatternFactory throws IndexOutOfRangeException|Bug
|WORDSNET-24669|InvalidCastException: Unable to cast PdfIndirectObjectReference to PdfNumber|Bug
|WORDSNET-24640|After copying styles from template style inheritance is incorrect|Bug
|WORDSNET-24656|PdfDCTDecodeFilter throws NullReferenceException|Bug
|WORDSNET-24411|DOCX->HTML->DOCX: Indentation and margins issue|Bug
|WORDSNET-24717|Created two comments instead of comment with reply for ODT/OTT format|Bug
|WORDSNET-24706|Missing content when converting HTML to DOCX|Bug
|WORDSNET-24574|Chart is rendered improperly when PdfA1a compliance is used|Bug
|WORDSNET-24531|DOC to DOCX: "This document contains fields that may refer to other files" message|Bug
|WORDSNET-24495|The insertHtml() method adds indentation|Bug
|WORDSNET-24365|Exported image looks like a screenshot, not as image visible in MS Word|Bug
|WORDSNET-13264|Couple of lines in footer are cutting in PDF/A|Bug

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 23.1. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.
