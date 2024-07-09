---
title: صرفه جویی در یک سند به عنوان چند صفحه TIFF Java
second_title: Aspose.Words برای Java
articleTitle: صرفه جویی در یک سند به عنوان چند صفحه TIFF
linktitle: صرفه جویی در یک سند به عنوان چند صفحه TIFF
description: "تبدیل یک سند به یک تصویر روستر، که در مورد مثال فرمت TIFF بحث می شود. برای تعیین اینکه چگونه TIFF نمایش داده می شود، باید گزینه های اضافی را مشخص کنید: رزولوشن، تعداد صفحات، Binarization تصویر و غیره با استفاده از آن Java..."
type: docs
weight: 30
url: /fa/java/saving-a-document-as-a-multipage-tiff/
---

هنگام کار با اسناد، شما اغلب نیاز به تبدیل سند خود را به یک فایل تصویر تکراری (بازدید کنندگان) دارید. این امر به ویژه اگر شما باید سند خود را در یک فرمت قابل خواندن و قابل چاپ ارائه دهید، اما فرمت قابل ویرایش نیست. به عنوان مثال، شما می توانید از یک تصویر روستر از صفحه اول سند خود به عنوان پیش نمایش استفاده کنید. این مقاله توضیح می دهد که چگونه یک سند را به یک تصویر روستر با استفاده از مثال فرمت TIFF تبدیل کنید – یکی از فرمت های تصویر محبوب تر.

## تبدیل DOC به Multi-Page TIFF

In In In Aspose.Words, تبدیل از DOC به TIFF می تواند با یک خط کد انجام شود، با عبور از مسیر "save to" و پسوند فایل مربوطه به مسیر فایل مربوطه. [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) روش The The The The The The **Save** روش به طور خودکار استخراج می شود `SaveFormat` از پسوند نام فایل مشخص شده در مسیر مثال زیر نشان می دهد که چگونه یک سند را به فرمت TIFF تبدیل کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## انتخاب گزینه های اضافی هنگام ارائه TIFF

شما اغلب باید گزینه های اضافی را مشخص کنید که بر نتیجه رندر تأثیر می گذارد. برای این منظور، استفاده از [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) کلاس، که شامل خواص است که تعیین می کند که چگونه سند بر روی تصویر نمایش داده می شود. می توانید موارد زیر را مشخص کنید:

- – Save Format برای تعیین لیست گزینه های موجود ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/)))
- قطعنامه ([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution)))
- تعداد صفحات ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount)))
- تنظیمات رنگ و روشنایی ([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast)))
- کیفیت تصویر ([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions)))
- روش مورد استفاده برای شکستن تصویر ([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering)))
- قالب Pixel برای تصاویر تولید شده ([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat)))
- Windows metafiles Aspose.Words ()[MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer)))
- گزینه های اضافی که می توانید در آن ببینید **ImageSaveOptions** کلاس

مثال زیر نشان می دهد که چگونه DOC را به TIFF با گزینه های پیکربندی شده تبدیل کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## دانلود بازی TIFF Binarization

تصویر TIFF را می توان در فرمت 1bpp b/w با تنظیم تصویر TIFF ذخیره کرد. [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) ویژگی های Format1bppIndexed Pixel Type و [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) مالکیت به Ccitt3 یا Ccitt4

برای تقسیم بندی تصویر، Aspose.Words استفاده از ساده ترین روش – آستانه این روش یک تصویر TIFF در مقیاس خاکستری را به یک تصویر باینری تبدیل می کند، با استفاده از یک مقدار آستانه. بنابراین، هنگامی که یک سند باید به فرمت فایل TIFF تبدیل شود، ممکن است آستانه برای TIFF Binarization را از طریق فرمت فایل TIFF انتخاب کنید. [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering) مالکیت ارزش پیش فرض برای این ملک به 128، و این مقدار بالاتر، تصویر تیره تر است.

مثال زیر نشان می دهد که چگونه TIFF Binarization را با یک آستانه مشخص انجام دهید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

در زیر می توانید تصاویری را که TIFF Binarization در مقادیر مختلف آستانه انجام شده است مقایسه کنید:

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
