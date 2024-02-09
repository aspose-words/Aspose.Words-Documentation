---
title: کار با فونت در Python
second_title: Aspose.Words برای Python via .NET
articleTitle: کار با فونت ها
linktitle: کار با فونت ها
description: "تنظیمات فونت را با استفاده از Python سفارشی کنید."
type: docs
weight: 230
url: /fa/python-net/working-with-fonts/
---

فونت مجموعه ای از کاراکترها با اندازه، رنگ و طرح معین است. Aspose.Words به شما امکان می دهد با استفاده از ماژول [fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/) و کلاس [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) با فونت ها کار کنید.

## قالب بندی فونت

قالب بندی فعلی فونت توسط شیء **Font** که توسط ویژگی [Font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) برگردانده شده است نشان داده می شود. کلاس **Font** شامل طیف گسترده ای از ویژگی های فونت است که ویژگی های موجود در Microsoft Word را تکرار می کند.

مثال کد زیر نحوه تنظیم قالب بندی فونت را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-DocumentBuilderSetFontFormatting.py" >}}

ویژگی های Fill اکنون برای فونت ها برای تنظیم قالب بندی متن نیز در دسترس هستند. توانایی تغییر، به عنوان مثال، رنگ پیش زمینه یا شفافیت پر کردن متن را می دهد.

## دریافت فاصله بین خطوط فونت

فاصله خطوط فونت فاصله عمودی بین خطوط پایه دو خط متوالی متن است. بنابراین فاصله خطوط شامل فضای خالی بین خطوط به همراه ارتفاع خود کاراکتر است.

ویژگی [line_spacing](https://reference.aspose.com/words/python-net/aspose.words/font/line_spacing/) در کلاس [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) برای به دست آوردن این مقدار همانطور که در مثال زیر نشان داده شده است معرفی شد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetFontLineSpacing.py" >}}

## فونت EmphasisMark

برخی از زبان های آسیای شرقی از علامت تاکید ویژه برای نشان دادن تاکید استفاده می کنند. کلاس **Font** ویژگی [emphasis_mark](https://reference.aspose.com/words/python-net/aspose.words/font/emphasis_mark/) را برای دریافت یا تنظیم مقادیر شمارش [EmphasisMark](https://reference.aspose.com/words/python-net/aspose.words/emphasismark/) برای اعمال در قالب بندی فراهم می کند.

مثال کد زیر نحوه تنظیم ویژگی **EphasisMark** را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontEmphasisMark.py" >}}
