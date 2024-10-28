---
title: گزینه های ذخیره را در C++مشخص کنید
second_title: Aspose.Words برای C++
articleTitle: گزینه های ذخیره را مشخص کنید
linktitle: گزینه های ذخیره را مشخص کنید
description: "با دقت بیشتری فرآیند ذخیره را کنترل کنید."
type: docs
weight: 10
url: /fa/cpp/specify-save-options/
---

هنگام ذخیره یک سند، می توانید برخی از ویژگی های پیشرفته را تنظیم کنید. Aspose.Words کلاس [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/) را برای شما فراهم می کند که اجازه کنترل دقیق تر فرآیند ذخیره را می دهد. اضافه بار روش **Save** وجود دارد که یک شی **SaveOptions** را قبول می کند – باید یک شی از یک کلاس باشد که از کلاس **SaveOptions** مشتق شده است. هر فرمت ذخیره دارای یک کلاس مربوطه است که گزینه های ذخیره را برای این فرمت ذخیره نگه می دارد، به عنوان مثال، [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) برای ذخیره به PDF فرمت، [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions) برای ذخیره به Markdown فرمت، یا [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/) برای ذخیره به یک تصویر وجود دارد. این مقاله نمونه هایی از کار با برخی از کلاس های گزینه های مشتق شده از **SaveOptions** را ارائه می دهد.

مثال کد زیر نشان می دهد که چگونه گزینه های ذخیره را قبل از ذخیره سند به HTMLتنظیم کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cpp" >}}

{{% alert color="primary" %}}

شما می توانید فایل قالب این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

این مقاله چند ویژگی را که می توانید هنگام ذخیره یک سند کنترل کنید، توصیف می کند.

## رمزگذاری یک سند با رمز عبور

از ویژگی **Password** برای دریافت یا تنظیم رمز عبور برای یک سند رمزگذاری شده استفاده کنید. از ویژگی **Password** کلاس مربوطه برای کار با فرمت سند انتخاب شده استفاده کنید.

به عنوان مثال، هنگام ذخیره یک سند به فرمت DOC یا DOT، از ویژگی [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) کلاس [DocSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.doc_save_options) استفاده کنید.

مثال کد زیر نشان می دهد که چگونه یک رمز عبور برای رمزگذاری یک سند با استفاده از روش رمزگذاری RC4 تنظیم کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cpp" >}}

هنگام ذخیره یک سند به فرمت ODT، از ویژگی [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/get_password/) کلاس [OdtSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.odt_save_options) استفاده کنید.

مثال کد زیر نشان می دهد که چگونه OpenDocument رمزگذاری شده با یک رمز عبور را بارگذاری و ذخیره کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cpp" >}}

همه فرمت ها از رمزگذاری و استفاده از ویژگی **Password** پشتیبانی نمی کنند.

## نمایش اطلاعیه های پیشرفت صرفه جویی در اسناد

Aspose.Words امکان استفاده از ویژگی [ProgressCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_progresscallback/) را برای دریافت اطلاعیه در مورد پیشرفت صرفه جویی در اسناد فراهم می کند.

در حال حاضر در دسترس است زمانی که صرفه جویی به DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, یا فرمت های TXT

## زمان ایجاد سند را به روز کنید

Aspose.Words توانایی استفاده از ویژگی [CreatedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_createdtime/) را برای دریافت یا تنظیم تاریخ ایجاد سند در UTC فراهم می کند. شما همچنین می توانید این مقدار را قبل از ذخیره با استفاده از گزینه [UpdateCreatedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatecreatedtimeproperty/) به روز کنید.

مثال کد زیر نشان می دهد که چگونه زمان ایجاد سند را به روز کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.cpp" >}}

## آخرین ملک ذخیره شده را به روز کنید

Aspose.Words توانایی استفاده از ویژگی [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/set_updatelastsavedtimeproperty/) را برای دریافت یا تعیین مقدار تعیین کننده اینکه آیا ویژگی [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) قبل از ذخیره به روز شده است، فراهم می کند.

مثال کد زیر نشان می دهد که چگونه این ویژگی را تنظیم کنید و سند را ذخیره کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cpp" >}}

## ذخیره تصویر سیاه و سفید با یک بیت در هر فرمت پیکسل

برای کنترل گزینه های ذخیره تصویر، از کلاس **ImageSaveOptions** استفاده می شود. به عنوان مثال، می توانید از ویژگی [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_pixelformat/) برای تنظیم فرمت پیکسل برای تصاویر تولید شده استفاده کنید. لطفا توجه داشته باشید که فرمت پیکسل تصویر خروجی ممکن است با مقدار تنظیم شده به دلیل کار GDI+متفاوت باشد.

مثال کد زیر نشان می دهد که چگونه یک تصویر سیاه و سفید را با یک بیت در هر فرمت پیکسل ذخیره کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cpp" >}}
