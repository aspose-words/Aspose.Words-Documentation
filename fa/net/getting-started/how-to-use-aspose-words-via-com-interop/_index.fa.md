---
title: Aspose.Words برای .NET از طریق COM Interop
second_title: Aspose.Words برای .NET
articleTitle: نحوه استفاده از Aspose.Words برای .NET از طریق COM Interop
linktitle: نحوه استفاده از Aspose.Words برای .NET از طریق COM Interop
type: docs
description: "از Aspose.Words برای .NET از طریق COM Interop در Python، PHP، VBScript، JScript و سایر زبان های برنامه نویسی استفاده کنید."
weight: 130
url: /fa/net/how-to-use-aspose-words-via-com-interop/
timestamp: 2024-09-25-11-08-55
---

اطلاعات موجود در این مبحث برای سناریوهایی اعمال می شود که می خواهید از Aspose.Words برای .NET از طریق COM Interop در هر یک از زبان های برنامه نویسی زیر استفاده کنید:

- ASP
- Delphi ([مثال](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/ReleasePreparation/Showcases/Aspose_Words_for_NET_via_COM_Delphi))
- JScript
- Perl
- PHP
- پاور بیلدر
- Python
- VBScript
- Visual Basic

## با COM Interop کار کنید

Aspose.Words برای .NET تحت کنترل .NET Framework اجرا می شود و به آن کد مدیریت شده می گویند. کد نوشته شده به تمام زبان های فوق خارج از .NET Framework اجرا می شود و به آن کد مدیریت نشده می گویند. تعامل بین کد مدیریت نشده و Aspose.Words از طریق تسهیلات .NET به نام COM Interop انجام می شود.

اشیاء Aspose.Words اشیاء .NET هستند، اما هنگامی که از طریق COM Interop استفاده می شوند، به عنوان اشیاء COM در زبان برنامه نویسی شما ظاهر می شوند. بنابراین، بهتر است قبل از شروع استفاده از Aspose.Words از نحوه ایجاد و استفاده از اشیاء COM در زبان برنامه نویسی خود مطمئن شوید.

در اینجا موضوعاتی وجود دارد که در نهایت باید به آنها مسلط شوید:

- استفاده از اشیاء COM در زبان برنامه نویسی شما. مستندات زبان برنامه نویسی خود و موضوعات خاص زبان را در ادامه این مستندات مشاهده کنید.
- کار با اشیاء COM در معرض .NET COM Interop. [Interoperating با کد مدیریت نشده](https://learn.microsoft.com/en-us/dotnet/framework/interop/) و [قرار دادن اجزای .NET Framework در معرض COM](https://learn.microsoft.com/en-us/dotnet/framework/interop/exposing-dotnet-components-to-com) را در MSDN ببینید.
- مدل شی سند Aspose.Words. Aspose.Words [راهنمای توسعه دهنده](/words/fa/net/developer-guide/) و [API Reference](https://reference.aspose.com/words/net/) را ببینید.

## ثبت Aspose.Words برای .NET با COM Interop

بعد از [نصب و راه اندازی](/words/fa/net/installation/)، باید Aspose.Words را برای COM Interop با استفاده از ابزار `regasm.exe` ثبت کنید.

`regasm.exe` ابزاری است که در .NET Framework SDK گنجانده شده است. همه ابزارهای .NET Framework SDK در فهرست `%windir%\Microsoft .NET\Framework\<FrameworkVersion>\` قرار دارند، برای مثال *C:\Windows\Microsoft .NET\Framework\v4.0.30319*.

برای دریافت فایل tlb، `C:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe <installdir>\lib\net40-client\Aspose.Words.dll /tlb /codebase` را در cmd اجرا کنید، جایی که `<installdir>` دایرکتوری ای است که Aspose.Words را در آن نصب کرده اید، معمولاً `%USERPROFILE%\.nuget\packages\aspose.words\`.

## کار با Aspose.Words از طریق COM Interop

### ProgIDs

ProgID مخفف "شناسه برنامه‌ای" است، این نام یک کلاس `COM` است که برای ایجاد یک شی باید از آن استفاده کنید.

در حال حاضر، Aspose.Words چهار شیء COM قابل ایجاد عمومی را تعریف می کند. ProgIDs آنها عبارتند از:

- ComHelper
- سند
- DocumentBuilder
- مجوز

ProgIDs از نام کتابخانه ("Aspose.Words") و نام کلاس تشکیل شده است.

### کتابخانه تایپ کنید

در حین نصب، Aspose.Words.tlb (کتابخانه نوع COM) در رایانه شما کپی می شود:

- برای .NET Framework 4.0 تا **<installdir>\lib\net40-client**

اگر زبان برنامه نویسی شما (به عنوان مثال Visual Basic یا Delphi) به شما اجازه می دهد به یک کتابخانه نوع `COM` ارجاع دهید، سپس یک مرجع به **Aspose.Words.tlb** اضافه کنید و می توانید تمام کلاس ها، روش ها، ویژگی ها و شمارش های Aspose.Words را در مرورگر شی خود مشاهده کنید.

### ایجاد اشیاء COM

ایجاد یک شیء .NET مشابه ایجاد یک شیء معمولی COM است:

**VBScript**

```
کمک کننده کم نور
Set helper = CreateObject ("Aspose.Words.ComHelper")
 
```

پس از ایجاد، می‌توانید به روش‌ها و ویژگی‌های شی دسترسی داشته باشید، گویی یک شی `COM` است:

**VBScript**

```
سند کم نور
تنظیم doc = helper.Open("C:\my.doc")
 
```

برخی از روش ها دارای اضافه بار هستند و توسط COM Interop با پسوند عددی اضافه می شوند، به جز روش اول که بدون تغییر باقی می ماند. به عنوان مثال، اضافه بارهای متد `Document.Save` تبدیل به `Document.Save`، `Document.Save_2`، `Document.Save_3` و غیره می شوند.

برای کسب اطلاعات بیشتر، مقالات مربوط به زبان را در ادامه این مستندات ببینید.

### ایجاد یک مجموعه Wrapper

اگر نیاز به استفاده از بسیاری از کلاس‌ها، روش‌ها و ویژگی‌های Aspose.Words دارید، ایجاد یک اسمبلی wrapper (با استفاده از C# یا هر زبان برنامه‌نویسی .NET دیگری) را در نظر بگیرید، که به جلوگیری از استفاده مستقیم از Aspose.Words از کد مدیریت‌نشده کمک می‌کند.

یک رویکرد خوب، توسعه یک اسمبلی .NET است که به Aspose.Words ارجاع دهد و تمام کارها را با آن انجام دهد و تنها مجموعه حداقلی از کلاس‌ها و متدها را در معرض کدهای مدیریت نشده قرار دهد. سپس برنامه شما باید فقط با کتابخانه wrapper شما کار کند.

کاهش تعداد کلاس ها و روش هایی که باید از طریق COM Interop فراخوانی کنید می تواند پروژه شما را ساده کند، زیرا استفاده از کلاس های .NET از طریق COM Interop اغلب به مهارت های پیشرفته نیاز دارد.
