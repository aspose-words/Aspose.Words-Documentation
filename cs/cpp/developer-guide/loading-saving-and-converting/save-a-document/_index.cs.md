---
title: Uložení dokumentu v C++
second_title: Aspose.Words pro C++
articleTitle: Uložení dokumentu
linktitle: Uložení dokumentu
type: docs
description: "Uložte dokument v libovolném podporovaném formátu pomocí C++."
keywords: "save a document c++, save a document to file c++, save a document to stream c++, save a document Aspose C++, save formats supported by Aspose.Words C++"
weight: 20
url: /cs/cpp/save-a-document/
timestamp: 2024-01-27-14-07-04
---

Většina úkolů, které musíte provést pomocí Aspose.Words, zahrnuje uložení dokumentu. Chcete-li uložit dokument Aspose.Words poskytuje metodu [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) třídy [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Dokument lze uložit v libovolném formátu uložení podporovaném Aspose.Words. Seznam všech podporovaných formátů ukládání najdete v výčtu [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

## Uložit do souboru {#save-a-document-to-a-file}

Jednoduše použijte metodu [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) s názvem souboru. Aspose.Words určí formát uložení Z přípony souboru, kterou určíte.

Následující příklad kódu ukazuje, jak načíst a uložit dokument do souboru:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-LoadAndSave.cpp" >}}

{{% alert color="primary" %}}

Soubor šablony tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Uložit do streamu {#save-a-document-to-a-stream}

Předejte objekt streamu metodě [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). Při ukládání do streamu je nutné explicitně specifikovat formát uložení.

Následující příklad kódu ukazuje, jak načíst a uložit dokument do streamu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-LoadAndSaveToStream.cpp" >}}

Soubor šablony tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).


## Uložit do PCL {#save-a-document-to-pcl}

Aspose.Words podporuje ukládání dokumentu do PCL (příkazový jazyk tiskárny). Aspose.Words lze ukládat dokumenty do PCL 6 (PCL 6 Enhanced nebo PCL XL) formátu. Třídu `PclSaveOptions` lze použít k určení dalších možností při ukládání dokumentu do formátu PCL.

Následující příklad kódu ukazuje, jak uložit dokument do PCL pomocí možností uložení:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToPCL-ConvertDocumentToPCL.cpp" >}}
