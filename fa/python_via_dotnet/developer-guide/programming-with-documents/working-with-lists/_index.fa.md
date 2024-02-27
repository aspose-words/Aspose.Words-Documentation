---
title: کار با لیست ها در Python
second_title: Aspose.Words برای Python via .NET
articleTitle: کار با لیست ها
linktitle: کار با لیست ها
description: "با استفاده از Python فهرست‌های قالب‌بندی و راه‌اندازی مجدد را در یک سند ایجاد کنید."
type: docs
weight: 200
url: /fa/python-net/working-with-lists/
---

یک لیست در یک سند Microsoft Word مجموعه ای از ویژگی های قالب بندی لیست است. فهرست ها را می توان در اسناد خود برای قالب بندی، ترتیب و تأکید بر متن استفاده کرد. فهرست ها روشی عالی برای سازماندهی داده ها در اسناد هستند و درک نکات کلیدی را برای خوانندگان آسان تر می کنند

هر لیست می‌تواند تا 9 سطح داشته باشد و ویژگی‌های قالب‌بندی، مانند سبک شماره، مقدار شروع، تورفتگی، موقعیت تب و غیره به طور جداگانه برای هر سطح تعریف شده است.

در Aspose.Words، کار با لیست ها با ماژول [Lists](https://reference.aspose.com/words/python-net/aspose.words.lists/) نشان داده می شود. با این حال، شی [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/) همیشه به مجموعه [ListCollection](https://reference.aspose.com/words/python-net/aspose.words.lists/listcollection/) تعلق دارد.

این مبحث نحوه کار برنامه‌نویسی با لیست‌ها با استفاده از Aspose.Words را شرح می‌دهد

## ایجاد لیست با استفاده از قالب بندی لیست

Aspose.Words امکان ایجاد آسان لیست ها را با اعمال قالب بندی لیست فراهم می کند. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) ویژگی [DocumentBuilder.list_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/list_format/) را فراهم می کند که یک شی [ListFormat](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/) را برمی گرداند. این شی چندین روش برای شروع و پایان یک لیست و افزایش/کاهش تورفتگی دارد. دو نوع کلی لیست در Microsoft Word وجود دارد: گلوله ای و شماره گذاری شده.

- برای شروع یک لیست گلوله ای، با [ListFormat.apply_bullet_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/) تماس بگیرید.
- برای شروع یک لیست شماره دار، با [ListFormat.apply_number_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/) تماس بگیرید.

گلوله یا شماره و قالب‌بندی به پاراگراف فعلی اضافه می‌شود و تمام پاراگراف‌های بعدی با استفاده از [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) ایجاد می‌شوند تا زمانی که [ListFormat.remove_numbers](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/remove_numbers/) برای توقف قالب‌بندی لیست گلوله‌ای فراخوانی شود.

در اسناد Word، فهرست ها ممکن است تا 9 سطح داشته باشند. قالب‌بندی فهرست برای هر سطح مشخص می‌کند که چه گلوله یا عددی استفاده شود، تورفتگی سمت چپ، فاصله بین گلوله و متن و غیره. روش‌های زیر سطح فهرست را تغییر می‌دهند و ویژگی‌های قالب‌بندی سطح جدید را اعمال می‌کنند:

- برای افزایش سطح لیست پاراگراف فعلی یک سطح، با [ListFormat.list_indent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_indent/) تماس بگیرید
- برای کاهش سطح فهرست پاراگراف فعلی یک سطح، با [ListFormat.list_outdent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_outdent/) تماس بگیرید

متدها سطح لیست را تغییر می دهند و ویژگی های قالب بندی سطح جدید را اعمال می کنند.

{{% alert color="primary" %}}

همچنین می توانید از ویژگی [ListFormat.list_level_number](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_level_number/) برای دریافت یا تنظیم سطح لیست برای پاراگراف استفاده کنید. سطوح لیست از 0 تا 8 شماره گذاری شده اند.

{{% /alert %}}

مثال زیر نحوه ساخت یک لیست چندسطحی را نشان می دهد.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-MultilevelListFormatting.py" >}}

## قالب بندی را برای سطح فهرست مشخص کنید

اشیاء در سطح فهرست به طور خودکار هنگام ایجاد لیست ایجاد می شوند. از ویژگی ها و روش های کلاس [ListLevel](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/) برای کنترل قالب بندی سطوح فردی یک لیست استفاده کنید.

## لیست را برای هر بخش راه اندازی مجدد کنید

با استفاده از ویژگی [ویژگی is_restart_at_each_section](https://reference.aspose.com/words/python-net/aspose.words.lists/list/is_restart_at_each_section/) می توانید لیستی را برای هر بخش راه اندازی مجدد کنید. توجه داشته باشید که این گزینه فقط در فرمت های سند RTF، DOC و DOCX پشتیبانی می شود. این گزینه فقط در صورتی روی DOCX نوشته می شود که OoxmlCompliance بالاتر از Ecma376 باشد.

مثال کد زیر نحوه ایجاد یک لیست و راه اندازی مجدد آن برای هر بخش را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_list-RestartListAtEachSection.py" >}}
