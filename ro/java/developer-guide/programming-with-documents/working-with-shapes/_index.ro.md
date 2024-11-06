---
title: Lucrul cu forme în Java
second_title: Aspose.Words pentru Java
articleTitle: Lucrul cu forme
linktitle: Lucrul cu forme
type: docs
description: "Introducere în limbajul de marcare a formei, creând forme de diferite tipuri folosind Java."
weight: 280
url: /ro/java/working-with-shapes/
---

Acest subiect discută cum să lucrați programatic cu forme folosind Aspose.Words.

Formele din Aspose.Words reprezintă un obiect din stratul de desen, cum ar fi un obiect AutoShape, textbox, freeform, OLE, control ActiveX sau imagine. Un document Word poate conține una sau mai multe forme diferite. Formele documentului sunt reprezentate de clasa [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/).

## Introduceți Forma Folosind Document Builder

Puteți insera forma inline cu tipul și dimensiunea specificate și forma plutitoare liberă cu poziția specificată, dimensiunea și tipul de înfășurare a textului într-un document folosind metoda [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double). Metoda **InsertShape** permite inserarea formei DML în modelul documentului. Documentul trebuie salvat în format, care acceptă forme DML, în caz contrar, astfel de noduri vor fi convertite în formă VML, în timp ce se salvează documentul.

Următorul exemplu de cod arată cum să inserați aceste tipuri de forme în document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## Setați Raportul De Aspect Blocat

Folosind Aspose.Words, Puteți specifica dacă raportul de aspect al formei este blocat prin proprietatea [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked).

Următorul exemplu de cod arată cum să lucrați cu proprietatea **AspectRatioLocked**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## Setați Aspectul Formei În Celulă

De asemenea, puteți specifica dacă forma este afișată în interiorul unui tabel sau în afara acestuia folosind proprietatea [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell).

Următorul exemplu de cod arată cum să lucrați cu proprietatea **IsLayoutInCell**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## Adăugați Colțuri Tăiate

Puteți crea un dreptunghi de colț snip folosind Aspose.Words. Tipurile de forme sunt *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* și *DiagonalCornersRounded.*

Forma DML este creată folosind metoda **InsertShape** cu aceste tipuri de forme. Aceste tipuri nu pot fi folosite pentru a crea forme VML. Încercarea de a crea shape folosind constructorul public al clasei "Shape" ridică excepția "NotSupportedException".

Următorul exemplu de cod arată cum să inserați aceste tipuri de forme în document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## Obțineți Puncte Reale Ale Limitelor Formei

Folosind Aspose.Words API, puteți obține locația și dimensiunea formei care conține blocul în puncte, în raport cu ancora formei superioare. Pentru a face acest lucru, utilizați proprietatea [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints).

Următorul exemplu de cod arată cum să lucrați cu proprietatea **BoundsInPoints**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Specificați Ancora Verticală

Puteți specifica alinierea verticală a textului într-o formă folosind proprietatea [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor).

Următorul exemplu de cod arată cum să lucrați cu proprietatea **VerticalAnchor**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## Detectează Forma SmartArt

Aspose.Words permite, de asemenea, detectarea dacă forma are un obiect `SmartArt`. Pentru a face acest lucru, utilizați proprietatea [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt).

Următorul exemplu de cod arată cum să lucrați cu proprietatea **HasSmartArt**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## Formatul Regulii Orizontale

Puteți insera forma regulii orizontale într-un document folosind metoda [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule).

Aspose.Words API oferă [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) proprietate pentru a accesa proprietățile formei regulii orizontale. Clasa [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) expune proprietăți de bază cum ar fi înălțimea, culoarea, NoShade etc. pentru formatarea unei reguli orizontale.

Următorul exemplu de cod arată cum să setați **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
