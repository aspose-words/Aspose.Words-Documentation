---
title: How to  Apply Custom Formatting during Mail Merge
type: docs
weight: 60
url: /java/how-to-apply-custom-formatting-during-mail-merge/
---

The [MailMerge](https://apireference.aspose.com/words/java/com.aspose.words/mailmerge) class provides two events that could be very useful in expanding mail merge capabilities. The [MailMerge.setFieldMergingCallback(com.aspose.words.IFieldMergingCallback)](https://apireference.aspose.com/words/java/com.aspose.words/mailmerge) property accepts a class which implements the methods [IFieldMergingCallback.fieldMerging(com.aspose.words.FieldMergingArgs)](https://apireference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback) and [IFieldMergingCallback.imageFieldMerging(com.aspose.words.ImageFieldMergingArgs)](https://apireference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback). These can be used to implement custom control over the mail merge process.

The [IFieldMergingCallback.fieldMerging(com.aspose.words.FieldMergingArgs)](https://apireference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback) event occurs during mail merge when a simple mail merge field is encountered in the document. This gives further control over the mail merge and you can perform any actions when the event occurs. This method is wrapped in a class that implements the [IFieldMergingCallBack](https://apireference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback) interface and accepts a [FieldMergingArgs](https://apireference.aspose.com/words//java/com.aspose.words/fieldmergingargs) object that provides data for the corresponding event.

The code example given below demonstrates how to implement custom logic in the MergeField event to apply cell formatting.

{{< gist "aspose-words-gists" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomFormattingDuringMailMerge-.java" >}}
