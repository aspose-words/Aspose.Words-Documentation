---
title: کار با Ranges در C#
second_title: Aspose.Words برای .NET
articleTitle: کار با Ranges
linktitle: کار با Ranges
description: "مقدمه ای بر ویژگی Range در Aspose.Words برای .NET."
type: docs
weight: 130
url: /fa/net/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

در Aspose.Words، Range یک "پنجره مسطح" به یک مدل درخت مانند سند است.

{{% /alert %}}

اگر با Microsoft Word Automation کار کرده اید، احتمالاً می دانید که یکی از ابزارهای اصلی برای بررسی و اصلاح محتوای سند، شی **Range** است. **Range** مانند یک "پنجره" به محتوای سند و قالب بندی است.

Aspose.Words همچنین دارای کلاس [Range](https://reference.aspose.com/words/net/aspose.words/range/) است و به گونه ای طراحی شده است که شبیه **Range** در Microsoft Word به نظر می رسد و عمل می کند. اگرچه **Range** نمی تواند بخش دلخواه یک سند را پوشش دهد و **Start** و **End** ندارد، شما می توانید به محدوده تحت پوشش هر گره سند از جمله خود [Document](https://reference.aspose.com/words/net/aspose.words/document/) دسترسی داشته باشید. به عبارت دیگر، هر گره محدوده خاص خود را دارد. شی **Range** به شما امکان می دهد به متن، نشانک ها و فیلدهای فرم در محدوده دسترسی داشته باشید و آنها را تغییر دهید.

## بازیابی متن ساده

از ویژگی [Text](https://reference.aspose.com/words/net/aspose.words/range/text/) برای بازیابی متن ساده و بدون قالب محدوده استفاده کنید.

مثال کد زیر نحوه دریافت یک متن ساده و بدون قالب یک محدوده را نشان می دهد:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cs" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) دانلود کنید.

{{% /alert %}}

## حذف متن

Range امکان حذف تمام کاراکترهای محدوده را با فراخوانی [Delete](https://reference.aspose.com/words/net/aspose.words/range/delete/) می دهد.

مثال کد زیر نحوه حذف تمام کاراکترهای یک محدوده را نشان می دهد:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cs" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) دانلود کنید.

{{% /alert %}}
