---
title: Создать или загрузить документ в C#
second_title: Aspose.Words для .NET
articleTitle: Создать или загрузить документ
linktitle: Создать или загрузить документ
type: docs
url: /ru/net/create-or-load-a-document/
description: "Создать пустой документ или загрузить его из файла или потока с помощью C#."
keywords: "create a document c#, load a document c#, create a blank document c#, load a document from file c#, load a document from stream c#, create a document Aspose .NET, load a document Aspose .NET, load formats supported by Aspose.Words .NET"
weight: 10
---

Почти любая задача, которую вы хотите выполнить Aspose.Words Речь идет о загрузке документа. The `Document` Класс представляет собой документ, загруженный в память. В документе есть несколько перегруженных конструкторов, позволяющих создать пустой документ или загрузить его из файла или потока. Документ может быть загружен в любом формате загрузки, поддерживаемом Aspose.Words. Для списка всех поддерживаемых форматов загрузки см. [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) перечисление.

## Создать новый документ {#create-a-new-document}

Мы будем называть [Document](https://reference.aspose.com/words/net/aspose.words/document/document/) Конструктор без параметров для создания нового документа. Если вы хотите сгенерировать документ программно, самый простой способ - использовать его. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) Класс для добавления содержимого документа.

Следующий пример кода показывает, как создать документ с помощью конструктора документов:

{{< gist "aspose-words-gists" "16b9cfe5420b6e033f90a45263eef020" "create-docx.cs" >}}

{{% alert color="primary" %}}

Обратите внимание на значения по умолчанию:

- пустой документ содержит один раздел с параметрами по умолчанию, один пустой абзац, некоторые стили документов. Фактически этот документ является тем же результатом, что и результат создания "Нового документа". Microsoft Word.
- Размер документа является [PaperSize](https://reference.aspose.com/words/net/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Загрузить документ {#load-a-document}

Загрузить существующий документ в любой из [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) форматы, передайте имя файла или поток в один из конструкторов документов. Формат загруженного документа автоматически определяется его расширением.

### Загрузка из файла {#load-from-a-file}

Передайте имя файла в виде строки конструктору документа, чтобы открыть существующий документ из файла.

Следующий пример кода показывает, как открыть документ из файла:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx.cs" >}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

### Загрузка из потока {#load-from-a-stream}

Чтобы открыть документ из потока, просто передайте объект потока, содержащий документ, в конструктор документа.

Следующий пример кода показывает, как открыть документ из потока:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx-stream.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
