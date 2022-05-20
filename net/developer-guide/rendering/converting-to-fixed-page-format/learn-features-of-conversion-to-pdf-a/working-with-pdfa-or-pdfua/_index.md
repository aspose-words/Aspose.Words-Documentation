---
title: Working with PDF/A or PDF/UA
second_title: Aspose.Words for .NET
articleTitle: Working with PDF/A or PDF/UA
linktitle: Working with PDF/A or PDF/UA
description: "Convert to PDF/A-1, PDF/A-2, PDF/A-4 and PDF/UA using C#. There are a few problems when converting to PDF/A documents, and Aspose.Words for .NET solves them."
type: docs
weight: 20
url: /net/working-with-pdfa-or-pdfua/
---

PDF/A and PDF/UA format imposes several requirements related to the document content that cannot be fulfilled during automatic conversion from a document in Word format to PDF. These requirements should be verified and corrected either in a Word document before conversion or in a PDF document after conversion in order to produce a fully PDF/A and PDF/UA conformant document.

Basic requirements are for the structure or fonts of a PDF/A and PDF/UA document, which we will consider in the following sections.

## Document Structure Requirements

The current requirements are for PDF/A-1a, PDF/A-2a, PDF/A-4, and PDF/UA-1 formats.

There are some nuances of how Aspose.Words works when converting to various PDF format standards. They must be taken into account if you want to get the expected result.

{{% alert color="primary" %}}

Note that there are no logical structure requirements for PDF/A-4. For this reason, we do not consider the PDF/A-4 version in this section.

{{% /alert %}}

The specification tells us the following:

> It is inadvisable for writers to generate structural or semantic information using automated processes without appropriate verification.
>
> ISO 19005-2, 6.7.1

The sections below describe nuances of how Aspose.Words works when converting to various PDF format standards and options for their solution.

### Structure Type

| PDF standard compliance levels within Aspose.Words | Presence of requirement |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a                                           | {{< emoticons/tick >}}  |
| PDF/A-2a                                           | {{< emoticons/tick >}}  |
| PDF/UA-1                                           | {{< emoticons/tick >}}  |

A PDF document is a sequence of blocks such as headings, paragraphs, tables, and others. These blocks form a document structure – strongly or weak.

Both strong and weak structures are valid for PDF/A. Microsoft Word documents have a weak structure by design, and Aspose.Words creates PDF with the weak structure respectively and also generates headings according to the outline levels of paragraphs in the source document.

For a PDF/UA-1 document with a weak structure, it is additionally required that the heading numbers go in order without gaps.

<details>
    <summary>The specification tells us the following:</summary>
    <p>The block-level structure may follow one of two principal paradigms:</p>
    </ol>
      <li>Strongly structured. The grouping elements nest to as many levels as necessary to reflect the organization of the material into articles, sections, subsections, and so on. At each level, the children of the grouping element should consist of a heading (H), one or more paragraphs (P) for content at that level, and perhaps one or more additional grouping elements for nested subsections.</li>
      <li>Weakly structured. The document is relatively flat, having perhaps only one or two levels of grouping elements, with all the headings, paragraphs, and other BLSEs as their immediate children. In this case, the organization of the material is not reflected in the logical structure; however, it may be expressed by the use of headings with specific levels (H1–H6).</li>
    </ol>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>

For PDF/UA-1 documents, the specification contains an addition related to heading levels:

> If document semantics require a descending sequence of headers, such a sequence shall proceed in strict numerical order and shall not skip an intervening heading level. H1 H2 H3 is permissible, while H1 H3 is not.
>
> ISO-14289-1, 7.4.2

To ensure correct output, users have to ensure that the source document content is properly organized and outline levels are correctly specified for paragraphs. Otherwise, the user should verify and fix the structure of the output PDF document.

In Microsoft Word default "Heading X" styles could be used to set the outline level:

<img src="m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>

In addition, the outline level could be checked or changed in the "Paragraph" window:

<img src="m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>

In Acrobat the document structure could be checked or changed in the "Tags" pane:

<img src="acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>

### Marking the Content as an Artifact

| PDF standard compliance levels within Aspose.Words | Presence of requirement |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a                                           | {{< emoticons/tick >}}  |
| PDF/A-2a                                           | {{< emoticons/tick >}}  |
| PDF/UA-1                                           | {{< emoticons/tick >}}  |

At the moment, Aspose.Words marks page headers and footers, note separators, repeated table header cells, and decorative images as artifacts. Note that this list may be updated in the future.

The specification tells us the following:

> The graphics objects in a document can be divided into two classes:
>
> - The real content of a document comprises objects representing material originally introduced by the document’s author.
> - Artifacts are graphics objects that are not part of the author’s original content but rather are generated by the conforming writer in the course of pagination, layout, or other strictly mechanical processes.
>
> ISO-32000-1, 14.8.2.2.1

If a document contains any other content that should be marked as an artifact, or if any of the artifacted content is a real content, customers should fix that in the output PDF.

For example, shapes could be marked as decorative in Microsoft Word, so they will be exported to PDF as an artifact:

<img src="m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>

You can mark shape as an artifact in the output PDF:

![todo:image_alt_text](acrobat-mark-as-artifact-delete-empty-tag.png)

Also, you can switch text in a header from the artifact to real content in the output PDF:

<img src="acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>

### Natural language specification

| PDF standard compliance levels within Aspose.Words | Presence of requirement |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a                                           | {{< emoticons/tick >}}  |
| PDF/A-2a                                           | {{< emoticons/tick >}}  |
| PDF/UA-1                                           | {{< emoticons/tick >}}  |

Text language is specified in Microsoft Word documents. Aspose.Words exports the specified language to an output PDF with the *Lang* attribute attached to a marked-content sequence or a Span tag – it is controlled by the [ExportLanguageToSpanTag](https://apireference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/properties/exportlanguagetospantag) property. Generally there are no language issues when text is entered by the user via Microsoft Word. But there is a possibility that the language may be inaccurate if the text is generated automatically.

The specification tells us the following:

> The default natural language for all text in a file should be specified by the Lang entry in the document’s Catalog dictionary.
>
> All textual content within a file which differs from the default language should be indicated by use of a Lang property attached to a marked-content sequence, or by a Lang entry in a structure element dictionary ...
>
> ISO-19005-2, 6.7.4

Additionally for PDF/UA-1, the specification tells us the following:

> Natural language shall be declared… Changes in natural language shall be declared.
>
> ISO-14289-1, 7.2

Users should ensure that the language is specified correctly in either:

* The source Word document:

  <img src="m-w-language.png" alt="MWLanguage" style="width:800px"/>

  OR
* The output PDF document:

  <img src="acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>

### Figure Caption

| PDF standard compliance levels within Aspose.Words | Presence of requirement |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a                                           |                         |
| PDF/A-2a                                           |                         |
| PDF/UA-1                                           | {{< emoticons/tick >}}  |

Microsoft Word documents allow users to add figure caption.

The specification tells us the following:

> A caption accompanying a figure shall be tagged with a Caption tag.
>
> ISO-14289-1, 7.3

Currently Aspose.Words cannot export cuptions with the Caption tag, so they must be flagged in the output PDF.

In Microsoft Word, the сaption could be inserted through the context menu:

<img src="figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>

In Acrobat the сaption could be added or changed via the Object Properties dialog:

<img src="figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>

### Alternate descriptions

| PDF standard compliance levels within Aspose.Words | Presence of requirement |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a                                           | {{< emoticons/tick >}}  |
| PDF/A-2a                                           | {{< emoticons/tick >}}  |
| PDF/UA-1                                           | {{< emoticons/tick >}}  |

Microsoft Word documents allow users to add alternate text to images, shapes, and tables. Aspose.Words exports such an alternate text to the output PDF.

The specification tells us the following:

> All structure elements whose content does not have a natural predetermined textual analogue, e.g. images, formulae, etc., should supply an alternate text description using the Alt entry in the structure element dictionary...
>
> NOTE Alternate descriptions provide textual descriptions that aid in the proper interpretation of otherwise opaque non-textual content.
>
> ISO-19005-2, 6.7.5

Users should ensure that all elements have an alternate text in either:

* The source Word document:

  <img src="m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>

  <img src="m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
  
  OR

* The output PDF document:

  <img src="acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>

  <img src="acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>

### Alternate descriptions for Hyperlinks

| PDF standard compliance levels within Aspose.Words | Presence of requirement |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a                                           |                         |
| PDF/A-2a                                           |                         |
| PDF/UA-1                                           | {{< emoticons/tick >}}  |

In addition to the previous point, Microsoft Word documents also allow users to add alternate text to hyperlinks. Aspose.Words exports such an alternate text to the output PDF.

Unfortunately, not every application allows you to set up an alternate description. For example, Adobe Acrobat currently does not enable to set up such a description for hyperlinks. But in Microsoft Word, you can do this as follows:

<img src="alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

Sometimes there is a problem that it is not possible to set alt text for autogenerated hyperlinks in the table of contents (TOC) through the Microsoft Word GUI. Aspose.Words could update such fields and generate the links on its own.

Follow the code example to update TOC fields using the Aspose.Words Document Object Model (DOM):

{{< highlight csharp >}}
Document doc = new Document(fileName);

	var tocHyperLinks = doc.Range.Fields
		.Where(f => f.Type == FieldType.FieldHyperlink)
		.Cast<FieldHyperlink>()
		.Where(f => f.HRef.StartsWith("#_Toc"));
	
	foreach (FieldHyperlink link in tocHyperLinks)
		link.ScreenTip = link.DisplayResult;
	
	PdfSaveOptions opt = new PdfSaveOptions()
	{
		Compliance = PdfCompliance.PdfUa1,
		DisplayDocTitle = true,
		ExportDocumentStructure = true,
	};
	opt.OutlineOptions.HeadingsOutlineLevels = 3;
	opt.OutlineOptions.CreateMissingOutlineLevels = true;
	
	var outFile = Path.ChangeExtension(fileName, "_aw.pdf");
	doc.Save(outFile, opt);
{{< /highlight >}}

### Table Headers

| PDF standard compliance levels within Aspose.Words | Presence of requirement |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a                                           |                         |
| PDF/A-2a                                           |                         |
| PDF/UA-1                                           | {{< emoticons/tick >}}  |

Tables in PDF/UA-1 documents must have headers – column, row, or both. PDF/A only requires standard table markup, which has no additional restrictions. Note that Aspose.Words generates the standard table markup automatically.

The specification tells us the following:

> Tables should include headers… Tables can contain column headers, row headers or both.
>
> ISO-14289-1, 7.5

The document title could be set up either:

* The source Microsoft Word document:

  <img src="table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
  OR

* The output PDF:

  <img src="table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
  <img src="table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
  <img src="table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>

### Replacement text

| PDF standard compliance levels within Aspose.Words | Presence of requirement |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a                                           | {{< emoticons/tick >}}  |
| PDF/A-2a                                           | {{< emoticons/tick >}}  |
| PDF/UA-1                                           |                         |

The specification tells us the following:

> All textual structure elements that are represented in a non-standard manner, e.g., custom characters or inline graphics, should supply replacement text using the ActualText entry in the structure element dictionary...
>
> ISO-19005-2, 6.7.7

Microsoft Word document does not allow users to set replacement text. So this needs to be verified and fixed in the output PDF:

<img src="acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Abbreviations and Acronyms Expansions

| PDF standard compliance levels within Aspose.Words | Presence of requirement |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a                                           | {{< emoticons/tick >}}  |
| PDF/A-2a                                           | {{< emoticons/tick >}}  |
| PDF/UA-1                                           |                         |

The specification tells us the following:

> All instances of abbreviations and acronyms in textual content should be placed in a marked-content sequence with a Span tag whose E property provides a textual expansion of the abbreviation or acronym...
>
> ISO-19005-2, 6.7.8

Microsoft Word document does not allow users to set abbreviations and acronyms expansions. So this needs to be verified and fixed in the output PDF:

<img src="acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Document Title

| PDF standard compliance levels within Aspose.Words | Presence of requirement                                      |
| -------------------------------------------------- | ------------------------------------------------------------ |
| PDF/A-1a                                           |                                                              |
| PDF/A-2a                                           |                                                              |
| PDF/A-4                                            |                                                              |
| PDF/UA-1                                           | {{< emoticons/tick >}}<br />Document in PDF/UA-1 should have a title. |

The specification tells us the following:

> The Metadata stream in the document’s catalog dictionary shall contain a dc:title entry, where dc is the recommended prefix for the Dublin Core metadata schema…
>
> ISO-14289-1, 7.1

The document title could be set up either:

* The source Microsoft Word document:

  <img src="document-title-mw.png" alt="document-title-mw" style="width:800px"/>
  OR

* The output PDF:

  <img src="document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>

## Font Requirements

| PDF standard compliance levels within Aspose.Words | Presence of requirement |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a                                           | {{< emoticons/tick >}}  |
| PDF/A-1b                                           | {{< emoticons/tick >}}  |
| PDF/A-2a                                           | {{< emoticons/tick >}}  |
| PDF/A-2b                                           | {{< emoticons/tick >}}  |
| PDF/A-4                                            | {{< emoticons/tick >}}  |
| PDF/UA-1                                           | {{< emoticons/tick >}}  |

There are also a number of nuances of working with fonts when converting to PDF/A-1, PDF/A-2, PDF/A-4 or PDF/UA-1 formats using Aspose.Words. They must be taken into account if you want to avoid possible problems with the output document.

The sections below describe such nuances and options for their solution.

### Font legal requirements

| PDF standard compliance levels within Aspose.Words | Presence of requirement |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a                                           | {{< emoticons/tick >}}  |
| PDF/A-1b                                           | {{< emoticons/tick >}}  |
| PDF/A-2a                                           | {{< emoticons/tick >}}  |
| PDF/A-2b                                           | {{< emoticons/tick >}}  |
| PDF/A-4                                            | {{< emoticons/tick >}}  |
| PDF/UA-1                                           | {{< emoticons/tick >}}  |

Aspose.Words does not verify the legal restrictions of the used fonts – it is up to users. In other words, a user should not provide inappropriate fonts for PDF conversion using Aspose.Words.

The specification tells us the following:

> Only font programs that are legally embeddable in a file for unlimited, universal rendering shall be used.
>
> ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (exactly the same quotes in two specs)

### .notdef Glyph

| PDF standard compliance levels within Aspose.Words | Presence of requirement |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a                                           |                         |
| PDF/A-1b                                           |                         |
| PDF/A-2a                                           | {{< emoticons/tick >}}  |
| PDF/A-2b                                           | {{< emoticons/tick >}}  |
| PDF/A-4                                            | {{< emoticons/tick >}}  |
| PDF/UA-1                                           | {{< emoticons/tick >}}  |

The usage of the `.notdef` glyph is prohibited. The `.notdef` glyph will appear if a document contains characters which are not present in the selected font and which also cannot be resolved via the Font Fallback mechanism.

The specification tells us the following:

> A conforming document shall not contain a reference to the .notdef glyph from any of the text showing operators, regardless of text rendering mode, in any content stream.
>
> ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (exactly the same quotes in two specs)

Users should remove or replace these characters in either:

* The source Word document:

  <img src="m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>

  OR

* The output PDF document using the "Edit PDF" tool:

  <img src="acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>

### Private Use Area (PUA)

| PDF standard compliance levels within Aspose.Words | Presence of requirement |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a                                           |                         |
| PDF/A-1b                                           |                         |
| PDF/A-2a                                           | {{< emoticons/tick >}}  |
| PDF/A-2b                                           | {{< emoticons/tick >}}  |
| PDF/A-4                                            | {{< emoticons/tick >}}  |
| PDF/UA-1                                           |                         |

Private Use Area (PUA) characters appear mostly for Windows symbolic fonts like "Symbol", "Wingdings", "Webdings", and others. Microsoft Word formats do not provide an option to store actual text for characters.

The specification tells us the following:

> For Level A conformance only, for any character ... that is mapped to a code or codes in the Unicode Private Use Area (PUA), an ActualText entry ... shall be present for this character or a sequence of characters of which such a character is a part.
>
> ISO-19005-2, 6.2.11.7.3

"Segoe UI Symbol" is a Windows Unicode font which could be used as an alternative to symbolic fonts.

Users should:

* Replace the symbolic font with a Unicode one in the source Word document:

  <img src="m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>

  OR

* Add an ActualText entry to the problematic characters in the output PDF document:

  <img src="acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
