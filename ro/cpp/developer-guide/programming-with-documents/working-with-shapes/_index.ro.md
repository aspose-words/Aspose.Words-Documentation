---
title: Lucrul cu forme în C++
second_title: Aspose.Words pentru C++
articleTitle: Lucrul cu forme
linktitle: Lucrul cu forme
type: docs
description: "Introducere în limbajul de marcare a formei, creând forme de diferite tipuri folosind C++."
weight: 280
url: /ro/cpp/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

Acest subiect discută cum să lucrați programatic cu forme folosind Aspose.Words.

Formele din Aspose.Words reprezintă un obiect din stratul de desen, cum ar fi un obiect AutoShape, textbox, freeform, OLE, control ActiveX sau imagine. Un document Word poate conține una sau mai multe forme diferite. Formele documentului sunt reprezentate de clasa [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/).

## Introduceți Forma Folosind Document Builder

Puteți insera forma inline cu tipul și dimensiunea specificate și forma plutitoare liberă cu poziția specificată, dimensiunea și tipul de înfășurare a textului într-un document folosind metoda [InsertShape](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertshape/). Metoda **InsertShape** permite inserarea formei DML în modelul documentului. Documentul trebuie salvat în format, care acceptă forme DML, în caz contrar, astfel de noduri vor fi convertite în formă VML, în timp ce se salvează documentul.

Următorul exemplu de cod arată cum să inserați aceste tipuri de forme în document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cpp" >}}

## Setați Raportul De Aspect Blocat

Folosind Aspose.Words, Puteți specifica dacă raportul de aspect al formei este blocat prin proprietatea [AspectRatioLocked](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_aspectratiolocked/).

Următorul exemplu de cod arată cum să lucrați cu proprietatea **AspectRatioLocked**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cpp" >}}

## Setați Aspectul Formei În Celulă

De asemenea, puteți specifica dacă forma este afișată în interiorul unui tabel sau în afara acestuia folosind proprietatea [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/).

Următorul exemplu de cod arată cum să lucrați cu proprietatea **IsLayoutInCell**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}

## Creați Un Dreptunghi De Colț Snip

Puteți crea un dreptunghi de colț snip folosind Aspose.Words. Tipurile de forme sunt *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* și *DiagonalCornersRounded.*

Forma DML este creată folosind metoda **InsertShape** cu aceste tipuri de forme. Aceste tipuri nu pot fi folosite pentru a crea forme VML. Încercarea de a crea shape folosind constructorul public al clasei "Shape" ridică excepția "NotSupportedException".

Următorul exemplu de cod arată cum să inserați aceste tipuri de forme în document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cpp" >}}

## Obțineți Puncte Reale Ale Limitelor Formei

Folosind Aspose.Words API, puteți obține locația și dimensiunea formei care conține blocul în puncte, în raport cu ancora formei superioare. Pentru a face acest lucru, utilizați proprietatea [BoundsInPoints](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_boundsinpoints/).

Următorul exemplu de cod arată cum să lucrați cu proprietatea **BoundsInPoints**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cpp" >}}

## Formatul Regulii Orizontale

Aspose.Words API oferă proprietatea [HorizontalRuleFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_horizontalruleformat/) pentru a accesa proprietățile formei regulii orizontale. Clasa **HorizontalRuleFormat** expune proprietăți de bază precum înălțimea, culoarea, nuanța etc. pentru formatarea unei reguli orizontale.

Următorul exemplu de cod demonstrează cum să setați **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertHorizontalRule.h" >}}

## Introduceți OLE obiect ca pictogramă

Aspose.Words API oferă funcția **Shape** **InsertOleObjectAsIcon** pentru a insera un obiect OLE încorporat sau legat ca pictogramă în document. Această funcție permite specificarea fișierului pictogramă și legenda. Tipul de obiect `OLE` va fi detectat folosind extensia de fișier.

Următorul exemplu de cod arată cum să setați insert OLE object ca pictogramă în document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cpp" >}}

{{% alert color="primary" %}}

Dimensiunea maximă a pictogramei trebuie să fie de 32x32 pentru afișarea corectă.

{{% /alert %}}
