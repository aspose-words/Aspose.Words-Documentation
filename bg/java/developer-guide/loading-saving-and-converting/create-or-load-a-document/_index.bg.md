---
title: Създаване или зареждане на документ Java
second_title: Aspose.Words вместо Java
articleTitle: Създаване или зареждане на документ
linktitle: Създаване или зареждане на документ
type: docs
weight: 10
url: /bg/java/create-or-load-a-document/
description: "Aspose.Words позволява да създадете празен документ или да го заредите от файл или поток, използвайки Java."
---

Почти всяка задача, която искате да изпълните с Aspose.Words включва зареждане на документ. На `Document` Класът представлява документ, зареден в паметта. Документът има няколко претоварени конструктори, които ви позволяват да създадете празен документ или да го заредите от файл или поток. Документът може да бъде зареден във всеки формат на натоварване, поддържан от Aspose.Words. За списъка на всички поддържани формати на натоварване, вж. [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) Изброяване.

## Създаване на нов документ {#create-a-new-document}

Ще се обадим на [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Конструктор без параметри за създаване на нов празен документ. Ако искате да генерирате документ програмаматично, най-простият начин е да използвате [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder) клас за добавяне на съдържание на документи.

Следният пример за код показва как да се създаде документ с помощта на създателя на документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

Забележете стойностите по подразбиране:

- Празен документ съдържа един раздел с параметри по подразбиране, един празен параграф, някои стилове на документи. Всъщност този документ е същият като в резултат на създаването на новия документ в Microsoft Word.
- Размерът на документа е [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Зареждане на документ

Зареждане на съществуващ документ в която и да е от [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) форматиране, предаване на името на файла или потока в един от конструкторите на документи. Форматът на натоварения документ автоматично се определя от неговото разширение.

### Зареждане от файл {#load-from-a-file}

Подайте име на файл като низ към конструктора на документа, за да отворите съществуващ документ от файл.

Следният пример за код показва как да отворите документ от файл:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

### Зареждане от поток {#load-from-a-stream}

За да отворите документ от поток, просто предайте обект, който съдържа документа в конструктора на документа.

Следният пример за код показва как да отворите документ от поток:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}
