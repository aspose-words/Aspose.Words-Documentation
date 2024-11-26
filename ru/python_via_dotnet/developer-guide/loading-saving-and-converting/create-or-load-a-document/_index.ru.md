---
title: Создайте или загрузите документ в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Создайте или загрузите документ
linktitle: Создайте или загрузите документ
type: docs
url: /ru/python-net/create-or-load-a-document/
description: "Создайте пустой документ или загрузите его из файла или потока, используя Python."
keywords: "create a document python, load a document python, create a blank document python, load a document from file python, load a document from stream python, create a document Aspose python, load a document Aspose python, load formats supported by Aspose.Words python"
weight: 10
timestamp: 2024-01-27-14-07-04
---

Практически любая задача, которую вы хотите выполнить с помощью Aspose.Words, включает загрузку документа. Класс [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) представляет документ, загруженный в память. Документ имеет несколько перегруженных конструкторов, позволяющих создавать пустой документ или загружать его из файла или потока. Документ может быть загружен в любом формате загрузки, поддерживаемом Aspose.Words. Список всех поддерживаемых форматов загрузки смотрите в списке [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/).

## Создайте новый документ

Мы вызовем конструктор [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) без параметров, чтобы создать новый пустой документ. Если вы хотите сгенерировать документ программно, самый простой способ - использовать класс [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) для добавления содержимого документа.

В следующем примере кода показано, как создать документ с помощью конструктора документов:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
            
builder.write("Hello world!")

doc.save(docs_base.artifacts_dir + "out.docx")
{{< /highlight >}}

{{% alert color="primary" %}}

Обратите внимание на значения по умолчанию:

- Пустой документ содержит один раздел с параметрами по умолчанию, один пустой абзац, несколько стилей документа. Фактически этот документ является тем же результатом, что и результат создания "Нового документа" в Microsoft Word.
- Формат бумаги для документа равен [PaperSize.LETTER](https://reference.aspose.com/words/python-net/aspose.words/papersize/#letter).

{{% /alert %}}

## Загрузка документа

Чтобы загрузить существующий документ в любом из форматов [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/), передайте имя файла или потока в один из конструкторов [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Формат загружаемого документа автоматически определяется его расширением.

### Загрузка из файла

Передайте имя файла в виде строки конструктору [Document](https://reference.aspose.com/words/python-net/aspose.words/document/), чтобы открыть существующий документ из файла.

В следующем примере кода показано, как открыть документ из файла:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpenDocument.py" >}}

Вы можете скачать файл шаблона для этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

### Загрузка из потока

Чтобы открыть документ из потока, просто передайте объект stream, содержащий документ, в конструктор [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).

В следующем примере кода показано, как открыть документ из потока:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpeningFromStream.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
