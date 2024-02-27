---
title: Zapisz dokument w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Zapisz dokument
linktitle: Zapisz dokument
type: docs
description: "Zapisz dokument w dowolnym obsługiwanym formacie za pomocą Python."
keywords: "save a document python, save a document to file python, save a document to stream python, save a document Aspose python, save formats supported by Aspose.Words python"
weight: 20
url: /pl/python-net/save-a-document/
---

Większość zadań, które należy wykonać w Aspose.Words, obejmuje zapisanie dokumentu. Do zapisania dokumentu Aspose.Words udostępnia metodę [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) klasy [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Istnieją przeciążenia, które umożliwiają zapisanie dokumentu do pliku lub strumienia. Dokument można zapisać w dowolnym formacie zapisu obsługiwanym przez Aspose.Words. Aby zapoznać się z listą wszystkich obsługiwanych formatów zapisu, zobacz wyliczenie [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

## Zapisz dokument w pliku {#save-a-document-to-a-file}

Po prostu użyj metody [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) z nazwą pliku. Aspose.Words określi format zapisu na podstawie określonego rozszerzenia pliku.

Poniższy przykład kodu pokazuje, jak załadować i zapisać dokument do pliku:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSave.py" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Zapisz dokument w strumieniu {#save-a-document-to-a-stream}

Przekaż obiekt strumieniowy do metody [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). Podczas zapisywania do strumienia konieczne jest wyraźne określenie formatu zapisu.

Poniższy przykład kodu pokazuje, jak załadować i zapisać dokument w strumieniu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSaveToStream.py" >}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

## Zapisz dokument w formacie PCL {#save-a-document-to-pcl}

Aspose.Words obsługuje zapisywanie dokumentów w języku PCL (język poleceń drukarki). Aspose.Words może zapisywać dokumenty w formacie PCL 6 (PCL 6 Enhanced lub PCL XL). Klasę [PclSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pclsaveoptions/) można wykorzystać do określenia dodatkowych opcji podczas zapisywania dokumentu w formacie PCL.

Poniższy przykład kodu pokazuje, jak zapisać dokument w formacie PCL przy użyciu opcji zapisywania:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pcl_save_options-RasterizeTransformedElements.py" >}}

