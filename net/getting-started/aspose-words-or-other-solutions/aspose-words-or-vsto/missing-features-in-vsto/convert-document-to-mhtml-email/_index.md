---
title: Convert Document to MHTML Email
type: docs
weight: 50
url: /net/convert-document-to-mhtml-email/
---

**Aspose.Words** can save any document in **MHTML** (Web Archive) format. This makes it very easy to use **Aspose.Words** and **Aspose.Email** together to generate and send email messages with rich content. For example, you can load a predefined DOC, OOXML or RTF document into Aspose.Words, fill it with data, save as MHTML and then email using Aspose.Email.

*Below is the code Example for conversion to MHTML Email:*

**C#**

{{< highlight csharp >}}

// Load the document into Aspose.Words.
string srcFileName = Path.Combine("Converting Document.docx");
Document doc = new Document(srcFileName);

// Save into a memory stream in MHTML format.
Stream stream = new MemoryStream();
doc.Save(stream, SaveFormat.Mhtml);

// Rewind the stream to the beginning so Aspose.Email can read it.
stream.Position = 0;

// Create an Aspose.Network MIME email message from the stream.
MailMessage message = MailMessage.Load(stream, MessageFormat.Mht);
message.From = "from@gmail.com";
message.To = "to@gmail.com";
message.Subject = "Aspose.Words + Aspose.Email MHTML Test Message";

// Send the message using Aspose.Email
SmtpClient client = new SmtpClient();
client.Host = "smtp.gmail.com";
client.Port = 587;
client.EnableSsl = true;
client.AuthenticationMethod = SmtpAuthentication.Auto;
client.Send(message);
{{< /highlight >}}

## Download Running Examples

- [Codeplex](https://archive.codeplex.com/?p=asposewordsvsto#Aspose.Words%20Features%20missing%20in%20VSTO/Convert%20a%20Document%20to%20MHTML%20and%20Email/)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose.Words%20Vs%20VSTO%20Word/Aspose.Words%20Features%20missing%20in%20VSTO/Convert%20a%20Document%20to%20MHTML%20and%20Email/)
- [Code.MSDN](https://code.msdn.microsoft.com/AsposeWords-Features-bfd6167c/view/SourceCode#content)

## Download Sample Code

- [Codeplex](https://asposewordsvsto.codeplex.com/releases/view/619474)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MissingFeaturesofVSTOv1.1)
- [Code.MSDN](https://code.msdn.microsoft.com/AsposeWords-Features-bfd6167c#content)

{{% alert color="primary" %}} 

For more details, visit [How to Convert a Document to MHTML and Email](https://docs.aspose.com/words/net/convert-a-document-to-mhtml-and-send-it-by-email/).

{{% /alert %}}
