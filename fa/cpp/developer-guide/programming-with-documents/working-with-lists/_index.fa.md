---
title: کار با لیست ها در C++
second_title: Aspose.Words برای C++
articleTitle: کار با لیست ها
linktitle: کار با لیست ها
description: "معرفی ویژگی قالب بندی شماره گذاری در Aspose.Words برای C++."
type: docs
weight: 200
url: /fa/cpp/working-with-lists/
---

یک لیست در یک سند Microsoft Word مجموعه ای از ویژگی های قالب بندی لیست است. لیست ها می توانند در اسناد شما برای قالب بندی، ترتیب و تاکید بر متن استفاده شوند. لیست ها راهی عالی برای سازماندهی داده ها در اسناد هستند و درک نکات کلیدی را برای خوانندگان آسان تر می کنند.

هر لیست می تواند تا سطوح 9 داشته باشد و ویژگی های قالب بندی، مانند سبک شماره، ارزش شروع، indent، موقعیت برگه و غیره به طور جداگانه برای هر سطح تعریف شده است.

در Aspose.Words، کار با لیست ها با فضای نام [Lists](https://reference.aspose.com/words/cpp/aspose.words.lists/) نشان داده می شود. با این حال، شیء [List](https://reference.aspose.com/words/cpp/aspose.words.lists/list/) همیشه متعلق به مجموعه [ListCollection](https://reference.aspose.com/words/cpp/aspose.words.lists/listcollection/) است.

این موضوع نحوه کار برنامه نویسی با لیست ها را با استفاده از Aspose.Words توصیف می کند.

## مشخص کردن قالب بندی برای یک سطح لیست

اشیاء سطح لیست به طور خودکار ایجاد می شوند زمانی که یک لیست ایجاد می شود. از خواص و روش های کلاس [ListLevel](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/) برای کنترل قالب بندی سطوح فردی یک لیست استفاده کنید.

## لیست راه اندازی مجدد برای هر بخش

شما می توانید یک لیست برای هر بخش را با استفاده از ویژگی [IsRestartAtEachSection](https://reference.aspose.com/words/cpp/aspose.words.lists/list/get_isrestartateachsection/) دوباره راه اندازی کنید. توجه داشته باشید که این گزینه فقط در فرمت های سند RTF، DOC و DOCX پشتیبانی می شود. این گزینه فقط در صورتی به DOCX نوشته می شود که OoxmlCompliance بالاتر از Ecma376 باشد.

مثال کد زیر نشان می دهد که چگونه یک لیست ایجاد کنید و آن را برای هر بخش دوباره راه اندازی کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cpp" >}}
