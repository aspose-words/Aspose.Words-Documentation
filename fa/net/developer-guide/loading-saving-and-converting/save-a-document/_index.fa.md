---
title: یک سند را در C# ذخیره کنید
second_title: Aspose.Words برای .NET
articleTitle: ذخیره یک سند
linktitle: ذخیره یک سند
type: docs
description: "با استفاده از C# یک سند را در هر قالب پشتیبانی شده ذخیره کنید."
keywords: "save a document c#, save a document to file c#, save a document to stream c#, save a document Aspose .NET, save formats supported by Aspose.Words .NET"
weight: 20
url: /fa/net/save-a-document/
timestamp: 2024-07-09-19-00-42
---

بیشتر کارهایی که باید با Aspose.Words انجام دهید شامل ذخیره یک سند است. برای ذخیره یک سند، Aspose.Words روش [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) از کلاس [Document](https://reference.aspose.com/words/net/aspose.words/document/) را ارائه می دهد. اضافه بارهایی وجود دارد که اجازه می دهد یک سند را در یک فایل، جریان یا شی ASP.NET HttpResponse برای ارسال به مرورگر مشتری ذخیره کنید. سند را می توان در هر قالب ذخیره ای که توسط Aspose.Words پشتیبانی می شود ذخیره کرد. برای لیست همه فرمت های ذخیره پشتیبانی شده، به شمارش [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) مراجعه کنید.

## در یک فایل {#save-a-document-to-a-file} ذخیره کنید

به سادگی از روش [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) با نام فایل استفاده کنید. Aspose.Words فرمت ذخیره را از پسوند فایلی که شما مشخص کرده اید تعیین می کند.

مثال کد زیر نحوه بارگیری و ذخیره یک سند در یک فایل را نشان می دهد:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save.cs" >}}

{{% alert color="primary" %}}

فایل قالب این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.doc) دانلود کنید.

{{% /alert %}}

## در یک Stream {#save-a-document-to-a-stream} ذخیره کنید

ارسال یک شی جریان به متد [Save](https://reference.aspose.com/words/net/aspose.words/document/save/). هنگام ذخیره در یک جریان، باید فرمت ذخیره را به صراحت مشخص کنید.

مثال کد زیر نحوه بارگیری و ذخیره یک سند در یک جریان را نشان می دهد:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save-stream.cs" >}}

{{% alert color="primary" %}}

فایل قالب این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) دانلود کنید.

{{% /alert %}}

## یک سند را به یک مرورگر مشتری {#sending-a-document-to-a-client-browser} ارسال کنید

برای ارسال یک سند به مرورگر مشتری، از یک اضافه بار ویژه استفاده کنید که چهار پارامتر را می گیرد: نام فایل، فرمت ذخیره، نوع ذخیره و یک شی HttpResponse ASP.NET. روشی که سند به کاربر ارائه خواهد شد با شمارش [ContentDisposition](https://reference.aspose.com/words/net/aspose.words/contentdisposition/) نشان داده می شود، که تعیین می کند آیا سند ارسال شده به مرورگر گزینه ای برای باز کردن مستقیم خود در مرورگر یا در برنامه مرتبط با پسوند فایل ارائه می دهد یا خیر.

مثال کد زیر نحوه ارسال یک سند به مرورگر مشتری از کد ASP.NET را نشان می دهد:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "send-to-client-browser.cs" >}}

{{% alert color="primary" %}}

فایل قالب این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) دانلود کنید.

{{% /alert %}}

این اضافه بار روش `Save` هنگام استفاده از .NET Client Profile DLL در دسترس نیست. این DLL در پوشه **net3.5_ClientProfile** قرار دارد. نمایه مشتری .NET مجموعه هایی مانند **System.Web** را مستثنی می کند، بنابراین **HttpResponse** در دسترس نیست. این کاملا با طراحی است.

این ممکن است به عنوان یک خطا ظاهر شود:

**"بدون اضافه بار برای روش "ذخیره" پارامترهای "4" را می گیرد."**

اگر نیاز به استفاده از Aspose.Words در برنامه ASP.NET دارید، توصیه می شود از DLL .NET 2.0 در جایی که اضافه بار صحیح در دسترس است استفاده کنید، همانطور که در این مقاله توضیح داده شده است.

## در PCL {#save-a-document-to-pcl} ذخیره کنید

Aspose.Words از ذخیره یک سند در PCL (زبان دستور چاپگر) پشتیبانی می کند. Aspose.Words می تواند اسناد را در قالب PCL 6 (PCL 6 Enhanced یا PCL XL) ذخیره کند. کلاس `PclSaveOptions` می تواند برای تعیین گزینه های اضافی هنگام ذخیره یک سند در قالب PCL استفاده شود.

مثال کد زیر نحوه ذخیره یک سند در PCL را با استفاده از گزینه های ذخیره نشان می دهد:

{{< gist "aspose-words-gists" "b5a3c7ccb6e79a15c8d9d65e050a881b" "docx-to-pcl.cs" >}}

## همچنین ببینید

- اطلاعات در مورد شیء ASP.NET [HttpResponse](https://docs.microsoft.com/en-us/dotnet/api/system.web.httpresponse?view=netframework-4.8)
