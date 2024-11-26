---
title: Save Options را در C# مشخص کنید
second_title: Aspose.Words برای .NET
articleTitle: گزینه های ذخیره را مشخص کنید
linktitle: گزینه های ذخیره را مشخص کنید
description: "با استفاده از C# فرآیند ذخیره را با دقت بیشتری کنترل کنید."
type: docs
weight: 10
url: /fa/net/specify-save-options/
timestamp: 2024-07-09-19-00-42
---

هنگام ذخیره یک سند، می توانید برخی از ویژگی های پیشرفته را تنظیم کنید. Aspose.Words کلاس [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/) را در اختیار شما قرار می دهد که امکان کنترل دقیق تر فرآیند ذخیره را فراهم می کند. روش **Save** اضافه بارهایی وجود دارد که یک شی **SaveOptions** را می پذیرد - این باید یک شی از یک کلاس مشتق شده از کلاس **SaveOptions** باشد. هر فرمت ذخیره یک کلاس مربوطه دارد که گزینه های ذخیره را برای این فرمت ذخیره نگه می دارد، به عنوان مثال، [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) برای ذخیره در فرمت PDF، [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) برای ذخیره در فرمت Markdown یا [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) برای ذخیره در یک تصویر وجود دارد. این مقاله نمونه هایی از کار با برخی از کلاس های گزینه های مشتق شده از **SaveOptions** را ارائه می دهد.

مثال کد زیر نحوه تنظیم گزینه های ذخیره را قبل از ذخیره سند در HTML نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cs" >}}

{{% alert color="primary" %}}

فایل قالب این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) دانلود کنید.

{{% /alert %}}

این مقاله چند ویژگی را توضیح می دهد که می توانید هنگام ذخیره یک سند کنترل کنید.

## رمزگذاری یک سند با رمز عبور

از ویژگی **Password** برای دریافت یا تنظیم رمز عبور برای یک سند رمزگذاری شده استفاده کنید. از ویژگی **Password** کلاس مربوطه برای کار با قالب سند انتخاب شده استفاده کنید.

به عنوان مثال، هنگام ذخیره یک سند در فرمت DOC یا DOT، از ویژگی [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) کلاس [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) استفاده کنید.

مثال کد زیر نحوه تنظیم رمز عبور برای رمزگذاری یک سند با استفاده از روش رمزگذاری RC4 را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cs" >}}

هنگام ذخیره یک سند با فرمت Odt، از ویژگی [Password](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/password/) کلاس [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/) استفاده کنید.

مثال کد زیر نحوه بارگیری و ذخیره OpenDocument رمزگذاری شده با رمز عبور را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cs" >}}

همه فرمت ها از رمزگذاری و استفاده از ویژگی **Password** پشتیبانی نمی کنند.

## نمایش اعلان‌های پیشرفت ذخیره سند

Aspose.Words امکان استفاده از ویژگی [ProgressCallback](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/progresscallback/) را برای دریافت اعلان‌ها در مورد پیشرفت ذخیره سند فراهم می‌کند.

اکنون هنگام ذخیره در قالب‌های DOCX، FlatOpc، DOCM، DOTM، DOTX، HTML، MHTML، EPUB، XamlFlow، XamlFlowPack یا TXT در دسترس است.

## زمان ایجاد سند را به روز کنید

Aspose.Words امکان استفاده از ویژگی [CreatedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/createdtime/) را برای دریافت یا تنظیم تاریخ ایجاد سند در UTC فراهم می کند. همچنین می توانید این مقدار را قبل از ذخیره با استفاده از گزینه [UpdateCreatedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatecreatedtimeproperty/) به روز کنید.

مثال کد زیر نحوه به روز رسانی زمان ایجاد سند را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-UpdateIfLastPrinted.cs" >}}

## آخرین ویژگی ذخیره شده را به روز کنید

Aspose.Words توانایی استفاده از ویژگی [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) را برای دریافت یا تنظیم مقداری فراهم می کند که تعیین می کند آیا ویژگی [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) قبل از ذخیره به روز می شود یا خیر.

مثال کد زیر نحوه تنظیم این ویژگی و ذخیره سند را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cs" >}}

## هنگام ذخیره یک سند در HTML یا SVG، منابع خارجی را کنترل کنید

برای تبدیل HTML یا SVG به PDF، به سادگی روش [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) را فراخوانی کنید و نام فایل را با پسوند ".PDF" مشخص کنید. اگر می خواهید تصاویر، CSS و غیره را از منابع خارجی بارگذاری کنید، می توانید از [IResourceSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/iresourcesavingcallback/) استفاده کنید.

مثال کد زیر نحوه تبدیل HTML به PDF و بارگیری تصاویر از منابع خارجی را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ImageLoadingWithCredentialsHandler-ImageLoadingWithCredentialsHandler.cs" >}}

## تصویر سیاه و سفید را با فرمت یک بیت در پیکسل ذخیره کنید

برای کنترل گزینه های ذخیره تصویر از کلاس **ImageSaveOptions** استفاده می شود. به عنوان مثال، می توانید از ویژگی [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) برای تنظیم فرمت پیکسل برای تصاویر تولید شده استفاده کنید. لطفاً توجه داشته باشید که فرمت پیکسل تصویر خروجی ممکن است به دلیل عملکرد GDI+ با مقدار تنظیم شده متفاوت باشد.

مثال کد زیر نحوه ذخیره یک تصویر سیاه و سفید با فرمت یک بیت در پیکسل را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cs" >}}
