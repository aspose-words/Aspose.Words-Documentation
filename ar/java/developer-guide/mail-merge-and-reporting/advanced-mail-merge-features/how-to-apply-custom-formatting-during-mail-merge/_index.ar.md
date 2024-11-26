---
title: كيفية تطبيق التنسيق المخصص أثناء Mail Merge
second_title: Aspose.Words ل Java
articleTitle: كيفية تطبيق التنسيق المخصص أثناء Mail Merge
linktitle: كيفية تطبيق التنسيق المخصص أثناء Mail Merge
type: docs
description: "تطبيق تنسيق مخصص أثناء عملية Mail Merge باستخدام Java."
weight: 60
url: /ar/java/how-to-apply-custom-formatting-during-mail-merge/
timestamp: 2024-01-27-14-07-04
---

توفر فئة [MailMerge](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/) حدثين يمكن أن يكونا مفيدين جدا في توسيع قدرات Mail Merge. تقبل الخاصية [setFieldMergingCallback(IFieldMergingCallback)](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#FieldMergingCallback) فئة تنفذ الطريقتين [fieldMerging(FieldMergingArgs)](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/#fieldMerging-com.aspose.words.FieldMergingArgs) و [imageFieldMerging(ImageFieldMergingArgs)](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/#imageFieldMerging-com.aspose.words.ImageFieldMergingArgs). يمكن استخدامها لتنفيذ التحكم المخصص في عملية Mail Merge.

يحدث الحدث **fieldMerging(FieldMergingArgs)** أثناء Mail Merge عند مواجهة حقل Mail Merge بسيط في المستند. وهذا يعطي مزيدا من السيطرة على Mail Merge ويمكنك تنفيذ أي إجراءات عند وقوع الحدث. يتم تغليف هذه الطريقة في فئة تنفذ واجهة [IFieldMergingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/) وتقبل كائن [FieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/fieldmergingargs/) يوفر بيانات للحدث المقابل.

يوضح مثال الكود الموضح أدناه كيفية تنفيذ المنطق المخصص في الحدث `MergeField` لتطبيق تنسيق الخلية.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomFormattingDuringMailMerge-ApplyCustomFormattingDuringMailMerge.java" >}}
