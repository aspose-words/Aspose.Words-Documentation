---
title: Запис на документ в Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Запис на документ
linktitle: Запис на документ
type: docs
description: "Запис на документ във всеки поддържан формат, като се използва Python."
keywords: "save a document python, save a document to file python, save a document to stream python, save a document Aspose python, save formats supported by Aspose.Words python"
weight: 20
url: /bg/python-net/save-a-document/
---

Повечето от задачите, които трябва да изпълните Aspose.Words включва запазване на документ. Запис на документ Aspose.Words осигурява [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) метод на [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Клас. Има претоварване, което позволява запис на документ във файл или поток. Документът може да бъде записан във всеки поддържан от Aspose.Words. За списъка на всички поддържани формати за запис вижте [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) Изброяване.

## Запис на документ към файл {#save-a-document-to-a-file}

Просто използвайте [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) метод с име на файл. Aspose.Words ще определи формата за запис от разширението на файла, който посочите.

Следният пример за код показва как да заредите и запишете документ във файл:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSave.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Запис на документ към поток {#save-a-document-to-a-stream}

Предайте обект на поток [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) метод. Необходимо е изрично да се посочи формата за запис при запис към поток.

Следният пример за код показва как да се зареди и запази документ към поток:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSaveToStream.py" >}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

## Запис на документ в PCL {#save-a-document-to-pcl}

Aspose.Words поддържа запазване на документ в PCL (Printer Command Language). Aspose.Words може да записва документи във формат PCL 6 (PCL 6 подобрена или PCL XL). На [PclSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pclsaveoptions/) Класът може да се използва за определяне на допълнителни опции при запис на документ във формат PCL.

Следният пример за код показва как да запишете документ в PCL чрез използване на опции за запис:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pcl_save_options-RasterizeTransformedElements.py" >}}

