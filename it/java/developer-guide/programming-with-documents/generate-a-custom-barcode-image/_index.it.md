---
title: Crea BarCode in Java
second_title: Aspose.Words per Java
articleTitle: Generare un'immagine personalizzata di BarCode
linktitle: Generare un'immagine personalizzata di BarCode
description: "Esempio di generazione di codici a barre utilizzando Java."
type: docs
weight: 350
url: /it/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

{{% alert color="primary" %}}

Aspose.Words ha un'interfaccia per generare codici a barre personalizzati che lo rende molto facile da usare [Aspose.Words](https://products.aspose.com/words/java/) e [Assumere. BarCode](https://products.aspose.com/barcode/java/) insieme per rendere le immagini di codice a barre nei documenti di uscita. Ad esempio, è possibile caricare un documento DOC, OOXML o RTF contenente `DISPLAYBARCODE` Campo in Aspose.Words, fornire la vostra implementazione del generatore di codici a barre personalizzato e salvare in formati di pagina fissi come PDF, XPS ecc. Un tipico `DISPLAYBARCODE` campo ha la seguente sintassi:

{ `DISPLAYBARCODE` "SomeData" QR \h 720 }

{{% /alert %}}

Di seguito è riportato un generatore di codice di esempio che sfrutta il `Aspose.BarCode` API. Questo esempio mostra come inserire immagini di codici a barre a `DISPLAYBARCODE` La posizione del campo nel documento di Word utilizzando Aspose.Words e `Aspose.BarCode` APIS.

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}
