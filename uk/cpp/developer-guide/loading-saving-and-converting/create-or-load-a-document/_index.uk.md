---
title: Створіть або завантажте документ у C++
second_title: Aspose.Words для C++
articleTitle: Створіть або завантажте документ
linktitle: Створіть або завантажте документ
type: docs
description: "Створіть порожній документ або завантажте його з файлу або потоку за допомогою C++."
keywords: "create a document c++, load a document c++, create a blank document c++, load a document from file c++, load a document from stream c++, create a document Aspose C++, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 10
url: /uk/cpp/create-or-load-a-document/
timestamp: 2024-01-27-14-07-04
---

Майже будь-яке завдання, яке ви хочете виконати за допомогою Aspose.Words, передбачає завантаження документа. Клас `Document` представляє документ, завантажений у пам'ять. Документ має кілька перевантажених конструкторів, що дозволяють створювати порожній документ або завантажувати його з файлу або потоку. Документ може бути завантажений в будь-якому форматі завантаження, підтримуваному Aspose.Words. Список всіх підтримуваних форматів завантаження дивіться в списку [LoadFormat](https://reference.aspose.com/words/cpp/aspose.words/loadformat/).

## Створіть новий документ {#create-a-new-document}

Ми викличемо конструктор [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) без параметрів, щоб створити новий порожній документ. Якщо ви хочете згенерувати документ програмно, найпростіший спосіб - використовувати клас [DocumentBuilder](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder) для додавання вмісту документа.

Наступний приклад коду показує, як створити документ за допомогою конструктора документів:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CreateDocument-CreateDocument.cpp" >}}

{{% alert color="primary" %}}

Зверніть увагу на значення за замовчуванням:

- Порожній документ містить один розділ із параметрами за замовчуванням, один порожній абзац, кілька стилів документа. Фактично цей документ є таким же, як результат створення "Нового документа" в Microsoft Word.
- Формат паперу для документа - [PaperSize](https://reference.aspose.com/words/cpp/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Завантаження документа

Щоб завантажити існуючий документ у будь-якому з форматів `LoadFormat`, передайте ім'я файлу або потік одному з конструкторів документів. Формат завантажуваного документа автоматично визначається його розширенням.

### Завантаження з файлу {#load-from-a-file}

Передайте ім'я файлу як рядок конструктору документів, щоб відкрити існуючий документ із файлу.

Наступний приклад коду показує, як відкрити документ із файлу:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-OpenDocument.cpp" >}}

Ви можете завантажити файл шаблону для цього прикладу з сайту [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

### Завантаження з потоку {#load-from-a-stream}

Щоб відкрити документ із потоку, просто передайте об'єкт stream, що містить документ, конструктору документа.

Наступний приклад коду показує, як відкрити документ із потоку:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-OpeningFromStream.cpp" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону для цього прикладу з сайту [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
