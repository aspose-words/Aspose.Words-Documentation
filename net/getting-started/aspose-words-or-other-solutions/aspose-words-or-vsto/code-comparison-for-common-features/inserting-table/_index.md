---
title: Inserting Table – Aspose.Words for .NET
articleTitle: Inserting Table
linktitle: Inserting Table
description: "Insert a table into a document and modiffy it easily and fast instead of using VSTO."
type: docs
weight: 80
url: /net/inserting-table/
---

## VSTO

{{< highlight csharp >}}
Word.Application wordApp = Application;
wordApp.Documents.Open("Inserting Table.doc");
CreateDocumentPropertyTable();
this.Application.ActiveDocument.Save();
private void CreateDocumentPropertyTable()
{
object start = 0, end = 0;
Word.Range rng = this.Application.ActiveDocument.Range(ref start, ref end);

// Insert a title for the table and paragraph marks.
rng.InsertBefore("Document Statistics");
rng.Font.Name = "Verdana";
rng.Font.Size = 16;
rng.InsertParagraphAfter();
rng.InsertParagraphAfter();
rng.SetRange(rng.End, rng.End);

// Add the table.
rng.Tables.Add(this.Application.ActiveDocument.Paragraphs[2].Range, 3, 2, ref missing, ref missing);

// Format the table and apply a style.
Word.Table tbl = this.Application.ActiveDocument.Tables[1];
tbl.Range.Font.Size = 12;
tbl.Columns.DistributeWidth();
object styleName = "Table Professional";
tbl.set_Style(ref styleName);

// Insert document properties into cells.
tbl.Cell(1, 1).Range.Text = "Document Property";
tbl.Cell(1, 2).Range.Text = "Value";
tbl.Cell(2, 1).Range.Text = "Subject";
tbl.Cell(2, 2).Range.Text = ((Office.DocumentProperties)(this.Application.ActiveDocument.BuiltInDocumentProperties))
	[Word.WdBuiltInProperty.wdPropertySubject].Value.ToString();
tbl.Cell(3, 1).Range.Text = "Author";
tbl.Cell(3, 2).Range.Text = ((Office.DocumentProperties)(this.Application.ActiveDocument.BuiltInDocumentProperties))
	[Word.WdBuiltInProperty.wdPropertyAuthor].Value.ToString();
}
{{< /highlight >}}

## Aspose.Words

{{< highlight csharp >}}
Document doc = new Document("Inserting Table.doc");
DocumentBuilder builder = new DocumentBuilder(doc);

// We call this method to start building the table.
builder.StartTable();
builder.InsertCell();
builder.Write("Row 1, Cell 1 Content.");

// Build the second cell
builder.InsertCell();
builder.Write("Row 1, Cell 2 Content.");

// Call the following method to end the row and start a new row.
builder.EndRow();

// Build the first cell of the second row.
builder.InsertCell();
builder.Write("Row 2, Cell 1 Content");

// Build the second cell.
builder.InsertCell();
builder.Write("Row 2, Cell 2 Content.");
builder.EndRow();

// Signal that we have finished building the table.
builder.EndTable();

// Save the document to disk.
doc.Save("Inserting Table.doc");
{{< /highlight >}}

## Download Sample Code

- [Github](https://github.com/asposemarketplace/Aspose_for_VSTO/releases/download/Aspose.Words1.0/Inserting.Table.Aspose.Words.zip)
- [Bitbucket](https://bitbucket.org/asposemarketplace/aspose-for-vsto/downloads/Inserting%20Table%20\(Aspose.Words\).zip)
