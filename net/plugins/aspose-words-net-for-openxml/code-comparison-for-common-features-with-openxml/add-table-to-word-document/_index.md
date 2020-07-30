---
title: Add table to Word Document
type: docs
weight: 10
url: /net/add-table-to-word-document/
---

### **OpenXML Word**
Below are the namespace for use:

{{< highlight csharp >}}

 using DocumentFormat.OpenXml;

using DocumentFormat.OpenXml.Packaging;

using DocumentFormat.OpenXml.Wordprocessing;

{{< /highlight >}}

The basic document structure of a **WordProcessingML** document consists of the document and body elements, followed by one or more block level elements such as p, which represents a paragraph. A paragraph contains one or more r elements. The r stands for run, which is a region of text with a common set of properties, such as formatting. A run contains one or more t elements. The t element contains a range of text.

To create this structure this function **CreateWordprocessingDocument** is used in below code. By using **AddTable** function we can add table to word document by passing filename and data string.

{{< highlight csharp >}}

 string FilePath = @"..\..\..\..\Sample Files\";

Document doc = new Document();

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

doc.Save(FilePath + "Add Table - Aspose.doc");


{{< /highlight >}}
### **Aspose.Words**
In **Aspose.Words** a table is normally inserted using **DocumentBuilder**. The following methods are used to build a table. Other methods will also be used to insert content into the table cells.

- DocumentBuilder.StartTable
- DocumentBuilder.InsertCell
- DocumentBuilder.EndRow
- DocumentBuilder.EndTable
- DocumentBuilder.Writeln

{{< highlight csharp >}}

 string FilePath = @"..\..\..\..\Sample Files\";

string[,] data = new string[2, 2] { { "Mike", "Amy" }, { "Mary", "Albert" } };

CreateWordprocessingDocument(FilePath + "Add Table - OpenXML.doc");

AddTable(FilePath + "Add Table - OpenXML.doc", data);

private static void CreateWordprocessingDocument(string filepath)

{

// Create a document by supplying the filepath. 

using (WordprocessingDocument wordDocument =

    WordprocessingDocument.Create(filepath, WordprocessingDocumentType.Document))

{

    // Add a main document part. 

    MainDocumentPart mainPart = wordDocument.AddMainDocumentPart();

    // Create the document structure and add some text.

    mainPart.Document = new Document();

    Body body = mainPart.Document.AppendChild(new Body());

    Paragraph para = body.AppendChild(new Paragraph());

    Run run = para.AppendChild(new Run());

    run.AppendChild(new Text("Create text in body - CreateWordprocessingDocument"));

}

}

private static void AddTable(string fileName, string[,] data)

{

using (var document = WordprocessingDocument.Open(fileName, true))

{

    var doc = document.MainDocumentPart.Document;

    Table table = new Table();

    TableProperties props = new TableProperties(

        new TableBorders(

        new TopBorder

        {

            Val = new EnumValue<BorderValues>(BorderValues.Single),

            Size = 12

        },

        new BottomBorder

        {

            Val = new EnumValue<BorderValues>(BorderValues.Single),

            Size = 12

        },

        new LeftBorder

        {

            Val = new EnumValue<BorderValues>(BorderValues.Single),

            Size = 12

        },

        new RightBorder

        {

            Val = new EnumValue<BorderValues>(BorderValues.Single),

            Size = 12

        },

        new InsideHorizontalBorder

        {

            Val = new EnumValue<BorderValues>(BorderValues.Single),

            Size = 12

        },

        new InsideVerticalBorder

        {

            Val = new EnumValue<BorderValues>(BorderValues.Single),

            Size = 12

        }));

    table.AppendChild<TableProperties>(props);

    for (var i = 0; i <= data.GetUpperBound(0); i++)

    {

        var tr = new TableRow();

        for (var j = 0; j <= data.GetUpperBound(1); j++)

        {

            var tc = new TableCell();

            tc.Append(new Paragraph(new Run(new Text(data[i, j]))));

            // Assume you want columns that are automatically sized.

            tc.Append(new TableCellProperties(

                new TableCellWidth { Type = TableWidthUnitValues.Auto }));

            tr.Append(tc);

        }

        table.Append(tr);

    }

    doc.Body.Append(table);

    doc.Save();

}

}


{{< /highlight >}}
## **Download Sample Code**
- [CodePlex](https://asposewordsopenxml.codeplex.com/releases/view/620544)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/AsposeWordsVsOpenXMLv1.2)
- [Code.MSDN](https://code.msdn.microsoft.com/Code-Comparison-of-Common-4ffff4d7#content)
- [Sourceforge](https://sourceforge.net/projects/asposeopenxml/files/Aspose.Words%20Vs%20OpenXML/Add%20table%20to%20Word%20Document%20\(Aspose.Words\).zip/download)
- [Bitbucket](https://bitbucket.org/asposemarketplace/aspose-for-openxml/downloads/Add%20table%20to%20Word%20Document%20\(Aspose.Words\).zip)
