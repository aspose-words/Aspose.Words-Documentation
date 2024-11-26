---
title: Save Options را در Python مشخص کنید
second_title: Aspose.Words برای Python via .NET
articleTitle: گزینه های ذخیره را مشخص کنید
linktitle: گزینه های ذخیره را مشخص کنید
description: "با استفاده از Python فرآیند ذخیره را با دقت بیشتری کنترل کنید."
type: docs
weight: 10
url: /fa/python-net/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

هنگام ذخیره یک سند، می توانید برخی از ویژگی های پیشرفته را تنظیم کنید. Aspose.Words کلاس [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) را در اختیار شما قرار می دهد که امکان کنترل دقیق تر فرآیند ذخیره را فراهم می کند. روش [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) اضافه بارهایی وجود دارد که یک شی [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) را می پذیرد - باید یک شی از یک کلاس مشتق شده از کلاس [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) باشد. هر فرمت ذخیره یک کلاس مربوطه دارد که گزینه های ذخیره را برای این فرمت ذخیره نگه می دارد، به عنوان مثال، [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) برای ذخیره در فرمت PDF یا [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) برای ذخیره در یک تصویر وجود دارد. این مقاله نمونه هایی از کار با برخی از کلاس های گزینه های مشتق شده از [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) را ارائه می دهد.

مثال کد زیر نحوه تنظیم گزینه های ذخیره را قبل از ذخیره سند در HTML نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

فایل قالب این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx) دانلود کنید.

{{% /alert %}}

این مقاله چند ویژگی را توضیح می دهد که می توانید هنگام ذخیره یک سند کنترل کنید.

## رمزگذاری یک سند با رمز عبور

از ویژگی **کلمه عبور** برای دریافت یا تنظیم رمز عبور برای یک سند رمزگذاری شده استفاده کنید. از ویژگی **کلمه عبور** کلاس مربوطه برای کار با قالب سند انتخاب شده استفاده کنید.

به عنوان مثال، هنگام ذخیره یک سند در فرمت DOC یا DOT، از ویژگی [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) کلاس [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) استفاده کنید.

مثال کد زیر نحوه تنظیم رمز عبور برای رمزگذاری یک سند با استفاده از روش رمزگذاری RC4 را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_doc_save_options-EncryptDocumentWithPassword.py" >}}

هنگام ذخیره یک سند در فرمت [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/)، از ویژگی [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) کلاس [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) استفاده کنید.

مثال کد زیر نحوه بارگیری و ذخیره Docx رمزگذاری شده با رمز عبور را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-EncryptDocxWithPassword.py" >}}

همه فرمت ها از رمزگذاری و استفاده از ویژگی **کلمه عبور** پشتیبانی نمی کنند.

## زمان ایجاد سند را به روز کنید

Aspose.Words امکان استفاده از ویژگی [created_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/created_time/) را برای دریافت یا تنظیم تاریخ ایجاد سند در UTC فراهم می کند. همچنین می توانید این مقدار را قبل از ذخیره با استفاده از گزینه [update_created_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_created_time_property/) به روز کنید.

مثال کد زیر نحوه به روز رسانی زمان ایجاد سند را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-UpdateIfLastPrinted.py" >}}

## آخرین ویژگی ذخیره شده را به روز کنید

Aspose.Words توانایی استفاده از ویژگی [update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) را برای دریافت یا تنظیم مقداری فراهم می کند که تعیین می کند آیا ویژگی [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) قبل از ذخیره به روز می شود یا خیر.

مثال کد زیر نحوه تنظیم این ویژگی و ذخیره سند را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

## تصویر سیاه و سفید را با فرمت یک بیت در پیکسل ذخیره کنید

برای کنترل گزینه های ذخیره تصویر از کلاس [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) استفاده می شود. به عنوان مثال، می توانید از ویژگی [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) برای تنظیم فرمت پیکسل برای تصاویر تولید شده استفاده کنید. لطفاً توجه داشته باشید که فرمت پیکسل تصویر خروجی ممکن است به دلیل کار اسکیا با مقدار تنظیم شده متفاوت باشد.

مثال کد زیر نحوه ذخیره یک تصویر سیاه و سفید با فرمت یک بیت در پیکسل را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-Format1BppIndexed.py" >}}
