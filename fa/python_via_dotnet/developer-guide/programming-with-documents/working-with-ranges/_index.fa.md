---
title: کار با Ranges در Python
second_title: Aspose.Words برای Python via .NET
articleTitle: کار با Ranges
linktitle: کار با Ranges
description: "با استفاده از Python با محدوده های موجود در یک سند کار کنید."
type: docs
weight: 130
url: /fa/python-net/working-with-ranges/
---

{{% alert color="primary" %}}

در Aspose.Words، [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) یک "پنجره مسطح" به یک مدل درخت مانند سند است.

{{% /alert %}}

اگر با Microsoft Word Automation کار کرده اید، احتمالاً می دانید که یکی از ابزارهای اصلی برای بررسی و اصلاح محتوای سند، شی [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) است. [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) مانند یک "پنجره" به محتوای سند و قالب بندی است. Aspose.Words همچنین دارای کلاس [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) است و طوری طراحی شده است که شبیه **Range** در Microsoft Word به نظر می رسد و عمل می کند. اگرچه **Range** نمی تواند بخش دلخواه یک سند را پوشش دهد و **Start** و **End** ندارد، شما می توانید به محدوده تحت پوشش هر گره سند از جمله خود [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) دسترسی داشته باشید. به عبارت دیگر، هر گره محدوده خاص خود را دارد. شی [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) به شما امکان می دهد به متن، نشانک ها و فیلدهای فرم در محدوده دسترسی داشته باشید و آنها را تغییر دهید.

## بازیابی متن ساده

از ویژگی [text](https://reference.aspose.com/words/python-net/aspose.words/range/text/) برای بازیابی متن ساده و بدون قالب محدوده استفاده کنید.

مثال کد زیر نحوه دریافت یک متن ساده و بدون قالب یک محدوده را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesGetText.py" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx) دانلود کنید.

{{% /alert %}}

## حذف متن

Range امکان حذف تمام کاراکترهای محدوده را با فراخوانی [delete](https://reference.aspose.com/words/python-net/aspose.words/range/delete/) می دهد

مثال کد زیر نحوه حذف تمام کاراکترهای یک محدوده را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesDeleteText.py" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx) دانلود کنید.

{{% /alert %}}