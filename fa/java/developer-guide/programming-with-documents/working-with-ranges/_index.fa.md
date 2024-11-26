---
title: کار با محدوده در Java
second_title: Aspose.Words برای Java
articleTitle: کار با محدوده ها
linktitle: کار با محدوده ها
description: "مقدمه به ویژگی محدوده در Aspose.Words برای Java."
type: docs
weight: 130
url: /fa/java/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

در Aspose.Words، یک محدوده یک "پنجره مسطح" به یک مدل درخت مانند سند است.

{{% /alert %}}

اگر با اتوماسیون Microsoft Word کار کرده اید، احتمالا می دانید که یکی از ابزارهای اصلی برای بررسی و تغییر محتوای سند، شیء `Range` است.محدوده مانند یک "پنجره" به محتوای سند و قالب بندی است.

Aspose.Words همچنین دارای کلاس [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) است و طراحی شده است تا به نظر برسد و به طور مشابه با **Range** در Microsoft Word عمل کند. اگرچه **Range** نمی تواند بخش خودسرانه ای از یک سند را پوشش دهد و **Start** و **End** ندارد، شما می توانید به محدوده ای که توسط هر گره سند از جمله خود [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) پوشش داده شده است دسترسی داشته باشید. به عبارت دیگر، هر گره محدوده خاص خود را دارد. شیء **Range** به شما اجازه می دهد تا به متن، نشانه ها و زمینه های فرم در محدوده دسترسی داشته باشید و آنها را تغییر دهید.

## بازیابی متن ساده

از ویژگی [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#getText) برای بازیابی متن ساده و بدون فرمت محدوده استفاده کنید.

مثال کد زیر نشان می دهد که چگونه یک متن ساده و بدون فرمت از یک محدوده را بدست آوریم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## حذف متن

کلاس `Range` اجازه حذف تمام کاراکترهای محدوده را با فراخوانی [delete](https://reference.aspose.com/words/java/com.aspose.words/range/#delete) می دهد.

مثال کد زیر نشان می دهد که چگونه تمام کاراکترهای یک محدوده را حذف کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


