---
title: Запис на документ в Java
second_title: Aspose.Words вместо Java
articleTitle: Запис на документ
linktitle: Запис на документ
type: docs
description: "Запис на документ във всеки поддържан формат, като се използва Java."
weight: 20
url: /bg/java/save-a-document/
---

Повечето от задачите, които трябва да изпълните с Aspose.Words включва запазване на документ. Запис на документ Aspose.Words осигурява [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String)) метод на [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Клас. Документът може да бъде записан във всеки поддържан от Aspose.Words. За списъка на всички поддържани формати за запис вижте [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) Изброяване.

## Запис във файл {#save-a-document-to-a-file}

Просто използвайте [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String) метод с име на файл. Aspose.Words ще определи формата за запис от разширението на файла, който посочите.

Следният пример за код показва как да заредите и запишете документ във файл:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Запис към поток {#save-a-document-to-a-stream}

Предайте обект на потока [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) метод. Необходимо е изрично да се уточни формата за запис при запис към поток.

Следният пример с код показва как да заредите и запишете документ към поток:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

## Запис в PCL {#save-a-document-to-pcl}

Aspose.Words поддържа запис на документ в PCL (Printer Command Language). Aspose.Words може да записва документи във формат PCL 6 (PCL 6 подобрена или PCL XL). На `PclSaveOptions` класа може да се използва за определяне на допълнителни опции при запис на документ във формат PCL.

Следният пример за код показва как да запишете документ в PCL чрез използване на опции за запис:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
