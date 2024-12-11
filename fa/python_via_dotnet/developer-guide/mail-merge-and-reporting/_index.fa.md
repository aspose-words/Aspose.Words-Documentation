﻿---
title: Mail Merge و گزارش در Python
second_title: Aspose.Words برای Python via .NET
articleTitle: Mail Merge و گزارش
linktitle: Mail Merge و گزارش
type: docs
description: "Mail Merge یک ویژگی محبوب برای ایجاد سریع اسناد با استفاده از Python است. Aspose.Words برای Python via .NET عملکرد استاندارد Mail Merge را می گیرد و آن را چندین قدم جلوتر می برد و آن را به یک راه حل گزارش دهی کامل تبدیل می کند که به شما امکان می دهد اسناد پیچیده تری مانند گزارش ها، کاتالوگ ها، موجودی ها و فاکتورها ایجاد کنید."
keywords: "how to use Mail Merge python"
weight: 30
url: /fa/python-net/mail-merge-and-reporting/
timestamp: 2024-01-27-14-07-04
---

Mail Merge یک ویژگی محبوب برای ایجاد سریع و آسان اسناد مانند حروف، برچسب ها و پاکت ها است. Aspose.Words شما را قادر می سازد تا اسناد را از قالب هایی با Mail Merge فیلد تولید کنید.

فیلد Mail Merge فیلدی است که می توانید آن را در یک قالب mail merge قرار دهید تا مقادیر خاصی از یک رکورد منبع داده در اسناد خروجی را شامل شود. به عنوان مثال، شما می توانید یک فیلد ادغام را در یک قالب ایمیل وارد کنید تا سلام نام اول گیرنده را به جای یک " سلام!". Aspose.Words داده های یک منبع خارجی مانند یک پایگاه داده یا فایل را در این زمینه ها قرار می دهد و آنها را فرمت می کند. سند حاصل در پوشه مشخص شده ذخیره می شود.

Aspose.Words عملکرد استاندارد Mail Merge را می گیرد و آن را چندین قدم جلوتر می برد و آن را به یک راه حل گزارش دهی کامل تبدیل می کند که به شما امکان می دهد اسناد پیچیده تری مانند گزارش ها، کاتالوگ ها، موجودی ها و فاکتورها ایجاد کنید. در اینجا چند مزیت از راه حل گزارش Aspose.Words وجود دارد:

- گزارش های طراحی در Microsoft Word با استفاده از فیلدهای استاندارد Mail Merge
- تعریف مناطق در سند که در حال رشد هستند، مانند ردیف های سفارش دقیق (در حال حاضر در نسخه Python پشتیبانی نمی شود)
- تصاویر را در طول یک mail mergeوارد کنید
- اجرای هر منطق سفارشی، قالب بندی کنترل، یا وارد کردن محتوای پیچیده با استفاده از Mail Merge مدیریت رویداد (در حال حاضر در نسخه Python پشتیبانی نمی شود)
- اسناد را با داده های هر نوع منبع داده پر کنید (در حال حاضر در نسخه Python پشتیبانی نمی شود، فقط آرایه ها منبع داده پشتیبانی می شوند)

{{% alert color="primary" %}}

ماژول [aspose.words.mailmerging](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/) برای کار با ادغام پست استفاده می شود.

{{% /alert %}}

## مکانیزم و اجزای اصلی یک عملیاتMail Merge {#mechanism-and-main-components-of-a-mail-merge-operation}

Aspose.Words امکان بارگذاری اسناد را در [supported formats](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) مختلف فراهم می کند و سپس به کاربران اجازه می دهد تا عملیات Mail Merge را انجام دهند.

معمولا، یک سند بارگذاری شده به شما اجازه می دهد تا زمینه های ادغام را ذخیره کنید، به عنوان مثال، یک سند در فرمت DOCX. اما فرمت هایی وجود دارند که چنین زمینه هایی را ذخیره نمی کنند، به عنوان مثال، TXT. اگر Aspose.Words از بارگذاری چنین فرمت های فایل پشتیبانی کند، می توانید فیلد های ادغام را مستقیما به مدل سند اضافه کنید، سند را در یک [supported format](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) مناسب ذخیره کنید و عملیات Mail Merge را انجام دهید.

عملیات Mail Merge شما *mail merge template* و *data source* شما را برای تولید فرد *merged documents* ادغام خواهد کرد.

## قالب Mail Merge {#what-is-a-mail-merge-template}چیست

هدف از استفاده از عملیات mail merge با استفاده از یک قالب ادغام ساده سازی فرآیند ایجاد یک سند است.

راه های مختلفی برای ایجاد و طراحی یک قالب ادغام وجود دارد. شما می توانید از Microsoft Word استفاده کنید و قالب ادغام لازم نیست یک قالب Microsoft Word باشد، یعنی یک سند در فرمت DOT یا DOTX باشد، می تواند یک سند معمولی در فرمت DOC یا DOCX باشد. شما باید برخی از زمینه های خاص به نام merge fields را در این قالب در مکان هایی که می خواهید داده ها از منبع داده شما بعدا وارد شوند، وارد کنید. یا می توانید با استفاده از کلاس [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) یک قالب ادغام ایجاد کنید.

قالب ادغام شامل متن اصلی است که باید در تمام اسناد خروجی پس از انجام عملیات Mail Merge یکسان باشد. شما می توانید از هر فرمت برای قالب خود استفاده کنید اگر توانایی اضافه کردن فیلد های ادغام به آن وجود داشته باشد. تمام فیلد های ادغام در قالب شما از منبع داده شما در طول عملیات Mail Merge پر خواهد شد.

## انواع منبع داده برای یک عملیات Mail Merge {#data-source-types-for-a-mail-merge-operation}

در حال حاضر Aspose.Words برای Python via .NET Mail Merge فقط یک آرایه از مقادیر را به عنوان یک منبع داده قبول می کند. انواع دیگر در نسخه های آینده اضافه خواهد شد.

مثال کد زیر نشان می دهد که چگونه یک قالب ساده ایجاد کنید و آن را با داده ها با استفاده از قابلیت Mail Merge پر کنید:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Mail Merge and Reporting-base_operations-SimpleMailMerge.py" >}}


## اسناد ادغام شده یک عملیاتMail Merge {#merged-documents-of-a-mail-merge-operation}

یک سند ادغام شده نتیجه عملیات Mail Merge است که شما قالب را با منبع داده ادغام می کنید. تمام فیلد های ادغام شده در سند ادغام شده با داده های واقعی از منبع داده شما جایگزین می شوند.

تصویر زیر نمونه ای از قالب merge با merged fields را قبل از انجام عملیات Mail Merge نشان می دهد.

![mail-merge-and-reporting-fields-aspose-words-net](mail-merge-and-reporting-1.jpg)

تصویر زیر نمونه ای از سند ادغام شده خروجی را در نتیجه انجام عملیات Mail Merge نشان می دهد.

![mail-merge-and-reporting-result-aspose-words-net](mail-merge-and-reporting-2.jpg)

## بایگانی برچسب برای:

- [با قالب های Mail Merge در Wordکار کنید](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)