---
title: Lavorare con le forme in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con le forme
linktitle: Lavorare con le forme
type: docs
description: "Introduzione al linguaggio shape markup, creazione di forme di diversi tipi utilizzando Java."
weight: 280
url: /it/java/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

In questo argomento viene illustrato come lavorare a livello di codice con le forme utilizzando Aspose.Words.

Le forme in Aspose.Words rappresentano un oggetto nel livello di disegno, ad esempio un oggetto AutoShape, una casella di testo, una forma libera, un oggetto OLE, un controllo ActiveX o un'immagine. Un documento Word può contenere una o più forme diverse. Le forme del documento sono rappresentate dalla classe [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/).

## Inserisci forma usando Document Builder

È possibile inserire una forma in linea con tipo e dimensione specificati e una forma fluttuante con la posizione, la dimensione e il tipo di testo a capo specificati in un documento utilizzando il metodo [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double). Il metodo **InsertShape** consente di inserire la forma DML nel modello del documento. Il documento deve essere salvato nel formato, che supporta DML forme, altrimenti, tali nodi verranno convertiti in VML forma, durante il salvataggio del documento.

L'esempio di codice seguente mostra come inserire questi tipi di forme nel documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## Imposta Proporzioni bloccate

Utilizzando Aspose.Words, è possibile specificare se le proporzioni della forma sono bloccate tramite la proprietà [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked).

Il seguente esempio di codice mostra come lavorare con la proprietà **AspectRatioLocked**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## Imposta il layout della forma nella cella

È inoltre possibile specificare se la forma viene visualizzata all'interno di una tabella o all'esterno di essa utilizzando la proprietà [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell).

Il seguente esempio di codice mostra come lavorare con la proprietà **IsLayoutInCell**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## Aggiungi angoli ritagliati

È possibile creare un rettangolo angolo snip utilizzando Aspose.Words. I tipi di forma sono *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,*e *DiagonalCornersRounded.*

La forma DML viene creata usando il metodo **InsertShape** con questi tipi di forma. Questi tipi non possono essere utilizzati per creare VML forme. Tentare di creare una forma utilizzando il costruttore pubblico della classe " Shape "genera l'eccezione" NotSupportedException".

L'esempio di codice seguente mostra come inserire questo tipo di forme nel documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## Ottieni Limiti di forma effettivi Punti

Usando Aspose.Words API, è possibile ottenere la posizione e la dimensione della forma contenente il blocco in punti, rispetto all'ancoraggio della forma più in alto. A tale scopo, utilizzare la proprietà [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints).

Il seguente esempio di codice mostra come lavorare con la proprietà **BoundsInPoints**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Specificare Ancoraggio verticale

È possibile specificare l'allineamento verticale del testo all'interno di una forma utilizzando la proprietà [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor).

Il seguente esempio di codice mostra come lavorare con la proprietà **VerticalAnchor**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## Rileva SmartArt Forma

Aspose.Words permette anche di rilevare se la Forma ha un oggetto `SmartArt`. A tale scopo, utilizzare la proprietà [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt).

Il seguente esempio di codice mostra come lavorare con la proprietà **HasSmartArt**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## Formato regola orizzontale

È possibile inserire una forma di regola orizzontale in un documento utilizzando il metodo [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule).

Aspose.Words API fornisce la proprietà [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) per accedere alle proprietà della forma regola orizzontale. La classe [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) espone proprietà di base come Altezza, Colore, NoShade ecc. per la formattazione di una regola orizzontale.

Il seguente esempio di codice mostra come impostare **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
