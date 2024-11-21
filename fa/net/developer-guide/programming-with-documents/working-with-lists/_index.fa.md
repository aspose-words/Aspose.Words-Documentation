---
title: کار با لیست ها در C#
second_title: Aspose.Words برای .NET
articleTitle: کار با لیست ها
linktitle: کار با لیست ها
description: "مقدمه ای بر ویژگی قالب بندی شماره گذاری در Aspose.Words برای .NET."
type: docs
weight: 200
url: /fa/net/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

یک لیست در یک سند Microsoft Word مجموعه ای از ویژگی های قالب بندی پاراگراف است. فهرست‌ها را می‌توان در اسناد برای ساختار، ترتیب، و برجسته کردن متن استفاده کرد. فهرست ها روشی عالی برای سازماندهی داده ها در اسناد به گونه ای است که جذب و درک نکات کلیدی را برای خوانندگان آسان می کند.

هر لیست می تواند تا 9 سطح داشته باشد و ویژگی های قالب بندی مانند سبک شماره، مقدار شروع، تورفتگی، موقعیت تب و موارد دیگر به طور جداگانه برای هر سطح تعریف شده است.

در Aspose.Words، کار با لیست ها با فضای نام [Lists](https://reference.aspose.com/words/net/aspose.words.lists/) نشان داده می شود. با این حال، شی [List](https://reference.aspose.com/words/net/aspose.words.lists/list/) همیشه به [ListCollection](https://reference.aspose.com/words/net/aspose.words.lists/listcollection/) تعلق دارد.

این مقاله کار برنامه نویسی با لیست ها را با استفاده از Aspose.Words شرح می دهد.

## با اعمال قالب‌بندی فهرست، فهرست‌ها را ایجاد کنید

Aspose.Words امکان ایجاد آسان لیست ها را با اعمال قالب بندی لیست فراهم می کند. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) ویژگی [ListFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/listformat/) را فراهم می کند که یک شی **ListFormat** را برمی گرداند. این شی چندین روش برای شروع و پایان یک لیست و افزایش/کاهش تورفتگی دارد. دو نوع لیست کلی در Microsoft Word وجود دارد: گلوله ای و شماره گذاری شده:

- برای شروع یک لیست گلوله ای، با [ApplyBulletDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applybulletdefault/) تماس بگیرید
- برای شروع یک لیست شماره دار، با [ApplyNumberDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applynumberdefault/) تماس بگیرید

گلوله یا شماره و قالب‌بندی به پاراگراف فعلی اضافه می‌شود و تمام پاراگراف‌های بعدی با استفاده از **DocumentBuilder** ایجاد می‌شوند تا زمانی که [RemoveNumbers](https://reference.aspose.com/words/net/aspose.words.lists/listformat/removenumbers/) برای توقف قالب‌بندی لیست گلوله‌ای فراخوانی شود.

در اسناد Word، فهرست ها ممکن است تا نه سطح داشته باشند. قالب‌بندی فهرست برای هر سطح مشخص می‌کند که چه گلوله یا عددی استفاده شود، تورفتگی سمت چپ، فاصله بین گلوله و متن و غیره. روش‌های زیر سطح فهرست را تغییر می‌دهند و ویژگی‌های قالب‌بندی سطح جدید را اعمال می‌کنند:

- برای افزایش سطح لیست پاراگراف فعلی یک سطح، با [ListIndent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listindent/) تماس بگیرید
- برای کاهش سطح فهرست پاراگراف فعلی یک سطح، با [ListOutdent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listoutdent/) تماس بگیرید

همچنین می توانید از ویژگی [ListLevelNumber](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listlevelnumber/) برای دریافت یا تنظیم سطح لیست برای پاراگراف استفاده کنید.

{{% alert color="primary" %}}

سطوح لیست از 0 تا 8 شماره گذاری شده اند.

{{% /alert %}}

مثال کد زیر نحوه ساخت یک لیست چندسطحی را نشان می دهد:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cs" >}}

## قالب بندی را برای سطح فهرست مشخص کنید

اشیاء در سطح لیست به طور خودکار هنگام ایجاد یک لیست ایجاد می شوند. از ویژگی ها و روش های کلاس [ListLevel](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/) برای کنترل قالب بندی سطوح فردی یک لیست استفاده کنید.

## لیست را برای هر بخش راه اندازی مجدد کنید

با استفاده از ویژگی [IsRestartAtEachSection](https://reference.aspose.com/words/net/aspose.words.lists/list/isrestartateachsection/) می توانید لیستی را برای هر بخش راه اندازی مجدد کنید. توجه داشته باشید که این گزینه فقط در فرمت های سند RTF، DOC و DOCX پشتیبانی می شود. این گزینه فقط در صورتی روی DOCX نوشته می شود که OoxmlCompliance بالاتر از Ecma376 باشد.

مثال کد زیر نحوه ایجاد یک لیست و راه اندازی مجدد آن برای هر بخش را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cs" >}}
