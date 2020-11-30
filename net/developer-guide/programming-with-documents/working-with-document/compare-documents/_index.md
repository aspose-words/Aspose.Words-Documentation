---
title: Compare Documents
description: "Aspose.Words for .NET allows you to compare two documents in any supported formats and shows content changes. You can apply advanced options when comparing."
type: docs
weight: 50
url: /net/compare-documents/
---

Comparing documents is a process that identifies changes between two documents and contains the changes as revisions. This process compares any two documents, including versions of one specific document, then the changes between both documents will be shown as revisions in the first document.

The comparison method is achieved by comparing words at character level or at word level. If a word contains a change of at least one character, in the result, the difference will be displayed as a change of the entire word, not a character. This process of comparison is a usual task in the legal and financial industries.

Instead of manually searching for differences between documents or between different versions of them, you can use Aspose.Words for comparing documents and getting content changes in formatting, header/footer, tables, and more.

This article explains how to compare documents and how to specify the advanced comparing properties.

## Limitations and Supported File Formats

Comparing documents is a very complex feature. There are varied parts of content combination that need to be analyzed to recognize all differences. The reason for this complexity is due to the fact that Aspose.Words aims to get the same comparison results as the Microsoft Word comparison algorithm.

The general limitation for two documents being compared is that they must not have revisions before calling the compare method as this limitation exists in Microsoft Word.

{{% alert color="primary" %}}

Note that you can compare any two documents within the [supported file formats](https://docs.aspose.com/words/net/supported-document-formats/). Basically, you can compare document objects and even you can create those objects from scratch without having any specific format.

{{% /alert %}}

## Compare Two Documents

When you compare documents, differences of the latter document from the former show up as revisions to the former. When you modify a document, each edit will have its own revision after running the compare method.

Aspose.Words allows you to identify documents differences using the [Compare](https://apireference.aspose.com/words/net/aspose.words/document/methods/compare/index) method – this is similar to the Microsoft Word document compare feature. It allows you to check documents or document versions to find differences and changes, including formatting modifications such as font changes, spacing changes, the addition of words and paragraphs.

As a result of comparison, documents can be determined as equal or not equal. The term “equal” documents means that the comparison method is not able to represent changes as revisions. This means that both document text and text formatting are the same. But there can be other differences between documents. For example, Microsoft Word supports only format revisions for styles, and you cannot represent style insertion/deletion. So documents can have a different set of styles, and the **Compare** method still produces no revisions.

The following code example shows how to check if two documents are equal or not:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CompareDocument-CompareForEqual.cs" >}}

The following code example shows how to simply apply the Compare method to two documents:

**.NET**
{{< highlight csharp >}}
// The source document doc1
Document doc1 = new Document();
DocumentBuilder builder = new DocumentBuilder(doc1);
builder.Writeln("This is the original document.");

// The target document doc2
Document doc2 = new Document();
builder = new DocumentBuilder(doc2);
builder.Writeln("This is the edited document.");

// If either document has a revision, an exception will be thrown
if (doc1.Revisions.Count == 0 && doc2.Revisions.Count == 0)
	doc1.Compare(doc2, "authorName", DateTime.Now);

// If doc1 and doc2 are different, doc1 now has some revisions after the comparison, which can now be viewed and processed
Assert.AreEqual(2, doc1.Revisions.Count);

foreach (Revision r in doc1.Revisions)
	{
		Console.WriteLine($"Revision type: {r.RevisionType}, on a node of type \"{r.ParentNode.NodeType}\"");
		Console.WriteLine($"\tChanged text: \"{r.ParentNode.GetText()}\"");
	}

// All the revisions in doc1 are differences between doc1 and doc2, so accepting them on doc1 transforms doc1 into doc2
doc1.Revisions.AcceptAll();

// doc1, when saved, now resembles doc2
doc1.Save(ArtifactsDir + "Document.Compare.docx");
doc1 = new Document(ArtifactsDir + "Document.Compare.docx");
Assert.AreEqual(0, doc1.Revisions.Count);
Assert.AreEqual(doc2.GetText().Trim(), doc1.GetText().Trim());
{{< /highlight >}}

## Specify Advanced Comparing Properties

There are many different properties of the [CompareOptions](https://apireference.aspose.com/words/net/aspose.words/compareoptions/properties/index) class which you can apply when you want to compare documents.

For example, Aspose.Words allows you to ignore changes made during a comparison operation for certain types of objects within the original document. You can select the appropriate property for the object type, such as [IgnoreHeadersAndFooters](https://apireference.aspose.com/words/net/aspose.words/compareoptions/properties/ignoreheadersandfooters), [IgnoreFormatting](https://apireference.aspose.com/words/net/aspose.words/compareoptions/properties/ignoreformatting), [IgnoreComments](https://apireference.aspose.com/words/net/aspose.words/compareoptions/properties/ignorecomments), and others by setting them to "true".

In addition, Aspose.Words provides the [Granularity](https://apireference.aspose.com/words/net/aspose.words/compareoptions/properties/granularity) property with which you can specify whether to track changes by character or by word.

Another common property is a choice in which document to show comparison changes. For example, the “Compare documents dialogue box” in Microsoft Word has the option “Show changes in” – this also affects the comparison results. Aspose.Words provides the [Target](https://apireference.aspose.com/words/net/aspose.words/compareoptions/properties/target) property that serves this purpose.

The following code example shows how to set the advanced comparing properties:

**.NET**
{{< highlight csharp >}}
// Create the original document
Document docOriginal = new Document();
DocumentBuilder builder = new DocumentBuilder(docOriginal);

// Insert paragraph text with an endnote
builder.Writeln("Hello world! This is the first paragraph.");
builder.InsertFootnote(FootnoteType.Endnote, "Original endnote text.");

// Insert a table
builder.StartTable();
builder.InsertCell();
builder.Write("Original cell 1 text");
builder.InsertCell();
builder.Write("Original cell 2 text");
builder.EndTable();

// Insert a textbox
Shape textBox = builder.InsertShape(ShapeType.TextBox, 150, 20);
builder.MoveTo(textBox.FirstParagraph);
builder.Write("Original textbox contents");

// Insert a DATE field
builder.MoveTo(docOriginal.FirstSection.Body.AppendParagraph(""));
builder.InsertField(" DATE ");

// Insert a comment
Comment newComment = new Comment(docOriginal, "John Doe", "J.D.", DateTime.Now);
newComment.SetText("Original comment.");
builder.CurrentParagraph.AppendChild(newComment);

// Insert a header
builder.MoveToHeaderFooter(HeaderFooterType.HeaderPrimary);
builder.Writeln("Original header contents.");

// Create a clone of our document, which we will edit and later compare to the original
Document docEdited = (Document)docOriginal.Clone(true);
Paragraph firstParagraph = docEdited.FirstSection.Body.FirstParagraph;

// Change the formatting of the first paragraph, change casing of original characters and add text
firstParagraph.Runs[0].Text = "hello world! this is the first paragraph, after editing.";
firstParagraph.ParagraphFormat.Style = docEdited.Styles[StyleIdentifier.Heading1];
            
// Edit the footnote
Footnote footnote = (Footnote)docEdited.GetChild(NodeType.Footnote, 0, true);
footnote.FirstParagraph.Runs[1].Text = "Edited endnote text.";

// Edit the table
Table table = (Table)docEdited.GetChild(NodeType.Table, 0, true);
table.FirstRow.Cells[1].FirstParagraph.Runs[0].Text = "Edited Cell 2 contents";

// Edit the textbox
textBox = (Shape)docEdited.GetChild(NodeType.Shape, 0, true);
textBox.FirstParagraph.Runs[0].Text = "Edited textbox contents";

// Edit the DATE field
FieldDate fieldDate = (FieldDate)docEdited.Range.Fields[0];
fieldDate.UseLunarCalendar = true;

// Edit the comment
Comment comment = (Comment)docEdited.GetChild(NodeType.Comment, 0, true);
comment.FirstParagraph.Runs[0].Text = "Edited comment.";

// Edit the header
docEdited.FirstSection.HeadersFooters[HeaderFooterType.HeaderPrimary].FirstParagraph.Runs[0].Text = "Edited header contents.";

// Apply different comapring options
CompareOptions compareOptions = new CompareOptions();
compareOptions.IgnoreFormatting = false;
compareOptions.IgnoreCaseChanges = false;
compareOptions.IgnoreComments = false;
compareOptions.IgnoreTables = false;
compareOptions.IgnoreFields = false;
compareOptions.IgnoreFootnotes = false;
compareOptions.IgnoreTextboxes = false;
compareOptions.IgnoreHeadersAndFooters = false;
compareOptions.Target = ComparisonTargetType.New;

// compare both documents
docOriginal.Compare(docEdited, "John Doe", DateTime.Now, compareOptions);
docOriginal.Save(ArtifactsDir + "Document.CompareOptions.docx");

docOriginal = new Document(ArtifactsDir + "Document.CompareOptions.docx");

TestUtil.VerifyFootnote(FootnoteType.Endnote, true, string.Empty, "OriginalEdited endnote text.", (Footnote)docOriginal.GetChild(NodeType.Footnote, 0, true));

// If you set compareOptions to ignore certain types of changes,
// then revisions done on those types of nodes will not appear in the output document
// You can tell what kind of node a revision was done on by looking at the NodeType of the revision's parent nodes
Assert.AreNotEqual(compareOptions.IgnoreFormatting, docOriginal.Revisions.Any(rev => rev.RevisionType == RevisionType.FormatChange));
Assert.AreNotEqual(compareOptions.IgnoreCaseChanges, docOriginal.Revisions.Any(s => s.ParentNode.GetText().Contains("hello")));
Assert.AreNotEqual(compareOptions.IgnoreComments, docOriginal.Revisions.Any(rev => HasParentOfType(rev, NodeType.Comment)));
Assert.AreNotEqual(compareOptions.IgnoreTables, docOriginal.Revisions.Any(rev => HasParentOfType(rev, NodeType.Table)));
Assert.AreNotEqual(compareOptions.IgnoreFields, docOriginal.Revisions.Any(rev => HasParentOfType(rev, NodeType.FieldStart)));
Assert.AreNotEqual(compareOptions.IgnoreFootnotes, docOriginal.Revisions.Any(rev => HasParentOfType(rev, NodeType.Footnote)));
Assert.AreNotEqual(compareOptions.IgnoreTextboxes, docOriginal.Revisions.Any(rev => HasParentOfType(rev, NodeType.Shape)));
Assert.AreNotEqual(compareOptions.IgnoreHeadersAndFooters, docOriginal.Revisions.Any(rev => HasParentOfType(rev, NodeType.HeaderFooter)));
{{< /highlight >}}

{{% alert color="primary" %}}

You can compare two documents online by using the [Document comparison online](https://products.aspose.app/words/comparison) tool.

Note that the comparison method, described above, is used in this tool to ensure getting equal results. So you will get the same results even by using the online comparison tool or by using the comparison method in Aspose.Words.

{{% /alert %}}