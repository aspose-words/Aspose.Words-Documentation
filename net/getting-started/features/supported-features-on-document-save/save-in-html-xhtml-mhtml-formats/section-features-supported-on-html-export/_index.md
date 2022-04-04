---
title: HTML Export - Section Features
second_title: Aspose.Words for .NET
articleTitle: Section Features Supported on HTML Export
linktitle: Section Features Supported on HTML Export
description: "Export to HTML-based format using section saving features in C#."
type: docs
weight: 90
url: /net/section-features-supported-on-html-export/
---

{{% alert color="primary" %}}

Each section is exported as separate &lt;div&gt; elements as a child of &lt;body&gt; when there is more than one section in the document.

If there is only one section then the document content is exported directly to &lt;body&gt;.

Section-wide formatting is exported as CSS styles on &lt;div&gt;.

[Jump to this location in the import section](/words/net/section-features-supported-on-html-import/)

{{% /alert %}}

Try Online

You can check the quality of HTML Export and view the results online at this link:

<https://products.aspose.app/words/viewer>


## Headers and Footers

There is a save option that controls how headers and footers are output. This controls how the primary header is exported in different places in the output document.

By default, the header of the first section is exported at the top of the HTML output and the last footer of the last section is output at the end of the HTML output. Any linked headers and footers are taken into account.

When embedded or external style sheet is set, regular paragraphs in the header or footer are exported with "Header" or "Footer" style.

See the following link in the documentation for further information:

- [HtmlSaveOptions.ExportHeadersFootersMode](https://apireference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/properties/exportheadersfootersmode)

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Different First Page|N/A| | |
|Different Even and Odd Pages|N/A| | |
|Continue from the Previous Section|Yes| | |

## Section Break Type

Section breaks are exported as a &lt;br&gt; tag which contains the special Microsoft Office attribute mso-break-type:section-break.

There is an option to skip exporting breaks to HTML at all.

Note that when exporting to EPUB such break elements are normally ignored by most EPUB readers. Instead, use the DocumentSplit option to split the internal HTML of the EPUB at each page break. This will appear correctly in almost all readers.

See the following links in the documentation for further information:

- **Section.SectionStart**
- [DocumentBuilder.InsertBreak](https://apireference.aspose.com/words/net/aspose.words/documentbuilder/methods/insertbreak)
- **HtmlSaveOptions.DocumentSplitCritera**

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Continuous|Yes|Exported as &lt;br&gt; with page-break-before:auto.| |
|Even Page|Yes|Exported as &lt;br&gt; with page-break-before:left.| |
|Odd Page|Yes|Exported as &lt;br&gt; with page-break-before:right.| |
|Next Column|Yes|Exported as &lt;br&gt; with mso-column-break-before:always| |
|Next Page|Yes|Exported as &lt;br&gt; with page-break-before:always.| |

## Text Columns

HTML and EPUB have no native support for text columns.

Support for this feature may be possible in a future version using CSS3 or EPUB 3.0 features.

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Text Columns|N/A| | |

## Page Margins

Page settings are output optionally to HTML through the use of a save option. This is exported either as an embedded or external style sheet depending on the save option used.

Section formatting is exported using the "@page" identifier along with margin and size attributes that define the appearance of the section as seen in the source document.

Some features need Microsoft Office specific attributes, they are not currently supported.

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Page Margins|Yes| | |

## Page Numbering

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Number Format|N/A| | |
|Starting Number|N/A| | |

## General Formatting

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Right to Left Section|Yes|Supported on HTML export only.| |
|Line Numbering|Planned| | |
|Paper Source|Planned| |<p>- [PageSetup.FirstPageTray](https://apireference.aspose.com/words/net/aspose.words/pagesetup/properties/firstpagetray)</p><p>- **PageSetup.OtherPageTray**</p>|
|Paper Size|Yes| | |
|Orientation|Yes|Currently, paper size depends on orientation as width and height are switched. <br><br>In the future, we can also output native CSS 3 attributes.| |
|Protection|N/A| | |
|Text Direction|Planned| | |
|Vertical Alignment|N/A| | |
|Asian Document Grid|N/A| | |

## Chapter Numbering

Output as a list item with ordinary list numbering.

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Chapter Numbering|Yes| | |

## Page Border

HTML does not have any "page" concept so no page border is imported.

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Page Border|N/A| | |

