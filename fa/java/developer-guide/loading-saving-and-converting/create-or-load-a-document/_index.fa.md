---
title: ایجاد یا بارگذاری یک سند در Java
second_title: Aspose.Words برای Java
articleTitle: ایجاد یا بارگذاری یک سند
linktitle: ایجاد یا بارگذاری یک سند
type: docs
weight: 10
url: /fa/java/create-or-load-a-document/
description: "Aspose.Words شما را قادر می سازد تا یک سند سفید ایجاد کنید یا آن را از یک فایل یا جریان بارگیری کنید. Java..."
timestamp: 2024-01-27-14-07-04
---

تقریبا هر کاری که می خواهید انجام دهید Aspose.Words شامل بارگیری یک سند است. The The The The The The `Document` کلاس نشان دهنده یک سند بارگذاری شده در حافظه است. این سند چندین سازنده اضافی دارد که به شما اجازه می دهد یک سند سفید ایجاد کنید یا آن را از یک فایل یا جریان بارگیری کنید. این سند را می توان در هر فرمت بار پشتیبانی شده توسط Aspose.Words... برای لیست تمام فرمت های بار پشتیبانی شده، ببینید [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) تکرار

## ایجاد یک سند جدید {#create-a-new-document}

ما تماس می گیریم [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) سازنده بدون پارامتر برای ایجاد یک سند سفید جدید اگر می خواهید یک برنامه سند را به صورت موضوعی تهیه کنید، ساده ترین راه استفاده از آن است. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder) کلاس برای اضافه کردن مطالب سند

مثال کد زیر نشان می دهد که چگونه یک سند را با استفاده از سازنده سند ایجاد کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

به ارزش های پیش فرض توجه کنید:

- یک سند سفید شامل یک بخش با پارامترهای پیش فرض، یک پاراگراف خالی، برخی از سبک های سند است. در واقع این سند همان نتیجه ی ایجاد "سند جدید" است. Microsoft Word...
- اندازه کاغذ سند [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/)...**Letter**...

{{% /alert %}}

## Load a Document

برای بارگیری یک سند موجود در هر یک از [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) فرمت ها، نام فایل یا جریان را به یکی از سازنده های سند منتقل کنید. فرمت سند بارگذاری شده به طور خودکار توسط پسوند آن تعیین می شود.

### بارگذاری از یک فایل {#load-from-a-file}

یک نام فایل را به عنوان یک رشته به سازنده سند برای باز کردن یک سند موجود از یک فایل ارسال کنید.

مثال کد زیر نشان می دهد که چگونه یک سند را از یک فایل باز کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

شما می توانید فایل قالب این مثال را دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)...

### بارگذاری از یک جریان {#load-from-a-stream}

برای باز کردن یک سند از یک جریان، به سادگی یک شیء جریان را که حاوی سند به سازنده سند است، منتقل کنید.

مثال کد زیر نشان می دهد که چگونه یک سند را از یک جریان باز کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل قالب این مثال را دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)...

{{% /alert %}}
