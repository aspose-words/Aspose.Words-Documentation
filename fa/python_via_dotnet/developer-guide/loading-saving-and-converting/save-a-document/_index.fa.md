---
title: یک سند را در Python ذخیره کنید
second_title: Aspose.Words برای Python via .NET
articleTitle: ذخیره یک سند
linktitle: ذخیره یک سند
type: docs
description: "با استفاده از Python یک سند را در هر قالب پشتیبانی شده ذخیره کنید."
keywords: "save a document python, save a document to file python, save a document to stream python, save a document Aspose python, save formats supported by Aspose.Words python"
weight: 20
url: /fa/python-net/save-a-document/
timestamp: 2024-01-27-14-07-04
---

بیشتر کارهایی که باید با Aspose.Words انجام دهید شامل ذخیره یک سند است. برای ذخیره یک سند، Aspose.Words روش [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) از کلاس [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) را ارائه می دهد. اضافه بارهایی وجود دارد که اجازه می دهد یک سند را در یک فایل یا جریان ذخیره کنید. سند را می توان در هر قالب ذخیره ای که توسط Aspose.Words پشتیبانی می شود ذخیره کرد. برای لیست همه فرمت های ذخیره پشتیبانی شده، به شمارش [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) مراجعه کنید.

## یک سند را در یک فایل {#save-a-document-to-a-file} ذخیره کنید

به سادگی از روش [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) با نام فایل استفاده کنید. Aspose.Words فرمت ذخیره را از پسوند فایلی که شما مشخص کرده اید تعیین می کند.

مثال کد زیر نحوه بارگیری و ذخیره یک سند در یک فایل را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSave.py" >}}

{{% alert color="primary" %}}

فایل قالب این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx) دانلود کنید.

{{% /alert %}}

## یک سند را در Stream {#save-a-document-to-a-stream} ذخیره کنید

ارسال یک شی جریان به متد [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). هنگام ذخیره در یک جریان، باید فرمت ذخیره را به صراحت مشخص کنید.

مثال کد زیر نحوه بارگیری و ذخیره یک سند در یک جریان را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSaveToStream.py" >}}

فایل قالب این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx) دانلود کنید.

## یک سند را در PCL {#save-a-document-to-pcl} ذخیره کنید

Aspose.Words از ذخیره یک سند در PCL (زبان دستور چاپگر) پشتیبانی می کند. Aspose.Words می تواند اسناد را در قالب PCL 6 (PCL 6 Enhanced یا PCL XL) ذخیره کند. کلاس [PclSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pclsaveoptions/) می تواند برای تعیین گزینه های اضافی هنگام ذخیره یک سند در قالب PCL استفاده شود.

مثال کد زیر نحوه ذخیره یک سند در PCL را با استفاده از گزینه های ذخیره نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pcl_save_options-RasterizeTransformedElements.py" >}}

