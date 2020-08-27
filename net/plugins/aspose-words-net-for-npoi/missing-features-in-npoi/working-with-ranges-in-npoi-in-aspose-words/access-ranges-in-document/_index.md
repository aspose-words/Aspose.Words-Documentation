---
title: Access Ranges in Document
type: docs
weight: 10
url: /net/access-ranges-in-document/
---

## **Aspose.Words - Access Ranges in Document**
Use the Range.Text property to retrieve plain, unformatted text of the range.

**C#**

{{< highlight cs >}}
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
            Range range = doc.Range;
            String text = range.Text;
            System.Console.WriteLine(text);
            System.Console.ReadKey();
{{< /highlight >}}
## **Download Running Code**
Download **Access Ranges in Document** form any of the below mentioned social coding sites:

- [CodePlex](https://asposenpoi.codeplex.com/downloads/get/1525852)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/Aspose.Words_Features_Missing_in_NPOI-v1.1/07.01-AccessRanges.zip)

{{% alert color="primary" %}} 

For more details, visit [Working with Ranges](http://www.aspose.com/docs/display/wordsnet/Working+with+Ranges).

{{% /alert %}}
