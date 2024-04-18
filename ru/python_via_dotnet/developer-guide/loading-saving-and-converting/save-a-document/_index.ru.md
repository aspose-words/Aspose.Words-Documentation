---
title: Сохранить документ в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Сохранить документ
linktitle: Сохранить документ
type: docs
description: "Сохранить документ в любом поддерживаемом формате с помощью Python."
keywords: "save a document python, save a document to file python, save a document to stream python, save a document Aspose python, save formats supported by Aspose.Words python"
weight: 20
url: /ru/python-net/save-a-document/
---

Большинство задач, которые вам нужно выполнить Aspose.Words Сохранить документ. Чтобы сохранить документ Aspose.Words обеспечивает [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) Методика [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) класс. Есть перегрузки, которые позволяют сохранить документ в файл или поток. Документ может быть сохранен в любом формате сохранения, поддерживаемом Aspose.Words. Для списка всех поддерживаемых форматов сохранения см. [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) перечисление.

## Сохранить документ в файл {#save-a-document-to-a-file}

Просто используйте [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) Метод с именем файла. Aspose.Words Определите формат сохранения из расширения файла, которое вы указали.

Следующий пример кода показывает, как загрузить и сохранить документ в файл:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSave.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Сохранить документ в потоке {#save-a-document-to-a-stream}

Передайте потоку объект в [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) метод. Необходимо четко указать формат сохранения при сохранении в потоке.

Следующий пример кода показывает, как загрузить и сохранить документ в поток:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSaveToStream.py" >}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

## Сохранить документ в PCL {#save-a-document-to-pcl}

Aspose.Words Поддерживает сохранение документа в PCL (Printer Command Language). Aspose.Words Документы могут сохраняться в формате PCL 6 (PCL 6 Enhanced или PCL XL). The [PclSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pclsaveoptions/) Класс можно использовать для указания дополнительных опций при сохранении документа в формате PCL.

Следующий пример кода показывает, как сохранить документ в PCL, используя параметры сохранения:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pcl_save_options-RasterizeTransformedElements.py" >}}

