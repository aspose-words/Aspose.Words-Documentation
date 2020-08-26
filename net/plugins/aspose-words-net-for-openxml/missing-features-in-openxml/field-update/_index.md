---
title: Field Update
type: docs
weight: 30
url: /net/field-update/
---

Fields in a document are like placeholders where some useful data can be inserted. For example, a field can be a page reference, formula or a mail merge field. A field in a Microsoft Word document consists of a field code and field result. The field code is an instruction about how the field result needs to be updated or calculated. An application that processes a document and encounters a field might have the functionality to interpret the instructions contained in the field code and update the field result with a new value. This is called field update.
Usually, a field, when inserted in Microsoft Word, already contains an up to date value. For example, if the field is a formula or a page number, it will contain a correct calculated value for the given version of the document. But if you have an application that generates or modifies a document with fields, for example combines two documents or populates with data, then for the document to be useful, all fields should ideally be updated.

Fields in Microsoft Word documents are complex. There are over 50 field types (each needs its own result calculation procedure), formulas and expressions, bookmarks and references, functions and various switches. Fields can also be nested.

Aspose.Words is a class library designed for server-side processing of Microsoft Word documents and supports fields in the following ways:

- All fields in a document are preserved during open/save and conversions.
- It is possible to update results of some of the most popular fields.
## **Fields Supported during Update**
Calculation of the following fields is supported in the current version of Aspose.Words:

- = (formula field)
- ADDRESSBLOCK
- AUTHOR
- COMPARE
- CREATEDATE
- DATE
- DOCPROPERTY
- DOCVARIABLE
- GREETINGLINE
- IF
- INCLUDETEXT
- MERGEFIELD
- MERGEREC
- MERGESEQ
- NEXT
- NEXTIF
- NUMPAGES
- PAGE
- PAGEREF
- REF
- SECTION
- SECTIONPAGES
- SEQ
- SET
- STYLEREF
- TIME
- TITLE
- TOA
- TOC (including TOT and TOF)
- TC

{{< highlight csharp >}}
string FilePath = @"..\..\..\Sample Files\";
string FileName = FilePath + "All Field Update.docx";
Document doc = new Document(FileName);

// This updates all fields in the document.
doc.UpdateFields();
doc.Save(FileName);
{{< /highlight >}}
## **Download Sample Code**
- [Codeplex](https://asposeopenxml.codeplex.com/releases/view/617779)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MissingFeaturesofOpenXMLWordsv1.1)
- [Code.MSDN](https://code.msdn.microsoft.com/Missing-Features-in-6a2c882b)
