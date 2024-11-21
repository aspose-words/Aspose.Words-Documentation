---
title: کار با فونت در C#
second_title: Aspose.Words برای .NET
articleTitle: کار با فونت ها
linktitle: کار با فونت ها
description: "قالب بندی فونت در جزئیات با استفاده از C#. علامت تاکید در C#. با استفاده از C# فاصله خطوط فونت را دریافت کنید."
type: docs
weight: 230
url: /fa/net/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

فونت مجموعه ای از کاراکترها با اندازه، رنگ و طرح معین است. Aspose.Words به شما امکان می دهد با استفاده از فضای نام [Fonts](https://reference.aspose.com/words/net/aspose.words.fonts/) و کلاس [Font](https://reference.aspose.com/words/net/aspose.words/font/) با فونت ها کار کنید.

## قالب بندی فونت

قالب بندی فعلی فونت توسط شیء **Font** که توسط ویژگی [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) برگردانده شده است نشان داده می شود. کلاس **Font** شامل طیف گسترده ای از ویژگی های فونت است که ویژگی های موجود در Microsoft Word را تکرار می کند.

مثال کد زیر نحوه تنظیم قالب بندی فونت را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cs" >}}

ویژگی های پر نیز برای فونت ها برای تنظیم قالب بندی پر کردن متن موجود است. این امکان تغییر، به عنوان مثال، رنگ پیش زمینه یا شفافیت پر کردن متن را فراهم می کند.

## دریافت فاصله بین خطوط فونت

فاصله خطوط فونت فاصله عمودی بین خطوط پایه دو خط متوالی متن است. بنابراین فاصله خطوط شامل فضای خالی بین خطوط به همراه ارتفاع خود کاراکتر است.

ویژگی [LineSpacing](https://reference.aspose.com/words/net/aspose.words/font/linespacing/) برای بدست آوردن این مقدار به کلاس **Font** معرفی شد، همانطور که در مثال زیر نشان داده شده است:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cs" >}}

## فونت EmphasisMark

برخی از زبان های آسیای شرقی از علامت تاکید ویژه برای نشان دادن تاکید استفاده می کنند. کلاس **Font** ویژگی [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/font/emphasismark/) را برای دریافت یا تنظیم مقادیر شمارش [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/emphasismark/) برای اعمال در هنگام قالب‌بندی فراهم می‌کند.

مثال کد زیر نحوه تنظیم ویژگی **EphasisMark** را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cs" >}}
