---
title: Lavorare con le immagini in C++
second_title: Aspose.Words per C++
articleTitle: Lavorare con le immagini
linktitle: Lavorare con le immagini
type: docs
description: "Introduzione alla funzione Immagine, come creare e manipolare l'immagine utilizzando C++."
weight: 300
url: /it/cpp/working-with-images/
---

Aspose.Words consente agli utenti di lavorare con le immagini in modo molto flessibile. In questo articolo, puoi esplorare solo alcune delle possibilità di lavorare con le immagini.

## Come estrarre immagini da un documento

Tutte le immagini sono memorizzate all'interno dei nodi **Shape** in un [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Per estrarre tutte le immagini o le immagini aventi un tipo specifico dal documento, attenersi alla seguente procedura:

- Utilizzare il metodo [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/) per selezionare tutti i nodi **Shape**.
- Scorrere le raccolte di nodi risultanti.
- Controllare la proprietà booleana [HasImage](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_hasimage/).
- Estrarre i dati dell'immagine utilizzando la proprietà [ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/).
- Salvare i dati dell'immagine in un file.

Il seguente esempio di codice mostra come estrarre le immagini da un documento e salvarle come file:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cpp" >}}

## Salvataggio delle immagini come WMF

Aspose.Words fornisce la funzionalità per salvare tutte le immagini disponibili in un documento [WMF ](https://docs.fileformat.com/image/wmf/)formattare durante la conversione di DOCX in RTF.

Il seguente esempio di codice mostra come salvare le immagini come WMF con le opzioni di salvataggio RTF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cpp" >}}
