---
title: Extend and Contribute to CRM AutoMerge
type: docs
weight: 10
url: /net/extend-and-contribute-to-crm-automerge/
---

You can download the latest source code at:

- [CodePlex](https://asposenetcrm.codeplex.com/SourceControl/latest#Aspose .Net AutoMerge/Source Code/Aspose .NET AutoMerge 2.0.0/).
- [GitHub](https://github.com/asposemarketplace/asposenetcrm/tree/master/Aspose%20.Net%20AutoMerge/Source%20Code/Aspose%20.NET%20AutoMerge%202.0.0).
- [BitBucket](https://bitbucket.org/asposemarketplace/aspose-.net-for-dynamics-crm/src/7ce93ebc181bba2b22539bfe183c68872f812070/Aspose%20.Net%20AutoMerge/Source%20Code/Aspose%20.NET%20AutoMerge%202.0.0/?at=master).
- [SourceForge](http://sourceforge.net/p/asposenetcrm/code/ci/master/tree/Aspose%20.Net%20AutoMerge/Source%20Code/Aspose%20.NET%20AutoMerge%202.0.0/).
- [Code.MSDN](https://code.msdn.microsoft.com/Aspose-NET-AutoMerge-v2-9b2c3d62/view/SourceCode#content).

In this scenario we have used Aspose.Words.dll to generate document from a template. we have defined a custom workflow assembly that can be used with Workflows and Dialogs in CRM.

- Please Notice the Input and Output parameters that would be used by the 'Generate Document Class': 

{{< highlight csharp >}}
[RequiredArgument]
[Input("Document Template")]
[ReferenceTarget("aspose_documenttemplate")]
public InArgument<EntityReference> DocumentTemplateId { get; set; }
[Output("Attachment")]
[ReferenceTarget("annotation")]
public OutArgument<EntityReference> OutputAttachmentId { get; set; }
{{< /highlight >}}

- Once we have the Document Template Id, we can retrieve the Template in word document format from this template.
- Now we need to get all the fields name from the Template, so that we can retrieve this data from CRM and generate document. 

{{< highlight csharp >}}
byte[] DocumentBody = Convert.FromBase64String(Note["documentbody"].ToString());
MemoryStream fileStream = new MemoryStream(DocumentBody);
Document doc = new Document(fileStream);
string[] fields = doc.MailMerge.GetFieldNames();
{{< /highlight >}}

- Retrieve the Data from CRM and Execute MailMerge on Document 

{{< highlight csharp >}}
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
doc.Save(UpdateDoc, SaveFormat.Docx);
 // The SaveFormat is assigned on the basis of Input Parameters.
{{< /highlight >}}

- Once the Document is generated from the Template, we can easily create an Attachment and use it. 

{{< highlight csharp >}}
Entity NewNote = new Entity("annotation");
NewNote.Attributes.Add("objectid", new EntityReference(PrimaryEntityName, PrimaryEntityId));
NewNote.Attributes.Add("subject", FileName != "" ? FileName : "Aspose .NET AutoMerge Created Document." + saveAs);
NewNote.Attributes.Add("documentbody", encodedData);

// Set the type of attachment
NewNote.Attributes.Add("mimetype", @"application/vnd.openxmlformats-officedocument.wordprocessingml.document");
NewNote.Attributes.Add("notetext", "Document Created using template");

// Set the File Name
NewNote.Attributes.Add("filename", FileName != "" ? FileName : "Aspose .NET AutoMerge Created Document." + saveAs);
Guid NewNoteId = service.Create(NewNote);
OutputAttachmentId.Set(executionContext, new EntityReference("annotation", NewNoteId));
{{< /highlight >}}

**Please Note:** This Add-on is Open source. The Scenario we have created and resolved the issue may differ from the end user. You can download the latest source code and update it according to your business needs.
