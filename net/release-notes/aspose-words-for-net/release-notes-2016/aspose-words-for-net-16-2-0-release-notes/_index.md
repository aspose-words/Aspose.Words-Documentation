---
title: Aspose.Words for .NET 16.2.0 Release Notes
second_title: Aspose.Words for .NET
articleTitle: Aspose.Words for .NET 16.2.0 Release Notes
linktitle: Aspose.Words for .NET 16.2.0 Release Notes
description: "Aspose.Words for .NET 16.2.0 Release Notes – the latest updates and fixes."
type: docs
weight: 100
url: /net/aspose-words-for-net-16-2-0-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for .NET 16.2.0](https://www.nuget.org/packages/Aspose.Words/16.1.0)

{{% /alert %}}

## Major Features

There are 94 improvements and fixes in this regular monthly release. The most notable are:

- Fast extraction of plain text from flow-format documents is supported
- PageSavingCallback was introduced for all fixed-page based save formats
- Ability to determine if a run or a paragraph has format changes
- Font substitution while rendering fixed-page formats improved to mimic MS Word
- Axis logarithmic scale for DML charts rendering implemented
- WordArt shapes fit to Bezier curves rendering implemented: ArchUp(Curve), ArchDown(Curve), Circle(Curve)
- DrawingML shapes with guides are now scaled correctly
- DML charts rendering improved

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-11466|Nonbreaking spaces gets converted to squares when saving as pdf|Bug|
|WORDSNET-11905|RTF to Docx conversion issue with TOC field|Bug|
|WORDSNET-12127|/Axis logarithmic scale/Docx to Pdf conversion issue with rendering charts|Bug|
|WORDSNET-12170|digital signature is lost after conversion from Docx to Pdf|Bug|
|WORDSNET-12446|Docx to Pdf conversion issue: Creating watermark using Acrobat 9 Pro|Bug|
|WORDSNET-12488|RTF->Html->RTF removes the empty spaces|Bug|
|WORDSNET-12736|An empty &lt;TR&gt; added at the end of Table in HTML|Bug|
|WORDSNET-12751|Vertical spacing between Paragraphs is increased in PDF|Bug|
|WORDSNET-12758|Hyperlink, bold and font size returned incorrectly|Bug|
|WORDSNET-12768|Mht to png/pdf : inline image not displayed|Bug|
|WORDSNET-12776|Cell background containing logo becomes white in rendered PDF|Bug|
|WORDSNET-12814|Invalid CSS class names are exported to HTML|Bug|
|WORDSNET-12823|Docx to PNG conversion issue with textbox position|Bug|
|WORDSNET-12832|Document.HasRevisions returns incorrect value|Bug|
|WORDSNET-12841|Image is not visible in generated HTML|Bug|
|WORDSNET-12845|GroupShape is lost after re-saving Docx|Bug|
|WORDSNET-12863|Vertical axis of chart is changed after re-saving Docx.|Bug|
|WORDSNET-12947|RTF to DOCX: problem with numbered list|Bug|
|WORDSNET-12952|Shape (text) is truncated after conversion from Doc to HtmlFixed|Bug|
|WORDSNET-12968|Image position is changed after conversion from Odt to Pdf|Bug|
|WORDSNET-12969|Odt to Pdf conversion issue with image rendering|Bug|
|WORDSNET-12970|Header/Footer are different after re-saving Odt|Bug|
|WORDSNET-12972|Incorrect contents are rendered in output Pdf|Bug|
|WORDSNET-12976|Docx to Doc/Pdf conversion issue with y-axis|Bug|
|WORDSNET-12980|Fill.Opacity corrupts the document|Bug|
|WORDSNET-12989|Doc to Pdf conversion issue with Arabic text rendering|Bug|
|WORDSNET-12993|Shapes do not render in output Pdf correctly|Bug|
|WORDSNET-12994|/WORDSNET-12993-issue 1/Shapes do not render in output Pdf correctly|Bug|
|WORDSNET-12995|/WORDSNET-12993-issue 2/Shapes do not render in output Pdf correctly|Bug|
|WORDSNET-12996|/WORDSNET-12993/Shape's text is rotated in output Pdf|Bug|
|WORDSNET-13002|/WORDSNET-12993/GroupShape does not render correctly in output Pdf|Bug|
|WORDSNET-13026|Docx to Pdf conversion issue with text rendering|Bug|
|WORDSNET-13030|Additional Paragraphs added in saved DOCX|Bug|
|WORDSNET-13033|More space between some words added in pdf|Bug|
|WORDSNET-13042|Horizontal flip is not handled properly with rotation.|Bug|
|WORDSNET-13043|Position of OfficeMath is changed in output Doc/Pdf|Bug|
|WORDSNET-13045|More space between some words added in pdf|Bug|
|WORDSNET-13066|Docx to Doc/Pdf conversion issue with chart legend Items|Bug|
|WORDSNET-13067|Docx to Doc/Pdf conversion issue with horizontal axis|Bug|
|WORDSNET-13068|Horizontal axis are messed up in output Doc/Pdf|Bug|
|WORDSNET-13069|The colors in stack charts are being overwritten|Bug|
|WORDSNET-13079|Word to PDF conversion hangs|Bug|
|WORDSNET-13082|Mongolian text is rendered as boxes in output Doc/Pdf|Bug|
|WORDSNET-13087|Output Doc is opening with protected mode (Red bar) and message box|Bug|
|WORDSNET-13104|Page background is lost after conversion from Docx to Html|Bug|
|WORDSNET-13127|GroupShape formatting issues in PDF|Bug|
|WORDSNET-13128|DrawingML Textbox formatting issues in PDF|Bug|
|WORDSNET-13129|TOC and other fields missing when saving to PDF after UpdateFields|Bug|
|WORDSNET-13132|Debug.Assert does not pass when render document.|Bug|
|WORDSNET-13161|Document with fixed length form field is producing bogus/block characters|Bug|
|WORDSNET-13172|Arrow symbols in a table rotated by 90 degrees in PDF|Bug|
|WORDSNET-13176|Loading Odt into Aspose.Words DOM takes time.|Bug|
|WORDSNET-862|Overcome cell shading sprm length limitation.|Bug|
|WORDSNET-9030|Add support of "list-style-stype:none" css style.|Bug|
|WORDSNET-10563|Formatting of Wordart is lost after conversion from Docx to PDF/HTML|Enhancement|
|WORDSNET-11999|list-style-type:none does not take effect in output document|Enhancement|
|WORDSNET-12049|A Frame is rendering at the end of previous page in PDF|Enhancement|
|WORDSNET-12222|WordArt // Single path frame rendering // Docx to Pdf conversion issue with Shape (Logo) rendering|Enhancement|
|WORDSNET-12835|Word to PDF Conversion issue with content position|Enhancement|
|WORDSNET-12861|LibreOffice (4, 5) can't display Math objects correctly after RTF->RTF conversion via AW|Enhancement|
|WORDSNET-12950|Frame position is changed in output Ps|Enhancement|
|WORDSNET-13182|Gradient fill of DrawingML shapes is rendered improperly sometimes.|Enhancement|
|WORDSNET-13218|The signature of Aspose.Words_16.1.0.msi is corrupt or invalid|Enhancement|
|WORDSNET-8018|Add support shape fit to Bezier curves (for the following wordart shapes ArchUp(Curve), ArchDown(Curve), Circle(Curve) for WordArt).|Enhancement|
|WORDSNET-9740|Formatting of rotated WordArt is not preserved during rendering to PDF|Enhancement|
|WORDSNET-12434|System.InvalidOperationException is thrown while saving Doc to epub|Exception|
|WORDSNET-12912|Aspose.Words.FileCorruptedException occurs upon loading a DOCX|Exception|
|WORDSNET-12977|Aspose.Words.FileCorruptedException is thrown while loading Docx|Exception|
|WORDSNET-13039|Aspose.Words.FileCorruptedException occurs upon loading a MHTML|Exception|
|WORDSNET-13041|DocumentBuilder.InsertHtml throws System.NullReferenceException|Exception|
|WORDSNET-13077|MailMerge.Execute throws System.NullReferenceException|Exception|
|WORDSNET-13140|ShapeRenderer.RenderToScale throws System.NullReferenceException|Exception|
|WORDSNET-13156|Aspose.Words.FileCorruptedException occurs when loading an ODT file|Exception|
|WORDSNET-13181|OleFormat.SuggestedExtension throws System.IO.EndOfStreamException|Exception|
|WORDSNET-9674|mono / Aspose.Words fails to start because it cannot find the 'WINDOWS-31J' character map linux with mono|Exception|
|WORDSNET-11610|Incorrect font in pdf output|Feature|
|WORDSNET-11648|DrawingMLs overlap text in generated PDF and HTML|Feature|
|WORDSNET-11787|Fonts substitution // Font "sans-serif" is converted to "Times new roman" in output Pdf|Feature|
|WORDSNET-12130|/Axis logarithmic scale/Plot area of chart does not show data points in PDF|Feature|
|WORDSNET-12156|Fonts substitution // Docx to Pdf conversion issue with text font|Feature|
|WORDSNET-12211|Implement odt stock charts conversion.|Feature|
|WORDSNET-12499|Provide properties to determine if a Run/Paragraph nodes have some Format Changes|Feature|
|WORDSNET-12644|Support HTML &lt;dl&gt; Tag|Feature|
|WORDSNET-12761|Color set in the Template's Content Control Properties is not retained|Feature|
|WORDSNET-12918|Add feature to get/set Alt Text Title property of Shape|Feature|
|WORDSNET-13173|Introduce InvalidateFieldTypes method|Feature|
|WORDSNET-3078|Part of content is moved to the previous page during rendering.|Feature|
|WORDSNET-5907|Fonts substitution // While converting doc to pdf, bullet points displayed like square box|Feature|
|WORDSNET-6198|Separate export to W3C MathML out of ODT module (triaged)|Feature|
|WORDSNET-8269|Fonts substitution // Bullets points displayed like square box in output Pdf|Feature|
|WORDSNET-8349|Font Substitution // Character spacing is reduced in PDF|Feature|
|WORDSNET-12176|Each page of a Word document is converted to HTML too long|Performance|
|WORDSNET-13059|FieldStart.FieldType returns unknown value for PAGE field|Regression|
|WORDSNET-13088|InvalidOperationException is thrown while saving Docx to Pdf||

