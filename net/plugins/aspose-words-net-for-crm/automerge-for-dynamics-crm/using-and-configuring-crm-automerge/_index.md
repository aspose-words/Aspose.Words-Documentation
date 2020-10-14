---
title: Using and Configuring CRM AutoMerge
type: docs
weight: 20
url: /net/using-and-configuring-crm-automerge/
---

### Create Template and Upload

Below are the steps to create and upload Template in CRM

- Open word and create a template.
- Insert MailMerge fields for data comming from CRM. 

![todo:image_alt_text](using-and-configuring-crm-automerge_1)

- Make sure that the Field name matches exactly with the CRM field. 

![todo:image_alt_text](using-and-configuring-crm-automerge_2)

- Templates are specific to use with individual entity. 

![todo:image_alt_text](using-and-configuring-crm-automerge_3)

- Once the Template is created, Open Document Template entity in CRM and Create a New record.
- Give the name of the template and attach the created document in the attachment. 

![todo:image_alt_text](using-and-configuring-crm-automerge_4)

### How to Configure Workflow

This section shows how Aspose .NET AutoMerge can be used with a workflow.

- Open Settings -> Processes within CRM and hit New.
- Enter Name and Entity and select category as Workflow. (Make sure your template is designed for the same entity you have selected.)
- Use the window to create your own workflow.
- If you want to use “Aspose AutoMerge” functionality Go to Add Step --> Aspose AutoMerge 

![todo:image_alt_text](/download/thumbnails/2589863/1303366909)

Here you will see all available options to use with Aspose AutoMerge:

#### Create Document

Select this option to create a new document based on the template.

![todo:image_alt_text](using-and-configuring-crm-automerge_5)

- **Enable Logging:** It will log all the steps performed by the plugin.
- **Log File Directory:** It will contains the path where the Log information is written. (If it is Empty, default path would be "C:\Aspose Logs")
- **Document Template:** Use this lookup field to select Template. This template would be the base of your generated document.
- **Save with primary record:** If it is True the generated document with automatically attached with primary entity record.
- **Save As:** Provide the output format of the file in which the document should be generated and saved. Possible values are: docx, bmp, doc, html, jpeg, pdf, png, rtf, text, txt (Default: docx).
- **License File Path:** If you already own Aspose License for Aspose.Words use this attribute to use the license to generate full version of the document.

#### Attach to Email

Select this option to attach the created document to an email. This step is used with combination of "Send Email" described below. Please notice that you can select an existing email as well as you can create an email within your workflow.

![todo:image_alt_text](using-and-configuring-crm-automerge_6)

- **Enable Logging:** It will log all the steps performed by the plugin.
- **Log File Directory:** It will contains the path where the Log information is written. (If it is Empty, default path would be "C:\Aspose Logs")
- **Email:** Use this lookup to select an already created email. (The email can be from existing emails or created email under the same workflow)
- **Attachment:** Select the created Output Attachment file to attach to the email.

#### Attach To Letter

Select this step if you want to attach the document to Letter. Attach to letter works same like Attach to Email and it will use the letter activity.

![todo:image_alt_text](using-and-configuring-crm-automerge_7)

- **Enable Logging:** It will log all the steps performed by the plugin.
- **Log File Directory:** It will contains the path where the Log information is written. (If it is Empty, default path would be "C:\Aspose Logs")
- **Letter:** Use this lookup to select an already created Letter. (This letter can be from existing letters or created letter under the same workflow)
- **Attachment:** Select the created Output Attachment file to attach to the letter.

#### Attach To Entity

Select this step if you want to attach the document to any record. Attach to any record works same like Attach to Email/Letter.

![todo:image_alt_text](using-and-configuring-crm-automerge_8)

- **Enable Logging:** It will log all the steps performed by the plugin.
- **Log File Directory:** It will contains the path where the Log information is written. (If it is Empty, default path would be "C:\Aspose Logs")
- **Attachment:** Select the created Output Attachment file to attach to the Entity.
- **Entity Logical Name:** Provide the logical name of the Entity here. (Like: account, contact, lead etc)
- **Record Id:** Provide the Record Primary GUID here to which the document is attached. Please note that it will not create a copy of document but attach the provided document directly.

#### Send Email

Use this step to send the email, this is used with the Attach to Email step where the document is attached with the email and sent.

![todo:image_alt_text](using-and-configuring-crm-automerge_9)

- **Enable Logging:** It will log all the steps performed by the plugin.
- **Log File Directory:** It will contains the path where the Log information is written. (If it is Empty, default path would be "C:\Aspose Logs")
- **Email:** select the email you want to send.

#### Generate Copy of Document

Use this step to generate a copy of Document. It is usually used when you want to keep the document with the primary record as well as attach it under any other record.

![todo:image_alt_text](using-and-configuring-crm-automerge_10)

- **Enable Logging:** It will log all the steps performed by the plugin.
- **Log File Directory:** It will contains the path where the Log information is written. (If it is Empty, default path would be "C:\Aspose Logs")
- **Attachment:** Select the generated document.

#### Save To Cloud Storage

Use this step if you would like to upload the generated document on Cloud Storage.

![todo:image_alt_text](using-and-configuring-crm-automerge_11)

- **Enable Logging:** It will log all the steps performed by the plugin.
- **Log File Directory:** It will contains the path where the Log information is written. (If it is Empty, default path would be "C:\Aspose Logs")
- **Product URI:** Provide the cloud api reference, by default Aspose Cloud api reference is provided.
- **App SID:** Enter the App SID from your Cloud Storage.
- **App Key:** Enter the App Key from Cloud Storage.
- **Attachment:** Select the generated document.

#### Delete Temp Document

Select this step if you want to delete the generated document or Generate copy of document.

![todo:image_alt_text](using-and-configuring-crm-automerge_12)

- **Enable Logging:** It will log all the steps performed by the plugin.
- **Log File Directory:** It will contains the path where the Log information is written. (If it is Empty, default path would be "C:\Aspose Logs")
- **Attachment:** Select the document here.

### Execute Workflow and Ouput

Execution of workflow is depends on what options you have selected while configuring the workflow.

- Open Contact record and click on Run Workflow. 

![todo:image_alt_text](using-and-configuring-crm-automerge_13)

- Select your workflow and click OK. 

![todo:image_alt_text](using-and-configuring-crm-automerge_14)

- Workflow is executed successfully.
- Under All Activities the email and letter records are found. 

![todo:image_alt_text](using-and-configuring-crm-automerge_15)

- Open Email and view the attachments. 

![todo:image_alt_text](using-and-configuring-crm-automerge_16)

- Download the attachment and open in Microsoft Word. You will see the document created from the template. 

![todo:image_alt_text](using-and-configuring-crm-automerge_17)

- Similarly, go back to All activities and you can see the same document attached under letter. 

![todo:image_alt_text](using-and-configuring-crm-automerge_18)
