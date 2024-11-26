---
title: 如何在Mail Merge期间应用自定义格式
second_title: Aspose.Words为Java
articleTitle: 如何在Mail Merge期间应用自定义格式
linktitle: 如何在Mail Merge期间应用自定义格式
type: docs
description: "使用Java在Mail Merge操作期间应用自定义格式。"
weight: 60
url: /zh/java/how-to-apply-custom-formatting-during-mail-merge/
timestamp: 2024-01-27-14-07-04
---

[MailMerge](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/)类提供了两个在扩展Mail Merge功能时非常有用的事件。 [setFieldMergingCallback(IFieldMergingCallback)](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#FieldMergingCallback)属性接受一个实现方法[fieldMerging(FieldMergingArgs)](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/#fieldMerging-com.aspose.words.FieldMergingArgs)和[imageFieldMerging(ImageFieldMergingArgs)](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/#imageFieldMerging-com.aspose.words.ImageFieldMergingArgs)的类。 这些可用于实现对Mail Merge进程的自定义控制。

当文档中遇到简单的Mail Merge字段时，**fieldMerging(FieldMergingArgs)**事件发生在Mail Merge期间。 这提供了对Mail Merge的进一步控制，并且您可以在事件发生时执行任何操作。 此方法包装在实现[IFieldMergingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/)接口的类中，并接受为相应事件提供数据的[FieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/fieldmergingargs/)对象。

下面给出的代码示例演示如何在`MergeField`事件中实现自定义逻辑以应用单元格格式。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomFormattingDuringMailMerge-ApplyCustomFormattingDuringMailMerge.java" >}}
