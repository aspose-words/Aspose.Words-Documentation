---
title: Convert to MHTML Email
type: docs
weight: 50
url: /net/convert-to-mhtml-email/
---

**Aspose.Words** can save any document in **MHTML** (Web Archive) format. This makes it very easy to use **Aspose.Words** and **Aspose.Email** together to generate and send email messages with rich content. For example, you can load a predefined DOC, OOXML or RTF document into Aspose.Words, fill it with data, save as MHTML and then email using Aspose.Email.

{{< highlight csharp >}}
string FilePath = @"..\..\..\Sample Files\";
string FileName = FilePath + "Converting Document.docx";

// Load the document into Aspose.Words.
Document doc = new Document(FileName);

// Save into a memory stream in MHTML format.
Stream stream = new MemoryStream();
doc.Save(stream, SaveFormat.Mhtml);

// Rewind the stream to the beginning so Aspose.Email can read it.
stream.Position = 0;

// Create an Aspose.Network MIME email message from the stream.
MailMessage message = MailMessage.Load(stream, new MailMessageLoadOptions(MessageFormat.Mht));
message.From = "from@gmail.com";
message.To = "to@gmail.com";
message.Subject = "Aspose.Words + Aspose.Email MHTML Test Message";

// Send the message using Aspose.Email
SmtpClient client = new SmtpClient();
client.Host = "smtp.gmail.com";
client.Port = 587;
client.AuthenticationMethod = SmtpAuthentication.Auto;
client.Send(message);
{{< /highlight >}}

## **Download Sample Code**

- [Codeplex](https://asposeopenxml.codeplex.com/releases/view/617779)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MissingFeaturesofOpenXMLWordsv1.1)
- [Code.MSDN](https://code.msdn.microsoft.com/Missing-Features-in-6a2c882b)
