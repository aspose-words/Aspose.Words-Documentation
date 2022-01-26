---
title: Extend and Contribute to CRM Quote Generator
description: "How to defined a custom workflow using Aspose.Words to convert HTML to word and Attach Generated Quotation with Quote."
type: docs
weight: 10
url: /net/extend-and-contribute-to-crm-quote-generator/
---

You can download the latest source code at:

- [CodePlex](https://www.microsoft.com/?p=asposenetcrm).
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Dynamics%20CRM/Aspose%20.NET%20Quote%20Generator).
- [Code.MSDN](https://docs.microsoft.com/samples/browse/?redirectedfrom=MSDN-samples).

Below code demonstrate the functionality to convert HTML to word and Attach Generated Quotation with Quote.

{{< highlight csharp >}}
/// Generate Quote from Editor HTML
QuoteName = (String.IsNullOrEmpty(QuoteName) ? "Aspose .NET Quote Generator" : QuoteName);
Stream stream = GenerateStreamFromString(editor1.InnerText);
LoadOptions loadOptions = new LoadOptions();
loadOptions.LoadFormat = LoadFormat.Html;
Document myDoc = new Document(stream, loadOptions);
MemoryStream memStream = new MemoryStream();
myDoc.Save(memStream, SaveOptions.CreateSaveOptions(SaveFormat.Docx));
/// Attach Generated Quotation with Quote
byte[] byteData = memStream.ToArray();

// Encode the data using base64.
string encodedData = System.Convert.ToBase64String(byteData);
Entity NewNote = new Entity("annotation");

// Im going to add Note to entity
NewNote.Attributes.Add("objectid", new EntityReference("quote", QuoteId));
NewNote.Attributes.Add("subject", QuoteName);

// Set EncodedData to Document Body
NewNote.Attributes.Add("documentbody", encodedData);

// Set the type of attachment
NewNote.Attributes.Add("mimetype", @"application/vnd.openxmlformats-officedocument.wordprocessingml.document");
NewNote.Attributes.Add("notetext", "Document Created using template");

// Set the File Name
NewNote.Attributes.Add("filename", QuoteName + ".docx");
Guid NewNoteId = Service.Create(NewNote);
if (NewNoteId != Guid.Empty)
    LBL_Message.Text = "Successfully added to Quote";
{{< /highlight >}}

**Please Note:** This Add-on is Open source. The Scenario we have created and resolved the issue may differ from the end user. You can download the latest source code and update it according to your business needs.

{{% alert color="primary" %}} 

For more details, visit [Convert a Document to HTML with roundtrip information](/words/net/convert-a-document-to-html-mhtml-or-epub/#convert-a-document-with-round-trip-information).

{{% /alert %}}
