---
title: Сохранение документа на C++
second_title: Aspose.Words для C++
articleTitle: Сохранение документа
linktitle: Сохранение документа
type: docs
description: "Сохраните документ в любом поддерживаемом формате с помощью C++."
keywords: "save a document c++, save a document to file c++, save a document to stream c++, save a document Aspose C++, save formats supported by Aspose.Words C++"
weight: 20
url: /ru/cpp/save-a-document/
---

Большинство задач, которые необходимо выполнить с помощью Aspose.Words, связаны с сохранением документа. Для сохранения документа в Aspose.Words предусмотрен метод [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) класса [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Документ может быть сохранен в любом формате сохранения, поддерживаемом Aspose.Words. Список всех поддерживаемых форматов сохранения приведен в списке [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

## Сохранить в файл {#save-a-document-to-a-file}

Просто используйте метод [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) с именем файла. Aspose.Words определит формат сохранения на основе указанного вами расширения файла.

В следующем примере кода показано, как загрузить и сохранить документ в файл:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-LoadAndSave.cpp" >}}

{{% alert color="primary" %}}

Вы можете загрузить файл шаблона для этого примера с [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Сохранить в потоке {#save-a-document-to-a-stream}

Передайте объект stream методу [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). При сохранении в stream необходимо явно указать формат сохранения.

В следующем примере кода показано, как загрузить и сохранить документ в потоке:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-LoadAndSaveToStream.cpp" >}}

Вы можете загрузить файл шаблона для этого примера с [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).


## Сохранить в PCL {#save-a-document-to-pcl}

Aspose.Words поддерживает сохранение документа на PCL (языке командной строки принтера). Aspose.Words позволяет сохранять документы в формате PCL 6 (PCL 6 Enhanced или PCL XL). Класс `PclSaveOptions` можно использовать для указания дополнительных параметров при сохранении документа в формате PCL.

В следующем примере кода показано, как сохранить документ в PCL с помощью параметров сохранения:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToPCL-ConvertDocumentToPCL.cpp" >}}
