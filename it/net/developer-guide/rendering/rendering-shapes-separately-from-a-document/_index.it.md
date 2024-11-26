---
title: Rendering di forme separatamente dal documento
second_title: Aspose.Words per .NET
articleTitle: Rendering di forme separatamente da un documento
linktitle: Rendering di forme separatamente da un documento
description: "Estrai vari oggetti grafici, come immagini, caselle di testo contenenti paragrafi o forme di frecce, durante l'elaborazione di un documento ed esportali in una posizione esterna utilizzando C#."
type: docs
weight: 40
url: /it/net/rendering-shapes-separately-from-a-document/
timestamp: 2024-07-10-14-38-57
---

Durante l'elaborazione dei documenti, un'attività comune è estrarre tutte le immagini trovate nel documento ed esportarle in una posizione esterna. Questo compito diventa semplice con Aspose.Words API, che fornisce già la funzionalità per l'estrazione e il salvataggio dei dati delle immagini. Tuttavia, a volte potresti voler estrarre in modo simile altri tipi di contenuto grafico rappresentato da un diverso tipo di oggetto di disegno, ad esempio una casella di testo contenente paragrafi, forme di freccia e una piccola immagine. Non esiste un modo semplice per eseguire il rendering di questo oggetto poiché è una combinazione di singoli elementi di contenuto. Potresti anche riscontrare il caso in cui i contenuti sono stati raggruppati insieme in un oggetto che assomiglia a un'unica immagine.

Aspose.Words fornisce funzionalità per estrarre questo tipo di contenuto nello stesso modo in cui è possibile estrarre un'immagine semplice da una forma come contenuto sottoposto a rendering. In questo articolo viene descritto come utilizzare questa funzionalità per eseguire il rendering delle forme indipendentemente dal documento.

## Tipi di forma in Aspose.Words

Tutto il contenuto in un livello di disegno del documento è rappresentato dal nodo [Shape](https://reference.aspose.com/words/it/net/aspose.words.drawing/shape/) o [GroupShape](https://reference.aspose.com/words/it/net/aspose.words.drawing/groupshape/) nel Aspose.Words Document Object Module (DOM). Tali contenuti possono essere caselle di testo, immagini, forme, oggetti OLE e così via. Alcuni campi vengono importati anche come forme, ad esempio il campo `INCLUDEPICTURE`.

Un'immagine semplice è rappresentata da un nodo **Shape** di [ShapeType.Image](https://reference.aspose.com/words/it/net/aspose.words.drawing/shapetype/). Questo nodo forma non ha nodi figlio ma è possibile accedere ai dati immagine contenuti al suo interno tramite la proprietà [Shape.ImageData](https://reference.aspose.com/words/it/net/aspose.words.drawing/shape/imagedata/). D'altro canto, una forma può essere composta anche da molti nodi figli. Ad esempio, la forma di una casella di testo, rappresentata dalla proprietà [ShapeType.TextBox](https://reference.aspose.com/words/it/net/aspose.words.drawing/shapetype/), può essere composta da molti nodi, come [Paragraph](https://reference.aspose.com/words/it/net/aspose.words/paragraph/) e [Table](https://reference.aspose.com/words/it/net/aspose.words.tables/table/). La maggior parte delle forme può includere nodi a livello di blocco **Paragraph** e **Table**. Questi sono gli stessi nodi che appaiono nel corpo principale. Le forme sono sempre parti di qualche paragrafo, incluse direttamente in linea o ancorate all'**Paragrafo,** ma "fluttuanti" ovunque nella pagina del documento.

![rendering-shapes-separately-from-a-document_1](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Un documento può anche contenere forme raggruppate insieme. È possibile abilitare Group in Microsoft Word selezionando più oggetti e facendo clic su "Group" nel menu di scelta rapida.

![rendering-shapes-separately-from-a-document_2](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

In Aspose.Words, questi gruppi di forme sono rappresentati dal nodo [GroupShape](https://reference.aspose.com/words/it/net/aspose.words.drawing/groupshape/). Questi possono anche essere richiamati allo stesso modo per eseguire il rendering dell'intero gruppo in immagine.

![rendering-shapes-separately-from-a-document_3](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Il formato DOCX può contenere tipi speciali di immagini, come diagrammi o grafici. Queste forme sono rappresentate anche tramite il nodo **Shape** in Aspose.Words, che fornisce anche un metodo simile per renderle come immagini. In base alla progettazione, una forma non può contenere un'altra forma secondaria, a meno che tale forma non sia un'immagine (**ShapeType.Image**). Ad esempio, Microsoft Word non consente di inserire una casella di testo all'interno di un'altra casella di testo.

I tipi di forma descritti sopra forniscono un metodo speciale per eseguire il rendering delle forme tramite la classe [ShapeRenderer](https://reference.aspose.com/words/it/net/aspose.words.rendering/shaperenderer/). Un'istanza della classe **ShapeRenderer** viene recuperata per un **Shape** o **GroupShape** tramite il metodo **GetShapeRenderer** o passando l'**Shape** al costruttore della classe **ShapeRenderer**. Questa classe fornisce l'accesso ai membri, che consentono di eseguire il rendering di una forma nei seguenti elementi:

- File sul disco utilizzando il metodo di sovraccarico [Save](https://reference.aspose.com/words/it/net/aspose.words.rendering/noderendererbase/save/)
- Streaming utilizzando l'overload del metodo [Save](https://reference.aspose.com/words/it/net/aspose.words.rendering/noderendererbase/save/)
- Oggetto grafico .NET utilizzando i metodi [RenderToSize](https://reference.aspose.com/words/it/net/aspose.words.rendering/noderendererbase/rendertosize/) e [RenderToScale](https://reference.aspose.com/words/it/net/aspose.words.rendering/noderendererbase/rendertoscale/)

{{% alert color="primary" %}}

Quando si esegue il rendering di un **Shape**, deve far parte della gerarchia del documento. Se il **Shape** non fa parte dell'albero del documento, l'output renderizzato sarà vuoto dopo aver richiamato i metodi **ShapeRenderer**.

{{% /alert %}}

## Rendering su file o streaming

Il metodo [Save](https://reference.aspose.com/words/it/net/aspose.words.rendering/noderendererbase/save/) fornisce sovraccarichi che eseguono il rendering di una forma direttamente in un file o flusso. Entrambi glioverload accettano un'istanza della classe [ImageSaveOptions](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/), che consente di definire le opzioni per il rendering della forma. Funziona allo stesso modo del metodo [Document.Save](https://reference.aspose.com/words/it/net/aspose.words/document/save/#save). Anche se questo parametro è obbligatorio, puoi passare un valore null, specificando che non sono presenti opzioni personalizzate.

La forma può essere esportata in qualsiasi formato immagine specificato nell'enumerazione [SaveFormat](https://reference.aspose.com/words/it/net/aspose.words/saveformat/). Ad esempio, è possibile eseguire il rendering dell'immagine come immagine raster, come JPEG specificando l'enumerazione [SaveFormat.Jpeg](https://reference.aspose.com/words/it/net/aspose.words/saveformat/), o come immagine vettoriale, come EMF specificando l'[SaveFormat.Emf](https://reference.aspose.com/words/it/net/aspose.words/saveformat/).

L'esempio di codice seguente illustra il rendering di una forma in un'immagine EMF separatamente dal documento e il salvataggio su disco:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToDisk.cs" >}}

L'esempio di codice seguente illustra il rendering di una forma in un'immagine JPEG separatamente dal documento e il salvataggio in un flusso:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToStream.cs" >}}

La classe **ImageSaveOptions** consente di specificare una varietà di opzioni che controllano il modo in cui viene eseguito il rendering dell'immagine. La funzionalità sopra descritta può essere applicata allo stesso modo ai nodi **GroupShape** e **Shape**.

## Rendering in un oggetto grafico .NET

Il rendering direttamente su un oggetto **Graphics** consente di definire le proprie impostazioni e lo stato per l'oggetto **Graphics**. Uno scenario comune prevede il rendering di una forma direttamente in un oggetto **Graphics** recuperato da un modulo Windows o da una bitmap. Quando viene eseguito il rendering del nodo **Shape**, le impostazioni influenzeranno l'aspetto della forma. Ad esempio, puoi ruotare o ridimensionare la forma utilizzando i metodi **RotateTransform** o **ScaleTransform** per l'oggetto **Graphics**.

L'esempio seguente mostra come eseguire il rendering di una forma su un oggetto .**NET Graphics** separatamente dal documento e applicare la rotazione all'immagine renderizzata:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cs" >}}

Allo stesso modo, al metodo [RenderToSize](https://reference.aspose.com/words/it/net/aspose.words/document/rendertosize/), il metodo [RenderToSize](https://reference.aspose.com/words/it/net/aspose.words.rendering/noderendererbase/rendertosize/) ereditato dall'[NodeRendererBase](https://reference.aspose.com/words/it/net/aspose.words.rendering/noderendererbase/) è utile per creare miniature del contenuto di un documento. La dimensione della forma è specificata tramite il costruttore. Il metodo **RenderToSize** accetta l'oggetto **Graphics**, le coordinate X e Y della posizione dell'immagine e la dimensione dell'immagine (larghezza e altezza) che verrà disegnata sull'oggetto **Graphics**.

Il **Shape** può essere reso su una certa scala utilizzando il metodo [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/it/net/aspose.words.rendering/noderendererbase/rendertoscale/) ereditato dalla classe [NodeRendererBase](https://reference.aspose.com/words/it/net/aspose.words.rendering/noderendererbase/). Questo è simile al metodo [Document.RenderToScale](https://reference.aspose.com/words/it/net/aspose.words/document/rendertoscale/) che accetta gli stessi parametri principali. La differenza tra questi due metodi è che con il metodo **ShapeRenderer.RenderToScale**, invece di una dimensione letterale, si sceglie un valore float che ridimensiona la forma durante il rendering. Se il valore float è uguale a 1,0, il rendering della forma verrà eseguito al 100% della sua dimensione originale. Un valore float pari a 0,5 ridurrà la dimensione dell'immagine della metà.

## Rendering di un'immagine di forma

La classe [Shape](https://reference.aspose.com/words/it/net/aspose.words.drawing/shape/) rappresenta oggetti nel livello di disegno, ad esempio una forma, una casella di testo, una forma libera, un oggetto OLE, un controllo ActiveX o un'immagine. Utilizzando la classe **Shape**, puoi creare o modificare forme in un documento Microsoft Word. Una proprietà importante di una forma è il suo [ShapeType](https://reference.aspose.com/words/it/net/aspose.words.drawing/shape/base/properties/shapetype). Forme di tipo diverso possono avere funzionalità diverse in un documento di Word. Ad esempio, solo le forme immagine e OLE possono contenere immagini, mentre la maggior parte delle forme può contenere solo testo.

L'esempio seguente mostra come eseguire il rendering di un'immagine Shape in un'immagine JPEG separatamente dal documento e salvarla sul disco:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeImage.cs" >}}

## Recupero di una dimensione di forma

La classe [ShapeRenderer](https://reference.aspose.com/words/it/net/aspose.words.rendering/shaperenderer/) fornisce inoltre funzionalità per recuperare la dimensione della forma in pixel tramite il metodo [GetSizeInPixels](https://reference.aspose.com/words/it/net/aspose.words.rendering/noderendererbase/getsizeinpixels/). Questo metodo accetta due parametri float (singolo): la scala e il DPI, che vengono utilizzati nel calcolo delle dimensioni della forma quando viene eseguito il rendering della forma. Il metodo restituisce l'oggetto [Size](https://reference.aspose.com/words/it/net/aspose.words.rendering/noderendererbase/getsizeinpixels/), che contiene la larghezza e l'altezza della dimensione calcolata. Ciò è utile quando è necessario conoscere in anticipo la dimensione della forma renderizzata, ad esempio quando si crea una nuova bitmap dall'output renderizzato.

L'esempio seguente mostra come creare un nuovo oggetto Bitmap e Grafica con la larghezza e l'altezza della forma da sottoporre a rendering:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-FindShapeSizes.cs" >}}

Quando si utilizzano i metodi **RenderToSize** o **RenderToScale**, anche la dimensione dell'immagine renderizzata viene restituita nell'oggetto [SizeF](https://reference.aspose.com/words/it/net/aspose.words.rendering/noderendererbase/rendertoscale/). Questo può essere assegnato a una variabile e utilizzato se necessario.

La proprietà **SizeInPoints** restituisce la dimensione della Shape misurata in punti (vedi [ShapeRenderer](https://reference.aspose.com/words/it/net/aspose.words.rendering/shaperenderer/). Il risultato è un oggetto `SizeF` contenente la larghezza e l'altezza.
