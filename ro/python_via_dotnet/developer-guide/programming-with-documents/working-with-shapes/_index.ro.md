---
title: Lucrul cu forme în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Lucrul cu forme
linktitle: Lucrul cu forme
description: "Creați și gestionați forme, obiecte ole într-un document folosind Python."
type: docs
weight: 280
url: /ro/python-net/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

Acest subiect discută cum să lucrați programatic cu forme folosind Aspose.Words.

Formele din Aspose.Words reprezintă un obiect din stratul de desen, cum ar fi un obiect AutoShape, textbox, freeform, OLE, control ActiveX sau imagine. Un document Word poate conține una sau mai multe forme diferite. Formele documentului sunt reprezentate de clasa [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).

## Inserarea Formelor Folosind Document Builder

Puteți insera forma inline cu tipul și dimensiunea specificate și forma liberă plutitoare cu poziția specificată, dimensiunea și tipul de înfășurare a textului într-un document folosind metoda [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/). Metoda [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) permite inserarea formei DML în modelul documentului. Documentul trebuie salvat în format, care acceptă forme DML, în caz contrar, astfel de noduri vor fi convertite în formă VML, în timp ce se salvează documentul.

Următorul exemplu de cod arată cum să inserați aceste tipuri de forme în document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-InsertShape.py" >}}

## Setați Raportul De Aspect Blocat

Folosind Aspose.Words, Puteți specifica dacă raportul de aspect al formei este blocat prin proprietatea [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/).

Următorul exemplu de cod arată cum să lucrați cu proprietatea **AspectRatioLocked**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AspectRatioLocked.py" >}}

## Setați Aspectul Formei În Celulă

De asemenea, puteți specifica dacă forma este afișată în interiorul unui tabel sau în afara acestuia folosind proprietatea [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/).

Următorul exemplu de cod arată cum să lucrați cu proprietatea **IsLayoutInCell**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}

## Creați Un Dreptunghi De Colț Snip

Puteți crea un dreptunghi de colț snip folosind Aspose.Words. Tipurile de forme sunt [SINGLE_CORNER_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_snipped), [TOP_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_snipped), [DIAGONAL_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_snipped), [TOP_CORNERS_ONE_ROUNDED_ONE_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_one_rounded_one_snipped), [SINGLE_CORNER_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_rounded), [TOP_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_rounded), și [DIAGONAL_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_rounded).

Forma DML este creată folosind metoda [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) cu aceste tipuri de forme. Aceste tipuri nu pot fi folosite pentru a crea forme VML. Încercarea de a crea formă folosind constructorul public al clasei [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) ridică excepția "NotSupportedException".

Următorul exemplu de cod arată cum să inserați aceste tipuri de forme în document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddCornersSnipped.py" >}}

## Obțineți Puncte Reale Ale Limitelor Formei

Folosind Aspose.Words API, puteți obține locația și dimensiunea formei care conține blocul în puncte, în raport cu ancora formei superioare. Pentru a face acest lucru, utilizați proprietatea [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/bounds_in_points/).

Următorul exemplu de cod arată cum să lucrați cu proprietatea **BoundsInPoints**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}

## Specificați Ancora Verticală

Puteți specifica alinierea verticală a textului într-o formă folosind proprietatea [vertical_anchor](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/vertical_anchor/).

Următorul exemplu de cod arată cum să lucrați cu proprietatea **VerticalAnchor**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-VerticalAnchor.py" >}}

## Detectează Forma SmartArt

Aspose.Words permite, de asemenea, detectarea dacă forma are un obiect `SmartArt`. Pentru a face acest lucru, utilizați proprietatea [has_smart_art property](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_smart_art/).

Următorul exemplu de cod arată cum să lucrați cu proprietatea **HasSmartArt**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-DetectSmartArtShape.py" >}}

## Introduceți regula orizontală în Document

Puteți insera forma regulii orizontale într-un document folosind metoda [insert_horizontal_rule](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/).

Următorul exemplu de cod arată cum se face acest lucru:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHorizontalRule.py" >}}

Aspose.Words API oferă proprietatea [horizontal_rule_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/horizontal_rule_format/) pentru a accesa proprietățile formei regulii orizontale. Clasa [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/) expune proprietăți de bază precum [height](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/height/), [color](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/color/), [no_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/no_shade/) etc. pentru formatarea unei reguli orizontale.

Următorul exemplu de cod demonstrează cum să setați [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-HorizontalRuleFormat.py" >}}

## Introduceți OLE obiect ca pictogramă

Aspose.Words API oferă funcția **Shape.insert_ole_object_as_icon** pentru a insera un obiect OLE încorporat sau legat ca pictogramă în document. Această funcție permite specificarea fișierului pictogramă și legenda. Tipul de Obiect `OLE` va fi detectat folosind extensia de fișier.

Următorul exemplu de cod demonstrează modul de setare a obiectului insert OLE ca pictogramă în document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

{{% alert color="primary" %}}

Dimensiunea maximă a pictogramei trebuie să fie de 32x32 pentru afișarea corectă.

{{% /alert %}}

## Importați forme cu matematica XML ca forme în DOM

Puteți utiliza proprietatea [convert_shape_to_office_math](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/convert_shape_to_office_math/) pentru a converti formele cu EquationXML în obiecte Office Math. Valoarea implicită a acestei proprietăți corespunde MS comportamentul cuvântului, adică formele cu ecuația XML nu sunt convertite în obiecte Office math.

Următorul exemplu de cod arată cum să convertiți formele în obiecte Office Math:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-ConvertShapeToOfficeMath.py" >}}
