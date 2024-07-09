---
title: گزینه های Save را در نظر بگیرید Java
second_title: Aspose.Words برای Java
articleTitle: گزینه Save Options
linktitle: گزینه Save Options
description: "تنظیم خواص پیشرفته هنگام صرفه جویی در یک سند با استفاده از Java برای کنترل دقیق تر بر روند."
type: docs
weight: 20
url: /fa/java/specify-save-options/
---

هنگام صرفه جویی در یک سند، می توانید برخی از خواص پیشرفته را تنظیم کنید. Aspose.Words شما را با [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/) کلاس، که اجازه می دهد کنترل دقیق تر فرآیند نجات. فراوانی از **Save** روش هایی که یک **SaveOptions** موضوع - باید یک شی از یک کلاس باشد که از آن مشتق شده است **SaveOptions** کلاس هر فرمت ذخیره سازی دارای یک کلاس متناظر است که گزینه های ذخیره سازی را برای این فرمت ذخیره می کند، به عنوان مثال، وجود دارد. [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) برای صرفه جویی در فرمت PDF، [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) پس انداز برای Markdown قالب، یا [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) برای صرفه جویی در یک تصویر این مقاله نمونه هایی از کار با برخی از کلاس های گزینه های مشتق شده از **SaveOptions**...

مثال کد زیر نشان می دهد که چگونه گزینه های صرفه جویی را قبل از صرفه جویی در سند در HTML تنظیم کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

شما می توانید فایل قالب این مثال را دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)...

{{% /alert %}}

این مقاله چند ویژگی را توصیف می کند که می توانید هنگام صرفه جویی در یک سند کنترل کنید.

## رمزگذاری یک سند با یک Password

استفاده از **Password** اموال برای دریافت یا تنظیم یک رمز عبور برای یک سند رمزگذاری شده. استفاده از **Password** مالکیت کلاس مربوطه برای کار با فرمت سند انتخاب شده.

به عنوان مثال، هنگام صرفه جویی در یک سند به DOC یا DOT فرمت، استفاده از [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) مالکیت [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) کلاس

مثال کد زیر نشان می دهد که چگونه یک رمز عبور برای رمزگذاری یک سند با استفاده از روش رمزگذاری RC4 تنظیم کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

هنگام صرفه جویی در یک سند برای فرمت ODT، از آن استفاده کنید [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) مالکیت [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/) کلاس

مثال کد زیر نشان می دهد که چگونه بارگیری و ذخیره OpenDocument رمزگذاری شده با یک رمز عبور:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

همه فرمت ها از رمزگذاری و استفاده از **Password** مالکیت

## نشان دادن مستندات پس انداز پیشرفت

Aspose.Words توانایی استفاده از [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) اموال برای دریافت اعلان در مورد پیشرفت پس انداز سند.

در حال حاضر در هنگام صرفه جویی در DOCX، FlatOpc، DOCM در دسترس است. DOTM، DOTX، HTML، MHTML، EPUB، XamlFlow، XamlFlowPack یا فرمت TXT.

## به روز رسانی زمان ایجاد سند

Aspose.Words توانایی استفاده از [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) اموال برای دریافت یا تنظیم تاریخ ایجاد سند در UTC تنظیم شده است. شما همچنین می توانید این ارزش را قبل از صرفه جویی در استفاده از [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty) گزینه

مثال کد زیر نشان می دهد که چگونه زمان ایجاد سند را به روز کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## دانلود بازی Last Saved property

Aspose.Words توانایی استفاده از [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) اموال برای به دست آوردن یا تعیین ارزش تعیین اینکه آیا [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) اموال قبل از پس انداز به روز می شود.

مثال کد زیر نشان می دهد که چگونه این ملک را تنظیم کرده و سند را ذخیره کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## ذخیره تصویر سیاه و سفید با یک Bit Per Pixel Format

برای کنترل گزینه های صرفه جویی در تصویر، **ImageSaveOptions** کلاس استفاده می شود. برای مثال، می توانید از آن استفاده کنید. [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) مالکیت برای تنظیم فرمت پیکسل برای تصاویر تولید شده لطفا توجه داشته باشید که فرمت پیکسل تصویر خروجی ممکن است از مقدار تنظیم شده به دلیل کار GDI + متفاوت باشد.

مثال کد زیر نشان می دهد که چگونه یک تصویر سیاه و سفید را با یک ذره در قالب پیکسل ذخیره کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
