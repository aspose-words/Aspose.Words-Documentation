---
title: Forma di rendering Separatamente da un documento
second_title: Aspose.Words per Java
articleTitle: Forma di rendering Separatamente da un documento
linktitle: Forma di rendering Separatamente da un documento
description: "Estrarre vari oggetti grafici, come immagini, casella di testo contenente paragrafi, o forme di freccia, quando si elabora un documento, e esportarli in una posizione esterna utilizzando Java."
type: docs
weight: 40
url: /it/java/rendering-shapes-separately-from-a-document/
---

Quando si elaborano i documenti, un compito comune è quello di estrarre tutte le immagini presenti nel documento e esportarle in una posizione esterna. Questo compito diventa semplice con Aspose.Words API, che già fornisce la funzionalità per estrarre e salvare i dati delle immagini. Tuttavia, a volte si può desiderare di estrarre simili altri tipi di contenuto grafico che sono rappresentati da un diverso tipo di oggetto di disegno, per esempio, una casella di testo contenente paragrafi, forme di freccia e una piccola immagine. Non esiste un modo semplice di rendere questo oggetto poiché è una combinazione di singoli elementi di contenuto. Si può anche incontrare un caso quando i contenuti sono stati raggruppati insieme nell'oggetto che sembra una singola immagine.

Aspose.Words fornisce funzionalità per estrarre questo tipo di contenuto nello stesso modo in cui è possibile estrarre una semplice immagine dalla forma come contenuto reso. Questo articolo descrive come utilizzare questa funzionalità per rendere le forme indipendentemente dal documento.

## Tipi di forma in Aspose.Words

Tutto il contenuto in uno strato di disegno del documento è rappresentato dal [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) o [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) il nodo nel Aspose.Words Modulo di oggetto del documento (DOM). Tali contenuti possono essere caselle di testo, immagini, AutoShapes, oggetti OLE, ecc. Alcuni campi sono anche importati come forme, per esempio, il `INCLUDEPICTURE` campo.

Una semplice immagine è rappresentata da una **Shape** nodo di [ShapeType.Image](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#IMAGE). Questo nodo di forma non ha nodi di bambino ma i dati dell'immagine contenuti all'interno di questo nodo di forma possono essere accessibili dal [Shape.ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) proprieta'. D'altra parte, una forma può anche essere costituita da molti nodi bambino. Per esempio, una forma di casella di testo, che è rappresentata dalla [ShapeType.TextBox](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#TEXT-BOX) proprietà, può essere costituito da molti nodi, come [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) e [Table](https://reference.aspose.com/words/java/com.aspose.words/table/). La maggior parte delle forme può includere **Paragraph** e **Table** nodi a livello di blocco. Questi sono gli stessi nodi di quelli che appaiono nel corpo principale. Le forme sono sempre parti di qualche paragrafo, incluse direttamente in linea o ancorate al **Paragrafo,** ma "floating" ovunque nella pagina del documento.

![rendering-shapes-separately-from-a-document-aspose-words-java-1](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Un documento può anche contenere forme raggruppate. Grouping può essere abilitato in Microsoft Word selezionando più oggetti e cliccando su "Group" nel menu di scelta rapida.

![rendering-shapes-separately-from-a-document-aspose-words-java-2](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

In Aspose.Words, questi gruppi di forme sono rappresentati da [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) Nodo. Questi possono anche essere invocati allo stesso modo per rendere l'intero gruppo all'immagine.

![rendering-shapes-separately-from-a-document-aspose-words-java-3](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Il formato DOCX può contenere tipi speciali di immagini, come diagrammi o grafici. Queste forme sono rappresentate anche attraverso **Shape** nodo in Aspose.Words, che fornisce anche un metodo simile per renderli come immagini. Per disegno, una forma non può contenere un'altra forma come un bambino, a meno che la forma non sia un'immagine (**ShapeType.Image**). Per esempio, Microsoft Word non consente di inserire una casella di testo all'interno di un'altra casella di testo.

I tipi di forma sopra descritti forniscono un metodo speciale per rendere le forme attraverso [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) classe. Un'istanza **ShapeRenderer** classe è recuperato per un **Shape** o **GroupShape** attraverso il **GetShapeRenderer** metodo o passando **Shape** al costruttore del **ShapeRenderer** classe. Questa classe fornisce l'accesso ai membri, che permettono di rendere una forma ai seguenti:

- File sul disco utilizzando il [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) metodo sovraccarico
- Stream usando [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.io.OutputStream-com.aspose.words.ImageSaveOptions) metodo sovraccarico
- Grafica Oggetto utilizzando [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToSize-java.awt.Graphics2D-float-float-float-float) e [RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) metodi

{{% alert color="primary" %}}

Quando si rende un <span notrans="<span notrans=" **Shape**"=""></span>> deve essere parte della gerarchia dei documenti. Se **Shape** non è una parte dell'albero del documento quindi l'output reso sarà vuoto dopo aver invocato **ShapeRenderer** metodi.

{{% /alert %}}

## Rendering a File o Stream

The [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) metodo fornisce sovraccarichi che rendono una forma direttamente a un file o flusso. Entrambi i sovraccarichi accettano un'istanza [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) classe, che consente di definire opzioni per rendere la forma. Questo funziona allo stesso modo del [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) metodo. Anche se questo parametro è richiesto, è possibile passare un valore nullo, specificando che non ci sono opzioni personalizzate.

La forma può essere esportata in qualsiasi formato di immagine specificato nel [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) enumerazione. Ad esempio, l'immagine può essere resa come un'immagine raster, come JPEG specificando [SaveFormat.Jpeg](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#JPEG) enumerazione, o come immagine vettoriale, come EMF specificando [SaveFormat.Emf](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#EMF).

L'esempio seguente del codice illustra il rendering di una forma a un'immagine EMF separatamente dal documento, e il salvataggio al disco:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToDisk.java" >}}

L'esempio seguente del codice illustra il rendering di una forma a un'immagine JPEG separatamente dal documento, e il salvataggio a un flusso:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToStream.java" >}}

The **ImageSaveOptions** classe consente di specificare una varietà di opzioni che controllano come l'immagine viene resa. La funzionalità sopra descritta può essere applicata allo stesso modo **GroupShape** e **Shape** Nodi.

## Rendering ad un `Graphics` Oggetto

Rendering direttamente a un **Graphics** oggetto consente di definire le proprie impostazioni e lo stato per **Graphics** oggetto. Uno scenario comune consiste nel rendere una forma direttamente in una **Graphics** oggetto recuperato da un Windows Form o Bitmap. Quando **Shape** nodo è reso, le impostazioni influenzeranno l'aspetto della forma. Ad esempio, è possibile ruotare o scalare la forma utilizzando il **RotateTransform** o **ScaleTransform** metodi per **Graphics** oggetto.

L'esempio seguente mostra come rendere una forma a una **Graphics** oggetto separatamente dal documento e applicare la rotazione all'immagine resa:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToGraphics.java" >}}

Allo stesso modo, al [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float) metodo, il [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float)metodo ereditato dal [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) è utile per la creazione di miniature di contenuto di documento. La dimensione della forma è specificata attraverso il costruttore. The **RenderToSize** metodo accetta il **Graphics** oggetto, le coordinate X e Y della posizione dell'immagine, e le dimensioni dell'immagine (larghezza e altezza) che saranno disegnate sul **Graphics** oggetto.

The **Shape** può essere reso ad una certa scala utilizzando [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) metodo ereditato dal [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) classe. Questo è simile al [Document.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) metodo che accetta gli stessi parametri principali. La differenza tra questi due metodi è che con **ShapeRenderer.RenderToScale** metodo, invece di una dimensione letterale, si sceglie un valore galleggiante che scala la forma durante il rendering. Se il valore del galleggiante è pari a 1.0, la forma viene resa al 100% della sua dimensione originale. Un valore galleggiante di 0,5 ridurrà la dimensione dell'immagine per metà.

## Rendering di un'immagine di forma

The [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) classe rappresenta oggetti nello strato di disegno, come un AutoShape, casella di testo, freeform, oggetto OLE, controllo ActiveX, o un'immagine. Usare il **Shape** classe, è possibile creare o modificare forme in una Microsoft Word documento. Una proprietà importante di una forma è la sua [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). Le forme di diversi tipi possono avere diverse capacità in un documento di Word. Ad esempio, solo immagini e forme OLE possono avere immagini all'interno di loro, mentre la maggior parte delle forme può avere solo testo.

L'esempio seguente mostra come rendere un'immagine di forma a un'immagine JPEG separatamente dal documento e salvarla sul disco:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeImage.java" >}}

## Recuperare una dimensione di forma

The [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) classe fornisce anche funzionalità per recuperare la dimensione della forma in pixel attraverso la [GetSizeInPixels](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) metodo. Questo metodo accetta due parametri di galleggiamento (Single) – la scala e DPI, che vengono utilizzati nel calcolo della dimensione della forma quando la forma viene resa. Il metodo restituisce il [Size](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) oggetto, che contiene la larghezza e l'altezza della dimensione calcolata. Questo è utile quando è necessario conoscere la dimensione della forma resa in anticipo, per esempio quando si crea una nuova Bitmap dall'output reso.

L'esempio seguente mostra come creare un nuovo oggetto Bitmap e Graphics con la larghezza e l'altezza della forma da rendere:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-FindShapeSizes.java" >}}

Quando si utilizza **RenderToSize** o **RenderToScale** metodi, la dimensione dell'immagine resa viene anche restituita nel [SizeF](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#renderToScale-java.awt.Graphics2D-float-float-float) oggetto. Questo può essere assegnato a una variabile e utilizzato se necessario.

The **SizeInPoints** proprietà restituisce la dimensione della forma misurata in punti (vedere [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)). Il risultato è un `SizeF` oggetto contenente la larghezza e l'altezza.
