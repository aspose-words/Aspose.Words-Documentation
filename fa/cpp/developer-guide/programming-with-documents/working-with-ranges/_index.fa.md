---
title: کار با محدوده در C++
second_title: Aspose.Words برای C++
articleTitle: کار با محدوده ها
linktitle: کار با محدوده ها
description: "معرفی ویژگی Range در Aspose.Words برای C++."
type: docs
weight: 130
url: /fa/cpp/working-with-ranges/
---

{{% alert color="primary" %}}

در Aspose.Words، یک محدوده یک "پنجره مسطح" به یک مدل درخت مانند سند است.

{{% /alert %}}

اگر با اتوماسیون Microsoft Word کار کرده اید، احتمالا می دانید که یکی از ابزارهای اصلی برای بررسی و تغییر محتوای سند، شیء **Range** است. **Range** مانند یک "پنجره" به محتوای سند و قالب بندی است.

Aspose.Words همچنین دارای کلاس [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) است و طراحی شده است تا به نظر برسد و به طور مشابه با **Range** در Microsoft Word عمل کند. اگرچه **Range** نمی تواند بخش خودسرانه ای از یک سند را پوشش دهد و **Start** و **End** ندارد، شما می توانید به محدوده ای که توسط هر گره سند از جمله خود [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) پوشش داده شده است دسترسی داشته باشید. به عبارت دیگر، هر گره محدوده خاص خود را دارد. شیء **Range** به شما اجازه می دهد تا به متن، نشانه ها و زمینه های فرم در محدوده دسترسی داشته باشید و آنها را تغییر دهید.

## متن ساده را بازیابی کنید

از ویژگی [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/) برای بازیابی متن ساده و بدون فرمت محدوده استفاده کنید.

مثال کد زیر نشان می دهد که چگونه یک متن ساده و بدون فرمت از یک محدوده را بدست آوریم:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cpp" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## حذف متن

Range اجازه حذف تمام کاراکترهای محدوده را با فراخوانی [Delete](https://reference.aspose.com/words/cpp/aspose.words/range/delete/) می دهد.

مثال کد زیر نشان می دهد که چگونه تمام کاراکترهای یک محدوده را حذف کنیم:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cpp" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}