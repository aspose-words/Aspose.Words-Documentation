---
title: Створення або завантаження документів C#
second_title: Aspose.Words для .NET
articleTitle: Створити або завантажити документ
linktitle: Створити або завантажити документ
type: docs
url: /uk/net/create-or-load-a-document/
description: "Створити порожній документ або завантажити його з файлу або потоку за допомогою C#й"
keywords: "create a document c#, load a document c#, create a blank document c#, load a document from file c#, load a document from stream c#, create a document Aspose .NET, load a document Aspose .NET, load formats supported by Aspose.Words .NET"
weight: 10
---

Практично будь-яке завдання, яке ви хочете виконати з Aspose.Words передбачає завантаження документа. Про нас `Document` клас являє собою документ, що завантажується в пам'ять. Документ має декілька перевантажених конструкторів, що дозволяють створювати порожній документ або завантажувати його з файлу або потоку. Документ може бути завантажений в будь-якому форматі завантаження, що підтримується Aspose.Wordsй Для всіх підтриманих форматів завантаження див. [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) заохочення.

## Створити новий документ {#create-a-new-document}

Зателефонуйте [Document](https://reference.aspose.com/words/net/aspose.words/document/document/) конструктор без параметрів, щоб створити новий порожній документ. Якщо ви хочете створити програму документу, найпростіший спосіб використання [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) клас додавати вміст документа.

Приклад коду показує, як створити документ за допомогою конструктора документів:

{{< gist "aspose-words-gists" "16b9cfe5420b6e033f90a45263eef020" "create-docx.cs" >}}

{{% alert color="primary" %}}

Примітка значень за замовчуванням:

- Заготовий документ містить один розділ з параметрами за замовчуванням, один порожній пункт, деякі стилі документа. Актуально цей документ є тим самим, що в результаті створення "Новий документ" у Microsoft Wordй
- до Розмір документа [PaperSize](https://reference.aspose.com/words/net/aspose.words/papersize/)й**Letter**й

{{% /alert %}}

## Завантажити документ {#load-a-document}

Для завантаження наявного документа в будь-якому з [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) формати, пропускають назву файлу або потік в одну з конструкторів документів. Формат завантаженого документа автоматично визначається його розширенням.

### Завантаження з файлу {#load-from-a-file}

Пройдіть ім'я файлу як рядок до конструктора документів, щоб відкрити існуючий документ з файлу.

Приклад наступного коду показує, як відкрити документ з файлу:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx.cs" >}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)й

### Завантаження з потоку {#load-from-a-stream}

Щоб відкрити документ з потоку, просто пропустіть об'єкт потоку, який містить документ у конструктор документів.

Приклад коду показує, як відкрити документ з потоку:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx-stream.cs" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)й

{{% /alert %}}
