---
title: کار با محدوده در Java
second_title: Aspose.Words برای Java
articleTitle: کار با محدوده
linktitle: کار با محدوده
description: "مقدمه ای بر ویژگی دامنه در Aspose.Words برای Java..."
type: docs
weight: 130
url: /fa/java/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

In In In Aspose.Words, یک محدوده یک "پنجره باد" به یک مدل دیگر مانند درخت سند است.

{{% /alert %}}

اگر با شما کار کرده اید Microsoft Word اتوماسیون، شما احتمالا می دانید که یکی از ابزارهای اصلی برای بررسی و اصلاح محتوای سند است. `Range` جسم محدوده مانند "پنجره" در محتوای سند و قالب بندی است.

Aspose.Words همچنین دارای [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) کلاس و طراحی شده برای نگاه و عمل به طور مشابه **Range** در Microsoft Word... اگرچه **Range** نمی تواند یک بخش خودسرانه از یک سند را پوشش دهد و یک سند نداشته باشد. **Start** و **End**, شما می توانید به محدوده پوشش داده شده توسط هر گره سند از جمله [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) خود به عبارت دیگر، هر گره دارای دامنه خود است. The The The The The The **Range** شی به شما اجازه می دهد تا به دسترسی و اصلاح متن، نشانه ها و فیلدهای فرم در محدوده دسترسی داشته باشید.

## Retrieving Plain Text

استفاده از [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#getText) اموال برای بازیابی متن ساده و غیر فرمت شده از محدوده.

مثال کد زیر نشان می دهد که چگونه یک متن ساده و غیر فرمت شده از محدوده را دریافت کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه را از این مثال دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)...

{{% /alert %}}

## حذف متن متن

The The The The The The `Range` کلاس اجازه می دهد تا حذف تمام شخصیت های محدوده با تماس [delete](https://reference.aspose.com/words/java/com.aspose.words/range/#delete)...

مثال کد زیر نشان می دهد که چگونه تمام شخصیت های یک دامنه را حذف کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه را از این مثال دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)...

{{% /alert %}}

## 
