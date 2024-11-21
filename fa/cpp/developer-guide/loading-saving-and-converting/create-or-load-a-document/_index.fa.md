---
title: ایجاد یا بارگذاری یک سند در C++
second_title: Aspose.Words برای C++
articleTitle: ایجاد یا بارگذاری یک سند
linktitle: ایجاد یا بارگذاری یک سند
type: docs
description: "یک سند خالی ایجاد کنید یا آن را از یک فایل یا جریان با استفاده از C++ بارگذاری کنید."
keywords: "create a document c++, load a document c++, create a blank document c++, load a document from file c++, load a document from stream c++, create a document Aspose C++, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 10
url: /fa/cpp/create-or-load-a-document/
timestamp: 2024-01-27-14-07-04
---

تقریبا هر کاری که می خواهید با Aspose.Words انجام دهید شامل بارگذاری یک سند است. کلاس `Document` نشان دهنده یک سند بارگذاری شده در حافظه است. این سند دارای چندین سازنده بیش از حد بارگذاری شده است که به شما اجازه می دهد یک سند خالی ایجاد کنید یا آن را از یک فایل یا جریان بارگذاری کنید. این سند را می توان در هر فرمت بارگذاری پشتیبانی شده توسط Aspose.Words بارگذاری کرد. برای لیست تمام فرمت های بارگذاری پشتیبانی شده، به [LoadFormat](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) enumeration مراجعه کنید.

## یک سند جدید ایجاد کنید {#create-a-new-document}

ما سازنده [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) را بدون پارامتر فراخوانی می کنیم تا یک سند خالی جدید ایجاد کنیم. اگر می خواهید یک سند را به صورت برنامه ریزی شده تولید کنید، ساده ترین راه استفاده از کلاس [DocumentBuilder](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder) برای اضافه کردن محتوای سند است.

مثال کد زیر نشان می دهد که چگونه یک سند را با استفاده از سازنده سند ایجاد کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CreateDocument-CreateDocument.cpp" >}}

{{% alert color="primary" %}}

به مقادیر پیش فرض توجه کنید:

- یک سند خالی شامل یک بخش با پارامترهای پیش فرض، یک پاراگراف خالی، برخی از سبک های سند است. در واقع این سند همان نتیجه ایجاد "سند جدید" در Microsoft Word است.
- اندازه کاغذ سند [PaperSize](https://reference.aspose.com/words/cpp/aspose.words/papersize/) است.**Letter**.

{{% /alert %}}

## بارگذاری یک سند

برای بارگذاری یک سند موجود در هر یک از فرمت های `LoadFormat`، نام فایل یا جریان را به یکی از سازندگان سند منتقل کنید. فرمت سند بارگذاری شده به طور خودکار توسط پسوند آن تعیین می شود.

### بارگذاری از یک فایل {#load-from-a-file}

یک نام فایل را به عنوان یک رشته به سازنده سند منتقل کنید تا یک سند موجود را از یک فایل باز کنید.

مثال کد زیر نشان می دهد که چگونه یک سند را از یک فایل باز کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-OpenDocument.cpp" >}}

شما می توانید فایل قالب این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

### بار از یک جریان {#load-from-a-stream}

برای باز کردن یک سند از یک جریان، به سادگی یک شی جریان را که شامل سند است به سازنده سند منتقل کنید.

مثال کد زیر نشان می دهد که چگونه یک سند را از یک جریان باز کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-OpeningFromStream.cpp" >}}

{{% alert color="primary" %}}

شما می توانید فایل قالب این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
