---
title: Lavorare con forme in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Lavorare con le forme
linktitle: Lavorare con le forme
description: "Crea e gestisci forme e oggetti oleosi in un documento utilizzando Python."
type: docs
weight: 280
url: /it/python-net/working-with-shapes/
---

In questo argomento viene illustrato come lavorare a livello di codice con le forme utilizzando Aspose.Words.

Le forme in Aspose.Words rappresentano un oggetto nel livello di disegno, ad esempio una forma, una casella di testo, una forma libera, un oggetto OLE, un controllo ActiveX o un'immagine. Un documento di Word può contenere una o più forme diverse. Le forme del documento sono rappresentate dalla classe [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).

## Inserimento di forme utilizzando Document Builder

È possibile inserire una forma in linea con tipo e dimensione specificati e una forma mobile con posizione, dimensione e tipo di disposizione del testo specificati in un documento utilizzando il metodo [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/). Il metodo [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) consente di inserire la forma DML nel modello del documento. Il documento deve essere salvato nel formato che supporta le forme DML, altrimenti tali nodi verranno convertiti in forma VML durante il salvataggio del documento.

L'esempio di codice seguente mostra come inserire questi tipi di forme nel documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-InsertShape.py" >}}

## Imposta proporzioni bloccate

Usando Aspose.Words, puoi specificare se le proporzioni della forma sono bloccate tramite la proprietà [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/).

L'esempio di codice seguente mostra come utilizzare la proprietà **AspectRatioLocked**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AspectRatioLocked.py" >}}

## Imposta il layout della forma nella cella

Puoi anche specificare se la forma viene visualizzata all'interno o all'esterno di una tabella utilizzando la proprietà [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/).

L'esempio di codice seguente mostra come utilizzare la proprietà **IsLayoutInCell**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}

## Crea rettangolo di angolo di cattura

È possibile creare un rettangolo con angolo di ritaglio utilizzando Aspose.Words. I tipi di forma sono [SINGLE_CORNER_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_snipped), [TOP_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_snipped), [DIAGONAL_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_snipped), [TOP_CORNERS_ONE_ROUNDED_ONE_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_one_rounded_one_snipped), [SINGLE_CORNER_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_rounded), [TOP_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_rounded) e [DIAGONAL_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_rounded).

La forma DML viene creata utilizzando il metodo [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) con questi tipi di forma. Questi tipi non possono essere utilizzati per creare forme VML. Il tentativo di creare una forma utilizzando il costruttore pubblico della classe [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) genera l'eccezione "NotSupportedException".

L'esempio di codice seguente mostra come inserire questo tipo di forme nel documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddCornersSnipped.py" >}}

## Ottieni punti relativi ai limiti della forma effettivi

Utilizzando Aspose.Words API, puoi ottenere la posizione e la dimensione del blocco contenente la forma in punti, rispetto all'ancoraggio della forma più in alto. A tale scopo, utilizzare la proprietà [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/bounds_in_points/).

L'esempio di codice seguente mostra come utilizzare la proprietà **BoundsInPoints**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}

## Specificare l'ancoraggio verticale

È possibile specificare l'allineamento verticale del testo all'interno di una forma utilizzando la proprietà [vertical_anchor](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/vertical_anchor/).

L'esempio di codice seguente mostra come utilizzare la proprietà **VerticalAnchor**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-VerticalAnchor.py" >}}

## Rileva forma SmartArt

Aspose.Words consente anche di rilevare se la Shape ha un oggetto `SmartArt`. A tale scopo, utilizzare la proprietà [proprietà has_smart_art](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_smart_art/).

L'esempio di codice seguente mostra come utilizzare la proprietà **HasSmartArt**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-DetectSmartArtShape.py" >}}

## Inserisci la riga orizzontale nel documento

È possibile inserire la forma della riga orizzontale in un documento utilizzando il metodo [insert_horizontal_rule](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/).

L'esempio di codice seguente mostra come eseguire questa operazione:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHorizontalRule.py" >}}

Aspose.Words API fornisce la proprietà [horizontal_rule_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/horizontal_rule_format/) per accedere alle proprietà della forma della regola orizzontale. La classe [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/) espone proprietà di base come [height](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/height/), [color](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/color/), [no_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/no_shade/) ecc. per la formattazione di una regola orizzontale.

L'esempio di codice seguente mostra come impostare [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-HorizontalRuleFormat.py" >}}

## Inserisci oggetto OLE come icona

Aspose.Words API fornisce la funzione **Shape.insert_ole_object_as_icon** per inserire un oggetto OLE incorporato o collegato come icona nel documento. Questa funzione consente di specificare il file dell'icona e la didascalia. Il tipo di oggetto `OLE` verrà rilevato utilizzando l'estensione del file.

Nell'esempio di codice seguente viene illustrato come impostare l'inserimento dell'oggetto OLE come icona nel documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

{{% alert color="primary" %}}

La dimensione massima dell'icona deve essere 32x32 per la corretta visualizzazione.

{{% /alert %}}

## Importa forme con XML matematico come forme in DOM

È possibile utilizzare la proprietà [convert_shape_to_office_math](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/convert_shape_to_office_math/) per convertire le forme con EquationXML in oggetti Office Math. Il valore predefinito di questa proprietà corrisponde al comportamento di MS Word, ovvero le forme con equazioni XML non vengono convertite in oggetti matematici di Office.

L'esempio di codice seguente mostra come convertire le forme in oggetti Office Math:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-ConvertShapeToOfficeMath.py" >}}
