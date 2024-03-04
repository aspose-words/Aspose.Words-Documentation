---
title: Lavorare con le immagini in C#
second_title: Aspose.Words per .NET
articleTitle: Lavorare con le immagini
linktitle: Lavorare con le immagini
description: "Forme di immagine nei dettagli e funzionalità avanzate fornite da Aspose.Words per .NET."
type: docs
weight: 300
url: /it/net/working-with-images/
---

Aspose.Words consente agli utenti di lavorare con le immagini in modo molto flessibile. In questo articolo puoi esplorare solo alcune delle possibilità di lavorare con le immagini.

## Come inserire un'immagine {#insert-an-image}

[DocumentBuilder](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/) fornisce diversi sovraccarichi del metodo [InsertImage](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/insertimage/) che consentono di inserire un'immagine in linea o mobile. Se l'immagine è un metafile EMF o WMF, verrà inserita nel documento in formato metafile. Tutte le altre immagini verranno archiviate in formato PNG. Il metodo **InsertImage** può utilizzare immagini provenienti da diverse fonti:

- Da un file o `URL` passando un parametro `String` [InsertImage](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/insertimage/)
- Da uno stream passando un parametro `Stream` **InsertImage**
- Da un oggetto Immagine passando un parametro Immagine **InsertImage**
- Da un array di byte passando un parametro di array di byte **InsertImage**

Per ognuno dei metodi **InsertImage** sono presenti ulteriori sovraccarichi che permettono di inserire un'immagine con le seguenti opzioni:
- In linea o mobile in una posizione specifica, ad esempio **InsertImage**
- Scala percentuale o dimensione personalizzata, ad esempio **InsertImage**; inoltre il metodo **InsertImage** restituisce un oggetto [Shape](https://reference.aspose.com/words/it/net/aspose.words.drawing/shape/) appena creato e inserito per poter modificare ulteriormente le proprietà della Shape

### Come inserire un'immagine in linea {#insert-an-inline-image}

Passa una singola stringa che rappresenta un file che contiene l'immagine a **InsertImage** per inserire l'immagine nel documento come elemento grafico in linea

L'esempio di codice seguente mostra come inserire un'immagine in linea nella posizione del cursore in un documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cs" >}}

### Come inserire un'immagine mobile {#insert-a-floating-image}

L'esempio di codice seguente mostra come inserire un'immagine mobile da un file o `URL` in una posizione e dimensione specificate:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cs" >}}

## Come estrarre immagini da un documento {#how-to-extract-images-from-a-document}

Tutte le immagini sono archiviate all'interno dei nodi **Shape** in un [Document](https://reference.aspose.com/words/it/net/aspose.words/document/). Per estrarre tutte le immagini o le immagini di tipo specifico dal documento, attenersi alla seguente procedura:

- Utilizzare il metodo [GetChildNodes](https://reference.aspose.com/words/it/net/aspose.words/compositenode/getchildnodes/) per selezionare tutti i nodi **Shape**.
- Iterare attraverso le raccolte di nodi risultanti.
- Controlla la proprietà booleana [HasImage](https://reference.aspose.com/words/it/net/aspose.words.drawing/shape/hasimage/).
- Estrai i dati dell'immagine utilizzando la proprietà [ImageData](https://reference.aspose.com/words/it/net/aspose.words.drawing/shape/imagedata/).
- Salvare i dati dell'immagine in un file.

Il seguente esempio di codice mostra come estrarre immagini da un documento e salvarle come file:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## Come inserire il codice a barre su ciascuna pagina del documento {#how-to-insert-barcode-on-each-documen-page}

Questo esempio dimostra come aggiungere codici a barre uguali o diversi su tutte o su pagine specifiche di un documento Word. Non esiste un modo diretto per aggiungere codici a barre su tutte le pagine di un documento ma puoi utilizzare i metodi **MoveToSection**, **MoveToHeaderFooter** e **InsertImage** per spostarti in qualsiasi sezione o intestazione/piè di pagina e inserire le immagini del codice a barre come puoi vedere nel codice seguente.

Il seguente esempio di codice mostra come inserire un'immagine del codice a barre su ogni pagina di un documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeImage.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeIntoFooter.cs" >}}

## Blocca le proporzioni dell'immagine {#lock-aspect-ratio-of-image}

Le proporzioni di una forma geometrica sono il rapporto tra le sue dimensioni in diverse dimensioni. È possibile bloccare le proporzioni dell'immagine utilizzando [AspectRatioLocked](https://reference.aspose.com/words/it/net/aspose.words.drawing/shapebase/aspectratiolocked/). Il valore predefinito delle proporzioni della forma dipende dal [ShapeType](https://reference.aspose.com/words/it/net/aspose.words.drawing/shapetype/). È *true* per `ShapeType.Image` e *false* per altri tipi di forma.

Il seguente esempio di codice mostra come lavorare con le proporzioni:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Come ottenere i limiti effettivi della forma nei punti {#how-to-get-actual-bounds-of-shape-in-points}

Se desideri che il riquadro di delimitazione effettivo della forma venga visualizzato sulla pagina, puoi ottenerlo utilizzando la proprietà [BoundsInPoints](https://reference.aspose.com/words/it/net/aspose.words.rendering/noderendererbase/boundsinpoints/).

L'esempio di codice seguente mostra come utilizzare questa proprietà:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Ritaglia immagini {#crop-images}

Il ritaglio di un'immagine si riferisce solitamente alla rimozione delle parti esterne indesiderate di un'immagine per migliorare l'inquadratura. Viene utilizzato anche per rimuovere alcune porzioni di un'immagine per aumentare la messa a fuoco su un'area particolare.

L'esempio di codice seguente mostra come ottenere questo risultato utilizzando Aspose.Words API:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImageCall.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImage.cs" >}}

## Salva le immagini come WMF {#save-images-as-wmf}

Aspose.Words fornisce funzionalità per salvare tutte le immagini disponibili in un documento in formato [WMF](https://docs.fileformat.com/image/wmf/) durante la conversione di DOCX in RTF.

Il seguente esempio di codice mostra come salvare le immagini come WMF con le opzioni di salvataggio RTF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cs" >}}
