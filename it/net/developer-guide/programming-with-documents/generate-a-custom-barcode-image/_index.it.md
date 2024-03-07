---
title: Come creare codici a barre
second_title: Aspose.Words per .NET
articleTitle: Genera un'immagine del codice a barre personalizzata
linktitle: Genera un'immagine del codice a barre personalizzata
description: "Esempio di generazione di forme di codici a barre utilizzando C#."
type: docs
weight: 350
url: /it/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Aspose.Words dispone di un'interfaccia per la generazione di codici a barre personalizzati che semplifica l'utilizzo combinato di Aspose.Words e [Aspose.BarCode](https://products.aspose.com/barcode/net/) per il rendering delle immagini dei codici a barre nei documenti di output. Ad esempio, puoi caricare un documento DOC, OOXML o RTF contenente un campo `DISPLAYBARCODE` in Aspose.Words, fornire l'implementazione del generatore di codici a barre personalizzato e salvare in formati di pagina fissi come PDF, XPS ecc.

Un tipico campo `DISPLAYBARCODE` ha la seguente sintassi:

{ `DISPLAYBARCODE` "SomeData" QR \h 720 }

Di seguito è riportato un generatore di codice di esempio che sfrutta `Aspose.BarCode` API. Questo esempio mostra come inserire immagini di codici a barre nella posizione del campo `DISPLAYBARCODE` nel documento Word utilizzando Aspose.Words e `Aspose.BarCode` API:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}
