---
title: How to  Apply Custom Formatting during Mail Merge
type: docs
weight: 60
url: /java/how-to-apply-custom-formatting-during-mail-merge/
---

The [MailMerge](http://www.aspose.com/api/java/words/com.aspose.words/classes/MailMerge) class provides two events that could be very useful in expanding mail merge capabilities. The [MailMerge.setFieldMergingCallback(com.aspose.words.IFieldMergingCallback)](http://www.aspose.com/api/java/words/com.aspose.words/classes/MailMerge) property accepts a class which implements the methods [IFieldMergingCallback.fieldMerging(com.aspose.words.FieldMergingArgs)](http://www.aspose.com/api/java/words/com.aspose.words/interfaces/IFieldMergingCallback) and [IFieldMergingCallback.imageFieldMerging(com.aspose.words.ImageFieldMergingArgs)](http://www.aspose.com/api/java/words/com.aspose.words/interfaces/IFieldMergingCallback). These can be used to implement custom control over the mail merge process.

The [IFieldMergingCallback.fieldMerging(com.aspose.words.FieldMergingArgs)](http://www.aspose.com/api/java/words/com.aspose.words/interfaces/IFieldMergingCallback) event occurs during mail merge when a simple mail merge field is encountered in the document. This gives further control over the mail merge and you can perform any actions when the event occurs. This method is wrapped in a class that implements the [IFieldMergingCallBack](http://www.aspose.com/api/java/words/com.aspose.words/interfaces/IFieldMergingCallback) interface and accepts a [FieldMergingArgs](http://www.aspose.com/api/java/words/com.aspose.words/classes/FieldMergingArgs) object that provides data for the corresponding event.

Below example demonstrates how to implement custom logic in the MergeField event to apply cell formatting.

{{< gist "" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomFormattingDuringMailMerge-.java" >}}
