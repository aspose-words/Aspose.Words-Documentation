---
title: نحوه اعمال قالب بندی سفارشی در طول Mail Merge
second_title: Aspose.Words برای Java
articleTitle: نحوه اعمال قالب بندی سفارشی در طول Mail Merge
linktitle: نحوه اعمال قالب بندی سفارشی در طول Mail Merge
type: docs
description: "استفاده از قالب بندی سفارشی در طول عملیات Mail Merge با استفاده از Java."
weight: 60
url: /fa/java/how-to-apply-custom-formatting-during-mail-merge/
timestamp: 2024-01-27-14-07-04
---

کلاس [MailMerge](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/) دو رویداد را فراهم می کند که می تواند در گسترش قابلیت های Mail Merge بسیار مفید باشد. ویژگی [setFieldMergingCallback(IFieldMergingCallback)](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#FieldMergingCallback) یک کلاس را می پذیرد که روش های [fieldMerging(FieldMergingArgs)](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/#fieldMerging-com.aspose.words.FieldMergingArgs) و [imageFieldMerging(ImageFieldMergingArgs)](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/#imageFieldMerging-com.aspose.words.ImageFieldMergingArgs) را اجرا می کند. این ها می توانند برای پیاده سازی کنترل سفارشی بر روی فرآیند Mail Merge استفاده شوند.

رویداد **fieldMerging(FieldMergingArgs)** در طول Mail Merge زمانی رخ می دهد که یک فیلد Mail Merge ساده در سند مواجه می شود. این کنترل بیشتری بر روی Mail Merge می دهد و شما می توانید هر اقدامی را هنگام وقوع رویداد انجام دهید. این روش در یک کلاس پیچیده شده است که رابط [IFieldMergingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/) را پیاده سازی می کند و یک شی [FieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/fieldmergingargs/) را می پذیرد که داده ها را برای رویداد مربوطه فراهم می کند.

مثال کد زیر نشان می دهد که چگونه منطق سفارشی را در رویداد `MergeField` برای اعمال قالب بندی سلول پیاده سازی کنیم.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomFormattingDuringMailMerge-ApplyCustomFormattingDuringMailMerge.java" >}}
