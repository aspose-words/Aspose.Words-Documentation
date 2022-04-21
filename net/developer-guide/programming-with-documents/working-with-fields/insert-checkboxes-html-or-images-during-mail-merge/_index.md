---
title: Mail Merge - Insert Checkboxes, HTML or Images
second_title: Aspose.Words for .NET
articleTitle: Insert Checkboxes, HTML or Images During Mail Merge
linktitle: Insert Checkboxes, HTML or Images During Mail Merge
description: "Mail merge practices using C#."
type: docs
weight: 40
url: /net/insert-checkboxes-html-or-images-during-mail-merge/
---

## How to Insert Checkboxes or HTML during Mail Merge

One of the important Aspose.Words feature is the reporting (mail merge) engine. The mail merge engine takes a document on input, looks for MERGEFIELD fields in it and replaces them with data obtained from the data source. Normally, simple text and HTML is inserted, but a customer asked if it is possible to generate a document where boolean data values are output as checkbox form fields.

The answer is yes - it is possible and it is very easy, thanks to the ability to extend the mail merge process using event handlers. The [MailMerge](https://apireference.aspose.com/words/net/aspose.words.mailmerging/mailmerge) object provides the **MergeField** and **MergeImageField** event handlers.

Other interesting examples of extending standard mail merge using event handlers are:

- Insert images from any custom storage (files, BLOB fields, etc).
- Insert text with formatting (font, size, style, etc).

This screenshot of Microsoft Word shows a template document with the merge fields: 

![insert-checkboxes-or-images-mail-merge-aspose-words](insert-checkboxes-html-or-images-during-mail-merge-1.png)

This screenshot of Microsoft Word shows the generated document. Note some fields were replaced with simple text, some fields were replaced with checkbox form fields and the Subject field was replaced with a text input form field.

![insert-checkboxes-html-or-images-mail-merge-aspose-words](insert-checkboxes-html-or-images-during-mail-merge-2.png)

Complete source code of a program that inserts checkboxes and text input form fields into a document during a mail merge.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7"  "Examples-CSharp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7"  "Examples-CSharp-Mail-Merge-MailMergeFormFields-HandleMergeField.cs" >}}

## How to Insert Images from a Database

The **MailMerge.FieldMergingCallback** event occurs during mail merge when an image mail merge field is encountered in the document. An image mail merge field is a merge field named Image:MyFieldName. You can respond to this event to return a file name, stream, or an Image object to the mail merge engine so that it is inserted into the document.

The **MailMerge.FieldMergingCallback** property accepts a class implementing the **IFieldMergingCallback** interface. This class defines the method that is called to handle the merging for the image field. The method handler receives an argument of type **ImageFieldMergingArgs**. There are three properties available **ImageFieldMergingArgs.ImageFileName**, **ImageFieldMergingArgs.ImageStream** and **ImageFieldMergingArgs.Image** to specify where the image must be taken. Set only one of these properties. The below example shows how to insert images stored in a database BLOB field into a report.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7"  "Examples-CSharp-Mail-Merge-MailMergeImageFromBlob-MailMergeImageFromBlob.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7"  "Examples-CSharp-Mail-Merge-MailMergeImageFromBlob-HandleMergeImageFieldFromBlob.cs" >}}

## Setting Image Properties during Mail Merge

While merging an image merge field, you may sometimes require controlling various image properties, in particular, **WrapType**. Currently, using **ImageFieldMergingArgs** you can only set image width or height properties, respectively. To overcome this issue, Aspose.Words provides **ImageFieldMergingArgs.Shape** property which facilitates to get full control over the image (or any other shape) being inserted.

The following code example demonstrates how to set various image properties. 

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7"  "Examples-CSharp-Mail-Merge-MailMergeImageField-MailMergeImageField.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7"  "Examples-CSharp-Mail-Merge-MailMergeImageField-ImageFieldMergingHandler.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7"  "Examples-CSharp-Mail-Merge-MailMergeImageField-DataSourceRoot.cs" >}}
