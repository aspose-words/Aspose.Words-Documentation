---
title: Сохранение документа как многостраничного TIFF в Java
second_title: Aspose.Words для Java
articleTitle: Сохранение многостраничного документа TIFF
linktitle: Сохранение многостраничного документа TIFF
description: "Преобразуйте документ в растровое изображение, что рассматривается на примере формата TIFF. Чтобы определить, как будет отображаться TIFF, вам необходимо указать дополнительные параметры: разрешение, количество страниц, бинаризацию изображения и т.д., используя Java."
type: docs
weight: 30
url: /ru/java/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

При работе с документами часто возникает необходимость преобразовать документ в файл(ы) растровых изображений. Это особенно актуально, если вам необходимо представить документ в удобном для чтения и печати, но недоступном для редактирования формате. Например, вы можете использовать растровое изображение первой страницы вашего документа в качестве предварительного просмотра. В этой статье описано, как преобразовать документ в растровое изображение на примере формата TIFF – одного из наиболее популярных графических форматов.

## Преобразование DOC в многостраничный TIFF

В Aspose.Words преобразование из DOC в TIFF может быть выполнено с помощью одной строки кода, просто передав путь "сохранить в" и соответствующее расширение файла методу [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions). Метод **Save** автоматически выводит значение `SaveFormat` из расширения имени файла, указанного в пути. В следующем примере показано, как преобразовать документ в формат TIFF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## Указание дополнительных Параметров При Рендеринге TIFF

Часто возникает необходимость указать дополнительные параметры, влияющие на результат рендеринга. Для этой цели используйте класс [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), который содержит свойства, определяющие способ отображения документа на изображении. Вы можете указать следующее:

- Сохраните формат, чтобы определить список доступных опций ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))
- Разрешение ([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- Количество страниц ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- Настройки цвета и освещения ([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- Качество изображения ([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- Метод, используемый для бинаризации изображения ([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- Пиксельный формат для сгенерированных изображений ([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- Windows обработка метафайлов с помощью Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- Дополнительные параметры, которые вы можете увидеть в классе **ImageSaveOptions**

В следующем примере показано, как преобразовать DOC в TIFF с помощью настроенных параметров:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## Порог для TIFF Бинаризации

Изображение TIFF можно сохранить в черно-белом формате 1 бит/с, установив для свойства [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) значение типа формата Format1bppIndexed пикселей, а для свойства [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) - значение Ccitt3 или Ccitt4.

Для сегментации изображения Aspose.Words использует простейший метод - пороговое значение. Этот метод преобразует изображение в масштабе серого TIFF в двоичное изображение, используя пороговое значение. Таким образом, когда документ необходимо преобразовать в формат файла TIFF, можно получить или установить пороговое значение для бинаризации TIFF с помощью свойства [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering). Значение по умолчанию для этого свойства равно 128, и чем выше это значение, тем темнее изображение.

В следующем примере показано, как выполнить бинаризацию TIFF с заданным пороговым значением:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

Ниже вы можете сравнить изображения, на которых была выполнена бинаризация TIFF при различных пороговых значениях:

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
