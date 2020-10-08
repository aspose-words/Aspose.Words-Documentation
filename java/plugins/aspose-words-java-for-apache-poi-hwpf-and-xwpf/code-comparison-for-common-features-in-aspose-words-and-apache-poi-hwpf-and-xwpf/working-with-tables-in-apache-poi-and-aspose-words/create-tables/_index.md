---
title: Create Tables
type: docs
weight: 10
url: /java/create-tables/
---

## **Aspose.Words - Create Tables**

In Aspose.Words a table is normally inserted using **DocumentBuilder**. The following methods are used to build a table. Other methods will also be used to insert content into the table cells.

- DocumentBuilder.startTable
- DocumentBuilder.insertCell
- DocumentBuilder.endRow
- DocumentBuilder.endTable
- DocumentBuilder.write

**Java**

{{< highlight csharp >}}

// The path to the documents directory.
String dataDir = Utils.getDataDir(AsposeCreateTable.class);
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// We call this method to start building the table.
builder.startTable();
builder.insertCell();
builder.write("Row 1, Cell 1 Content.");

// Build the second cell
builder.insertCell();
builder.write("Row 1, Cell 2 Content.");

// Call the following method to end the row and start a new row.
builder.endRow();

// Build the first cell of the second row.
builder.insertCell();
builder.write("Row 2, Cell 1 Content");

// Build the second cell.
builder.insertCell();
builder.write("Row 2, Cell 2 Content.");
builder.endRow();

// Signal that we have finished building the table.
builder.endTable();

// Save the document to disk.
doc.save(dataDir + "Aspose_CreateTable.doc");
{{< /highlight >}}

## **Apache POI HWPF XWPF - Create Tables**

Below example shows how table is inserted using Apache POI XWPF library.

**Java**

{{< highlight csharp >}}

// The path to the documents directory.
String dataDir = Utils.getDataDir(ApacheCreateTable.class);
XWPFDocument document = new XWPFDocument();

// New 2x2 table
XWPFTable tableOne = document.createTable();
XWPFTableRow tableOneRowOne = tableOne.getRow(0);
tableOneRowOne.getCell(0).setText("Hello");
tableOneRowOne.addNewTableCell().setText("World");
XWPFTableRow tableOneRowTwo = tableOne.createRow();
tableOneRowTwo.getCell(0).setText("This is");
tableOneRowTwo.getCell(1).setText("a table");

// Add a break between the tables
document.createParagraph().createRun().addBreak();

// New 3x3 table
XWPFTable tableTwo = document.createTable();
XWPFTableRow tableTwoRowOne = tableTwo.getRow(0);
tableTwoRowOne.getCell(0).setText("col one, row one");
tableTwoRowOne.addNewTableCell().setText("col two, row one");
tableTwoRowOne.addNewTableCell().setText("col three, row one");
XWPFTableRow tableTwoRowTwo = tableTwo.createRow();
tableTwoRowTwo.getCell(0).setText("col one, row two");
tableTwoRowTwo.getCell(1).setText("col two, row two");
tableTwoRowTwo.getCell(2).setText("col three, row two");
XWPFTableRow tableTwoRowThree = tableTwo.createRow();
tableTwoRowThree.getCell(0).setText("col one, row three");
tableTwoRowThree.getCell(1).setText("col two, row three");
tableTwoRowThree.getCell(2).setText("col three, row three");
FileOutputStream outStream = new FileOutputStream(dataDir + "Apache_CreateTable.doc");
document.write(outStream);
outStream.close();
{{< /highlight >}}

## **Download Running Code**

- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/releases/view/618321)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)

## **Download Sample Code**

- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/featurescomparison/tables/)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/featurescomparison/tables)

{{% alert color="primary" %}} 

For more details, visit [Inserting a Table using DocumentBuilder](/words/java/use-documentbuilder-to-insert-document-elements/#usedocumentbuildertoinsertdocumentelements-insertingatable).

{{% /alert %}}
