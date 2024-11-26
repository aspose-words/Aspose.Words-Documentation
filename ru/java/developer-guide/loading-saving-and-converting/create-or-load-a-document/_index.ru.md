---
title: Создайте или загрузите документ в Java
second_title: Aspose.Words для Java
articleTitle: Создайте или загрузите документ
linktitle: Создайте или загрузите документ
type: docs
weight: 10
url: /ru/java/create-or-load-a-document/
description: "Aspose.Words позволяет создать пустой документ или загрузить его из файла или потока с помощью Java."
timestamp: 2024-01-27-14-07-04
---

Практически любая задача, которую вы хотите выполнить с помощью Aspose.Words, включает загрузку документа. Класс `Document` представляет документ, загруженный в память. Документ имеет несколько перегруженных конструкторов, позволяющих создавать пустой документ или загружать его из файла или потока. Документ может быть загружен в любом формате загрузки, поддерживаемом Aspose.Words. Список всех поддерживаемых форматов загрузки смотрите в списке [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/).

## Создайте новый документ {#create-a-new-document}

Мы вызовем конструктор [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) без параметров, чтобы создать новый пустой документ. Если вы хотите сгенерировать документ программно, самый простой способ - использовать класс [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder) для добавления содержимого документа.

В следующем примере кода показано, как создать документ с помощью конструктора документов:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

Обратите внимание на значения по умолчанию:

- Пустой документ содержит один раздел с параметрами по умолчанию, один пустой абзац, несколько стилей документа. Фактически этот документ является тем же результатом, что и результат создания "Нового документа" в Microsoft Word.
- Формат бумаги для документа - [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Загрузка документа

Чтобы загрузить существующий документ в любом из форматов [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/), передайте имя файла или поток в один из конструкторов документа. Формат загружаемого документа автоматически определяется его расширением.

### Загрузка из файла {#load-from-a-file}

Передайте имя файла в виде строки конструктору документа, чтобы открыть существующий документ из файла.

В следующем примере кода показано, как открыть документ из файла:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

Вы можете скачать файл шаблона для этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

### Загрузка из потока {#load-from-a-stream}

Чтобы открыть документ из потока, просто передайте объект stream, содержащий документ, в конструктор документа.

В следующем примере кода показано, как открыть документ из потока:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}
