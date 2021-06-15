---
title: Search and Replace Text in Document Part
type: docs
weight: 190
url: /net/search-and-replace-text-in-document-part/
---

## OpenXML

Below is the code example of search and replace text using OpenXML SDK.

{{< highlight csharp >}}
  string FilePath = @"..\..\..\..\Sample Files\";
  string fileName = FilePath + "Search and Replace Text.docx";
  SearchAndReplace(fileName);

  // To search and replace content in a document part.
  public static void SearchAndReplace(string document)
  {
     using (WordprocessingDocument wordDoc = WordprocessingDocument.Open(document, true))
     {
       string docText = null; 
       using (StreamReader sr = new StreamReader(wordDoc.MainDocumentPart.GetStream()))
       {
          docText = sr.ReadToEnd();
       }
       Regex regexText = new Regex("Hello world!");
       docText = regexText.Replace(docText, "Hi Everyone!");
       using (StreamWriter sw = new StreamWriter(wordDoc.MainDocumentPart.GetStream(FileMode.Create)))
       {
         sw.Write(docText);
       }
     }
   }
{{< /highlight >}}

## Aspose.Words

Below is the code example of searching and replacing text in Document part using Aspose.Words.

{{< highlight csharp >}}
 string FilePath = @"..\..\..\..\Sample Files\";
 string fileName = FilePath + "Search and Replace Text.docx";
 Document doc = new Document(fileName);
 Regex regex = new Regex("Hello World!", RegexOptions.IgnoreCase);
 doc.Range.Replace(regex, "Hi Everyone!");
 doc.Save(fileName);
{{< /highlight >}}

## Download Running Example

- [CodePlex](https://asposewordsopenxml.codeplex.com/releases/view/620544)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/AsposeWordsVsOpenXMLv1.2)
- [Code.MSDN](https://code.msdn.microsoft.com/Code-Comparison-of-Common-4ffff4d7#content)

## Download Sample Code

- [CodePlex](https://archive.codeplex.com/?p=asposewordsopenxml#Aspose.Words%20VS%20OpenXML/Search%20and%20Replace%20Text/)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose.Words%20Vs%20OpenXML%20Words/Aspose.Words%20VS%20OpenXML/Search%20and%20Replace%20Text)
- [Code.MSDN](https://code.msdn.microsoft.com/Code-Comparison-of-Common-4ffff4d7/view/SourceCode#content)

{{% alert color="primary" %}} 

For more information about Aspose.Words features please visit [Find and Replace](https://docs.aspose.com/words/net/find-and-replace/)

{{% /alert %}}
