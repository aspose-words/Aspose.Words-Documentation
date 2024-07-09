---
title: Zapisz dokument w Java
second_title: Aspose.Words zamiast Java
articleTitle: Zapisz dokument
linktitle: Zapisz dokument
type: docs
description: "Zapisz dokument w dowolnym obsługiwanym formacie Java."
weight: 20
url: /pl/java/save-a-document/
---

Większość zadań, które musisz wykonać z Aspose.Words wymaga przechowywania dokumentu. Aby zapisać dokument Aspose.Words zapewnia [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String)) metody [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Klasa. Dokument może być zapisany w dowolnym formacie zapisu obsługiwanym przez Aspose.Words. Lista wszystkich obsługiwanych formatów zapisu, patrz [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) wyliczenie.

## Zapisz do pliku {#save-a-document-to-a-file}

Wystarczy użyć [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String) metoda z nazwą pliku. Aspose.Words określi format zapisu z podanego rozszerzenia pliku.

Poniższy przykład kodu pokazuje jak wczytać i zapisać dokument do pliku:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Zapisz do strumienia {#save-a-document-to-a-stream}

Podanie obiektu strumienia do [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) Metoda. Należy wyraźnie określić format zapisu podczas zapisywania do strumienia.

Poniższy przykład kodu pokazuje jak wczytać i zapisać dokument do strumienia:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

## Zapisz do PCL {#save-a-document-to-pcl}

Aspose.Words obsługuje zapisywanie dokumentu do PCL (język polecenia drukarskiego). Aspose.Words może zapisać dokumenty w formacie PCL 6 (PCL 6 Enhanced lub PCL XL). W `PclSaveOptions` klasa może być użyta do określenia dodatkowych opcji podczas zapisywania dokumentu do formatu PCL.

Poniższy przykład kodu pokazuje jak zapisać dokument do PCL używając opcji zapisu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
