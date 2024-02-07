---
title: ایجاد یا بارگذاری یک سند در Python
second_title: Aspose.Words برای Python via .NET
articleTitle: ایجاد یا بارگذاری یک سند
linktitle: ایجاد یا بارگذاری یک سند
type: docs
url: /fa/python-net/create-or-load-a-document/
description: "یک سند خالی ایجاد کنید یا آن را از یک فایل یا جریان با استفاده از Python بارگیری کنید."
keywords: "create a document python, load a document python, create a blank document python, load a document from file python, load a document from stream python, create a document Aspose python, load a document Aspose python, load formats supported by Aspose.Words python"
weight: 10
---

تقریباً هر کاری که می خواهید با Aspose.Words انجام دهید شامل بارگیری یک سند است. کلاس [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) نشان دهنده یک سند بارگذاری شده در حافظه است. سند دارای چندین سازنده بارگذاری شده است که به شما امکان می دهد یک سند خالی ایجاد کنید یا آن را از یک فایل یا جریان بارگیری کنید. سند را می توان در هر فرمت بارگیری که توسط Aspose.Words پشتیبانی می شود بارگیری کرد. برای لیست همه فرمت های بار پشتیبانی شده، به شمارش [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) مراجعه کنید.

## یک سند جدید ایجاد کنید

برای ایجاد یک سند خالی جدید، سازنده [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) را بدون پارامتر فراخوانی می کنیم. اگر می خواهید یک سند را به صورت برنامه نویسی تولید کنید، ساده ترین راه استفاده از کلاس [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) برای افزودن محتوای سند است.

مثال کد زیر نحوه ایجاد سند با استفاده از سازنده سند را نشان می دهد:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
            
builder.write("Hello world!")

doc.save(docs_base.artifacts_dir + "out.docx")
{{< /highlight >}}

{{% alert color="primary" %}}

به مقادیر پیش فرض توجه کنید:

- یک سند خالی شامل یک بخش با پارامترهای پیش فرض، یک پاراگراف خالی، چند سبک سند است. در واقع این سند همان نتیجه ایجاد "سند جدید" در Microsoft Word است.
- اندازه کاغذ سند [PaperSize.LETTER](https://reference.aspose.com/words/python-net/aspose.words/papersize/#letter) است.

{{% /alert %}}

## یک سند را بارگیری کنید

برای بارگذاری یک سند موجود در هر یک از فرمت‌های [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/)، نام فایل یا جریان را به یکی از سازنده‌های [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) منتقل کنید. قالب سند بارگیری شده به طور خودکار با پسوند آن تعیین می شود.

### بارگیری از یک فایل

یک نام فایل را به عنوان رشته به سازنده [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) ارسال کنید تا یک سند موجود از یک فایل باز شود.

مثال کد زیر نحوه باز کردن یک سند از یک فایل را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpenDocument.py" >}}

فایل قالب این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx) دانلود کنید.

### بارگیری از یک جریان

برای باز کردن یک سند از یک جریان، به سادگی یک شی جریان که حاوی سند است را به سازنده [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) منتقل کنید.

مثال کد زیر نحوه باز کردن یک سند از یک جریان را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpeningFromStream.py" >}}

{{% alert color="primary" %}}

فایل قالب این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx) دانلود کنید.

{{% /alert %}}
