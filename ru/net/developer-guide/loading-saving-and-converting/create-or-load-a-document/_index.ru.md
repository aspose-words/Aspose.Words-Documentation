---
title: Создайте или загрузите документ в C#
second_title: Aspose.Words для .NET
articleTitle: Создать или загрузить документ
linktitle: Создать или загрузить документ
type: docs
url: /ru/net/create-or-load-a-document/
description: "Создайте пустой документ или загрузите его из файла или потока, используя C#."
keywords: "create a document c#, load a document c#, create a blank document c#, load a document from file c#, load a document from stream c#, create a document Aspose .NET, load a document Aspose .NET, load formats supported by Aspose.Words .NET"
weight: 10
---

Практически любая задача, которую вы хотите выполнить с помощью Aspose.Words, предполагает загрузку документа. Класс `Document` представляет документ, загруженный в память. Документ имеет несколько перегруженных конструкторов, позволяющих создать пустой документ или загрузить его из файла или потока. Документ можно загрузить в любом формате загрузки, поддерживаемом Aspose.Words. Список всех поддерживаемых форматов загрузки см. в перечислении [LoadFormat](https://reference.aspose.com/words/ru/net/aspose.words/loadformat/).

## Создайте новый документ {#create-a-new-document}

Мы вызовем конструктор [Document](https://reference.aspose.com/words/ru/net/aspose.words/document/document/) без параметров, чтобы создать новый пустой документ. Если вы хотите сгенерировать документ программным способом, самый простой способ — использовать класс [DocumentBuilder](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/) для добавления содержимого документа.

В следующем примере кода показано, как создать документ с помощью построителя документов:

{{< gist "aspose-words-gists" "16b9cfe5420b6e033f90a45263eef020" "create-docx.cs" >}}

{{% alert color="primary" %}}

Обратите внимание на значения по умолчанию:

- Пустой документ содержит один раздел с параметрами по умолчанию, один пустой абзац, несколько стилей документа. Фактически этот документ идентичен результату создания "Нового документа" в Microsoft Word.
- Размер бумаги документа: [PaperSize](https://reference.aspose.com/words/ru/net/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Загрузите документ {#load-a-document}

Чтобы загрузить существующий документ в любом из форматов [LoadFormat](https://reference.aspose.com/words/ru/net/aspose.words/loadformat/), передайте имя файла или поток в один из конструкторов документа. Формат загружаемого документа автоматически определяется по его расширению.

### Загрузка из файла {#load-from-a-file}

Передайте имя файла в виде строки конструктору документа, чтобы открыть существующий документ из файла.

В следующем примере кода показано, как открыть документ из файла:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx.cs" >}}

Вы можете скачать файл шаблона этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

### Загрузка из потока {#load-from-a-stream}

Чтобы открыть документ из потока, просто передайте объект потока, содержащий документ, в конструктор документа.

В следующем примере кода показано, как открыть документ из потока:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx-stream.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
