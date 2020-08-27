---
title: Delete Ranges
type: docs
weight: 20
url: /net/delete-ranges/
---

## **Aspose.Words - Delete Ranges**
Use the Range.Text property to retrieve plain, unformatted text of the range.

**C#**

{{< highlight csharp >}}
             Document doc = new Document();
            DocumentBuilder builder = new DocumentBuilder(doc);

            // Start building a the table.
            builder.StartTable();
            builder.InsertCell();
            builder.Write("Row 1, Cell 1 Content");

            // Build the second cell
            builder.InsertCell();
            builder.Write("Row 1, Cell 2 Content");

            // End previous row and start new
            builder.EndRow();

            // Build the first cell of 2nd row
            builder.InsertCell();
            builder.Write("Row 2, Cell 1 Content");
            builder.InsertCell();
            builder.Write("Row 2, Cell 2 Content");
            builder.EndRow();

            // End the table
            builder.EndTable();
            Range range = doc.Sections[0].Range;
            range.Delete();
            String text = doc.Range.Text;
            System.Console.WriteLine(text);
            System.Console.ReadKey();
{{< /highlight >}}
## **Download Running Code**
Download **Delete Ranges** form any of the below mentioned social coding sites:

- [CodePlex](https://asposenpoi.codeplex.com/downloads/get/1525853)
- [GitHub](https://github.com/asposewords/Aspose.Words-for-.NET/releases/download/Aspose.Words_Features_Missing_in_NPOI-v1.1/07.02-DeleteRange.zip)

{{% alert color="primary" %}} 

For more details, visit [Working with Ranges](http://www.aspose.com/docs/display/wordsnet/Working+with+Ranges).

{{% /alert %}}
