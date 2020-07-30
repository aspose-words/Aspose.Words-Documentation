---
title: Using Find and Replace in NPOI
type: docs
weight: 50
url: /net/using-find-and-replace-in-npoi/
---

## **Aspose.Words - Using Find and Replace**
Use Range.Replace to find or replace a particular string within the current range. It returns the number of replacements made, so it is useful for searching strings without replace. An exception is thrown if a captured or replacement string contains one or more special characters: paragraph break, cell break, section break, field start, field separator, field end, inline picture, drawing object, footnote.

**C#**

{{< highlight cs >}}

             Document doc = new Document();

            DocumentBuilder builder = new DocumentBuilder(doc);

            builder.Write("Hello World");

            doc.Range.Replace("Hello", "Hallow", false, true);

            String text = doc.Range.Text;

            System.Console.WriteLine(text);

            System.Console.ReadKey();


{{< /highlight >}}
## **Download Running Code**
Download **Using Find and Replace** form any of the below mentioned social coding sites:

- [CodePlex](https://asposenpoi.codeplex.com/downloads/get/1525851)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/Aspose.Words_Features_Missing_in_NPOI-v1.1/05.05-FindAndReplace.zip)

{{% alert color="primary" %}} 

For more details, visit [Find and Replace Overview](http://www.aspose.com/docs/display/wordsnet/Find+and+Replace+Overview).

{{% /alert %}}
