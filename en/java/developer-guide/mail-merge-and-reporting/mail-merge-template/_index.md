---
title: Mail Merge Template in Java
second_title: Aspose.Words for Java
articleTitle: Mail Merge Template
linktitle: Mail Merge Template
type: docs
description: "Create a Mail Merge template to define fixed content in output documents, and then generate merge documents using the merge fields in Java."
keywords: "create Mail Merge template Java, Mail Merge Java"
weight: 10
url: /java/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

It is common to use a merge template as the base document for a Mail Merge operation either if it is a simple Mail Merge or Mail Merge with regions. Mail merge with regions is more powerful and popular than the simple mail merge. A simple Mail Merge is considered as a particular case of Mail Merge with regions where the region is the entire document. All is explained in the next article “Types of Mail Merge Operation” in more detail.

The template ensures that the text in the output merged document is formatted correctly, and the Mail Merge operation guarantees that the text from the data source is correctly entered into the merge template.

Aspose.Words provides the ability to create a Mail Merge template to define fixed content and then generate merge documents using the merge fields. Thus, the merge template will have the necessary text, which is the same in all of the output documents, and the merge fields to fill in the changing content. As a result, information from the specified data source will be added to the merge template through these fields during the generation of the merged document.

## What is a Mail Merge Template

A Mail Merge template is a personalized document that contains the fixed data and the merged fields where you want the variable text to be. A merge template can be in any format that supports fields, for example, DOC, DOCX, DOT, DOTX, RTF. In addition, you can also use the mustache template that is explained in the article “Mustache Template Syntax” in more detail.

You can create a merge template to be a model for new documents, and it should include the main text that needs to be the same for each version of the merged document. Adding merge fields inside the template will represent the personalization data such as names or addresses that are fetched from a data source. A Mail Merge operation will automatically insert the personalization data from your data source to your merge template document.

In addition, you can add a Mail Merge region in your template by inserting two Mail Merge fields to mark the beginning and the end of the mail region. The next article “Types of Mail Merge Operation” explains that in more detail.

## Create a Mail Merge Template

You can create a template and add specific merge fields to it, that will be replaced by the values from the data source either manually, for example, using Microsoft Word, or programmatically using Aspose.Words. In this article, we will look at the programmatic way of creating a template.

Use the [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) class to create the required merge template using Aspose.Words. You can include a text, a merge field, and a line break in such a template using the [InsertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput(java.lang.String,int,java.lang.String,java.lang.String,int)), [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField(int,boolean)), and [InsertParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertParagraph()) methods.

The following code example shows how to create a Mail Merge template:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeTemplate-CreateMailMergeTemplate.java" >}}

The picture below shows the created template:

<img src="mail-merge-template-1.png" alt="mail_merge_template_aspose_words_java" style="width:650px"/>

## Customize a Mail Merge Template Properties

Aspose.Words allows you to customize your template through many properties. Template customization will be described below through an example of customizing some properties of images and text.

### Customize Image Properties

You can specify the image properties using the [ImageFieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/imagefieldmergingargs/) class. Note that you can insert an image from a database as it is described in [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Mail_Merge_And_Reporting/WorkingWithFields.java#L226).

The following code example shows how to specify the image file name and image size:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-ImageFieldMerging.java" >}}

### Customize Text Properties

You can use the [Text]https://reference.aspose.com/words/java/com.aspose.words/Fieldmergingargs#Text) property to insert text into the document for the current merge field. Also, you can change the formatting of texts and paragraphs inside your template using [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) and [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) classes. You can handle the text to be inserted before or after the merge field by using the [TextBefore](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#TextBefore) and [TextAfter](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#TextAfter) properties that are included in the [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) class.

The following code example shows how to insert Check Boxes or HTML during Mail Merge operation:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-MailMergeFormFields.java" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Fax.docx).

You can also check the implementation of the `HandleMergeField` class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Mail_Merge_And_Reporting/WorkingWithFields.java).

{{% /alert %}}

## See Also

* For more details about how to create templates in Microsoft Word manually, please check the [Create a Template](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) article in the Microsoft Documentation
