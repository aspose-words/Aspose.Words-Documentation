---
title: Uložit dokument do Java
second_title: Aspose.Words místo Java
articleTitle: Uložit dokument
linktitle: Uložit dokument
type: docs
description: "Uložit dokument v jakémkoliv podporovaném formátu pomocí Java."
weight: 20
url: /cs/java/save-a-document/
timestamp: 2024-01-27-14-07-04
---

Většina úkolů, které musíte splnit Aspose.Words zahrnuje uložení dokumentu. Uložit dokument Aspose.Words poskytuje [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String)) [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) třída. Dokument lze uložit v libovolném formátu uložení podporovaném Aspose.Words. Seznam všech podporovaných formátů uložení viz [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) výčtu.

## Uložit do souboru {#save-a-document-to-a-file}

Jednoduše použijte [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String) metoda s názvem souboru. Aspose.Words určí formát uložení z přípony souboru, kterou zadáte.

Následující příklad kódu ukazuje, jak načíst a uložit dokument do souboru:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Uložit do proudu {#save-a-document-to-a-stream}

Poslat objekt proudu do [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) metoda. Je nutné výslovně určit formát uložení při uložení do proudu.

Následující příklad kódu ukazuje, jak načíst a uložit dokument do proudu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

## Uložit do PCL {#save-a-document-to-pcl}

Aspose.Words podporuje uložení dokumentu do PCL (Printer Command Language). Aspose.Words lze uložit dokumenty do formátu PCL 6 (PCL 6 Enhanced nebo PCL XL). The `PclSaveOptions` třída může být použita pro upřesnění dalších možností při uložení dokumentu do formátu PCL.

Následující příklad kódu ukazuje, jak uložit dokument do PCL pomocí možností uložení:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
