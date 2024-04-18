---
title: Створення або завантаження документів Python
second_title: Aspose.Words для Python via .NET
articleTitle: Створити або завантажити документ
linktitle: Створити або завантажити документ
type: docs
url: /uk/python-net/create-or-load-a-document/
description: "Створити порожній документ або завантажити його з файлу або потоку за допомогою Pythonй"
keywords: "create a document python, load a document python, create a blank document python, load a document from file python, load a document from stream python, create a document Aspose python, load a document Aspose python, load formats supported by Aspose.Words python"
weight: 10
---

Практично будь-яке завдання, яке ви хочете виконати з Aspose.Words передбачає завантаження документа. Про нас [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) клас являє собою документ, що завантажується в пам'ять. Документ має декілька перевантажених конструкторів, що дозволяють створювати порожній документ або завантажувати його з файлу або потоку. Документ може бути завантажений в будь-якому форматі завантаження, що підтримується Aspose.Wordsй Для всіх підтриманих форматів завантаження див. [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) заохочення.

## Створити новий документ

Зателефонуйте [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) конструктор без параметрів, щоб створити новий порожній документ. Якщо ви хочете створити програму документу, найпростіший спосіб використання [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) клас додавати вміст документа.

Приклад коду показує, як створити документ за допомогою конструктора документів:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
            
builder.write("Hello world!")

doc.save(docs_base.artifacts_dir + "out.docx")
{{< /highlight >}}

{{% alert color="primary" %}}

Примітка значень за замовчуванням:

- Заготовий документ містить один розділ з параметрами за замовчуванням, один порожній пункт, деякі стилі документа. Актуально цей документ є тим самим, що в результаті створення "Новий документ" у Microsoft Wordй
- до Розмір документа [PaperSize.LETTER](https://reference.aspose.com/words/python-net/aspose.words/papersize/#letter)й

{{% /alert %}}

## Завантажити документ

Для завантаження наявного документа в будь-якому з [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) формати, перенести назву файлу або потік в одну з [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) конструктори. Формат завантаженого документа автоматично визначається його розширенням.

### Завантаження з файлу

Пройдіть ім'я файлу як рядок до [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) конструктор для відкриття існуючого документа з файлу.

Приклад наступного коду показує, як відкрити документ з файлу:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpenDocument.py" >}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)й

### Завантаження з потоку

Щоб відкрити документ з потоку, просто перейде об'єкт потоку, який містить документ в [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) конструктор.

Приклад коду показує, як відкрити документ з потоку:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpeningFromStream.py" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)й

{{% /alert %}}
