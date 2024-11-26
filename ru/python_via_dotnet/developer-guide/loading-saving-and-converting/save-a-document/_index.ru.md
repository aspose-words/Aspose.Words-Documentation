---
title: Сохраните документ в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Сохранение документа
linktitle: Сохранение документа
type: docs
description: "Сохраните документ в любом поддерживаемом формате, используя Python."
keywords: "save a document python, save a document to file python, save a document to stream python, save a document Aspose python, save formats supported by Aspose.Words python"
weight: 20
url: /ru/python-net/save-a-document/
timestamp: 2024-01-27-14-07-04
---

Большинство задач, которые вам нужно выполнить с помощью Aspose.Words, связаны с сохранением документа. Для сохранения документа в Aspose.Words используется метод [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) класса [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Существуют перегрузки, которые позволяют сохранять документ в файл или поток. Документ может быть сохранен в любом формате сохранения, поддерживаемом Aspose.Words. Список всех поддерживаемых форматов сохранения приведен в списке [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

## Сохранить документ в файл {#save-a-document-to-a-file}

Просто используйте метод [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) с именем файла. Aspose.Words определит формат сохранения на основе указанного вами расширения файла.

В следующем примере кода показано, как загрузить и сохранить документ в файл:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSave.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Сохранить документ в потоке {#save-a-document-to-a-stream}

Передайте объект stream методу [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). При сохранении в stream необходимо явно указать формат сохранения.

В следующем примере кода показано, как загрузить и сохранить документ в потоке:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSaveToStream.py" >}}

Вы можете скачать файл шаблона для этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

## Сохраните документ в PCL {#save-a-document-to-pcl}

Aspose.Words поддерживает сохранение документа в формате PCL (язык команд принтера). Aspose.Words позволяет сохранять документы в формате PCL 6 (расширенный формат PCL 6 или формат PCL XL). Класс [PclSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pclsaveoptions/) можно использовать для указания дополнительных параметров при сохранении документа в формате PCL.

В следующем примере кода показано, как сохранить документ в PCL с помощью параметров сохранения:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pcl_save_options-RasterizeTransformedElements.py" >}}

