---
title: Работа с изображения C++
second_title: Aspose.Words за C++
articleTitle: Работа с изображения
linktitle: Работа с изображения
type: docs
description: "Въведение в функцията за изображение, как да създавате и манипулирате изображение, използвайки C++."
weight: 300
url: /bg/cpp/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words позволява на потребителите да работят с изображения по много гъвкав начин. В тази статия можете да разгледате само някои от възможностите за работа с изображения.

## Как да извлечете изображения от документ

Всички изображения се съхраняват в **Shape** възли в [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). За да извлечете всички изображения или изображения с определен тип от документа, изпълнете следните стъпки::

- Използвайте метода [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/), за да изберете всички **Shape** възли.
- Итерирайте чрез получените колекции от възли.
- Проверете [HasImage](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_hasimage/) Булева собственост.
- Извлечете данните от изображението, като използвате свойството [ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/).
- Запазване на данните на изображението във файл.

Следващият пример за код показва как да извлечете изображения от документ и да ги запишете като файлове:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cpp" >}}

## Запазване на изображения като WMF

Aspose.Words осигурява функционалност за запазване на всички налични изображения в документ за [WMF ](https://docs.fileformat.com/image/wmf/)формат докато конвертирате DOCX до RTF.

Следният пример за код показва как да запишете изображения като WMF С RTF Опции за записване:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cpp" >}}
