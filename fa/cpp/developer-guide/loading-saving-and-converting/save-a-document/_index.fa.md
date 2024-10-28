---
title: ذخیره یک سند در C++
second_title: Aspose.Words برای C++
articleTitle: ذخیره یک سند
linktitle: ذخیره یک سند
type: docs
description: "یک سند را در هر فرمت پشتیبانی شده با استفاده از C++ ذخیره کنید."
keywords: "save a document c++, save a document to file c++, save a document to stream c++, save a document Aspose C++, save formats supported by Aspose.Words C++"
weight: 20
url: /fa/cpp/save-a-document/
---

بیشتر کارهایی که باید با Aspose.Words انجام دهید شامل ذخیره یک سند است. برای ذخیره یک سند Aspose.Words روش [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) کلاس [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) را فراهم می کند. این سند را می توان در هر فرمت ذخیره ای که توسط Aspose.Words پشتیبانی می شود ذخیره کرد. برای لیست تمام فرمت های ذخیره شده پشتیبانی شده، به [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) enumeration مراجعه کنید.

## ذخیره در یک فایل {#save-a-document-to-a-file}

به سادگی از روش [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) با نام فایل استفاده کنید. Aspose.Words فرمت ذخیره را از پسوند فایل که مشخص می کنید تعیین می کند.

مثال کد زیر نشان می دهد که چگونه یک سند را به یک فایل بارگذاری و ذخیره کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-LoadAndSave.cpp" >}}

{{% alert color="primary" %}}

شما می توانید فایل قالب این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## ذخیره به یک جریان {#save-a-document-to-a-stream}

یک شی جریان را به روش [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) منتقل کنید. لازم است که هنگام ذخیره به یک جریان، فرمت ذخیره را به طور صریح مشخص کنید.

مثال کد زیر نشان می دهد که چگونه یک سند را به یک جریان بارگذاری و ذخیره کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-LoadAndSaveToStream.cpp" >}}

شما می توانید فایل قالب این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).


## ذخیره به PCL {#save-a-document-to-pcl}

Aspose.Words از ذخیره یک سند در PCL (زبان فرمان چاپگر) پشتیبانی می کند. Aspose.Words می تواند اسناد را در PCL 6 (PCL 6 فرمت پیشرفته یا PCL XL). کلاس `PclSaveOptions` می تواند برای مشخص کردن گزینه های اضافی هنگام ذخیره یک سند در فرمت PCL استفاده شود.

مثال کد زیر نشان می دهد که چگونه یک سند را با استفاده از گزینه های ذخیره به PCL ذخیره کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToPCL-ConvertDocumentToPCL.cpp" >}}
