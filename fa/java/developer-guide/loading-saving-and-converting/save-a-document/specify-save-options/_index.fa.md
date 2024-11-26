---
title: گزینه های ذخیره را در Javaمشخص کنید
second_title: Aspose.Words برای Java
articleTitle: گزینه های ذخیره را مشخص کنید
linktitle: گزینه های ذخیره را مشخص کنید
description: "تنظیم ویژگی های پیشرفته هنگام ذخیره یک سند با استفاده از Java برای ارائه کنترل دقیق تر بر روی فرآیند."
type: docs
weight: 20
url: /fa/java/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

هنگام ذخیره یک سند، می توانید برخی از ویژگی های پیشرفته را تنظیم کنید. Aspose.Words کلاس [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/) را برای شما فراهم می کند که اجازه کنترل دقیق تر فرآیند ذخیره را می دهد. اضافه بار روش **Save** وجود دارد که یک شی **SaveOptions** را قبول می کند – باید یک شی از یک کلاس باشد که از کلاس **SaveOptions** مشتق شده است. هر فرمت ذخیره دارای یک کلاس مربوطه است که گزینه های ذخیره را برای این فرمت ذخیره نگه می دارد، به عنوان مثال، [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) برای ذخیره به PDF فرمت، [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) برای ذخیره به Markdown فرمت، یا [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) برای ذخیره به یک تصویر وجود دارد. این مقاله نمونه هایی از کار با برخی از کلاس های گزینه های مشتق شده از **SaveOptions** را ارائه می دهد.

مثال کد زیر نشان می دهد که چگونه گزینه های ذخیره را قبل از ذخیره سند به HTMLتنظیم کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

شما می توانید فایل قالب این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

این مقاله چند ویژگی را که می توانید هنگام ذخیره یک سند کنترل کنید، توصیف می کند.

## رمزگذاری یک سند با رمز عبور

از ویژگی **Password** برای دریافت یا تنظیم رمز عبور برای یک سند رمزگذاری شده استفاده کنید. از ویژگی **Password** کلاس مربوطه برای کار با فرمت سند انتخاب شده استفاده کنید.

به عنوان مثال، هنگام ذخیره یک سند به فرمت DOC یا DOT، از ویژگی [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) کلاس [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) استفاده کنید.

مثال کد زیر نشان می دهد که چگونه یک رمز عبور برای رمزگذاری یک سند با استفاده از روش رمزگذاری RC4 تنظیم کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

هنگام ذخیره یک سند به فرمت ODT، از ویژگی [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) کلاس [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/) استفاده کنید.

مثال کد زیر نشان می دهد که چگونه OpenDocument رمزگذاری شده با یک رمز عبور را بارگذاری و ذخیره کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

همه فرمت ها از رمزگذاری و استفاده از ویژگی **Password** پشتیبانی نمی کنند.

## نمایش اطلاعیه های پیشرفت صرفه جویی در اسناد

Aspose.Words امکان استفاده از ویژگی [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) را برای دریافت اطلاعیه در مورد پیشرفت صرفه جویی در اسناد فراهم می کند.

در حال حاضر در دسترس است زمانی که صرفه جویی به DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, یا فرمت های TXT

## زمان ایجاد سند را به روز کنید

Aspose.Words توانایی استفاده از ویژگی [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) را برای دریافت یا تنظیم تاریخ ایجاد سند در UTC فراهم می کند. شما همچنین می توانید این مقدار را قبل از ذخیره با استفاده از گزینه [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty) به روز کنید.

مثال کد زیر نشان می دهد که چگونه زمان ایجاد سند را به روز کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## آخرین ملک ذخیره شده را به روز کنید

Aspose.Words توانایی استفاده از ویژگی [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) را برای دریافت یا تنظیم یک مقدار تعیین می کند که آیا ویژگی [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) قبل از ذخیره به روز شده است.

مثال کد زیر نشان می دهد که چگونه این ویژگی را تنظیم کنید و سند را ذخیره کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## ذخیره تصویر سیاه و سفید با یک بیت در هر فرمت پیکسل

برای کنترل گزینه های ذخیره تصویر، از کلاس **ImageSaveOptions** استفاده می شود. به عنوان مثال، می توانید از ویژگی [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) برای تنظیم فرمت پیکسل برای تصاویر تولید شده استفاده کنید. لطفا توجه داشته باشید که فرمت پیکسل تصویر خروجی ممکن است با مقدار تنظیم شده به دلیل کار GDI+متفاوت باشد.

مثال کد زیر نشان می دهد که چگونه یک تصویر سیاه و سفید را با یک بیت در هر فرمت پیکسل ذخیره کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
