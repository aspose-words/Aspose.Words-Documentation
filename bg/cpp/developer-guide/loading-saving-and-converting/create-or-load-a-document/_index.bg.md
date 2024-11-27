---
title: Създаване или зареждане на документ в C++
second_title: Aspose.Words за C++
articleTitle: Създаване или зареждане на документ
linktitle: Създаване или зареждане на документ
type: docs
description: "Създаване на празен документ или да го заредите от файл или поток с C++."
keywords: "create a document c++, load a document c++, create a blank document c++, load a document from file c++, load a document from stream c++, create a document Aspose C++, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 10
url: /bg/cpp/create-or-load-a-document/
timestamp: 2024-01-27-14-07-04
---

Почти всяка задача, която искате да изпълните с Aspose.Words, включва зареждане на документ. `Document` класът представлява документ, зареден в паметта. Документът има няколко претоварени конструктори, които ви позволяват да създадете празен документ или да го заредите от файл или поток. Документът може да бъде зареден във всеки формат на зареждане, поддържан от Aspose.Words. За списъка с всички поддържани формати на натоварване вижте изброяването [LoadFormat](https://reference.aspose.com/words/cpp/aspose.words/loadformat/).

## Създаване на нов документ {#create-a-new-document}

Ще извикаме [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) конструктор без параметри, за да създадем нов празен документ. Ако искате да генерирате програмен документ, най-простият начин е да използвате класа [DocumentBuilder](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder), за да добавите съдържание на документа.

Следният пример за код показва как да създадете документ с помощта на конструктора на документи:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CreateDocument-CreateDocument.cpp" >}}

{{% alert color="primary" %}}

Отбележете стойностите по подразбиране:

- Празният документ съдържа една секция с параметри по подразбиране, един празен абзац, някои стилове на документи. Всъщност този документ е същият като резултата от създаването на "нов документ" в Microsoft Word.
- Размерът на документа е [PaperSize](https://reference.aspose.com/words/cpp/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Зареждане на документ

За да заредите съществуващ документ в някой от форматите `LoadFormat`, подайте името на файла или потока в един от конструкторите на документи. Форматът на заредения документ се определя автоматично от разширението му.

### Зареждане от файл {#load-from-a-file}

Подаване на име на файл като низ към конструктора на документи, за да отворите съществуващ документ от файл.

Следващият пример за код показва как да отворите документ от файл:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-OpenDocument.cpp" >}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

### Зареждане от поток {#load-from-a-stream}

За да отворите документ от поток, просто подайте поток обект, който съдържа документа в конструктора на документа.

Следващият пример за код показва как да отворите документ от поток:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-OpeningFromStream.cpp" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
