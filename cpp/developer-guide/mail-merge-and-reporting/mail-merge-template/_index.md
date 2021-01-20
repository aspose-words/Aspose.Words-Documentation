---
title: Mail Merge Template
type: docs
description: "Aspose.Words for C++ provides the ability to create a mail merge template to define fixed content in output documents, and then generate merge documents using the merge fields."
keywords: "create mail merge template с++"
weight: 10
url: /cpp/mail-merge-template/
---

It is common to use a merge template as the base document for a mail merge operation either if it is a simple mail merge or mail merge with regions. Mail merge with regions is more powerful and popular than the simple mail merge. Simple mail merge is considered as a particular case of mail merge with regions where the region is the entire document. All is explained in the next article “Types of Mail Merge Operation” in more detail.

The template ensures that the text in the output merged document is formatted correctly, and the mail merge operation guarantees that the text from the data source is correctly entered into the merge template.

Aspose.Words provides the ability to create a mail merge template to define fixed content and then generate merge documents using the merge fields. Thus, the merge template will have the necessary text, which is the same in all of the output documents, and the merge fields to fill in the changing content. As a result, information from the specified data source will be added to the merge template through these fields during the generation of the merged document.

## What is a Mail Merge Template

A mail merge template is a personalized document that contains the fixed data and the merged fields where you want the variable text to be. A merge template can be in any format that supports fields, for example, DOC, DOCX, DOT, DOTX, RTF. In addition, you can also use the mustache template that is explained in the article “Mustache Template Syntax” in more detail.

You can create a merge template to be a model for new documents, and it should include the main text that needs to be the same for each version of the merged document. Adding merge fields inside the template will represent the personalization data such as names or addresses that are fetched from a data source. A mail merge operation will automatically insert the personalization data from your data source to your merge template document.

In addition, you can add a mail merge region in your template by inserting two mail merge fields to mark the beginning and the end of the mail region. The next article “Types of Mail Merge Operation” explains that in more detail.

## Create a Mail Merge Template

You can create a template and add specific merge fields to it, that will be replaced by the values from the data source either manually, for example, using Microsoft Word, or programmatically using Aspose.Words. In this article, we will look at the programmatic way of creating a template.

Use the [DocumentBuilder](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder) class to create the required merge template using Aspose.Words. You can include a text, a merge field, and a line break in such a template using the [InsertTextInput](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a31701c26e682882d440209882ab0772d), [InsetField](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a09e64cedb9555e7c5ce2f8bcfb8f06bb), and [InsertParagraph](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a769415e94c5e296c514617ae164be013) methods.

The following code example shows how to create a mail merge template:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeTemplate-CreateMailMergeTemplate.cpp" >}}

The picture below shows the created template:

<img src="mail_merge_template_1.png" alt="mail_merge_template" style="width:650px"/>

## Customize a Mail Merge Template Properties

Aspose.Words allows you to customize your template through many properties. Template customization will be described below through an example of customizing some properties of images and text.

### Customize Image Properties

You can specify the image properties using the [ImageFieldMergingArgs](https://apireference.aspose.com/words/cpp/class/aspose.words.mail_merging.image_field_merging_args/) class.

The following code example shows how to specify the image file name and image size:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-ImageFieldMerging.cpp" >}}

### Customize Text Properties

You can use the [Text](https://apireference.aspose.com/words/cpp/class/aspose.words.mail_merging.field_merging_args#afcf7795bc8948a4826cf9b1538841560) property to insert text into the document for the current merge field. Also, you can change the formatting of texts and paragraphs inside your template using [Font](https://apireference.aspose.com/words/cpp/class/aspose.words.font/) and [ParagraphFormat](https://apireference.aspose.com/words/cpp/class/aspose.words.paragraph_format) classes. You can handle the text to be inserted before or after the merge field by using the [TextBefore](https://apireference.aspose.com/words/cpp/class/aspose.words.fields.field_merge_field#a6bd45fd1328fdf4fe3e7e9a3c196902e) and [TextAfter](https://apireference.aspose.com/words/cpp/class/aspose.words.fields.field_merge_field#aa8409b782b8d34c8ee43c0ad10858c19) properties that are included in the [FieldMergeField](https://apireference.aspose.com/words/cpp/class/aspose.words.fields.field_merge_field/) class.

The following code example shows how to insert Check Boxes or HTML during mail merge operation:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Data/Mail-Merge/Template.doc).

You can also check the implementation of the HandleMergeField class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/cpp/Mail-Merge/MailMergeFormFields.cpp).

{{% /alert %}}

## See Also

* For more details about how to create templates in Microsoft Word manually, please check the [“Create a Template”](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) article in the Microsoft Documentation
