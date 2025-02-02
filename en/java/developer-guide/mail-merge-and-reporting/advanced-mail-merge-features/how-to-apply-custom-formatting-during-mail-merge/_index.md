---
title: How to  Apply Custom Formatting during Mail Merge
second_title: Aspose.Words for Java
articleTitle: How to  Apply Custom Formatting during Mail Merge
linktitle: How to  Apply Custom Formatting during Mail Merge
type: docs
description: "Apply custom formatting during a Mail Merge operation using Java."
weight: 60
url: /java/how-to-apply-custom-formatting-during-mail-merge/
timestamp: 2024-01-27-14-07-04
---

The [MailMerge](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/) class provides two events that could be very useful in expanding Mail Merge capabilities. The [setFieldMergingCallback(IFieldMergingCallback)](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#FieldMergingCallback) property accepts a class which implements the methods [fieldMerging(FieldMergingArgs)](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/#fieldMerging-com.aspose.words.FieldMergingArgs) and [imageFieldMerging(ImageFieldMergingArgs)](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/#imageFieldMerging-com.aspose.words.ImageFieldMergingArgs). These can be used to implement custom control over the Mail Merge process.

The **fieldMerging(FieldMergingArgs)** event occurs during Mail Merge when a simple Mail Merge field is encountered in the document. This gives further control over the Mail Merge and you can perform any actions when the event occurs. This method is wrapped in a class that implements the [IFieldMergingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/) interface and accepts a [FieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/fieldmergingargs/) object that provides data for the corresponding event.

The code example given below demonstrates how to implement custom logic in the `MergeField` event to apply cell formatting.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomFormattingDuringMailMerge-ApplyCustomFormattingDuringMailMerge.java" >}}
