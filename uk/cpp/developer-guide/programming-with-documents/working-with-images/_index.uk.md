---
title: Робота з зображеннями в C++
second_title: Aspose.Words для C++
articleTitle: Робота з зображеннями
linktitle: Робота з зображеннями
type: docs
description: "Вступ до функції зображення, як створити зображення та маніпулювати ним за допомогою C++."
weight: 300
url: /uk/cpp/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words дозволяє користувачам працювати з зображеннями дуже гнучким способом. У цій статті ви можете розглянути лише деякі можливості роботи з зображеннями.

## Як витягти зображення з документа

Усі зображення зберігаються всередині **Shape** вузлів у [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Щоб витягти з документа Всі зображення або картинки певного типу, виконайте наступні дії:

- Використовуйте метод [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/), щоб вибрати всі вузли **Shape**.
- Виконайте ітерацію над отриманими наборами вузлів.
- Перевірте логічну властивість [HasImage](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_hasimage/).
- Витягніть дані зображення, використовуючи властивість [ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/).
- Збережіть дані зображення у файл.

Наступний приклад коду показує, як витягувати зображення з документа та зберігати їх як файли:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cpp" >}}

## Збереження зображень як WMF

Aspose.Words надає функціональні можливості для збереження всіх доступних зображень у документі в [WMF ](https://docs.fileformat.com/image/wmf/)форматуйте при перетворенні DOCX в RTF.

Наступний приклад коду показує, як зберігати зображення як WMF з параметрами збереження RTF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cpp" >}}
