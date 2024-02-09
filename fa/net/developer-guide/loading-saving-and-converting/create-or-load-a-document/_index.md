---
title: ایجاد یا بارگذاری یک سند در C#
second_title: Aspose.Words برای .NET
articleTitle: ایجاد یا بارگذاری یک سند
linktitle: ایجاد یا بارگذاری یک سند
type: docs
url: /fa/net/create-or-load-a-document/
description: "یک سند خالی ایجاد کنید یا آن را از یک فایل یا جریان با استفاده از C# بارگیری کنید."
keywords: "create a document c#, load a document c#, create a blank document c#, load a document from file c#, load a document from stream c#, create a document Aspose .NET, load a document Aspose .NET, load formats supported by Aspose.Words .NET"
weight: 10
---

تقریباً هر کاری که می خواهید با Aspose.Words انجام دهید شامل بارگیری یک سند است. کلاس `Document` نشان دهنده یک سند بارگذاری شده در حافظه است. سند دارای چندین سازنده بارگذاری شده است که به شما امکان می دهد یک سند خالی ایجاد کنید یا آن را از یک فایل یا جریان بارگیری کنید. سند را می توان در هر قالب بارگیری که توسط Aspose.Words پشتیبانی می شود بارگیری کرد. برای فهرست همه فرمت‌های بار پشتیبانی شده، به شمارش [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) مراجعه کنید.

## یک سند جدید {#create-a-new-document} ایجاد کنید

برای ایجاد یک سند خالی جدید، سازنده [Document](https://reference.aspose.com/words/net/aspose.words/document/document/) را بدون پارامتر فراخوانی می کنیم. اگر می خواهید یک سند را به صورت برنامه نویسی تولید کنید، ساده ترین راه استفاده از کلاس [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) برای افزودن محتوای سند است.

مثال کد زیر نحوه ایجاد سند با استفاده از سازنده سند را نشان می دهد:

{{< gist "aspose-words-gists" "16b9cfe5420b6e033f90a45263eef020" "create-docx.cs" >}}

{{% alert color="primary" %}}

به مقادیر پیش فرض توجه کنید:

- یک سند خالی شامل یک بخش با پارامترهای پیش فرض، یک پاراگراف خالی، چند سبک سند است. در واقع این سند همان نتیجه ایجاد "سند جدید" در Microsoft Word است.
- اندازه کاغذ سند [PaperSize](https://reference.aspose.com/words/net/aspose.words/papersize/).**Letter** است.

{{% /alert %}}

## یک سند {#load-a-document} را بارگیری کنید

برای بارگیری یک سند موجود در هر یک از فرمت‌های [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/)، نام فایل یا جریان را به یکی از سازنده‌های سند منتقل کنید. قالب سند بارگیری شده به طور خودکار با پسوند آن تعیین می شود.

### بارگیری از یک فایل {#load-from-a-file}

یک نام فایل را به عنوان رشته به سازنده سند ارسال کنید تا یک سند موجود از یک فایل باز شود.

مثال کد زیر نحوه باز کردن یک سند از یک فایل را نشان می دهد:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx.cs" >}}

فایل قالب این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) دانلود کنید.

### بارگیری از جریان {#load-from-a-stream}

برای باز کردن یک سند از یک جریان، به سادگی یک شی جریان که حاوی سند است را به سازنده سند منتقل کنید.

مثال کد زیر نحوه باز کردن یک سند از یک جریان را نشان می دهد:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx-stream.cs" >}}

{{% alert color="primary" %}}

فایل قالب این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) دانلود کنید.

{{% /alert %}}
