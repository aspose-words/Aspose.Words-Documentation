---
title: Създаване или зареждане на документ в C#
second_title: Aspose.Words вместо .NET
articleTitle: Създаване или зареждане на документ
linktitle: Създаване или зареждане на документ
type: docs
url: /bg/net/create-or-load-a-document/
description: "Създаване на празен документ или за зареждане от файл или поток с помощта на C#."
keywords: "create a document c#, load a document c#, create a blank document c#, load a document from file c#, load a document from stream c#, create a document Aspose .NET, load a document Aspose .NET, load formats supported by Aspose.Words .NET"
weight: 10
---

Почти всяка задача, която искате да изпълните с Aspose.Words включва зареждане на документ. На `Document` Класът представлява документ, зареден в паметта. Документът има няколко претоварени конструктори, които ви позволяват да създадете празен документ или да го заредите от файл или поток. Документът може да бъде зареден във всеки формат на натоварване, поддържан от Aspose.Words. За списъка на всички поддържани формати на натоварване, вж. [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) Изброяване.

## Създаване на нов документ {#create-a-new-document}

Ще се обадим на [Document](https://reference.aspose.com/words/net/aspose.words/document/document/) Конструктор без параметри за създаване на нов празен документ. Ако искате да генерирате документ programmically, най-простият начин е да използвате [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) клас за добавяне на съдържание на документи.

Следният пример с код показва как да се създаде документ с помощта на строителя на документи:

{{< gist "aspose-words-gists" "16b9cfe5420b6e033f90a45263eef020" "create-docx.cs" >}}

{{% alert color="primary" %}}

Забележете стойностите по подразбиране:

- Празен документ съдържа един раздел с параметри по подразбиране, един празен параграф, някои стилове на документи. Всъщност този документ е същият като в резултат на създаването на новия документ в Microsoft Word.
- Размерът на документа е [PaperSize](https://reference.aspose.com/words/net/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Зареждане на документ {#load-a-document}

Зареждане на съществуващ документ в която и да е от [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) форматиране, предаване на името на файла или потока в един от конструкторите на документи. Форматът на натоварения документ автоматично се определя от неговото разширение.

### Зареждане от файл {#load-from-a-file}

Подай името на файла като низ към конструктора на документа, за да отворите съществуващ документ от файл.

Следният пример за код показва как да отворите документ от файл:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx.cs" >}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

### Зареждане от поток {#load-from-a-stream}

За да отворите документ от поток, просто предайте обект, който съдържа документа в конструктора на документа.

Следният пример за код показва как да се отвори документ от поток:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx-stream.cs" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
