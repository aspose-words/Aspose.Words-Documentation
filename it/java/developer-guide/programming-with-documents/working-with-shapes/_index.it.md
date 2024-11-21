---
title: Lavorare con forme in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con forme
linktitle: Lavorare con forme
type: docs
description: "Introduzione alla forma del linguaggio di markup, creando forme di diversi tipi utilizzando Java."
weight: 280
url: /it/java/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

Questo argomento parla di come lavorare programmaticamente con le forme utilizzando Aspose.Words.

Le forme in Aspose.Words rappresentano un oggetto nello strato di disegno, come un AutoShape, una casella di testo, una forma libera, un oggetto OLE, un controllo ActiveX o un'immagine. Un documento di Word può contenere una o più forme diverse. Le forme del documento sono rappresentate dal [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) classe.

## Inserisci la forma utilizzando il Costruttore di documenti

È possibile inserire la forma in linea con il tipo e la dimensione specificati e la forma di libero scambio con la posizione specificata, la dimensione e il tipo di involucro di testo in un documento utilizzando [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double) metodo. The **InsertShape** metodo consente di inserire la forma DML nel modello del documento. Il documento deve essere salvato nel formato, che supporta le forme DML, altrimenti, tali nodi saranno convertiti in forma VML, mentre il salvataggio dei documenti.

Il seguente esempio di codice mostra come inserire questi tipi di forme nel documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## Set Aspect Ratio Locked

Utilizzo Aspose.Words, è possibile specificare se il rapporto di aspetto della forma è bloccato attraverso il [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked) proprieta'.

Il seguente esempio di codice mostra come lavorare con **AspectRatioLocked** proprietà:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## Set Layout di forma in cella

È inoltre possibile specificare se la forma viene visualizzata all'interno di una tabella o al di fuori di essa utilizzando [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell) proprieta'.

Il seguente esempio di codice mostra come lavorare con **IsLayoutInCell** proprietà:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## Aggiungi angoli tagliati

È possibile creare un rettangolo angolo snip utilizzando Aspose.Words. I tipi di forma sono *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* e *DiagonalCornersRounded.*

La forma DML è creata utilizzando **InsertShape** metodo con questi tipi di forma. Questi tipi non possono essere utilizzati per creare forme VML. Il tentativo di creare forma utilizzando il costruttore pubblico della classe "Shape" solleva l'eccezione "NotSupportedException".

Il seguente esempio di codice mostra come inserire queste forme nel documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## Ottieni i punti reali dei bound

Utilizzo Aspose.Words API, è possibile ottenere la posizione e la dimensione della forma contenente blocco in punti, rispetto all'ancoraggio della forma superiore. Per fare questo, usare il [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints) proprieta'.

Il seguente esempio di codice mostra come lavorare con **BoundsInPoints** proprietà:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Specificare l'ancoraggio verticale

È possibile specificare l'allineamento verticale del testo all'interno di una forma utilizzando [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor) proprieta'.

Il seguente esempio di codice mostra come lavorare con **VerticalAnchor** proprietà:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## Rilevamento Smart Forma d'arte

Aspose.Words permette anche di rilevare se la Forma ha una `SmartArt` oggetto. Per fare questo, utilizzare il [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt) proprieta'.

Il seguente esempio di codice mostra come lavorare con **HasSmartArt** proprietà:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## Formato della regola orizzontale

È possibile inserire la forma della regola orizzontale in un documento utilizzando [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule) metodo.

Aspose.Words API fornisce [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) proprietà per accedere alle proprietà della forma di regola orizzontale. The [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) classe espone proprietà di base come Altezza, Colore, NoShade ecc. per la formattazione di una regola orizzontale.

Il seguente esempio di codice mostra come impostare **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
