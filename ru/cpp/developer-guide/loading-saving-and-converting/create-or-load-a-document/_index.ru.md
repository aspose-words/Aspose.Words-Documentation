---
title: Создайте или загрузите документ на C++
second_title: Aspose.Words для C++
articleTitle: Создайте или загрузите документ
linktitle: Создайте или загрузите документ
type: docs
description: "Создайте пустой документ или загрузите его из файла или потока с помощью C++."
keywords: "create a document c++, load a document c++, create a blank document c++, load a document from file c++, load a document from stream c++, create a document Aspose C++, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 10
url: /ru/cpp/create-or-load-a-document/
---

Практически любая задача, которую вы хотите выполнить с помощью Aspose.Words, включает загрузку документа. Класс `Document` представляет документ, загруженный в память. Документ имеет несколько перегруженных конструкторов, позволяющих создавать пустой документ или загружать его из файла или потока. Документ может быть загружен в любом формате загрузки, поддерживаемом Aspose.Words. Список всех поддерживаемых форматов загрузки смотрите в списке [LoadFormat](https://reference.aspose.com/words/cpp/aspose.words/loadformat/).

## Создайте новый документ {#create-a-new-document}

Мы вызовем конструктор [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) без параметров, чтобы создать новый пустой документ. Если вы хотите сгенерировать документ программно, самый простой способ - использовать класс [DocumentBuilder](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder) для добавления содержимого документа.

В следующем примере кода показано, как создать документ с помощью конструктора документов:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CreateDocument-CreateDocument.cpp" >}}

{{% alert color="primary" %}}

Обратите внимание на значения по умолчанию:

- Пустой документ содержит один раздел с параметрами по умолчанию, один пустой абзац и несколько стилей документа. Фактически этот документ является результатом создания "Нового документа" в Microsoft Word.
- Формат бумаги для документа - [PaperSize](https://reference.aspose.com/words/cpp/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Загрузка документа

Чтобы загрузить существующий документ в любом из форматов `LoadFormat`, передайте имя файла или поток в один из конструкторов документа. Формат загружаемого документа автоматически определяется его расширением.

### Загрузка из файла {#load-from-a-file}

Передайте имя файла в виде строки конструктору документа, чтобы открыть существующий документ из файла.

В следующем примере кода показано, как открыть документ из файла:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-OpenDocument.cpp" >}}

Вы можете скачать файл шаблона для этого примера с [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

### Загрузка из потока {#load-from-a-stream}

Чтобы открыть документ из потока, просто передайте объект stream, содержащий документ, в конструктор документа.

В следующем примере кода показано, как открыть документ из потока:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-OpeningFromStream.cpp" >}}

{{% alert color="primary" %}}

Вы можете загрузить файл шаблона для этого примера с [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
