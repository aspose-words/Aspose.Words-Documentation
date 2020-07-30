---
title: Section Features Supported on EPUB Export
type: docs
weight: 100
url: /java/section-features-supported-on-epub-export/
---

{{% alert color="primary" %}} 

Each section is exported as separate <div> elements as a child of <body> when there is more than one section in the document. 

If there is only one section then the document content is expoted directly to <body>.

Section-wide formatting is exported as CSS styles on <div>.

[Jump to this location in the import section]()

{{% /alert %}} 
##### **Headers and Footers**
There is a save option that controls how headers and footers are output. This controls how the primary header is exported in different places in the output document.

By default the header of the first section is exported at the top of the HTML output and the last footer of the last section is output at the end of the HTML output. Any linked headers and footers are taken into account.

When embedded or external style sheet is set, regular paragraphs in the header or footer are exported with "Header" or "Footer" style.

See the following link in the documentation for further information:

- **HtmlSaveOptions.ExportHeadersFootersMode**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Different First Page |N/A | | |
|Different Even and Odd Pages |N/A | | |
|Continue from Previous Section |Yes | | |
##### **Section Break Type**
Section breaks are exported as a <br> tag which contains the special Microsoft Office attribute mso-break-type:section-break.

There is an option to skip exporting breaks to HTML at all.

Note that when exporting to EPUB such break elements are normally ignored by most EPUB readers. Instead use the DocumentSplit option to split the internal HTML of the EPUB at each page break. This will appear correctly in almost all readers. 

See the following links in the documentation for further information:

- **Section.SectionStart**
- **DocumentBuilder.InsertBreak**
- **HtmlSaveOptions.DocumentSplitCritera**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Continuous |Yes |Exported as <br> with page-break-before:auto. | |
|Even Page |Yes |Exported as <br> with page-break-before:left. | |
|Odd Page |Yes |Exported as <br> with page-break-before:right. | |
|Next Column |Yes |Exported as <br> with mso-column-break-before:always | |
|Next Page |Yes |Exported as <br> with page-break-before:always. | |
##### **Text Columns**
HTML and EPUB have no native support for text columns.

Support for this feature may be possible in a future version using CSS3 or EPUB 3.0 features.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Text Columns |N/A | | |
##### **Page Margins**
Page settings are output optionally to HTML though the use of a save option. This is exported either as an embedded or external style sheet depending on save option used.

Section formatting is exported using the "@page" identifer along with margin and size attributes that defines the apperance of the section as seen in the source document.

Some features need Microsoft Office specific attributes, they are not currently supported.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Page Margins |Yes | | |
##### **Page Numbering**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Number Format |N/A | | |
|Starting Number |N/A | | |
##### **General Formatting**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Right to Left Section |Yes |Supported on HTML export only. | |
|Line Numbering |Planned | | |
|Paper Source |Planned | |<p>- **PageSetup.FirstPageTray** </p><p>- **PageSetup.OtherPageTray**</p>|
|Paper Size |Yes | | |
|Orientation |Yes |Currently paper size depends on orientation as width and height are switched. <br><br>In the future we can also output native CSS 3 attributes. | |
|Protection |N/A | | |
|Text Direction |Planned | | |
|Vertical Alignment |N/A | | |
|Asian Document Grid |N/A | | |
##### **Chapter Numbering**
Output as list item with ordinary list numbering.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Chapter Numbering |Yes | | |
##### **Page Border**
HTML does not have any "page" concept so no page border is imported.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Page Border |N/A | | |

