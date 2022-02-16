---
title: Format Table in Document – Aspose.Words for Java
articleTitle: Format Table in Document
linktitle: Format Table in Document
description: "Aspose.Words for Java allows you to format table inside a document easily and fast instead of using Apache POI."
type: docs
weight: 20
url: /java/format-table-in-document/
---

## Aspose.Words - Format Table in Document

{{% alert color="primary" %}} 

Note that before you apply table properties there must be at least one row present in the table. This means when building a table using **DocumentBuilder**, such formatting must be done after the first call to **DocumentBuilder.InsertCell** or after adding the first row to a table or when inserting nodes directly into the DOM.

{{% /alert %}} 

**Java**

{{< highlight csharp >}}

// The path to the documents directory.
String dataDir = Utils.getDataDir(AsposeFormatedTable.class);
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
Table table = builder.startTable();
builder.insertCell();

// Set the borders for the entire table.
table.setBorders(LineStyle.SINGLE, 2.0, Color.BLACK);

// Set the cell shading for this cell.
builder.getCellFormat().getShading().setBackgroundPatternColor(Color.DARK_GRAY);
builder.writeln("Cell #1");
builder.insertCell();

// Specify a different cell shading for the second cell.
builder.getCellFormat().getShading().setBackgroundPatternColor(Color.blue);
builder.writeln("Cell #2");

// End this row.
builder.endRow();

// Clear the cell formatting from previous operations.
builder.getCellFormat().clearFormatting();

// Create the second row.
builder.insertCell();

// Create larger borders for the first cell of this row. This will be different

// compared to the borders set for the table.
builder.getCellFormat().getBorders().getLeft().setLineWidth(4.0);
builder.getCellFormat().getBorders().getRight().setLineWidth(4.0);
builder.getCellFormat().getBorders().getTop().setLineWidth(4.0);
builder.getCellFormat().getBorders().getBottom().setLineWidth(4.0);
builder.writeln("Cell #3");
builder.insertCell();

// Clear the cell formatting from the previous cell.
builder.getCellFormat().clearFormatting();
builder.writeln("Cell #4");
doc.save(dataDir + "Aspose_styledTable.doc");
{{< /highlight >}}

## Apache POI HWPF XWPF - Format Table in Document

**Java**

{{< highlight csharp >}}

// The path to the documents directory.
String dataDir = Utils.getDataDir(ApacheFormattedTable.class);

// Create a new document from scratch
XWPFDocument doc = new XWPFDocument();

// -- OR --

// open an existing empty document with styles already defined
//XWPFDocument doc = new XWPFDocument(new FileInputStream("base_document.docx"));

// Create a new table with 6 rows and 3 columns
int nRows = 6;
int nCols = 3;
XWPFTable table = doc.createTable(nRows, nCols);

// Set the table style. If the style is not defined, the table style

// will become "Normal".
CTTblPr tblPr = table.getCTTbl().getTblPr();
CTString styleStr = tblPr.addNewTblStyle();
styleStr.setVal("StyledTable");

// Get a list of the rows in the table
List<XWPFTableRow> rows = table.getRows();
int rowCt = 0;
int colCt = 0;
for (XWPFTableRow row : rows) {
        // get table row properties (trPr)
        CTTrPr trPr = row.getCtRow().addNewTrPr();

        // set row height; units = twentieth of a point, 360 = 0.25"
        CTHeight ht = trPr.addNewTrHeight();
        ht.setVal(BigInteger.valueOf(360));
    
        // get the cells in this row
        List<XWPFTableCell> cells = row.getTableCells();
    
    // add content to each cell
        for (XWPFTableCell cell : cells) {
                // get a table cell properties element (tcPr)
                CTTcPr tcpr = cell.getCTTc().addNewTcPr();
    
                // set vertical alignment to "center"
                CTVerticalJc va = tcpr.addNewVAlign();
                va.setVal(STVerticalJc.CENTER);
    
                // create cell color element
                CTShd ctshd = tcpr.addNewShd();
        ctshd.setColor("auto");
        ctshd.setVal(STShd.CLEAR);
        if (rowCt == 0) {
                // header row
                ctshd.setFill("A7BFDE");
        }
        else if (rowCt % 2 == 0) {
                // even row
                ctshd.setFill("D3DFEE");
        }
        else {
                // odd row
                ctshd.setFill("EDF2F8");
        }
    
        // get 1st paragraph in cell's paragraph list
        XWPFParagraph para = cell.getParagraphs().get(0);
    
        // create a run to contain the content
        XWPFRun rh = para.createRun();
    
        // style cell as desired
        if (colCt == nCols - 1) {
                // last column is 10pt Courier
                rh.setFontSize(10);
                rh.setFontFamily("Courier");
        }
        if (rowCt == 0) {
                // header row
            rh.setText("header row, col " + colCt);
                rh.setBold(true);
            para.setAlignment(ParagraphAlignment.CENTER);
        }
        else if (rowCt % 2 == 0) {
            // even row
            rh.setText("row " + rowCt + ", col " + colCt);
            para.setAlignment(ParagraphAlignment.LEFT);
        }
        else {
            // odd row
            rh.setText("row " + rowCt + ", col " + colCt);
            para.setAlignment(ParagraphAlignment.LEFT);
        }
        colCt++;
        }
 // for cell
        colCt = 0;
        rowCt++;
}
 // for row

// write the file
FileOutputStream out = new FileOutputStream(dataDir + "Apache_styledTable.docx");
doc.write(out);
out.close();
{{< /highlight >}}

## Download Running Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)

## Download Sample Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/featurescomparison/tables)

For more details, visit [Applying Formatting to Table, Row and Cell](/words/java/working-with-tables/).
