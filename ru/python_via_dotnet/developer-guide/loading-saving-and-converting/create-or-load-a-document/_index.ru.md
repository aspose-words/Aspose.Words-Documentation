---
title: Создать или загрузить документ в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Создать или загрузить документ
linktitle: Создать или загрузить документ
type: docs
url: /ru/python-net/create-or-load-a-document/
description: "Создать пустой документ или загрузить его из файла или потока с помощью Python."
keywords: "create a document python, load a document python, create a blank document python, load a document from file python, load a document from stream python, create a document Aspose python, load a document Aspose python, load formats supported by Aspose.Words python"
weight: 10
timestamp: 2024-01-27-14-07-04
---

Почти любая задача, которую вы хотите выполнить Aspose.Words Речь идет о загрузке документа. The [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Класс представляет собой документ, загруженный в память. В документе есть несколько перегруженных конструкторов, позволяющих создать пустой документ или загрузить его из файла или потока. Документ может быть загружен в любом формате загрузки, поддерживаемом Aspose.Words. Для списка всех поддерживаемых форматов загрузки см. [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) перечисление.

## Создать новый документ

Мы будем называть [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Конструктор без параметров для создания нового документа. Если вы хотите сгенерировать документ программно, самый простой способ - использовать его. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) Класс для добавления содержимого документа.

Следующий пример кода показывает, как создать документ с помощью конструктора документов:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
            
builder.write("Hello world!")

doc.save(docs_base.artifacts_dir + "out.docx")
{{< /highlight >}}

{{% alert color="primary" %}}

Обратите внимание на значения по умолчанию:

- пустой документ содержит один раздел с параметрами по умолчанию, один пустой абзац, некоторые стили документов. Фактически этот документ является тем же результатом, что и результат создания "Нового документа". Microsoft Word.
- Размер документа является [PaperSize.LETTER](https://reference.aspose.com/words/python-net/aspose.words/papersize/#letter).

{{% /alert %}}

## Загрузить документ

Загрузить существующий документ в любой из [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) форматы, передайте имя файла или поток в один из [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Конструкторы. Формат загруженного документа автоматически определяется его расширением.

### Загрузка из файла

Передайте имя файла как строку в [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Конструктор открывает существующий документ из файла.

Следующий пример кода показывает, как открыть документ из файла:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpenDocument.py" >}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

### Загрузка из потока

Чтобы открыть документ из потока, просто передайте объект потока, который содержит документ в поток. [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Конструктор.

Следующий пример кода показывает, как открыть документ из потока:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpeningFromStream.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
