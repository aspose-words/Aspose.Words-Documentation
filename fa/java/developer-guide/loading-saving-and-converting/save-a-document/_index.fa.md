---
title: ذخیره یک سند در Java
second_title: Aspose.Words برای Java
articleTitle: ذخیره یک سند
linktitle: ذخیره یک سند
type: docs
description: "یک سند را در هر فرمت پشتیبانی شده با استفاده از Java ذخیره کنید."
weight: 20
url: /fa/java/save-a-document/
timestamp: 2024-01-27-14-07-04
---

بیشتر کارهایی که باید با Aspose.Words انجام دهید شامل ذخیره یک سند است. برای ذخیره یک سند Aspose.Words روش [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String)) کلاس [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) را فراهم می کند. این سند را می توان در هر فرمت ذخیره ای که توسط Aspose.Words پشتیبانی می شود ذخیره کرد. برای لیست تمام فرمت های ذخیره شده پشتیبانی شده، به [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) enumeration مراجعه کنید.

## ذخیره در یک فایل {#save-a-document-to-a-file}

به سادگی از روش [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String) با نام فایل استفاده کنید. Aspose.Words فرمت ذخیره را از پسوند فایل که مشخص می کنید تعیین می کند.

مثال کد زیر نشان می دهد که چگونه یک سند را به یک فایل بارگذاری و ذخیره کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل قالب این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## ذخیره به یک جریان {#save-a-document-to-a-stream}

یک شی جریان را به روش [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) منتقل کنید. لازم است که هنگام ذخیره به یک جریان، فرمت ذخیره را به طور صریح مشخص کنید.

مثال کد زیر نشان می دهد که چگونه یک سند را به یک جریان بارگذاری و ذخیره کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

شما می توانید فایل قالب این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

## ذخیره به PCL {#save-a-document-to-pcl}

Aspose.Words از ذخیره یک سند در PCL (زبان فرمان چاپگر) پشتیبانی می کند. Aspose.Words می تواند اسناد را در فرمت PCL 6 (PCL 6 پیشرفته یا PCL XL) ذخیره کند. کلاس `PclSaveOptions` می تواند برای مشخص کردن گزینه های اضافی هنگام ذخیره یک سند در فرمت PCL استفاده شود.

مثال کد زیر نشان می دهد که چگونه یک سند را با استفاده از گزینه های ذخیره به PCL ذخیره کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
