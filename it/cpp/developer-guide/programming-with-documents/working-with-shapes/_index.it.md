---
title: Lavorare con le forme in C++
second_title: Aspose.Words per C++
articleTitle: Lavorare con le forme
linktitle: Lavorare con le forme
type: docs
description: "Introduzione al linguaggio shape markup, creazione di forme di diversi tipi utilizzando C++."
weight: 280
url: /it/cpp/working-with-shapes/
---

In questo argomento viene illustrato come lavorare a livello di codice con le forme utilizzando Aspose.Words.

Le forme in Aspose.Words rappresentano un oggetto nel livello di disegno, ad esempio un AutoShape, una casella di testo, una forma libera, un oggetto OLE, un controllo ActiveX o un'immagine. Un documento Word può contenere una o più forme diverse. Le forme del documento sono rappresentate dalla classe [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/).

## Inserisci forma usando Document Builder

È possibile inserire una forma in linea con tipo e dimensione specificati e una forma fluttuante con la posizione, la dimensione e il tipo di testo a capo specificati in un documento utilizzando il metodo [InsertShape](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertshape/). Il metodo **InsertShape** consente di inserire la forma DML nel modello del documento. Il documento deve essere salvato nel formato, che supporta le forme DML, altrimenti tali nodi verranno convertiti in forma VML, durante il salvataggio del documento.

L'esempio di codice seguente mostra come inserire questi tipi di forme nel documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cpp" >}}

## Imposta Proporzioni bloccate

Utilizzando Aspose.Words, è possibile specificare se le proporzioni della forma sono bloccate tramite la proprietà [AspectRatioLocked](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_aspectratiolocked/).

Il seguente esempio di codice mostra come lavorare con la proprietà **AspectRatioLocked**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cpp" >}}

## Imposta il layout della forma nella cella

È inoltre possibile specificare se la forma viene visualizzata all'interno di una tabella o all'esterno di essa utilizzando la proprietà [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/).

Il seguente esempio di codice mostra come lavorare con la proprietà **IsLayoutInCell**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}

## Crea un rettangolo d'angolo Snip

È possibile creare un rettangolo angolo snip utilizzando Aspose.Words. I tipi di forma sono *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,*e *DiagonalCornersRounded.*

La forma DML viene creata usando il metodo **InsertShape** con questi tipi di forma. Questi tipi non possono essere utilizzati per creare forme VML. Tentare di creare una forma utilizzando il costruttore pubblico della classe " Shape "genera l'eccezione" NotSupportedException".

L'esempio di codice seguente mostra come inserire questo tipo di forme nel documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cpp" >}}

## Ottieni Limiti di forma effettivi Punti

Utilizzando l'API Aspose.Words, è possibile ottenere la posizione e la dimensione della forma contenente il blocco in punti, rispetto all'ancoraggio della forma più in alto. A tale scopo, utilizzare la proprietà [BoundsInPoints](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_boundsinpoints/).

Il seguente esempio di codice mostra come lavorare con la proprietà **BoundsInPoints**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cpp" >}}

## Formato regola orizzontale

Aspose.Words API fornisce la proprietà [HorizontalRuleFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_horizontalruleformat/) per accedere alle proprietà della forma regola orizzontale. La classe **HorizontalRuleFormat** espone proprietà di base come Altezza, Colore, Ombra, ecc. per la formattazione di una regola orizzontale.

Nell'esempio di codice seguente viene illustrato come impostare **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertHorizontalRule.h" >}}

## Inserisci l'Oggetto OLE come icona

Aspose.Words API fornisce la funzione **Shape** → **InsertOleObjectAsIcon** per inserire un oggetto OLE incorporato o collegato come icona nel documento. Questa funzione consente di specificare il file icona e la didascalia. Il tipo di oggetto `OLE` deve essere rilevato utilizzando l'estensione del file.

Il seguente esempio di codice mostra come impostare l'oggetto inserisci OLE come icona nel documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cpp" >}}

{{% alert color="primary" %}}

La dimensione massima dell'icona deve essere 32x32 per la corretta visualizzazione.

{{% /alert %}}
