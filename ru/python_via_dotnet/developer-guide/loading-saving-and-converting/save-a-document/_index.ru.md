---
title: Сохранить документ в Python году
second_title: Aspose.Words для Python via .NET
articleTitle: Сохранить документ
linktitle: Сохранить документ
type: docs
description: "Сохраните документ в любом поддерживаемом формате, используя Python."
keywords: "save a document python, save a document to file python, save a document to stream python, save a document Aspose python, save formats supported by Aspose.Words python"
weight: 20
url: /ru/python-net/save-a-document/
---

Большинство задач, которые вам нужно выполнить с помощью Aspose.Words, связаны с сохранением документа. Для сохранения документа Aspose.Words предоставляет метод [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) класса [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Существуют перегрузки, позволяющие сохранять документ в файл или поток. Документ можно сохранить в любом формате сохранения, поддерживаемом Aspose.Words. Список всех поддерживаемых форматов сохранения см. в перечислении [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

## Сохранение документа в файл {#save-a-document-to-a-file}

Просто используйте метод [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) с именем файла. Aspose.Words определит формат сохранения по указанному вами расширению файла.

В следующем примере кода показано, как загрузить и сохранить документ в файл:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSave.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Сохранить документ в поток {#save-a-document-to-a-stream}

Передайте объект потока методу [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). При сохранении в поток необходимо явно указать формат сохранения.

В следующем примере кода показано, как загрузить и сохранить документ в потоке:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSaveToStream.py" >}}

Вы можете скачать файл шаблона этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

## Сохраните документ в PCL {#save-a-document-to-pcl}

Aspose.Words поддерживает сохранение документа в PCL (язык команд принтера). Aspose.Words может сохранять документы в формате PCL 6 (PCL 6 Enhanced или PCL XL). Класс [PclSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pclsaveoptions/) можно использовать для указания дополнительных параметров при сохранении документа в формате PCL.

В следующем примере кода показано, как сохранить документ в PCL, используя параметры сохранения:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pcl_save_options-RasterizeTransformedElements.py" >}}

