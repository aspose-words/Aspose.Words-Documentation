---
title: ذخیره یک سند به صورت چند صفحه ای TIFF در Java
second_title: Aspose.Words برای Java
articleTitle: ذخیره یک سند به صورت چند صفحه ای TIFF
linktitle: ذخیره یک سند به صورت چند صفحه ای TIFF
description: "یک سند را به یک تصویر رستر تبدیل کنید که در مثال فرمت TIFF مورد بحث قرار می گیرد. برای تعیین نحوه نمایش TIFF باید گزینه های اضافی را مشخص کنید: وضوح، تعداد صفحات، باینریزه شدن تصویر و غیره با استفاده از Java."
type: docs
weight: 30
url: /fa/java/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

هنگام کار با اسناد، اغلب باید سند خود را به یک فایل تصویر رستر تبدیل کنید. این امر به ویژه در صورتی مهم است که شما مجبور باشید سند خود را در قالب قابل خواندن و قابل چاپ ارائه دهید، اما قابل ویرایش نیست. به عنوان مثال، می توانید از یک تصویر رستر از صفحه اول سند خود به عنوان پیش نمایش استفاده کنید. این مقاله نحوه تبدیل یک سند به یک تصویر رستر را با استفاده از مثال فرمت TIFF – یکی از محبوب ترین فرمت های تصویر توصیف می کند.

## تبدیل DOC به چند صفحه TIFF

در Aspose.Words، تبدیل از DOC به TIFF را می توان با یک خط کد انجام داد، با عبور ساده از مسیر "save to" و پسوند فایل مربوطه به روش [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions). روش **Save** به طور خودکار `SaveFormat` را از پسوند نام فایل مشخص شده در مسیر مشتق می کند. مثال زیر نشان می دهد که چگونه یک سند را به فرمت TIFF تبدیل کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## مشخص کردن گزینه های اضافی هنگام رندر TIFF

شما اغلب باید گزینه های اضافی را مشخص کنید که بر نتیجه رندر تأثیر می گذارد. برای این منظور از کلاس [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) استفاده کنید که شامل ویژگی هایی است که نحوه نمایش سند روی تصویر را تعیین می کند. شما می توانید موارد زیر را مشخص کنید:

- ذخیره فرمت برای تعیین لیست گزینه های موجود ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))
- قطعنامه ([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- تعداد صفحات ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- تنظیمات رنگ و نور([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- کیفیت تصویر([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- روش مورد استفاده برای باینریزه کردن تصویر ([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- فرمت پیکسل برای تصاویر تولید شده ([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- Windows دست زدن به متافیل ها Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- گزینه های اضافی که می توانید در کلاس **ImageSaveOptions** ببینید

مثال زیر نشان می دهد که چگونه DOC را به TIFF با گزینه های پیکربندی شده تبدیل کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## آستانه برای TIFF باینریزاسیون

یک تصویر TIFF را می توان با تنظیم ویژگی [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) به نوع فرمت پیکسل Format1bppIndexed و ویژگی [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) به Ccitt3 یا ccitt4 در فرمت 1bpp b/w ذخیره کرد.

برای بخش بندی تصویر، Aspose.Words از ساده ترین روش استفاده می کند - آستانه. این روش یک تصویر در مقیاس خاکستری TIFF را با استفاده از یک مقدار آستانه به یک تصویر باینری تبدیل می کند. بنابراین، هنگامی که یک سند نیاز به تبدیل به فرمت فایل TIFF دارد، می توان از طریق ویژگی [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering) آستانه دوگانه سازی TIFF را بدست آورد یا تنظیم کرد. مقدار پیش فرض برای این خاصیت به 128 تنظیم شده است و هرچه این مقدار بالاتر باشد، تصویر تیره تر می شود.

مثال زیر نشان می دهد که چگونه باینریزاسیون TIFF را با یک آستانه مشخص انجام دهیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

در زیر می توانید تصاویری را که در آن TIFF باینریزاسیون در مقادیر مختلف آستانه انجام شده است مقایسه کنید:

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
