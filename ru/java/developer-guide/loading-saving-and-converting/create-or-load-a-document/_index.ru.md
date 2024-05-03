---
title: Создать или загрузить документ в Java
second_title: Aspose.Words для Java
articleTitle: Создать или загрузить документ
linktitle: Создать или загрузить документ
type: docs
weight: 10
url: /ru/java/create-or-load-a-document/
description: "Aspose.Words позволяет создать пустой документ или загрузить его из файла или потока с помощью Java."
---

Почти любая задача, которую вы хотите выполнить Aspose.Words Речь идет о загрузке документа. The `Document` Класс представляет собой документ, загруженный в память. В документе есть несколько перегруженных конструкторов, позволяющих создать пустой документ или загрузить его из файла или потока. Документ может быть загружен в любом формате загрузки, поддерживаемом Aspose.Words. Для списка всех поддерживаемых форматов загрузки см. [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) перечисление.

## Создать новый документ {#create-a-new-document}

Мы будем называть [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Конструктор без параметров для создания нового документа. Если вы хотите сгенерировать документ программно, самый простой способ - использовать его. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder) Класс для добавления содержимого документа.

Следующий пример кода показывает, как создать документ с помощью конструктора документов:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

Обратите внимание на значения по умолчанию:

- пустой документ содержит один раздел с параметрами по умолчанию, один пустой абзац, некоторые стили документов. На самом деле этот документ является тем же результатом создания "Нового документа". Microsoft Word.
- Размер документа является [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Загрузить документ

Загрузить существующий документ в любой из [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) форматы, передайте имя файла или поток в один из конструкторов документов. Формат загруженного документа автоматически определяется его расширением.

### Загрузка из файла {#load-from-a-file}

Передайте имя файла в виде строки конструктору документа, чтобы открыть существующий документ из файла.

Следующий пример кода показывает, как открыть документ из файла:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

### Загрузка из потока {#load-from-a-stream}

Чтобы открыть документ из потока, просто передайте объект потока, содержащий документ, в конструктор документа.

Следующий пример кода показывает, как открыть документ из потока:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}
