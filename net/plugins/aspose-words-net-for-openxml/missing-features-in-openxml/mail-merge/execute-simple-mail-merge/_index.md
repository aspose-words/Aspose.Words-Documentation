---
title: Execute Simple Mail Merge
type: docs
weight: 10
url: /net/execute-simple-mail-merge/
---

In order to prepare your template to perform a simple mail merge (without regions, similar to the classic mail merge available in Microsoft Word) you should just insert one or more merge fields in the places you want to be populated with data from the data source.

{{< highlight csharp >}}
string FilePath = @"..\..\..\Sample Files\";
string FileName = FilePath + "MailMerge.docx";

// Open an existing document.
Document doc = new Document(FileName);

// Fill the fields in the document with user data.
doc.MailMerge.Execute(
    new string[] { "Name", "City" },
    new object[] { "Zeeshan", "Islamabad" });

// Send the document in Word format to the client browser with an option to save to disk or open inside the current browser.
doc.Save(FileName);
{{< /highlight >}}
## **Download Sample Code**
- [Codeplex](https://asposeopenxml.codeplex.com/releases/view/617779)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MissingFeaturesofOpenXMLWordsv1.1)
- [Code.MSDN](https://code.msdn.microsoft.com/Missing-Features-in-6a2c882b)
