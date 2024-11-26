---
title: Insert Checkboxes, Text Input or Images during Mail Merge
second_title: Aspose.Words for .NET
articleTitle: Insert Checkboxes, Text Input, or Images
linktitle: Insert Checkboxes, Text Input, or Images
description: "Insert checkboxes or text input fields during Mail Merge using C#. Also insert images from a Database during Mail Merge in C#."
type: docs
weight: 40
url: /net/insert-checkboxes-text-input-or-images-mail-merge/
aliases: [/net/insert-checkboxes-html-or-images-during-mail-merge/]
timestamp: 2024-07-11-08-07-06
---

The merge engine takes a document as input, looks for `MERGEFIELD` fields in it, and replaces them with the data obtained from the data source. Typically, plain text and HTML are inserted, but Aspose.Words users can also generate a document that handles more unusual scenarios for Mail Merge fields.

Powerful Aspose.Words functionality allows you to extend the Mail Merge process:

- insert checkboxes and text input form fields into the document during a mail merge
- insert images from any custom storage (files, BLOB fields, etc.)

## Insert Checkboxes and Text Input during Mail Merge

Sometimes it is necessary to perform a Mail Merge operation so that not text is substituted in the merge field, but a checkbox or text input field. Even though this is not the most common scenario, it is very handy for some tasks.

The following screenshot of a Word document shows a template with merge fields:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

This screenshot of the Word document below shows the already generated document:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

Note that some fields were replaced with plain text, some fields were replaced with checkbox form fields, and the `Subject` field was replaced with a text input field.

{{% /alert %}}

The following code example shows how to insert checkboxes and input text fields into a document during a mail merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-field.cs" >}}

## Insert Images during Mail Merge

When performing a Mail Merge operation, you can insert images from the database into the document using special image Mail Merge fields. The image Mail Merge field is a merge field named Image:MyFieldName.

### Insert Images from a Database

During a mail merge, when an image Mail Merge field is encountered in a document, the [FieldMergingCallback](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/fieldmergingcallback/) event is fired. You can respond to this event to return a filename, stream, or image object to the Mail Merge engine so it can be inserted into the document.

The following code example shows how to insert images stored in a database BLOB field into a report:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-from-blob.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-image-field-from-blob.cs" >}}

### Set Image Properties during Mail Merge

While merging an image merge field, you may sometimes need to control various image properties, such as [WrapType](https://reference.aspose.com/words/net/aspose.words.drawing/wraptype/).

Currently, using [ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/) you can only set image width or height properties, respectively. To overcome this issue, Aspose.Words provides the [Shape](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/shape/) property, which facilitates to get full control over the inserted image or any other shape.

The following code example shows how to set various image properties:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-field.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "image-field-merging-handler.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "data-source-root.cs" >}}
