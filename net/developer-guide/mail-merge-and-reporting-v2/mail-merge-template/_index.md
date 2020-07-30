---
title: Mail Merge Template
type: docs
weight: 10
url: /net/mail-merge-template/
---

It is common to use a template as the main document for a mail merge operation. The template guarantees that the text is formatted correctly, while the mail merge operation guarantees that the text is entered correctly to the output merged document.

Aspose.Words allows you to create a mail merge template to define the content of mail merge documents. Thus, your merge template will have the necessary text, which is the same in all of the output documents. To fill in changing content, you can include variables called merge fields inside the merge template, where a record from your data source will be displayed in the generated merged document.
## **What is a Mail Merge Template**
A mail merge template is a personalized document such as a standard letter, an envelope, or a mailing label. This document is used in the mail merge operation and it should include the main text which needs to be the same for each version of the merged document. You can use the merge template document as the main document to control the mail merge operation because it contains the fixed data that you want to include in every letter and it includes the merged fields where you want the variable text to be. This template has placeholders for the personalization data such as names and addresses that are fetched from a data source. A mail merge operation will automatically insert the personalization data from your data source to your merge template document.
## **How to Create a Mail Merge Template**
The main idea of creating a mail merge template is to insert specific merge fields that will be replaced by the values from the data source. If you want to perform a mail merge operation, you can create a mail merge template even manually in Word or programmatically using Aspose.Words.

Use the [DocumentBuilder class](https://apireference.aspose.com/words/net/aspose.words/documentbuilder) to create the merge template that you need. You can include a text, a merge field, and a line break into your template using the methods [InsertTextInput](https://apireference.aspose.com/words/net/aspose.words/documentbuilder/methods/inserttextinput), [InsetField](https://apireference.aspose.com/words/net/aspose.words.documentbuilder/insertfield/methods/1) and [InsertParagraph](https://apireference.aspose.com/words/net/aspose.words/documentbuilder/methods/insertparagraph).

The following code example shows how to create a mail merge template:

{{< highlight csharp >}}

 public Document CreateMailMergeTemplate()

{

    DocumentBuilder builder = new DocumentBuilder();

    // Insert a text input field the unique name of this field is "Hello", the other parameters define

    // what type of FormField it is, the format of the text, the field result and the maximum text length (0 = no limit)

    builder.InsertTextInput("TextInput", TextFormFieldType.Regular, "", "Hello", 0);

    builder.InsertField(@"MERGEFIELD CustomerFirstName \* MERGEFORMAT");

    builder.InsertTextInput("TextInput1", TextFormFieldType.Regular, "", " ", 0);

    builder.InsertField(@"MERGEFIELD CustomerLastName \* MERGEFORMAT");



    builder.InsertTextInput("TextInput1", TextFormFieldType.Regular, "", " , ", 0);



    // Inserts a paragraph break into the document

    builder.InsertParagraph();

    // Insert mail body

    builder.InsertTextInput("TextInput", TextFormFieldType.Regular, "", "Thanks for purchasing our ", 0);

    builder.InsertField(@"MERGEFIELD ProductName \* MERGEFORMAT");



    builder.InsertTextInput("TextInput", TextFormFieldType.Regular, "",

        ", please download your Invoice at ", 0);

    builder.InsertField(@"MERGEFIELD InvoiceURL \* MERGEFORMAT");



    builder.InsertTextInput("TextInput", TextFormFieldType.Regular, "",

        ". If you have any questions please call ", 0);

    builder.InsertField(@"MERGEFIELD Supportphone \* MERGEFORMAT");



    builder.InsertTextInput("TextInput", TextFormFieldType.Regular, "", ", or email us at ", 0);

    builder.InsertField(@"MERGEFIELD SupportEmail \* MERGEFORMAT");



    builder.InsertTextInput("TextInput", TextFormFieldType.Regular, "", ".", 0);



    builder.InsertParagraph();

    // Insert mail ending

    builder.InsertTextInput("TextInput", TextFormFieldType.Regular, "", "Best regards,", 0);

    builder.InsertBreak(BreakType.LineBreak);

    builder.InsertField(@"MERGEFIELD EmployeeFullname \* MERGEFORMAT");



    builder.InsertTextInput("TextInput1", TextFormFieldType.Regular, "", " ", 0);

    builder.InsertField(@"MERGEFIELD EmployeeDepartment \* MERGEFORMAT");

    return builder.Document;

}

{{< /highlight >}}
## **Customize a Merge Template**
Aspose.Words allows you to customize your merge template during a mail merge operation. The [MailMerge](https://apireference.aspose.com/words/net/aspose.words.mailmerging/mailmerge) class provides two events [FieldMerging](https://apireference.aspose.com/words/net/aspose.words.mailmerging/ifieldmergingcallback/methods/fieldmerging)[](https://apireference.aspose.com/words/net/aspose.words.mailmerging/ifieldmergingcallback/methods/fieldmerging) and [ImageFieldMerging](https://apireference.aspose.com/words/net/aspose.words.mailmerging/ifieldmergingcallback/methods/imagefieldmerging) that allow you to insert images from any custom storage and to insert text with formatting. You need to use the properties [FieldMergingArgs](https://apireference.aspose.com/words/net/aspose.words.mailmerging/fieldmergingargs) and [ImageFieldMergingArgs](https://apireference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/properties/index) to provide the input data to these events when they occur during a mail merge operation.
### **Customize Image Properties**
You can specify the image size using the ImageFieldMergingArgs properties. Note that you can insert an image from a database as it's described in [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/CSharp/Mail-Merge/MailMergeImageFromBlob.cs).

` `The following code examples show you how to specify the image size by setting the image width and the image height properties:

{{< highlight csharp >}}

 void IFieldMergingCallback.ImageFieldMerging(ImageFieldMergingArgs args)

{

    args.ImageFileName = "Image.png";

    args.ImageWidth.Value = 200;

    args.ImageHeight = new MergeFieldImageDimension(200, MergeFieldImageDimensionUnit.Percent);

}

{{< /highlight >}}

{{< highlight csharp >}}

 void IFieldMergingCallback.ImageFieldMerging(ImageFieldMergingArgs args)

{

    args.ImageFileName = "Image.png";

    args.ImageWidth = null;

    args.ImageHeight = new MergeFieldImageDimension(-1);

}

{{< /highlight >}}
### **Customize Text Properties**
You can use [FieldMergingArgs.Text](https://apireference.aspose.com/words/net/aspose.words.mailmerging/fieldmergingargs/properties/text) property to insert text into the document for the current merge field. Also, you can change the formatting of texts and paragraphs inside your template using [Font](https://apireference.aspose.com/words/net/aspose.words/font) and [ParagraphFormat](https://apireference.aspose.com/words/net/aspose.words/paragraphformat) classes. You can handle the text to be inserted before the merge field by using the FieldMergeField.TextBefore and FieldMergeField.TextAfter properties that are included in the FieldMergeField Class.

` `The following code example shows how to insert Check Boxes or HTML during mail merge operation:

{{< highlight java >}}

 // The path to the documents directory.

string dataDir = RunExamples.GetDataDir_MailMergeAndReporting(); 

string fileName = "Template.doc";

// Load the template document.

Document doc = new Document(dataDir + fileName);

// Setup mail merge event handler to do the custom work.

doc.MailMerge.FieldMergingCallback = new HandleMergeField();

// Trim trailing and leading whitespaces mail merge values

doc.MailMerge.TrimWhitespaces = false;

// This is the data for mail merge.

String[] fieldNames = new String[] {"RecipientName", "SenderName", "FaxNumber", "PhoneNumber",

    								"Subject", "Body", "Urgent", "ForReview", "PleaseComment"};

Object[] fieldValues = new Object[] {"Josh", "Jenny", "123456789", "", "Hello", "<b>HTML Body Test message 1</b>", true, false, true};

// Execute the mail merge.

doc.MailMerge.Execute(fieldNames, fieldValues);

dataDir = dataDir + RunExamples.GetOutputFilePath(fileName);

// Save the finished document.

doc.Save(dataDir);

{{< /highlight >}}

{{% alert color="primary" %}} 

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail-Merge/Template.doc). You can check the implementation of the HandleMergeField class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/CSharp/Mail-Merge/MailMergeFormFields.cs).

{{% /alert %}} 
## **See Also**
- [Work with mail merge templates in Word](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates).
- [Mail Merge Code Exmaples](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/CSharp/Mail-Merge).
