---
title: Get and Set Bookmark Text
type: docs
weight: 150
url: /net/get-and-set-bookmark-text/
---

## OpenXML

Below is the code example for getting and setting Bookmark text in word document using OpenXML SDK.

{{< highlight csharp >}}
  string FilePath = @"..\..\..\..\Sample Files\";
  string File = FilePath + "Get and Set Bookmark Text - OpenXML.docx";
  IDictionary<String, BookmarkStart> bookmarkMap = new Dictionary<String, BookmarkStart>();
  using (WordprocessingDocument wordDocument = WordprocessingDocument.Open(File, true))
  {
    foreach (BookmarkStart bookmarkStart in wordDocument.MainDocumentPart.Document.Body.Descendants<BookmarkStart>())
    {
      // foreach (BookmarkStart bookmarkStart in file.MainDocumentPart.RootElement.Descendants<BookmarkStart>())
      //{
           bookmarkMap[bookmarkStart.Name] = bookmarkStart;
           foreach (BookmarkStart bookmark in bookmarkMap.Values)
           {
             Run bookmarkText = bookmark.NextSibling<Run>();
             if (bookmarkText != null)
             {
               bookmarkText.GetFirstChild<Text>().Text = "Test";
             }
           }
     }
   }
{{< /highlight >}}

## Aspose.Words

Below is the code example of get and set Bookmark text using Aspose.Words

{{< highlight csharp >}}
 string FilePath = @"..\..\..\..\Sample Files\";
 string File = FilePath + "Get and Set Bookmark Text - Aspose.docx";
 Document doc = new Document(File);

 // Use the indexer of the Bookmarks collection to obtain the desired bookmark.
 Bookmark bookmark = doc.Range.Bookmarks["MyBookmark"];

 // Get the name and text of the bookmark.
 string name = bookmark.Name;
 string text = bookmark.Text;

 // Set the name and text of the bookmark.
 bookmark.Name = "RenamedBookmark";
 bookmark.Text = "This is a new bookmarked text.";
 doc.Save(File);
{{< /highlight >}}

## Download Running Example

- [CodePlex](https://archive.codeplex.com/?p=asposewordsopenxml)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/AsposeWordsVsOpenXMLv1.2)


## Download Sample Code

- [CodePlex](https://archive.codeplex.com/?p=asposewordsopenxml#Aspose.Words%20VS%20OpenXML/Extract%20Image/)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose.Words%20Vs%20OpenXML%20Words/Aspose.Words%20VS%20OpenXML/Get%20and%20Set%20Bookmark%20Text)

{{% alert color="primary" %}} 

For more information about Aspose.Words feature please visit [Bookmarks in Aspose.Words](https://docs.aspose.com/words/net/working-with-bookmarks/)

{{% /alert %}}
