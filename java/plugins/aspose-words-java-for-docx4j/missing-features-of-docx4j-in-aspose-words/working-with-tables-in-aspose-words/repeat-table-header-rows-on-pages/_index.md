---
title: Repeat Table Header Rows on Pages
type: docs
weight: 40
url: /java/repeat-table-header-rows-on-pages/
---

## **Aspose.Words - Repeat Table Header Rows on Pages**

A table can specify certain starting rows of a table to be used as header rows. This means if the table spans over many pages, these rows will be repeated at the top of the table for each page. 

In Aspose.Words you can apply this setting by using the **RowFormat.HeadingFormat** property.

**Java**

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
Table table = builder.startTable();
builder.getRowFormat().setHeadingFormat(true);
builder.getParagraphFormat().setAlignment(ParagraphAlignment.CENTER);
builder.getCellFormat().setWidth(100);
builder.insertCell();
builder.writeln("Heading row 1");
builder.endRow();
builder.insertCell();
builder.writeln("Heading row 2");
builder.endRow();
builder.getCellFormat().setWidth(50);
builder.getParagraphFormat().clearFormatting();

// Insert some content so the table is long enough to continue onto the next page.
for (int i = 0; i < 50; i++)
{
    builder.insertCell();
    builder.getRowFormat().setHeadingFormat(false);
    builder.write("Column 1 Text");
    builder.insertCell();
    builder.write("Column 2 Text");
    builder.endRow();
}
doc.save(dataDir + "RepearHeaderRows.doc");
{{< /highlight >}}

## **Download Running Code**

- [CodePlex](https://aspose-wordsjavadocx4j.codeplex.com/releases/view/618874)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Docx4j-v1.0.0)

## **Download Sample Code**

- [CodePlex](https://aspose-wordsjavadocx4j.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/asposefeatures/tables/repeatheaderrow/AsposeRepeatHeaderRow.java)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose.Words-for-Java_for_Docx4j/src/main/java/com/aspose/words/examples/asposefeatures/tables/repeatheaderrow/AsposeRepeatHeaderRow.java)

{{% alert color="primary" %}} 

For more details, visit [Specifying Rows to Repeat on Subsequent Pages as Header Rows](/words/java/working-with-columns-and-rows/#workingwithcolumnsandrows-specifyingrowstorepeatonsubsequentpagesasheaderrows).

{{% /alert %}}
