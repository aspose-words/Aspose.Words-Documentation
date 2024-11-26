---
title: Rendering di forme separatamente da un documento
second_title: Aspose.Words per Java
articleTitle: Rendering di forme separatamente da un documento
linktitle: Rendering di forme separatamente da un documento
description: "Estrarre vari oggetti grafici, ad esempio immagini, caselle di testo contenenti paragrafi o forme di freccia, durante l'elaborazione di un documento ed esportarli in una posizione esterna utilizzando Java."
type: docs
weight: 40
url: /it/java/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

Durante l'elaborazione dei documenti, un'attività comune consiste nell'estrarre tutte le immagini presenti nel documento ed esportarle in una posizione esterna. Questa attività diventa semplice con Aspose.Words API, che fornisce già la funzionalità per l'estrazione e il salvataggio dei dati dell'immagine. Tuttavia, a volte è possibile estrarre in modo simile altri tipi di contenuto grafico rappresentati da un diverso tipo di oggetto di disegno, ad esempio una casella di testo contenente paragrafi, forme di freccia e una piccola immagine. Non esiste un modo semplice per rendere questo oggetto poiché è una combinazione di singoli elementi di contenuto. È anche possibile che si verifichi un caso in cui i contenuti sono stati raggruppati nell'oggetto che assomiglia a una singola immagine.

Aspose.Words fornisce funzionalità per estrarre questo tipo di contenuto nello stesso modo in cui è possibile estrarre un'immagine semplice dalla forma come contenuto renderizzato. In questo articolo viene descritto come utilizzare questa funzionalità per eseguire il rendering delle forme indipendentemente dal documento.

## Tipi di forma in Aspose.Words

Tutto il contenuto di un livello di disegno documento è rappresentato dal nodo [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) o [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) nel modulo Oggetto documento Aspose.Words (DOM). Tali contenuti possono essere caselle di testo, immagini, oggetti AutoShapes, OLE, ecc. Alcuni campi vengono importati anche come forme, ad esempio il campo `INCLUDEPICTURE`.

Un'immagine semplice è rappresentata da un nodo **Shape** di [ShapeType.Image](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#IMAGE). Questo nodo forma non ha nodi figlio, ma i dati immagine contenuti all'interno di questo nodo forma sono accessibili dalla proprietà [Shape.ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData). D'altra parte, una forma può anche essere composta da molti nodi figli. Ad esempio, una forma di casella di testo, rappresentata dalla proprietà [ShapeType.TextBox](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#TEXT-BOX), può essere composta da molti nodi, ad esempio [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) e [Table](https://reference.aspose.com/words/java/com.aspose.words/table/). La maggior parte delle forme può includere i nodi a livello di blocco **Paragraph** e **Table**. Questi sono gli stessi nodi di quelli che appaiono nel corpo principale. Le forme sono sempre parti di un paragrafo, incluse direttamente in linea o ancorate a **Paragraph,** ma" fluttuanti " in qualsiasi punto della pagina del documento.

![rendering-shapes-separately-from-a-document-aspose-words-java-1](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Un documento può anche contenere forme raggruppate insieme. Il raggruppamento può essere abilitato in Microsoft Word selezionando più oggetti e facendo clic su "Gruppo" nel menu di scelta rapida.

![rendering-shapes-separately-from-a-document-aspose-words-java-2](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

In Aspose.Words, questi gruppi di forme sono rappresentati dal nodo [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/). Questi possono anche essere richiamati allo stesso modo per rendere l'intero gruppo all'immagine.

![rendering-shapes-separately-from-a-document-aspose-words-java-3](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Il formato DOCX può contenere tipi speciali di immagini, come diagrammi o grafici. Queste forme sono rappresentate anche attraverso il nodo **Shape** in Aspose.Words, che fornisce anche un metodo simile per renderle come immagini. In base alla progettazione, una forma non può contenere un'altra forma come figlio, a meno che quella forma non sia un'immagine (**ShapeType.Image**). Ad esempio, Microsoft Word non consente di inserire una casella di testo all'interno di un'altra casella di testo.

I tipi di forma descritti sopra forniscono un metodo speciale per il rendering delle forme attraverso la classe [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/). Un'istanza della classe **ShapeRenderer** viene recuperata per un **Shape** o **GroupShape** tramite il metodo **GetShapeRenderer** o passando il **Shape** al costruttore della classe **ShapeRenderer**. Questa classe fornisce l'accesso ai membri, che consentono il rendering di una forma al seguente:

- File sul disco utilizzando il metodo [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) overload
- Stream utilizzando il metodo [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.io.OutputStream-com.aspose.words.ImageSaveOptions) overload
- Oggetto Grafico utilizzando i metodi [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToSize-java.awt.Graphics2D-float-float-float-float) e [RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float)

{{% alert color="primary" %}}

Quando si esegue il rendering di un **Shape**, deve far parte della gerarchia del documento. Se **Shape** non fa parte dell'albero del documento, l'output renderizzato sarà vuoto dopo aver richiamato i metodi **ShapeRenderer**.

{{% /alert %}}

## Rendering su file o stream

Il metodo [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) fornisce sovraccarichi che rendono una forma direttamente in un file o flusso. Entrambi gli overload accettano un'istanza della classe [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), che consente di definire le opzioni per il rendering della forma. Funziona allo stesso modo del metodo [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions). Anche se questo parametro è richiesto, è possibile passare un valore null, specificando che non ci sono opzioni personalizzate.

La forma può essere esportata in qualsiasi formato di immagine specificato nell'enumerazione [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/). Ad esempio, l'immagine può essere renderizzata come immagine raster, ad esempio JPEG specificando l'enumerazione [SaveFormat.Jpeg](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#JPEG), o come immagine vettoriale, ad esempio EMF specificando il [SaveFormat.Emf](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#EMF).

L'esempio di codice riportato di seguito illustra il rendering di una forma in un'immagine EMF separatamente dal documento e il salvataggio su disco:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToDisk.java" >}}

L'esempio di codice riportato di seguito illustra il rendering di una forma in un'immagine JPEG separatamente dal documento e il salvataggio in un flusso:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToStream.java" >}}

La classe **ImageSaveOptions** consente di specificare una varietà di opzioni che controllano il rendering dell'immagine. La funzionalità sopra descritta può essere applicata allo stesso modo ai nodi **GroupShape** e **Shape**.

## Rendering su un oggetto `Graphics`

Il rendering direttamente su un oggetto **Graphics** consente di definire le proprie impostazioni e lo stato per l'oggetto **Graphics**. Uno scenario comune prevede il rendering di una forma direttamente in un oggetto **Graphics** recuperato da un modulo Windows o da una Bitmap. Quando viene eseguito il rendering del nodo **Shape**, le impostazioni influenzeranno l'aspetto della forma. Ad esempio, è possibile ruotare o ridimensionare la forma utilizzando i metodi **RotateTransform** o **ScaleTransform** per l'oggetto **Graphics**.

L'esempio seguente mostra come eseguire il rendering di una forma su un oggetto **Graphics** separatamente dal documento e applicare la rotazione all'immagine renderizzata:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToGraphics.java" >}}

Analogamente, al metodo [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float), il metodo [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float)ereditato da [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) è utile per creare miniature del contenuto del documento. La dimensione della forma viene specificata tramite il costruttore. Il metodo **RenderToSize** accetta l'oggetto **Graphics**, le coordinate X e Y della posizione dell'immagine e la dimensione dell'immagine (larghezza e altezza) che verrà disegnata sull'oggetto **Graphics**.

Il **Shape** può essere reso su una certa scala usando il metodo [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) ereditato dalla classe [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/). Questo è simile al metodo [Document.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) che accetta gli stessi parametri principali. La differenza tra questi due metodi è che con il metodo **ShapeRenderer.RenderToScale**, invece di una dimensione letterale, si sceglie un valore float che ridimensiona la forma durante il rendering. Se il valore float è uguale a 1.0, la forma viene renderizzata al 100% della sua dimensione originale. Un valore float di 0.5 ridurrà la dimensione dell'immagine della metà.

## Rendering di un'immagine di forma

La classe [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) rappresenta gli oggetti nel livello di disegno, ad esempio un AutoShape, una casella di testo, un oggetto a forma libera, un oggetto OLE, un controllo ActiveX o un'immagine. Utilizzando la classe **Shape**, è possibile creare o modificare forme in un documento Microsoft Word. Una proprietà importante di una forma è il suo [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). Forme di tipi diversi possono avere funzionalità diverse in un documento di Word. Ad esempio, solo le immagini e le forme OLE possono avere immagini al loro interno mentre la maggior parte delle forme può avere solo testo.

L'esempio seguente mostra come eseguire il rendering di un'immagine Forma in un'immagine JPEG separatamente dal documento e salvarla sul disco:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeImage.java" >}}

## Recupero di una dimensione forma

La classe [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) fornisce anche funzionalità per recuperare la dimensione della forma in pixel tramite il metodo [GetSizeInPixels](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float). Questo metodo accetta due parametri float (singoli) - la scala e DPI, che vengono utilizzati nel calcolo della dimensione della forma quando la forma viene renderizzata. Il metodo restituisce l'oggetto [Size](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float), che contiene la larghezza e l'altezza della dimensione calcolata. Ciò è utile quando è necessario conoscere in anticipo la dimensione della forma renderizzata, ad esempio quando si crea una nuova bitmap dall'output renderizzato.

L'esempio seguente mostra come creare un nuovo oggetto Bitmap e Grafico con la larghezza e l'altezza della forma da renderizzare:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-FindShapeSizes.java" >}}

Quando si usano i metodi **RenderToSize** o **RenderToScale**, la dimensione dell'immagine renderizzata viene restituita anche nell'oggetto [SizeF](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#renderToScale-java.awt.Graphics2D-float-float-float). Questo può essere assegnato a una variabile e utilizzato se necessario.

La proprietà **SizeInPoints** restituisce la dimensione della Forma misurata in punti (vedere [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)). Il risultato è un oggetto `SizeF` contenente la larghezza e l'altezza.
