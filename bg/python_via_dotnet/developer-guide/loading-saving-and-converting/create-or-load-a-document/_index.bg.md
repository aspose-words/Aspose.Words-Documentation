---
title: Създаване или зареждане на документ в Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Създаване или зареждане на документ
linktitle: Създаване или зареждане на документ
type: docs
url: /bg/python-net/create-or-load-a-document/
description: "Създаване на празен документ или за зареждане от файл или поток с помощта на Python."
keywords: "create a document python, load a document python, create a blank document python, load a document from file python, load a document from stream python, create a document Aspose python, load a document Aspose python, load formats supported by Aspose.Words python"
weight: 10
---

Почти всяка задача, която искате да изпълните с Aspose.Words включва зареждане на документ. На [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Класът представлява документ, зареден в паметта. Документът има няколко претоварени конструктори, които ви позволяват да създадете празен документ или да го заредите от файл или поток. Документът може да бъде зареден във всеки формат на натоварване, поддържан от Aspose.Words. За списъка на всички поддържани формати на натоварване, вж. [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) Изброяване.

## Създаване на нов документ

Ще се обадим на [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Конструктор без параметри за създаване на нов празен документ. Ако искате да генерирате документ programmically, най-простият начин е да използвате [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) клас за добавяне на съдържание на документи.

Следният пример с код показва как да се създаде документ с помощта на строителя на документи:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
            
builder.write("Hello world!")

doc.save(docs_base.artifacts_dir + "out.docx")
{{< /highlight >}}

{{% alert color="primary" %}}

Забележете стойностите по подразбиране:

- Празен документ съдържа един раздел с параметри по подразбиране, един празен параграф, някои стилове на документи. Всъщност този документ е същият като в резултат на създаването на новия документ в Microsoft Word.
- Размерът на документа е [PaperSize.LETTER](https://reference.aspose.com/words/python-net/aspose.words/papersize/#letter).

{{% /alert %}}

## Зареждане на документ

Зареждане на съществуващ документ в която и да е от [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) форматиране, предаване на името на файла или потока в един от [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Конструктори. Форматът на натоварения документ автоматично се определя от неговото разширение.

### Зареждане от файл

Изпращане на име на файл като низ към [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Конструктор за отваряне на съществуващ документ от файл.

Следният пример за код показва как да отворите документ от файл:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpenDocument.py" >}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

### Зареждане от поток

За да отворите документ от поток, просто преминете обект поток, който съдържа документа в [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Конструктор.

Следният пример за код показва как да се отвори документ от поток:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpeningFromStream.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
