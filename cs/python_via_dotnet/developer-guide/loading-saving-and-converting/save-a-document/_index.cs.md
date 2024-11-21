---
title: Uložit dokument do Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Uložit dokument
linktitle: Uložit dokument
type: docs
description: "Uložit dokument v jakémkoliv podporovaném formátu pomocí Python."
keywords: "save a document python, save a document to file python, save a document to stream python, save a document Aspose python, save formats supported by Aspose.Words python"
weight: 20
url: /cs/python-net/save-a-document/
timestamp: 2024-01-27-14-07-04
---

Většina úkolů, které musíte splnit Aspose.Words zahrnuje uložení dokumentu. Uložit dokument Aspose.Words poskytuje [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) způsob [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) třída. Existují přetížení, které umožňují uložení dokumentu do souboru nebo streamu. Dokument lze uložit v libovolném formátu uložení podporovaném Aspose.Words. Seznam všech podporovaných formátů uložení viz [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) výčtu.

## Uložit dokument do souboru {#save-a-document-to-a-file}

Jednoduše použijte [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) metoda s názvem souboru. Aspose.Words určí formát uložení z přípony souboru, kterou určíte.

Následující příklad kódu ukazuje, jak načíst a uložit dokument do souboru:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSave.py" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Uložit dokument do proudu {#save-a-document-to-a-stream}

Poslat objekt proudu do [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) metoda. Je nutné výslovně určit formát uložení při uložení do proudu.

Následující příklad kódu ukazuje, jak načíst a uložit dokument do streamu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSaveToStream.py" >}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

## Uložit dokument do PCL {#save-a-document-to-pcl}

Aspose.Words podporuje uložení dokumentu do PCL (Printer Command Language). Aspose.Words lze uložit dokumenty do formátu PCL 6 (PCL 6 Enhanced nebo PCL XL). • [PclSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pclsaveoptions/) třída může být použita k určení dalších možností při uložení dokumentu do formátu PCL.

Následující příklad kódu ukazuje, jak uložit dokument do PCL pomocí možností uložení:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pcl_save_options-RasterizeTransformedElements.py" >}}

