---
title: کار با لیست ها در Java
second_title: Aspose.Words برای Java
articleTitle: کار با لیست ها
linktitle: کار با لیست ها
description: "مقدمه ای به ویژگی قالب بندی شماره گذاری در Aspose.Words برای Java."
type: docs
weight: 200
url: /fa/java/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

یک لیست در یک سند Microsoft Word مجموعه ای از ویژگی های قالب بندی لیست است. لیست ها می توانند در اسناد شما برای قالب بندی، ترتیب و تاکید بر متن استفاده شوند. لیست ها راهی عالی برای سازماندهی داده ها در اسناد هستند و درک نکات کلیدی را برای خوانندگان آسان تر می کنند.

هر لیست می تواند تا 9 سطح داشته باشد و ویژگی های قالب بندی، مانند سبک شماره، ارزش شروع، indent، موقعیت برگه و دیگران به طور جداگانه برای هر سطح تعریف شده است.

این مقاله کار برنامه ریزی شده با لیست ها را با استفاده از Aspose.Words توصیف می کند.

## ایجاد لیست با استفاده از قالب بندی لیست

Aspose.Words امکان ایجاد آسان لیست ها را با استفاده از قالب بندی لیست فراهم می کند. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) ویژگی [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) را فراهم می کند که یک شی **ListFormat** را باز می گرداند. این شی دارای چندین روش برای شروع و پایان دادن به یک لیست و افزایش/کاهش شکاف است. دو نوع کلی لیست در Microsoft Word وجود دارد: با گلوله و شماره گذاری:

- برای شروع یک لیست با گلوله، با [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)تماس بگیرید
- برای شروع یک لیست شماره گذاری شده، با [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)تماس بگیرید

گلوله یا شماره و قالب بندی به پاراگراف فعلی اضافه می شود و تمام پاراگراف های بعدی که با استفاده از **DocumentBuilder** تا [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) ایجاد شده اند، برای متوقف کردن قالب بندی لیست گلوله ای فراخوانده می شوند.

در اسناد Word، لیست ها ممکن است تا نه سطح داشته باشند. قالب بندی لیست برای هر سطح مشخص می کند که چه گلوله یا شماره ای استفاده می شود، ترک شده، فضای بین گلوله و متن و غیره. روش های زیر سطح لیست را تغییر می دهند و ویژگی های قالب بندی سطح جدید را اعمال می کنند:

- برای افزایش سطح لیست پاراگراف فعلی به یک سطح، با [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)تماس بگیرید
- برای کاهش سطح لیست پاراگراف فعلی به یک سطح، با [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)تماس بگیرید

روش ها سطح لیست را تغییر می دهند و ویژگی های قالب بندی سطح جدید را اعمال می کنند.

{{% alert color="primary" %}}

همچنین می توانید از ویژگی [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) برای دریافت یا تنظیم سطح لیست برای پاراگراف استفاده کنید. سطوح لیست 0 تا 8 شماره گذاری شده اند.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک لیست چند سطحی بسازیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## مشخص کردن قالب بندی برای یک سطح لیست

اشیاء سطح لیست به طور خودکار ایجاد می شوند زمانی که یک لیست ایجاد می شود. از خواص و روش های کلاس [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) برای کنترل قالب بندی سطوح فردی یک لیست استفاده کنید.

## لیست راه اندازی مجدد برای هر بخش

شما می توانید یک لیست برای هر بخش را با استفاده از ویژگی [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection) دوباره راه اندازی کنید. توجه داشته باشید که این گزینه فقط در فرمت های سند RTF، DOC و DOCX پشتیبانی می شود. این گزینه فقط در صورتی به DOCX نوشته می شود که OoxmlCompliance بالاتر از Ecma376 باشد.

مثال کد زیر نشان می دهد که چگونه یک لیست ایجاد کنید و آن را برای هر بخش دوباره راه اندازی کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

