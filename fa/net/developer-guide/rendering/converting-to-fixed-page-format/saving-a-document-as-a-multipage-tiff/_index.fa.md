---
title: ذخیره یک سند به عنوان TIFF چند صفحه ای در C#
second_title: Aspose.Words برای .NET
articleTitle: ذخیره یک سند به عنوان TIFF چند صفحه ای
linktitle: ذخیره یک سند به عنوان TIFF چند صفحه ای
description: "با استفاده از C# یک سند را به یک TIFF چند صفحه ای تبدیل کنید. برای تعیین نحوه نمایش سند روی تصویر، باید گزینه های اضافی را مشخص کنید: وضوح، تعداد صفحات، باینری سازی تصویر و غیره."
type: docs
weight: 30
url: /fa/net/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-07-10-14-38-57
---

هنگام کار با اسناد، اغلب نیاز دارید که سند خود را به فایل(های) تصویر شطرنجی تبدیل کنید. این امر مخصوصاً زمانی مهم است که باید سند خود را در قالبی قابل خواندن و قابل چاپ، اما نه قابل ویرایش ارائه دهید. به عنوان مثال، می توانید از یک تصویر شطرنجی از صفحه اول سند خود به عنوان پیش نمایش استفاده کنید. این مقاله نحوه تبدیل یک سند به یک تصویر شطرنجی را با استفاده از مثال فرمت TIFF - یکی از محبوب‌ترین فرمت‌های تصویر، شرح می‌دهد.

## تبدیل DOC به TIFF چند صفحه ای

در Aspose.Words، تبدیل از DOC به TIFF را می‌توان با یک خط کد، با عبور دادن مسیر "save to" و پسوند فایل مربوطه به روش [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save) انجام داد. روش **Save** به طور خودکار `SaveFormat` را از پسوند نام فایل مشخص شده در مسیر استخراج می کند. مثال زیر نحوه تبدیل یک سند به فرمت TIFF را نشان می دهد:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFF.cs" >}}

## تعیین گزینه های اضافی هنگام رندر TIFF

شما اغلب نیاز به تعیین گزینه های اضافی دارید که بر نتیجه رندر تأثیر می گذارد. برای این منظور از کلاس [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) استفاده کنید که حاوی ویژگی هایی است که نحوه نمایش سند روی تصویر را مشخص می کند. می توانید موارد زیر را مشخص کنید:

- ذخیره فرمت برای تعیین لیست گزینه های موجود ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/saveformat))
- وضوح ([HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/)، [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/)، [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/resolution))
- تعداد صفحات ([PageIndex](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/)، [PageCount](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/))
- تنظیمات رنگ و نور ([PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/)، [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/)، [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/)، [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/imagecontrast))
- کیفیت تصویر ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/)، [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/)، [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/)، [GraphicsQualityOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/graphicsqualityoptions))
- روش مورد استفاده برای باینریزه کردن تصویر ([TiffBinarizationMethod](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffbinarizationmethod/)، [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/thresholdforfloydsteinbergdithering))
- فرمت پیکسل برای تصاویر تولید شده ([PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/pixelformat))
- مدیریت متافیل های Windows توسط Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/)، [UseGdiEmfRenderer](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/usegdiemfrenderer))
- گزینه های اضافی که می توانید در کلاس **ImageSaveOptions** مشاهده کنید

مثال زیر نحوه تبدیل DOC به TIFF را با گزینه های پیکربندی شده نشان می دهد:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cs" >}}

## آستانه برای باینری سازی TIFF

یک تصویر TIFF را می توان با فرمت b/w 1bpp با تنظیم ویژگی [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) روی Format1bppIndexed pixel type و خاصیت [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/) بر روی Ccitt3 یا Ccitt4 ذخیره کرد.

برای تقسیم بندی تصویر، Aspose.Words از ساده ترین روش - آستانه گذاری استفاده می کند. این روش یک تصویر TIFF در مقیاس خاکستری را با استفاده از مقدار آستانه به یک تصویر باینری تبدیل می کند. بنابراین، زمانی که یک سند باید به فرمت فایل TIFF تبدیل شود، می توان از طریق ویژگی [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/thresholdforfloydsteinbergdithering/) آستانه برای باینری سازی TIFF را دریافت یا تنظیم کرد. مقدار پیش فرض برای این ویژگی 128 تنظیم شده است و هر چه این مقدار بیشتر باشد، تصویر تیره تر می شود.

مثال زیر نحوه اجرای باینریزه کردن TIFF با یک آستانه مشخص را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cs" >}}

در زیر می توانید تصاویری را که باینریزه سازی TIFF در مقادیر مختلف آستانه انجام شده است، مقایسه کنید:

<img src="/words/net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="ذخیره-یک-سند-به-عنوان-چند صفحه-tiff-aspose-words-net" style="width:800px"/>
