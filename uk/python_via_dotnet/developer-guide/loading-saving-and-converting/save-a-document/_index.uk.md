---
title: Збережіть документ у Python
second_title: Aspose.Words для Python via .NET
articleTitle: Збережіть документ
linktitle: Збережіть документ
type: docs
description: "Збережіть документ у будь-якому форматі підтримки Pythonй"
keywords: "save a document python, save a document to file python, save a document to stream python, save a document Aspose python, save formats supported by Aspose.Words python"
weight: 20
url: /uk/python-net/save-a-document/
timestamp: 2024-01-27-14-07-04
---

Більшість завдань, які потрібно виконувати з Aspose.Words задіяти збереження документа. Для збереження документа Aspose.Words забезпечує [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) метод методу [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) клас. Є перевантаження, які дозволяють зберегти документ на файл або потік. Документ можна зберігати в будь-якому форматі збереження, що підтримується Aspose.Wordsй Для всіх підтриманих форматів збереження, див. інформацію [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) заохочення.

## Збережіть документ у файл {#save-a-document-to-a-file}

Просто використовуйте [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) метод з ім'ям файлу. Aspose.Words визначати формат збереження з розширення файлу, який ви вказали.

Приклад наступного коду показує, як завантажити і зберегти документ на файл:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSave.py" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)й

{{% /alert %}}

## Заощаджуйте документ до потоку {#save-a-document-to-a-stream}

Пройдіть об'єкт потоку до [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) метод. Необхідно вказати формат збереження прямо при збереженні потоку.

Приклад наступного коду показує, як завантажити і зберегти документ на потік:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSaveToStream.py" >}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)й

## Збережіть документ на PCL {#save-a-document-to-pcl}

Aspose.Words підтримує збереження документа в PCL (Printer Command Language). Aspose.Words може зберігати документи в форматі PCL 6 (PCL 6 Enhanced або PCL XL) Про нас [PclSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pclsaveoptions/) клас може використовуватися для уточнення додаткових параметрів при збереженні документа в формат PCL.

Приклад наступного коду показує, як зберегти документ на PCL за допомогою варіантів збереження:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pcl_save_options-RasterizeTransformedElements.py" >}}

