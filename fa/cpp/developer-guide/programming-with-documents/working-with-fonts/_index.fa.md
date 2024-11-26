---
title: کار با فونت ها در C++
second_title: Aspose.Words برای C++
articleTitle: کار با فونت ها
linktitle: کار با فونت ها
description: "قالب بندی فونت در جزئیات با استفاده از C++."
type: docs
weight: 230
url: /fa/cpp/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

فونت مجموعه ای از کاراکترها با اندازه، رنگ و طراحی خاص است. Aspose.Words به شما اجازه می دهد با استفاده از فضای نام [Fonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/) و کلاس [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) با فونت ها کار کنید.

## قالب بندی فونت

قالب بندی فونت فعلی توسط شیء **Font** که توسط ویژگی [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) بازگردانده شده است، نشان داده می شود. کلاس **Font** شامل انواع مختلفی از ویژگی های فونت است که نسخه های موجود در Microsoft Word را تکرار می کند.

مثال کد زیر نشان می دهد که چگونه قالب بندی فونت را تنظیم کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

ویژگی های Fill now نیز برای فونت ها برای تنظیم قالب بندی fill متن در دسترس است. این توانایی را برای تغییر، به عنوان مثال، رنگ پیش زمینه یا شفافیت متن پر می کند.

## گرفتن فاصله خط فونت

فاصله خط فونت فاصله عمودی بین خطوط پایه دو خط متوالی متن است. بنابراین فاصله خط شامل فضای خالی بین خطوط همراه با ارتفاع خود کاراکتر است.

ویژگی [LineSpacing](https://reference.aspose.com/words/cpp/aspose.words/font/get_linespacing/) برای بدست آوردن این مقدار به کلاس **Font** معرفی شد، همانطور که در مثال زیر نشان داده شده است:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cpp" >}}

## فونت EmphasisMark

برخی از زبان های آسیای شرقی از یک علامت تاکید ویژه برای نشان دادن تاکید استفاده می کنند. کلاس **Font** ویژگی [EmphasisMark](https://reference.aspose.com/words/cpp/aspose.words/font/get_emphasismark/) را برای بدست آوردن یا تنظیم مقادیر `EmphasisMark` شمارش که هنگام قالب بندی اعمال می شود، فراهم می کند.

مثال کد زیر نشان می دهد که چگونه ویژگی **EphasisMark** را تنظیم کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cpp" >}}
