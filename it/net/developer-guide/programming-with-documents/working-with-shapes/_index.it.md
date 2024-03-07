---
title: Lavorare con forme in C#
second_title: Aspose.Words per .NET
articleTitle: Lavorare con le forme
linktitle: Lavorare con le forme
description: "Introduzione al linguaggio di markup degli shape, creazione di forme di diverso tipo utilizzando C#."
type: docs
weight: 280
url: /it/net/working-with-shapes/
---

In questo argomento viene illustrato come lavorare a livello di codice con le forme utilizzando Aspose.Words.

Le forme in Aspose.Words rappresentano un oggetto nel livello di disegno, ad esempio una forma, una casella di testo, una forma libera, un oggetto OLE, un controllo ActiveX o un'immagine. Un documento di Word può contenere una o più forme diverse. Le forme in Aspose.Words sono rappresentate dalla classe [Shape](https://reference.aspose.com/words/it/net/aspose.words.drawing/shape/).

## Inserimento di forme utilizzando Document Builder

È possibile inserire una forma in linea con tipo e dimensione specificati e una forma mobile con posizione, dimensione e tipo di disposizione del testo specificati in un documento utilizzando il metodo [InsertShape](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/insertshape/). Il metodo **InsertShape** consente di inserire la forma DML nel modello del documento. Il documento deve essere salvato nel formato che supporta le forme DML, altrimenti tali nodi verranno convertiti in forma VML durante il salvataggio del documento.

L'esempio di codice seguente mostra come inserire questi tipi di forme nel documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cs" >}}

## Imposta proporzioni bloccate

Usando Aspose.Words, puoi specificare se le proporzioni della forma sono bloccate tramite la proprietà [AspectRatioLocked](https://reference.aspose.com/words/it/net/aspose.words.drawing/shapebase/aspectratiolocked/).

L'esempio di codice seguente mostra come utilizzare la proprietà **AspectRatioLocked**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Imposta il layout della forma nella cella

Puoi anche specificare se la forma viene visualizzata all'interno o all'esterno di una tabella utilizzando la proprietà [IsLayoutInCell](https://reference.aspose.com/words/it/net/aspose.words.drawing/shapebase/islayoutincell/).

L'esempio di codice seguente mostra come utilizzare la proprietà **IsLayoutInCell**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}

## Crea rettangolo di angolo di cattura

È possibile creare un rettangolo con angolo di ritaglio utilizzando Aspose.Words. I tipi di forma sono *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded* e *DiagonalCornersRounded.*

La forma DML viene creata utilizzando il metodo **InsertShape** con questi tipi di forma. Questi tipi non possono essere utilizzati per creare forme VML. Il tentativo di creare una forma utilizzando il costruttore pubblico della classe "Shape" genera l'eccezione "NotSupportedException".

L'esempio di codice seguente mostra come inserire questo tipo di forme nel documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cs" >}}

## Ottieni punti relativi ai limiti della forma effettivi

Utilizzando Aspose.Words API, puoi ottenere la posizione e la dimensione del blocco contenente la forma in punti, rispetto all'ancoraggio della forma più in alto. A tale scopo, utilizzare la proprietà [BoundsInPoints](https://reference.aspose.com/words/it/net/aspose.words.drawing/shapebase/boundsinpoints/).

Il seguente esempio di codice mostra come utilizzare la proprietà **BoundsInPoints**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Specificare l'ancoraggio verticale

È possibile specificare l'allineamento verticale del testo all'interno di una forma utilizzando la proprietà [VerticalAnchor](https://reference.aspose.com/words/it/net/aspose.words.drawing/textbox/verticalanchor/).

L'esempio di codice seguente mostra come utilizzare la proprietà **VerticalAnchor**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.cs" >}}

## Rileva forma SmartArt

Aspose.Words consente anche di rilevare se la Shape ha un oggetto `SmartArt`. A tale scopo, utilizzare la proprietà [HasSmartArt](https://reference.aspose.com/words/it/net/aspose.words.drawing/shape/hassmartart/).

L'esempio di codice seguente mostra come utilizzare la proprietà **HasSmartArt**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-DetectSmartArtShape.cs" >}}

## Inserisci la riga orizzontale nel documento

È possibile inserire la forma della riga orizzontale in un documento utilizzando il metodo [InsertHorizontalRule](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/inserthorizontalrule/).

L'esempio di codice seguente mostra come eseguire questa operazione:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

Aspose.Words API fornisce la proprietà [HorizontalRuleFormat](https://reference.aspose.com/words/it/net/aspose.words.drawing/shape/horizontalruleformat/) per accedere alle proprietà della forma della regola orizzontale. La classe [HorizontalRuleFormat](https://reference.aspose.com/words/it/net/aspose.words.drawing/horizontalruleformat/) espone proprietà di base come Altezza, Colore, NoShade ecc. per la formattazione di una linea orizzontale.

Il seguente esempio di codice mostra come impostare **HorizontalRuleFormat**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderHorizontalRuleFormat.cs" >}}

## Importa forme con XML matematico come forme in DOM

È possibile utilizzare la proprietà [ConvertShapeToOfficeMath](https://reference.aspose.com/words/it/net/aspose.words.loading/loadoptions/convertshapetoofficemath/) per convertire le forme con EquationXML in oggetti Office Math. Il valore predefinito di questa proprietà corrisponde al comportamento Microsoft Word, ovvero le forme con equazione XML non vengono convertite in oggetti matematici di Office.

L'esempio di codice seguente mostra come convertire le forme in oggetti Office Math:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-ConvertShapeToOfficeMath.cs" >}}
