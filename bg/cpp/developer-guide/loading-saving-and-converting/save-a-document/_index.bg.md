---
title: Запис на документ в C++
second_title: Aspose.Words за C++
articleTitle: Запис на документ
linktitle: Запис на документ
type: docs
description: "Запишете документ във всеки поддържан формат, като използвате C++."
keywords: "save a document c++, save a document to file c++, save a document to stream c++, save a document Aspose C++, save formats supported by Aspose.Words C++"
weight: 20
url: /bg/cpp/save-a-document/
timestamp: 2024-01-27-14-07-04
---

Повечето от задачите, които трябва да изпълните с Aspose.Words, включват записване на документ. За да запишете документ Aspose.Words предоставя метода [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) на класа [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Документът може да бъде записан във всеки формат, поддържан от Aspose.Words. За списъка с всички поддържани формати за записване вижте изброяването [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

## Запис във файл {#save-a-document-to-a-file}

Просто използвайте метода [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) с име на файл. Aspose.Words ще определи формата на записване от разширението на файла, който сте задали.

Следващият пример за код показва как да заредите и запишете документ във файл:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-LoadAndSave.cpp" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Запази в поток {#save-a-document-to-a-stream}

Подаване на обект на поток към метода [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). Необходимо е да зададете изрично формата за записване, когато записвате в поток.

Следващият пример за код показва как да заредите и запишете документ в поток:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-LoadAndSaveToStream.cpp" >}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).


## Запази в PCL {#save-a-document-to-pcl}

Aspose.Words поддържа запис на документ в PCL (Език на командата за принтер). Aspose.Words може да записва документи в PCL 6 (PCL 6 подобрен или PCL XL) формат. Клас `PclSaveOptions` може да се използва за задаване на допълнителни опции при записване на документ във формат PCL.

Следният пример за код показва как да запишете документ до PCL, като използвате опциите за записване:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToPCL-ConvertDocumentToPCL.cpp" >}}
