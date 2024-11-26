---
title: ذخیره یک سند به عنوان TIFF چند صفحه ای
second_title: Aspose.Words برای Python via .NET
articleTitle: ذخیره یک سند به عنوان TIFF چند صفحه ای
linktitle: ذخیره یک سند به عنوان TIFF چند صفحه ای
description: "با استفاده از Python یک سند را به یک TIFF چند صفحه ای تبدیل کنید. برای تعیین نحوه نمایش سند روی تصویر، باید گزینه های اضافی را مشخص کنید: وضوح، تعداد صفحات، باینری سازی تصویر و غیره."
type: docs
weight: 30
url: /fa/python-net/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

هنگام کار با اسناد، اغلب نیاز دارید که سند خود را به فایل(های) تصویر شطرنجی تبدیل کنید. این امر مخصوصاً زمانی مهم است که باید سند خود را در قالبی قابل خواندن و قابل چاپ، اما نه قابل ویرایش ارائه دهید. به عنوان مثال، می توانید از یک تصویر شطرنجی از صفحه اول سند خود به عنوان پیش نمایش استفاده کنید. این مقاله نحوه تبدیل یک سند به یک تصویر شطرنجی را با استفاده از مثال فرمت TIFF - یکی از محبوب‌ترین فرمت‌های تصویر، شرح می‌دهد.

## تبدیل DOC به TIFF چند صفحه ای

در Aspose.Words، تبدیل از DOC به TIFF را می‌توان با یک خط کد، با عبور دادن مسیر "save to" و پسوند فایل مربوطه به روش [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) انجام داد. روش [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) به طور خودکار [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) را از پسوند نام فایل مشخص شده در مسیر استخراج می کند. مثال زیر نحوه تبدیل یک سند به فرمت TIFF را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-SaveAsTIFF.py" >}}

## تعیین گزینه های اضافی هنگام رندر TIFF

شما اغلب نیاز به تعیین گزینه های اضافی دارید که بر نتیجه رندر تأثیر می گذارد. برای این منظور از کلاس [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) استفاده کنید که حاوی ویژگی هایی است که نحوه نمایش سند روی تصویر را مشخص می کند. می توانید موارد زیر را مشخص کنید:

- ذخیره فرمت برای تعیین لیست گزینه های موجود ([save_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/save_format/))
- وضوح ([horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/)، [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/))
- تعداد صفحات ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/))
- تنظیمات رنگ و نور ([paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/)، [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/)، [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/)، [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/))
- کیفیت تصویر ([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/)، [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/)، [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/))
- روش استفاده شده برای باینریزه کردن تصویر ([tiff_binarization_method](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_binarization_method/)، [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/))
- فرمت پیکسل برای تصاویر تولید شده ([pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/))
- مدیریت متافیل های Windows توسط Aspose.Words ([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/)، [use_gdi_emf_renderer](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/use_gdi_emf_renderer/))
- گزینه های اضافی که می توانید در کلاس [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) مشاهده کنید

مثال زیر نحوه تبدیل DOC به TIFF را با گزینه های پیکربندی شده نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetTiffPageRange.py" >}}

## آستانه برای باینری سازی TIFF

یک تصویر TIFF را می توان با فرمت b/w 1bpp با تنظیم ویژگی [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) بر روی نوع قالب پیکسلی [FORMAT1BPP_INDEXED](https://reference.aspose.com/words/python-net/aspose.words.saving/imagepixelformat/#format1bpp_indexed) و ویژگی [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/) به [CCITT3](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt3) یا [CCITT4](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt4) ذخیره کرد.

برای تقسیم بندی تصویر، Aspose.Words از ساده ترین روش - آستانه گذاری استفاده می کند. این روش یک تصویر TIFF در مقیاس خاکستری را با استفاده از یک مقدار آستانه به یک تصویر باینری تبدیل می کند. بنابراین، زمانی که یک سند باید به فرمت فایل TIFF تبدیل شود، می توان از طریق ویژگی [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/) آستانه برای باینری سازی TIFF را دریافت یا تنظیم کرد. مقدار پیش فرض برای این ویژگی 128 تنظیم شده است و هر چه این مقدار بیشتر باشد، تصویر تیره تر می شود.

مثال زیر نشان می دهد که چگونه می توان باینریزه سازی TIFF را با یک آستانه مشخص انجام داد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-ExposeThresholdControlForTiffBinarization.py" >}}

در زیر می توانید تصاویری را که باینریزه سازی TIFF در مقادیر مختلف آستانه انجام شده است، مقایسه کنید:

<img src="/words/python-net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="ذخیره-یک-سند-به-عنوان-چند صفحه-tiff-aspose-words-net" style="width:800px"/>
