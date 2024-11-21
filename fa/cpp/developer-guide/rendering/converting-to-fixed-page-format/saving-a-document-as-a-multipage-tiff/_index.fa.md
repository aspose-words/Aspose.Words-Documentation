---
title: ذخیره یک سند به صورت چند صفحه ای TIFF در C++
second_title: Aspose.Words برای C++
articleTitle: ذخیره یک سند به صورت چند صفحه ای TIFF
linktitle: ذخیره یک سند به صورت چند صفحه ای TIFF
description: "تبدیل یک سند به چند صفحه TIFF با استفاده از C++. برای تعیین نحوه نمایش سند روی تصویر باید گزینه های اضافی را مشخص کنید: وضوح، تعداد صفحات، باینریزه شدن تصویر و غیره."
type: docs
weight: 40
url: /fa/cpp/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

هنگام کار با اسناد، اغلب باید سند خود را به یک فایل تصویر رستر تبدیل کنید. این امر به ویژه در صورتی مهم است که شما مجبور باشید سند خود را در قالب قابل خواندن و قابل چاپ ارائه دهید، اما قابل ویرایش نیست. به عنوان مثال، می توانید از یک تصویر رستر از صفحه اول سند خود به عنوان پیش نمایش استفاده کنید. این مقاله نحوه تبدیل یک سند به یک تصویر رستر را با استفاده از مثال فرمت TIFF – یکی از محبوب ترین فرمت های تصویر توصیف می کند.

## تبدیل DOC به چند صفحه TIFF

در Aspose.Words، تبدیل از DOC به TIFF را می توان با یک خط کد انجام داد، با عبور ساده از مسیر "save to" و پسوند فایل مربوطه به روش [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). روش **Save** به طور خودکار `SaveFormat` را از پسوند نام فایل مشخص شده در مسیر مشتق می کند. مثال زیر نشان می دهد که چگونه یک سند را به فرمت TIFF تبدیل کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with ImageSaveOptions-SaveAsTIFF.h" >}}

## مشخص کردن گزینه های اضافی هنگام رندر TIFF

شما اغلب باید گزینه های اضافی را مشخص کنید که بر نتیجه رندر تأثیر می گذارد. برای این منظور از کلاس [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/) استفاده کنید که شامل ویژگی هایی است که نحوه نمایش سند روی تصویر را تعیین می کند. شما می توانید موارد زیر را مشخص کنید:

- ذخیره فرمت برای تعیین لیست گزینه های موجود ([SaveFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_saveformat/))
- قطعنامه ([HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/))
- تعداد صفحات ([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/))
- تنظیمات رنگ و نور([PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_papercolor/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagebrightness/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagecontrast/))
- کیفیت تصویر([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_jpegquality/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_scale/), [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/), GraphicsQualityOptions)
- روش مورد استفاده برای باینریزه کردن تصویر ([TiffBinarizationMethod](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/))
- فرمت پیکسل برای تصاویر تولید شده ([PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/))
- Windows دست زدن به متافیل ها Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_usegdiemfrenderer/))
- گزینه های اضافی که می توانید در کلاس **ImageSaveOptions** ببینید

مثال زیر نشان می دهد که چگونه DOC را به TIFF با گزینه های پیکربندی شده تبدیل کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cpp" >}}

## آستانه برای TIFF باینریزاسیون

یک تصویر TIFF را می توان در فرمت 1bpp b/w با تنظیم ویژگی [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/) به فرمت1bppIndexed نوع فرمت پیکسل و ویژگی `TiffCompression` به Ccitt3 یا ccitt4 ذخیره کرد.

برای بخش بندی تصویر، Aspose.Words از ساده ترین روش استفاده می کند - آستانه. این روش یک تصویر در مقیاس خاکستری TIFF را با استفاده از یک مقدار آستانه به یک تصویر باینری تبدیل می کند. بنابراین، هنگامی که یک سند نیاز به تبدیل به فرمت فایل TIFF دارد، می توان از طریق ویژگی [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/) آستانه دوگانه سازی TIFF را بدست آورد یا تنظیم کرد. مقدار پیش فرض برای این خاصیت به 128 تنظیم شده است و هرچه این مقدار بالاتر باشد، تصویر تیره تر می شود.

مثال زیر نشان می دهد که چگونه باینریزاسیون TIFF را با یک آستانه مشخص انجام دهیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cpp" >}}

در زیر می توانید تصاویری را که در آن TIFF باینریزاسیون در مقادیر مختلف آستانه انجام شده است مقایسه کنید:

![save-a-document-as-a-multipage-tiff-aspose-words-cpp](saving-a-document-as-a-multipage-tiff-1.jpg)
