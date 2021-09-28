---
title: Section Features Supported on HTML Import
type: docs
weight: 100
url: /net/section-features-supported-on-html-import/
---

{{% alert color="primary" %}} 

Sections allow you to divide parts of the document so page formatting and headers and footers apply only to that part of the document. This enables for example different parts of the document to completley different page sizes or page orientations.

A section is represented as a Section node in the Aspose.Words model.

Aspose.Words supports the creation and deletion of sections in a document, along with accessing and modifying all section properties.

Sections are imported from &lt;div&gt; elements. Section-wide formatting is imported through linked CSS on &lt;div&gt;.

See the following links in the documentation for further information:

- [Section](https://apireference.aspose.com/words/net/aspose.words/section)
- [Document.Sections](https://apireference.aspose.com/words/net/aspose.words/document/properties/sections)

{{% /alert %}} 

## Headers and Footers

Each Header and Footer in a document is stored per section. Each header or footer is imported into Aspose.Words as a HeaderFooter node. This node is always a child of a Section. 

Most documents have header or footer content represented by the primary header or footer. This displays content on all pages of the section. There is also different types of headers and footers to display different content on the first page or even/odd pages of the header footer.

There can be up to three different types of headers and three different types of footers per section. You can only have one type of the header or footer per section.

In Aspose.Words this is represented by Header Footer nodes of different types. The different types are:

- HeaderFirst
- HeaderPrimary
- HeaderEven
- FooterFirst
- FooterPrimary
- FooterEven

There is a save option that controls how headers and footers are output.

Header and footer content is not round-tripped and instead after importing from HTML will appear in the document body. There are plans to properly support this in the future.

If embedded or external style sheet is set when saving the HTML then regular paragraphs in the header or footer are exported with "Header" or "Footer" style. These can be used to reconstruct a proper header or footer in the document.

Import of external headers and footers (stored in a separate file) like how Microsoft Word exports them is currently unsupported.

See the following links in the documentation for further information:

- [Section.HeadersFooters](https://apireference.aspose.com/words/net/aspose.words/section/properties/headersfooters)
- [PageSetup.DifferentFirstPageHeaderFooter](https://apireference.aspose.com/words/net/aspose.words/pagesetup/properties/differentfirstpageheaderfooter)
- **PageSetup.OddAndEvenPageHeaderFooter**
- [HeaderFooterCollection.LinkToPrevious](https://apireference.aspose.com/words/net/aspose.words.headerfootercollection/linktoprevious/methods/1)

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Different First Page |Planned | | |
|Different Even and Odd Pages |Planned |Note that setting a Microsoft Word Document to display even or odd header footers applies to the entire document. If you set this option in Microsoft Word then all sections follow this rule. Even though this is a documentw-wide setting, in Aspose.Words this property appears per section as a PageSetup property. Changing this property affects all sections in the document. | |
|Continue from Previous Section |Planned |<p>In a Microsoft Word document a header or footer can be linked to the previous section. This means the same headers and footers from the section before will be displayed for this section as well. In some cases you can check this by using the HeaderFooter.LinkedToPrevious property. <br><br>In Aspose.Words, the different situations are represented in the model as follows: </p><p>- If a document has no headers or footers of a certain type then no Section node contains any child Header Footer of that type. </p><p>- If header or footer is not linked to the previous section (the header of footer is different from the previous section) then the Section node will have its own Header Footer node of that type. This is the same for each type of header or footer that is not linked in the Section. </p><p>- If a header or footer is linked to the previous section then there will be no header or footer of that type in the current section. This means that a section that appears to have no header or footer nodes can still be displaying headers and footers as they come from previous sections. Check the HeaderFooter.LinkedToPrevious property. </p><p>- If a header or footer is not linked to the previous section but it simply blank (no content) then there will be a header or footer in that section, however it will contain no content (no runs). <br><br>  You can link/unlink header footers from previous sections by using the HeaderFooter.LinkToPrevious method. If you unlink a headerfooter from the previous section using Microsoft Word, the content from the previous header or footer is copied over. In Aspose.Words however the header footer is unlinked but left blank. You can copy the content from the previous section if required. Note that you can choose to unlink all headers and footers of all types or just a particular type. For example the primary header footer can be different whereas the primary footer can still be linked to the previous section. </p>| |

## Section Break Type

The different section breaks types are imported from &lt;br&gt; tag which contains the special Microsoft Office attribute mso-break-type:section-break.

See the following links in the documentation for further information:

- [PageSetup.SectionStart](https://apireference.aspose.com/words/net/aspose.words/pagesetup/properties/sectionstart)
- [DocumentBuilder.InsertBreak](https://apireference.aspose.com/words/net/aspose.words/documentbuilder/methods/insertbreak)

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Continuous |Yes |Imported as &lt;br&gt; with page-break-before:auto. | |
|Even Page |Yes |Imported as &lt;br&gt; with page-break-before:left. | |
|Odd Page |Yes |Imported as &lt;br&gt; with page-break-before:right. | |
|Next Column |Yes |Imported as &lt;br&gt; with mso-column-break-before:always | |
|Next Page |Yes |Imported as &lt;br&gt; with page-break-before:always. | |

## Text Columns

HTML and EPUB have no native support for text columns.

Support for this feature may be possible in a future version using CSS3 features for HTML and EPUB 3.0 features for EPUB.

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Text Columns |N/A | | |

## Page Margins

Paper size and margins are imported from size and margin attributes on each section (imported from div elements).

See the following links in the documentation for further information:

- [PageSetup](https://apireference.aspose.com/words/net/aspose.words/pagesetup)
- [PageSetup.LeftMargin](https://apireference.aspose.com/words/net/aspose.words/pagesetup/properties/leftmargin)
- [PageSetup.FooterDistance](https://apireference.aspose.com/words/net/aspose.words/pagesetup/properties/footerdistance)
- [PageSetup.Gutter](https://apireference.aspose.com/words/net/aspose.words/pagesetup/properties/gutter)

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Page Margins |Yes | | |

## Page Numbering

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Page Numbering |N/A | | |

## General Formatting

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Right to Left Section |Planned | |- [PageSetup.Bidi](https://apireference.aspose.com/words/net/aspose.words/pagesetup/properties/bidi)|
|Line Numbering |Planned | |<p>- [PageSetup.LineNumberCountBy](https://apireference.aspose.com/words/net/aspose.words/pagesetup/properties/linenumbercountby) </p><p>- [PageSetup.LineNumberDistanceFromText](https://apireference.aspose.com/words/net/aspose.words/pagesetup/properties/linenumberdistancefromtext) </p><p>- [PageSetup.LineNumberRestartMode](https://apireference.aspose.com/words/net/aspose.words/pagesetup/properties/linenumberrestartmode) </p><p>- [PageSetup.LineStartingNumber](https://apireference.aspose.com/words/net/aspose.words/pagesetup/properties/linestartingnumber)</p>|
|Paper Source |Planned | |<p>- [PageSetup.FirstPageTray](https://apireference.aspose.com/words/net/aspose.words/pagesetup/properties/firstpagetray) </p><p>- **PageSetup.OtherPageTray**</p>|
|Paper Size |Yes | |- [PageSetup.PaperSize](https://apireference.aspose.com/words/net/aspose.words/pagesetup/properties/papersize)|
|Orientation |Yes |Currently imported paper size depends on orientation as width and height are switched. |- [PageSetup.Orientation](https://apireference.aspose.com/words/net/aspose.words/pagesetup/properties/orientation)|
|Protection |N/A | | |
|Text Direction |Planned | | |
|Vertical Alignment |N/A | | |
|Asian Document Grid |N/A | | |

## Chapter Numbering

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Chapter Numbering |N/A | | |

## Page Border

HTML does not have any "page" concept so no page border is imported.

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Page Border |N/A | | |
