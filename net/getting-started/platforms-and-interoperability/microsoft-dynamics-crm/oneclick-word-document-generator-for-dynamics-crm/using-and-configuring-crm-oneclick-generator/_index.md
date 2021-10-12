---
title: Using and Configuring CRM OneClick Word Document Generator
type: docs
weight: 20
url: /net/using-and-configuring-crm-oneclick-generator/
aliases: [/net/using-and-configuring-crm-oneclick-word-document-generator/]
---

## Create Template and Add in CRM

- Open word and create a template.
- Insert MailMerge fields for data comming from CRM. 

![using-and-configuring-crm-oneclick-word-document-generator-1](1)

- Make sure that the Field name matches exactly with the CRM field.
- Templates are specific to use with individual entity. 

![using-and-configuring-crm-oneclick-word-document-generator-1](2)

- Once the Template is created, Open OneClick Word Configuration entity in CRM and Create a New record.
- Give the name of the template, select entity the template is defined for and attach the created document in the attachment. 

![using-and-configuring-crm-oneclick-word-document-generator-3](3)

## Generate Document from Ribbon Button

- Open Record where you want to generate document. (Make sure a template is already attached in the configuration for that entity)
- Click OneClick Word button from the ribbon. 

![using-and-configuring-crm-oneclick-word-document-generator-4](4)

- From the Popup: Select template, Output Format, File Name and Action. 

![using-and-configuring-crm-oneclick-word-document-generator-5](5)

- Check the Downloaded file or Notes, on basis of the selection. 

![using-and-configuring-crm-oneclick-word-document-generator-6](6)

## Configure OneClick Buttons and use them

- In Order to use OneClick Button directly from Form, Open Form Customization. 

![using-and-configuring-crm-oneclick-word-document-generator-7](7)

- Insert WebResource where you want to add OneClick Buttons.
- Select OpenButtonPage in Webresource and give it a Name.
- Configure the Buttons in Data field in the following sample. 

![using-and-configuring-crm-oneclick-word-document-generator-8](8)

- Use seperate line for each button and use the following syntax: 
  - Syntax: &lt;Template Name&gt;|&lt;Action: Download/Note&gt;|&lt;Output Format&gt;|&lt;Output FileName&gt;
  - Example: Demo|Download|docx|My Downloaded File
- Save and publish the customization.
- The button is available on the form. 

![using-and-configuring-crm-oneclick-word-document-generator-9](9)
