---
title: Lucrul cu forme în C#
second_title: Aspose.Words pentru .NET
articleTitle: Lucrul cu forme
linktitle: Lucrul cu forme
description: "Introducere în limbaj de marcare a formelor, crearea diferitelor forme folosind C#."
type: docs
weight: 280
url: /ro/net/working-with-shapes/
---

Acest subiect discută modul de a lucra programatic cu forme folosind Aspose.Words.

Formele din Aspose.Words reprezintă un obiect în stratul de desenare, cum ar fi un AutoShape, textbox, formă liberă, obiect OLE, control ActiveX sau imagine. Un document de tip "Word" poate conţine una sau mai multe forme diferite. Formele din Aspose.Words sunt reprezentate de clasa [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/).

## Inserarea de forme folosind Generatorul de documente

Puteți insera forme în linie cu tipul și dimensiunea specificate și forme plutitoare libere cu poziția, dimensiunea și tipul de învelire a textului specificate într-un document folosind metoda [InsertShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertshape/). Metoda "**InsertShape**" permite inserarea unui obiect "DML Shape" în modelul documentului. Documentul trebuie să fie salvat în formatul care suportă forme DML altfel aceste noduri vor fi convertite într-o formă VML în timp ce se salvează documentul.

Exemplul următor arată cum să inserați aceste tipuri de forme în document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cs" >}}

## Setați raportul de aspect blocat

Utilizând Aspose.Words, puteți specifica dacă raportul de aspect al formei este blocat prin proprietatea [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/).

Exemplul de cod următor arată cum să lucreze cu proprietatea **AspectRatioLocked**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Setaţi layoutul formei în celulă

Puteți specifica, de asemenea, dacă forma este afișată în interiorul unei tabele sau în afara acesteia folosind proprietatea [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/).

Exemplul de cod următor arată cum să lucreze cu proprietatea **IsLayoutInCell**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}

## Creează dreptunghi de colț Snip

Poți crea un dreptunghi de colț folosind Aspose.Words. Tipurile de forme sunt: *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded* și *DiagonalCornersRounded.*

Forma DML este creată folosind **InsertShape** metodă cu aceste tipuri de forme. Aceste tipuri nu pot fi folosite pentru a crea forme VML. Încercarea de a crea o formă folosind constructorul public al clasei "Shape" ridică excepţia "NotSupportedException.

Exemplul următor de cod arată cum să inserezi aceste tipuri de forme în document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cs" >}}

## Obțineți punctele de contur formei reale

Folosind Aspose.Words API, puteți obține locația și dimensiunea blocului container al formei în puncte, relativ la ancora celei mai de sus forme. Pentru a face asta, foloseşte proprietatea [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/boundsinpoints/).

Exemplul de cod următor prezintă modul în care se lucrează cu proprietatea **BoundsInPoints**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Specificați ancorarea verticală

"Poți specifica alinierea textului vertical în interiorul unei forme folosind proprietatea [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/verticalanchor/)".

Exemplul de cod următor arată cum să lucrezi cu proprietatea **VerticalAnchor**":

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.cs" >}}

## Detectează forma SmartArt

Aspose.Words permite, de asemenea, detectarea dacă Forma are un `SmartArt` obiect. Pentru a face asta folosiți proprietatea [HasSmartArt](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hassmartart/).

Exemplul de cod următor arată cum se lucrează cu proprietatea **HasSmartArt**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-DetectSmartArtShape.cs" >}}

## Introduceţi regula orizontală în document

Puteţi insera o formă de regulă orizontală într-un document folosind metoda [InsertHorizontalRule](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthorizontalrule/).

Exemplul de cod următor arată cum să o faci:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

Aspose.Words API oferă proprietatea [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/shape/horizontalruleformat/) pentru a accesa proprietățile formei regulii orizontale. Clasa [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/horizontalruleformat/) expune proprietăți de bază precum Înălțime, Culoare, FărăUmbră etc., pentru formatarea unei reguli orizontale.

Exemplul următor de cod arată cum să setezi **HorizontalRuleFormat**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderHorizontalRuleFormat.cs" >}}

## Importă forme cu Math XML ca forme în DOM

Puteți folosi proprietatea [ConvertShapeToOfficeMath](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/convertshapetoofficemath/) pentru a converti formele cu EquationXML în obiecte matematice Office. Valoarea implicită a acestei proprietăți corespunde cu Microsoft Word comportament, adică formele cu ecuații XML nu sunt convertite în obiecte de matematică Office.

Exemplul de cod următor arată cum să converti forme în obiecte de matematică Office:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-ConvertShapeToOfficeMath.cs" >}}
