---
title: Extend CRM OneClick Word Document Generator
second_title: Aspose.Words for .NET
articleTitle: Extend and Contribute to CRM OneClick Word Document Generator
linktitle: Extend and Contribute to CRM OneClick Word Document Generator
description: "How to defined a custom workflow using Aspose.Words to generate document from template in C#."
type: docs
weight: 10
url: /net/extend-and-contribute-oneclick-generator/
aliases: [/net/extend-and-contribute-to-crm-oneclick-word-document-generator/]
---

You can download the latest source code at:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Dynamics%20CRM/Aspose%20OneClick%20Word%20Document%20Generator).

Below code demonstrate the functionality to generate document from template.

{{< highlight csharp >}}
Entity Note = Notes[0];
if (Note.Contains("documentbody"))
{
	byte[] DocumentBody = Convert.FromBase64String(Note["documentbody"].ToString());
	MemoryStream fileStream = new MemoryStream(DocumentBody);
	Document doc = new Document(fileStream);
	string[] fields = doc.MailMerge.GetFieldNames();
	Entity PrimaryEntity = Service.Retrieve(EntityName, EntityId, new ColumnSet(fields));
	if (PrimaryEntity != null)
	{
	string[] values = new string[fields.Length];
	for (int i = 0; i < fields.Length; i++)
	{
		if (PrimaryEntity.Contains(fields[i]))
		{
			if (PrimaryEntity[fields[i]].GetType() == typeof(OptionSetValue))
				values[i] = PrimaryEntity.FormattedValues[fields[i]].ToString();
			else if (PrimaryEntity[fields[i]].GetType() == typeof(EntityReference))
				values[i] = ((EntityReference)PrimaryEntity[fields[i]]).Name;
			else
				values[i] = PrimaryEntity[fields[i]].ToString();
		}
		else
			values[i] = "";
	}
	doc.MailMerge.Execute(fields, values);
	MemoryStream UpdateDoc = new MemoryStream();
	switch (Format.ToLower())
	{
		case "bmp":
			doc.Save(UpdateDoc, SaveFormat.Bmp);
			break;
		case "doc":
			doc.Save(UpdateDoc, SaveFormat.Doc);
			break;
		case "docx":
			doc.Save(UpdateDoc, SaveFormat.Docx);
			break;
		case "html":
			doc.Save(UpdateDoc, SaveFormat.Html);
			break;
		case "jpeg":
			doc.Save(UpdateDoc, SaveFormat.Jpeg);
			break;
		case "pdf":
			doc.Save(UpdateDoc, SaveFormat.Pdf);
			break;
		case "png":
			doc.Save(UpdateDoc, SaveFormat.Png);
			break;
		case "rtf":
			doc.Save(UpdateDoc, SaveFormat.Rtf);
			break;
		case "text":
		case "txt":
			doc.Save(UpdateDoc, SaveFormat.Text);
			break;
		default:
			doc.Save(UpdateDoc, SaveFormat.Docx);
			break;
	}
}
{{< /highlight >}}

**Please Note:** This Add-on is Open source. The Scenario we have created and resolved the issue may differ from the end user. You can download the latest source code and update it according to your business needs.

{{% alert color="primary" %}}

For more details, visit [How to Execute Simple Mail Merge](/words/net/types-of-mail-merge-operations/#how-to-execute-simple-mail-merge).

{{% /alert %}}
