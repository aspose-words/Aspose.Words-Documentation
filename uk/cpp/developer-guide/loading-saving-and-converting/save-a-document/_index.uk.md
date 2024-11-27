---
title: Збережіть документ у C++
second_title: Aspose.Words для C++
articleTitle: Збереження документа
linktitle: Збереження документа
type: docs
description: "Збережіть документ у будь-якому підтримуваному форматі за допомогою C++."
keywords: "save a document c++, save a document to file c++, save a document to stream c++, save a document Aspose C++, save formats supported by Aspose.Words C++"
weight: 20
url: /uk/cpp/save-a-document/
timestamp: 2024-01-27-14-07-04
---

Більшість завдань, які необхідно виконати за допомогою Aspose.Words, пов'язані зі збереженням документа. Для збереження документа в Aspose.Words передбачено метод [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) класу [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Документ може бути збережений в будь-якому форматі збереження, підтримуваному Aspose.Words. Список всіх підтримуваних форматів збереження наведено в списку [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

## Зберегти у файл {#save-a-document-to-a-file}

Просто використовуйте метод [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) з назвою файлу. Aspose.Words визначить формат збереження на основі вказаного вами розширення файлу.

Наступний приклад коду показує, як завантажити та зберегти документ у файл:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-LoadAndSave.cpp" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону для цього прикладу з сайту [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Зберегти в потоці {#save-a-document-to-a-stream}

Передайте об'єкт stream методу [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). При збереженні в stream необхідно явно вказати формат збереження.

Наступний приклад коду показує, як завантажити та зберегти документ у потоці:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-LoadAndSaveToStream.cpp" >}}

Ви можете завантажити файл шаблону для цього прикладу з сайту [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).


## Зберегти в PCL {#save-a-document-to-pcl}

Aspose.Words підтримує збереження документа у форматі PCL (мова команд принтера). Aspose.Words дозволяє зберігати документи у форматі PCL 6 (розширений формат PCL 6 або формат PCL XL). Клас `PclSaveOptions` можна використовувати для вказівки додаткових параметрів при збереженні документа у форматі PCL.

Наступний приклад коду показує, як зберегти документ у PCL за допомогою параметрів збереження:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToPCL-ConvertDocumentToPCL.cpp" >}}
