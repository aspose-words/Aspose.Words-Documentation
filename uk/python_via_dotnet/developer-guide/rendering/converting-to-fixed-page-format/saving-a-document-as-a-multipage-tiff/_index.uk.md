---
title: Економія документу як багатосторінковий TIFF
second_title: Aspose.Words для Python via .NET
articleTitle: Економія документу як багатосторінковий TIFF
linktitle: Економія документу як багатосторінковий TIFF
description: "Перетворення документа в багатосторінковий TIFF за допомогою Pythonй Щоб визначити, як відображається документ на зображення, потрібно вказати додаткові параметри: дозвіл, кількість сторінок, бінаризація зображень тощо."
type: docs
weight: 30
url: /uk/python-net/saving-a-document-as-a-multipage-tiff/
---

При роботі з документами, вам часто потрібно конвертувати документ на файл растрового зображення (s). Це особливо актуально, якщо ви повинні представити свій документ у читабельному та друкованому форматі, але не редагувати формат. Наприклад, ви можете використовувати растрове зображення першої сторінки вашого документа як попередній перегляд. У статті описано, як перетворити документ на растрове зображення за допомогою прикладу формату TIFF – одного з найпопулярніших форматів зображень.

## Перетворення DOC в Multi-Page TIFF

У Aspose.Words, Перетворення з DOC до TIFF може бути виконано з одним рядком коду, просто проходячи шлях "Зберегти до" і відповідне розширення файлу до [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) метод. Про нас [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) метод автоматично використовується [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) від розширення імені файлу, зазначеного в шляху. Наступний приклад показує, як перетворити документ у формат TIFF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-SaveAsTIFF.py" >}}

## Вкажіть додаткові параметри при рендерингу TIFF

Часто потрібно вказати додаткові параметри, які впливають на результат рендерингу. Для цього використовуйте [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) клас, який містить властивості, які визначають, як відображається документ на зображенні. Ви можете вказати:

- Збережіть формат для визначення списку доступних варіантів[save_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/save_format/)й
- Постанова[horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/)й
- Кількість сторінок[page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/)й
- Параметри кольору та освітлення[paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/)й
- Якість зображення[jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/)й
- Метод, який використовується для знезараження зображення ([tiff_binarization_method](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_binarization_method/), [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/)й
- Формат пікселя для створених зображень[pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/)й
- до Windows обробка метафілів Aspose.Words (Українська)[metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/), [use_gdi_emf_renderer](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/use_gdi_emf_renderer/)й
- Додаткові параметри, які можна побачити в [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) клас

Наступний приклад показує, як конвертувати DOC в TIFF з налаштованими опціями:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetTiffPageRange.py" >}}

## Пороги для бінаризації ТМК

Зображення TIFF може бути збережений у форматі 1bpp b/w, настройивши параметр [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) нерухомість [FORMAT1BPP_INDEXED](https://reference.aspose.com/words/python-net/aspose.words.saving/imagepixelformat/#format1bpp_indexed) тип формата пікселя, і тип [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/) нерухомість [CCITT3](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt3) або [CCITT4](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt4)й

Для сегментації зображень, Aspose.Words використовує найпростіший метод - поріг. Цей метод перетворює сіро-масштабний TIFF зображення в бінарний образ, використовуючи поріг значення. Тому, коли документ необхідно перетворювати у формат файлів TIFF, можна отримати або встановити поріг для бінаризації ТМКФ через [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/) майно. Вартість за замовчуванням для цього майна встановлюється до 128, і вище цього значення, темніше зображення.

Наступний приклад показує, як виконати двонаралізація ТМК з вказаним порогом:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-ExposeThresholdControlForTiffBinarization.py" >}}

Нижче ви можете порівняти зображення, на яких виконано бінаризація ТМК у різних значеннях порогу:

<img src="/words/python-net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-net" style="width:800px"/>
