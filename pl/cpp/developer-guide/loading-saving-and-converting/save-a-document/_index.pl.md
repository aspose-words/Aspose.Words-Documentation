---
title: Zapisz dokument w C++
second_title: Aspose.Words dla C++
articleTitle: Zapisz dokument
linktitle: Zapisz dokument
type: docs
description: "Zapisz dokument w dowolnym obsługiwanym formacie za pomocą C++."
keywords: "save a document c++, save a document to file c++, save a document to stream c++, save a document Aspose C++, save formats supported by Aspose.Words C++"
weight: 20
url: /pl/cpp/save-a-document/
timestamp: 2024-01-27-14-07-04
---

Większość zadań, które musisz wykonać za pomocą Aspose.Words, obejmuje zapisanie dokumentu. Aby zapisać dokument Aspose.Words zapewnia metodę [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) klasy [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Dokument można zapisać w dowolnym formacie zapisu obsługiwanym przez Aspose.Words. Aby zapoznać się z listą wszystkich obsługiwanych formatów zapisu, zobacz wyliczenie [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

## Zapisz do pliku {#save-a-document-to-a-file}

Po prostu użyj metody [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) z nazwą pliku. Aspose.Words określi format zapisu z określonego rozszerzenia pliku.

Poniższy przykład kodu pokazuje, jak załadować i zapisać dokument do pliku:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-LoadAndSave.cpp" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Zapisz w Strumieniu {#save-a-document-to-a-stream}

Przekaż obiekt strumienia do metody [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). Podczas zapisywania w strumieniu konieczne jest jawne określenie formatu zapisu.

Poniższy przykład kodu pokazuje, jak załadować i zapisać dokument w strumieniu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-LoadAndSaveToStream.cpp" >}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).


## Zapisz do PCL {#save-a-document-to-pcl}

Aspose.Words obsługuje zapisywanie dokumentu w PCL (język poleceń Drukarki). Aspose.Words może zapisywać dokumenty w formacie PCL 6 (PCL 6 Enhanced lub PCL XL). Klasy `PclSaveOptions` można użyć do określenia dodatkowych opcji podczas zapisywania dokumentu w formacie PCL.

Poniższy przykład kodu pokazuje, jak zapisać dokument w PCL za pomocą opcji zapisywania:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToPCL-ConvertDocumentToPCL.cpp" >}}
