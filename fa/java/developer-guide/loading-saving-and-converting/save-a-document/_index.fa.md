---
title: ذخیره یک سند در Java
second_title: Aspose.Words برای Java
articleTitle: ذخیره یک سند
linktitle: ذخیره یک سند
type: docs
description: "ذخیره یک سند در هر فرمت پشتیبانی شده با استفاده از Java..."
weight: 20
url: /fa/java/save-a-document/
timestamp: 2024-01-27-14-07-04
---

بیشتر کارهایی که باید انجام دهید Aspose.Words شامل صرفه جویی در یک سند برای نجات یک سند Aspose.Words فراهم می کند [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String)روش [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) کلاس این سند را می توان در هر فرمت ذخیره شده پشتیبانی شده توسط Aspose.Words... برای لیست تمام فرمت های ذخیره پشتیبانی شده، ببینید [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) تکرار

## Save to a File {#save-a-document-to-a-file}

استفاده از [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String) روش با یک نام فایل Aspose.Words فرمت ذخیره را از پسوند فایل که مشخص می کنید، تعیین می کند.

مثال کد زیر نشان می دهد که چگونه یک سند را به یک فایل بارگذاری و ذخیره کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل قالب این مثال را دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)...

{{% /alert %}}

## صرفه جویی در یک جریان {#save-a-document-to-a-stream}

Pass a Flow Object to the [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) روش لازم است که قالب صرفه جویی را به طور واضح در هنگام صرفه جویی در یک جریان مشخص کنید.

مثال کد زیر نشان می دهد که چگونه یک سند را به یک جریان بارگیری و ذخیره کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

شما می توانید فایل قالب این مثال را دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)...

## صرفه جویی در PCL {#save-a-document-to-pcl}

Aspose.Words پشتیبانی از صرفه جویی در یک سند در PCL (Printer Command Language) Aspose.Words می تواند اسناد را به فرمت PCL 6 (PCL 6 Enhanced یا PCL XL) ذخیره کند. The The The The The The `PclSaveOptions` کلاس می تواند برای مشخص کردن گزینه های اضافی در هنگام صرفه جویی در یک سند در فرمت PCL استفاده شود.

مثال کد زیر نشان می دهد که چگونه یک سند را به PCL با استفاده از گزینه های صرفه جویی ذخیره کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
