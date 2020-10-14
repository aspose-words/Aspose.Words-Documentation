---
title: Change text in a table
type: docs
weight: 50
url: /net/change-text-in-a-table/
---

## OpenXML SDK

{{< highlight csharp >}}
string FilePath = @"..\..\..\..\Sample Files\";
string File = FilePath + "Change text in a table - OpenXML.docx";
ChangeTextInCell(File, "The text from the OpenXML API example");

// Change the text in a table in a word processing document.
public static void ChangeTextInCell(string filepath, string txt)
{
// Use the file name and path passed in as an argument to
 
// open an existing document.            
using (WordprocessingDocument doc =
    WordprocessingDocument.Open(filepath, true))
{
    // Find the first table in the document.
    Table table =
        doc.MainDocumentPart.Document.Body.Elements<Table>().First();

    // Find the second row in the table.
    TableRow row = table.Elements<TableRow>().ElementAt(1);

    // Find the third cell in the row.
    TableCell cell = row.Elements<TableCell>().ElementAt(2);

    // Find the first paragraph in the table cell.
    Paragraph p = cell.Elements<Paragraph>().First();

    // Find the first run in the paragraph.
    Run r = p.Elements<Run>().First();

    // Set the text for the run.
    Text t = r.Elements<Text>().First();
    t.Text = txt;
}
}
{{< /highlight >}}

### Aspose.Words

{{< highlight csharp >}}
string FilePath = @"..\..\..\..\Sample Files\";
string File = FilePath + "Change text in a table - Aspose.docx";
Document doc = new Document(File);

// Get the first table in the document.
Table table = (Table)doc.GetChild(NodeType.Table, 0, true);

// Replace any instances of our string in the last cell of the table only.
table.Rows[1].Cells[2].Range.Replace("Mr", "test", true, true);
doc.Save(File);
{{< /highlight >}}

## Download Sample Code

- [CodePlex](https://asposewordsopenxml.codeplex.com/releases/view/620544)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/AsposeWordsVsOpenXMLv1.2)
- [Code.MSDN](https://code.msdn.microsoft.com/Code-Comparison-of-Common-4ffff4d7#content)
- [Sourceforge](https://sourceforge.net/projects/asposeopenxml/files/Aspose.Words%20Vs%20OpenXML/Change%20text%20in%20a%20table%20\(Aspose.Words\).zip/download)
- [Bitbucket](https://bitbucket.org/asposemarketplace/aspose-for-openxml/downloads/Change%20text%20in%20a%20table%20\(Aspose.Words\).zip)
