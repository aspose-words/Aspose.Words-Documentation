---
title: Збережіть документ у Java
second_title: Aspose.Words для Java
articleTitle: Збережіть документ
linktitle: Збережіть документ
type: docs
description: "Збережіть документ у будь-якому форматі підтримки Javaй"
weight: 20
url: /uk/java/save-a-document/
timestamp: 2024-01-27-14-07-04
---

Більшість завдань, які потрібно виконувати з Aspose.Words задіяти збереження документа. Для збереження документа Aspose.Words забезпечує [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String)) метод [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) клас. Документ можна зберігати в будь-якому форматі збереження, що підтримується Aspose.Wordsй Для всіх підтримуваних файлів збереження, див. [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) заохочення.

## Збережіть файл {#save-a-document-to-a-file}

Просто використовуйте [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String) метод з ім'ям файлу. Aspose.Words визначати формат збереження з розширення файлу, який ви вказали.

Приклад коду показує, як завантажити і зберегти документ на файл:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)й

{{% /alert %}}

## Збережіть потік {#save-a-document-to-a-stream}

Пройдіть об'єкт потоку до [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) метод. Необхідно вказати формат збереження прямо при збереженні потоку.

Приклад коду показує, як завантажити і зберегти документ на потік:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)й

## Зберегти на PCL {#save-a-document-to-pcl}

Aspose.Words підтримує збереження документа в PCL (Printer Command Language). Aspose.Words може зберігати документи в форматі PCL 6 (PCL 6 Enhanced або PCL XL) Про нас `PclSaveOptions` клас може використовуватися для уточнення додаткових параметрів при збереженні документа в формат PCL.

Приклад коду показує, як зберегти документ на PCL, використовуючи параметри збереження:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
