---
title: Работа с изображениями на C++
second_title: Aspose.Words для C++
articleTitle: Работа с изображениями
linktitle: Работа с изображениями
type: docs
description: "Введение в функцию создания изображений, как создавать изображения и манипулировать ими с помощью C++."
weight: 300
url: /ru/cpp/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words позволяет пользователям работать с изображениями очень гибким способом. В этой статье вы можете рассмотреть лишь некоторые возможности работы с изображениями.

## Как извлечь изображения из документа

Все изображения хранятся внутри **Shape** узлов в [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Чтобы извлечь из документа все изображения или картинки определенного типа, выполните следующие действия:

- Используйте метод [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/), чтобы выбрать все узлы **Shape**.
- Выполните итерацию по результирующим наборам узлов.
- Проверьте логическое свойство [HasImage](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_hasimage/).
- Извлеките данные изображения, используя свойство [ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/).
- Сохраните данные изображения в файл.

В следующем примере кода показано, как извлекать изображения из документа и сохранять их в виде файлов:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cpp" >}}

## Сохранение изображений в формате WMF

Aspose.Words предоставляет функциональность для сохранения всех доступных изображений в документе в формате [WMF ](https://docs.fileformat.com/image/wmf/)при преобразовании DOCX в RTF.

В следующем примере кода показано, как сохранять изображения в формате WMF с параметрами сохранения в формате RTF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cpp" >}}
