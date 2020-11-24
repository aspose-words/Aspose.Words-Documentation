---
title: Search for and Replace text
type: docs
weight: 90
url: /net/search-for-and-replace-text/
---

## VSTO

{{< highlight csharp >}}
Word.Application wordApp = Application;
wordApp.Documents.Open("Search and Replace.doc");
object replaceAll = Word.WdReplace.wdReplaceAll;
this.Application.Selection.Find.ClearFormatting();
this.Application.Selection.Find.Text = "find me";
this.Application.Selection.Find.Replacement.ClearFormatting();
this.Application.Selection.Find.Replacement.Text = "Found";
this.Application.Selection.Find.Execute(
	ref missing, ref missing, ref missing, ref missing, ref missing,
	ref missing, ref missing, ref missing, ref missing, ref missing,
	ref replaceAll, ref missing, ref missing, ref missing, ref missing);
{{< /highlight >}}

## Aspose.Words

{{< highlight csharp >}}
Document doc = new Document("Search and Replace.doc");
doc.Range.Replace("find me", "found", false, true);
doc.Save("Search and Replace.doc");
{{< /highlight >}}

## Download Sample Code

- [Codeplex](http://goo.gl/D3Jmkl)
- [Github](https://github.com/asposemarketplace/Aspose_for_VSTO/releases/download/Aspose.Words1.0/Search.for.and.Replace.text.Asose.Words.zip)
- [Bitbucket](https://bitbucket.org/asposemarketplace/aspose-for-vsto/downloads/Search%20for%20and%20Replace%20text%20\(Asose.Words\).zip)
