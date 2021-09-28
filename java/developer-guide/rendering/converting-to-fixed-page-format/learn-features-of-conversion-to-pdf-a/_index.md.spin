---
title: Learn Features of Conversion to PDF/A
description: "Aspose.Words for Java allows users to convert to PDF/A-1 and PDF/A-2. There are numerous problems when converting to PDF/A documents, and Aspose.Words for Java solves them."
type: docs
weight: 25
url: /java/learn-features-of-conversion-to-pdf-a/
---

PDF is a fixed page format that is very popular among users and is widely supported by various applications, as a PDF document looks the same on any device. For this reason, converting to PDF is an important feature of Aspose.Words.

PDF is a complex format by itself, as it has a specific file structure, graphical model, font embedding, and some complex output functionality such as document structure tags, encryption, digital signatures, and editable forms. In addition, converting a document to PDF requires several calculation stages, which are complex and time-consuming.

Aspose.Words now allows users to work with PDF/A-1 and PDF/A-2 formats:

* PDF/A-1 has serious limitations such as transparency and some compression options are prohibited

* PDF/A-2 eliminates some of the limitations of PDF/A-1, such as support of transparency and layer effects or embedding of OpenType fonts

PDF/A is an ISO-standardized version of PDF intended for use in archiving and long-term storage of electronic documents. To specify the level of compliance with PDF standards, use the [Compliance](https://apireference.aspose.com/words/java/com.aspose.words/pdfsaveoptions#Compliance) property. Due to storage conditions, PDF/A document must embed all fonts and disable encryption.

In this article, we will consider the main problems that may arise when working with PDF/A documents, and describe options for solving them.

## Complexity of Working with PDF/A

PDF/A format imposes a few requirements related to the document content that cannot be fulfilled during automatic conversion from a document in Word format to PDF. These requirements should be verified and corrected either in a Word document before conversion or in a PDF document after conversion in order to produce a fully PDF/A conformant document.

Basic requirements are for the structure or fonts of a PDF/A document, which we will consider in the following sections.

## Document Structure Requirements

{{% alert color="primary" %}}

All document structure requirements are Level A conformance only.

{{% /alert %}}

There are some nuances of how Aspose.Words works when converting to PDF/A-2 formats. They must be taken into account if you want to get the expected result.

The sections below describe such nuances and options for their solution.

The specification tells us the following:

> It is inadvisable for writers to generate structural or semantic information using automated processes without appropriate verification.

### PDF/A Structure Type

A PDF document is a sequence of blocks such as headings, paragraphs, tables, and others. These blocks form a document structure – strongly or weak.

The specification tells us the following:

> The block-level structure may follow one of two principal paradigms:
>
> * Strongly structured. The grouping elements nest to as multiple levels as necessary to reflect the organization of the material into articles, sections, subsections, and so on. At each level, the children of the grouping element should consist of a heading (H), one or more paragraphs (P) for content at that level, and perhaps one or more additional grouping elements for nested subsections.
>
> * Weakly structured. The document is relatively flat, having perhaps only one or two levels of grouping elements, with all the headings, paragraphs, and other BLSEs as their immediate children. In this case, the organization of the material is not reflected in the logical structure; however, it may be expressed by the use of headings with specific levels (H1–H6).

Both strong and weak structures are valid for PDF/A. Microsoft Word documents have a weak structure by design, and Aspose.Words creates PDF with the weak structure respectively and also generates headings according to the outline levels of paragraphs in the source document.

To ensure correct output, users have to ensure that the source document content is properly organized and outline levels are correctly specified for paragraphs. Otherwise, the user should verify and fix the structure of the output PDF document.

In Microsoft Word default "Heading X" styles could be used to set the outline level:

<img src="MWHeading1-2.png" alt="MWHeading1-2" style="width:800px"/>

In addition, the outline level could be checked or changed in the "Paragraph" window:

<img src="MWOutlineLevel.png" alt="MWOutlineLevel" style="width:800px"/>

In Acrobat the document structure could be checked or changed in the "Tags" pane:

<img src="AcrobatTagsPane.png" alt="AcrobatTagsPane" style="width:800px"/>

### Marking the Content as an Artifact

At the moment, Aspose.Words marks page headers and footers, note separators, repeated table header cells, and decorative images as artifacts.

{{% alert color="primary" %}}

Note that this list may be updated in the future.

{{% /alert %}}

If a document contains any other content that should be marked as an artifact, or if any of the artifacted content is a real content, customers should fix that in the output PDF.

For example, shapes could be marked as decorative in Microsoft Word, so they will be exported to PDF as an artifact:

<img src="MWDecorativeShape.png" alt="MWDecorativeShape" style="width:800px"/>

You can mark shape as an artifact in the output PDF:

<img src="AcrobatMarkAsArtifactDeleteEmptyTag.png" alt="AcrobatMarkAsArtifactDeleteEmptyTag" style="width:800px"/>

Also, you can switch text in a header from the artifact to real content in the output PDF:

<img src="AcrobatSwitchTextInHeader.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>

The specification tells us the following:

> The graphics objects in a document can be divided into two classes:
>
> * The real content of a document comprises objects representing material originally introduced by the document’s author.
>
> * Artifacts are graphics objects that are not part of the author’s original content but rather are generated by the conforming writer in the course of pagination, layout, or other strictly mechanical processes.

### Natural language specification

Text language is specified in Microsoft Word documents. Aspose.Words exports the specified language to an output PDF with the *Lang* attribute attached to a marked-content sequence or a Span tag – it is controlled by the [ExportLanguageToSpanTag](https://apireference.aspose.com/words/java/com.aspose.words/pdfsaveoptions#ExportLanguageToSpanTag) property. Generally there are no language issues when text is entered by the user via Microsoft Word. But there is a possibility that the language may be inaccurate if the text is generated automatically.

Users should ensure that the language is specified correctly in either:

* The source Word document:

  <img src="MWLanguage.png" alt="MWLanguage" style="width:800px"/>

  OR
* The output PDF document:

  <img src="AcrobatCheckChangeLanguage.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>

The specification tells us the following:

> The default natural language for all text in a file should be specified by the Lang entry in the document’s Catalog dictionary.
>
> All textual content within a file which differs from the default language should be indicated by use of a Lang property attached to a marked-content sequence, or by a Lang entry in a structure element dictionary ...

### Alternate descriptions

Microsoft Word documents allow users to add alternate text to images, shapes, and tables. Aspose.Words exports such an alternate text to the output PDF.

Users should ensure that all elements have an alternate text in either:

* The source Word document:

  <img src="MWTableAltText.png" alt="MWTableAltText" style="width:800px"/>

  <img src="MWShapeAltText.png" alt="MWShapeAltText" style="width:800px"/>
  
  OR

* The output PDF document:

  <img src="AcrobatTableAltText.png" alt="AcrobatTableAltText" style="width:800px"/>

  <img src="AcrobatShapeAltText.png" alt="AcrobatShapeAltText" style="width:800px"/>

The specification tells us the following:

> All structure elements whose content does not have a natural predetermined textual analogue, e.g. images, formulae, etc., should supply an alternate text description using the Alt entry in the structure element dictionary...
>
> NOTE Alternate descriptions provide textual descriptions that aid in the proper interpretation of otherwise opaque non-textual content.

### Replacement text

Microsoft Word document does not allow users to set replacement text. So this needs to be verified and fixed in the output PDF:

<img src="AcrobatReplacementText.png" alt="AcrobatReplacementText" style="width:800px"/>

The specification tells us the following:

> All textual structure elements that are represented in a non-standard manner, e.g., custom characters or inline graphics, should supply replacement text using the ActualText entry in the structure element dictionary...

### Abbreviations and Acronyms Expansions

Microsoft Word document does not allow users to set abbreviations and acronyms expansions. So this needs to be verified and fixed in the output PDF:

<img src="AcrobatSplitAddExpansionText.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

The specification tells us the following:

> All instances of abbreviations and acronyms in textual content should be placed in a marked-content sequence with a Span tag whose E property provides a textual expansion of the abbreviation or acronym...

## Font Requirements

There are also a number of nuances of working with fonts when converting to PDF/A-1 or PDF/A-2 formats using Aspose.Words. They must be taken into account if you want to avoid possible problems with the output document.

The sections below describe such nuances and options for their solution.

### Font legal requirements

Aspose.Words does not verify the legal restrictions of the used fonts – it is up to users. In other words, a user should not provide inappropriate fonts for PDF conversion using Aspose.Words.

{{% alert color="primary" %}}

This requirement applies when converting to PDF/A-1 or PDF/A-2.

{{% /alert %}}

The specification tells us the following:

> Only font programs that are legally embeddable in a file for unlimited, universal rendering shall be used.

### .notdef Glyph

The usage of the `.notdef` glyph is prohibited. The `.notdef` glyph will appear if a document contains characters which are not present in the selected font and which also cannot be resolved via the Font Fallback mechanism.

Users should remove or replace these characters in either:

* The source Word document:

  <img src="MWNotdefGlyph.png" alt="MWNotdefGlyph" style="width:800px"/>

  OR

* The output PDF document using the "Edit PDF" tool:

  <img src="AcrobatRemoveNotdefGlyph-EditPdfTool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>

{{% alert color="primary" %}}

This requirement applies when converting to PDF/A-2.

{{% /alert %}}

### Private Use Area (PUA)

{{% alert color="primary" %}}

The current requirement is Level A conformance only.

{{% /alert %}}

Private Use Area (PUA) characters appear mostly for Windows symbolic fonts like "Symbol", "Wingdings", "Webdings", and others. Microsoft Word formats do not provide an option to store actual text for characters.

Users should:

* Replace the symbolic font with a Unicode one in the source Word document:

  <img src="MWInsertSymbol.png" alt="MWInsertSymbol" style="width:800px"/>

  OR

* Add an ActualText entry to the problematic characters in the output PDF document:

  <img src="AcrobatSpanTagActualText.png" alt="AcrobatSpanTagActualText" style="width:800px"/>

{{% alert color="primary" %}}

"Segoe UI Symbol" is a Windows Unicode font which could be used as an alternative to symbolic fonts.

{{% /alert %}}

{{% alert color="primary" %}}

This requirement applies when converting to PDF/A-2.

{{% /alert %}}

The specification tells us the following:

> For Level A conformance only, for any character ... that is mapped to a code or codes in the Unicode Private Use Area (PUA), an ActualText entry ... shall be present for this character or a sequence of characters of which such a character is a part.

## See Also

* [How to edit document structure tags in Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [How to check or edit text language in Microsoft Word](https://support.microsoft.com/en-us/topic/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [How to change text language in Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [How to add alternative text to a shape, picture, chart, SmartArt graphic, or other object in Microsoft Word](https://support.microsoft.com/en-us/topic/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [How to add alternate text and supplementary information to tags](https://www.adobe.com/accessibility/products/acrobat/pdf-repair-add-alternative-text.html) (or read the same information in the [“Adobe Acrobat User Guide”](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [How to set up ActualText entry for text](https://www.adobe.com/accessibility/products/acrobat/pdf-repair-add-alternative-text.html), the “Add Actual Text for an Abbreviated Term, Forumla, or Non-Unicode Symbol” section
* [Unicode mapping for common Windows symbolic fonts](http://www.alanwood.net/demos/webdings.html)
