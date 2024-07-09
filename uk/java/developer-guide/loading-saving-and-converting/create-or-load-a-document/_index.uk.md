---
title: Створення або завантаження документів Java
second_title: Aspose.Words для Java
articleTitle: Створити або завантажити документ
linktitle: Створити або завантажити документ
type: docs
weight: 10
url: /uk/java/create-or-load-a-document/
description: "Aspose.Words дозволяє створювати порожній документ або завантажувати його з файлу або потокового передавання Javaй"
---

Практично будь-яке завдання, яке ви хочете виконати з Aspose.Words передбачає завантаження документа. Про нас `Document` клас являє собою документ, що завантажується в пам'ять. Документ має декілька перевантажених конструкторів, що дозволяють створювати порожній документ або завантажувати його з файлу або потоку. Документ може бути завантажений в будь-якому форматі завантаження, що підтримується Aspose.Wordsй Для всіх підтриманих форматів завантаження див. [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) заохочення.

## Створити новий документ {#create-a-new-document}

Зателефонуйте [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) конструктор без параметрів для створення нового бланкового документа. Якщо ви хочете створити програму документу, найпростіший спосіб використовувати [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder) клас додавати вміст документа.

Приклад коду показує, як створити документ за допомогою конструктора документів:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

Примітка значень за замовчуванням:

- Заготовий документ містить один розділ з параметрами за замовчуванням, один порожній пункт, деякі стилі документу. Актуально цей документ є тим самим, що в результаті створення "Нового документа" в Microsoft Wordй
- до Розмір документа [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/)й**Letter**й

{{% /alert %}}

## Завантажити документ

Для завантаження наявного документа в будь-якому з [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) формати, пропускають назву файлу або потік в одну з конструкторів документів. Формат завантаженого документа автоматично визначається його розширенням.

### Завантаження з файлу {#load-from-a-file}

Пройдіть назву файлу як рядок до конструктора документів, щоб відкрити існуючий документ з файлу.

Приклад коду показує, як відкрити документ з файлу:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)й

### Завантаження з потоку {#load-from-a-stream}

Щоб відкрити документ з потоку, просто пропустіть об'єкт потоку, який містить документ у конструктор документів.

Приклад коду показує, як відкрити документ з потоку:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)й

{{% /alert %}}
