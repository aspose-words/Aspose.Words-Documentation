---
title: Lucrul cu Watermark în C#
second_title: Aspose.Words pentru .NET
articleTitle: Lucrul cu filigran
linktitle: Lucrul cu filigran
description: "Manipularea apei de document folosind C#."
type: docs
weight: 340
url: /ro/net/working-with-watermark/
timestamp: 2024-05-02-11-51-44
---

Acest subiect discută despre cum să lucrezi programatic cu filigran folosind Aspose.Words. O filă de apă este o imagine de fundal care se afișează în spatele textului într-un document. Un filigran poate conține un text sau o imagine reprezentat de clasa [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/).

{{% alert color="primary" %}}

**Încercaţi online**

Puteți încerca această funcționalitate cu [Free online document watermark](https://products.aspose.app/words/watermark) nostru.

{{% /alert %}}

## Adaugă un filigran la un document

În Microsoft Word, un filigran poate fi inserat cu ușurință într-un document folosind comanda Insert Watermark. Aspose.Words oferă clasa [watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) pentru a adăuga sau elimina filigran în documente. Aspose.Words oferă enumerarea [WatermarkType](https://reference.aspose.com/words/net/aspose.words/watermark/type/) care definește trei tipuri posibile de filigrane (Text, imagine și niciuna) pentru a lucra cu

### Adaugă filigran de text

Exemplul de cod următor demonstrează cum să se inserieze un filigran text într-un document prin definirea [TextWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/textwatermarkoptions/) utilizând metoda [SetText](https://reference.aspose.com/words/net/aspose.words/watermark/settext/#settext):"

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cs" >}}

### Adaugă filigran imagine

Exemplul următor de cod demonstrează cum se inserează un filigran cu imagine într-un document prin definirea [ImageWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/imagewatermarkoptions/) folosind metoda [SetImage](https://reference.aspose.com/words/net/aspose.words/watermark/setimage/#setimage):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cs" >}}

Poză de apă poate fi, de asemenea, inserată folosind clasa de formă ca bine. Este foarte uşor să inserţi orice formă sau imagine într-un antet sau subsol şi astfel creezi o filigrană de orice tip imaginabil.

Exemplul următor de cod introduce o filigrană într-un document Word:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Images-AddWatermark-AddWatermark.cs" >}}

{{% alert color="primary" %}}

Puteţi descărca fişierul de probă pentru acest exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}


## Îndepărtați filigranul de pe un document

Clasa [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) oferă metoda "remove" pentru îndepărtarea filigranului de pe un document.

Exemplul următor de cod arată cum să îndepărtaţi un filigran din documente:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cs" >}}

Dacă marca de apă este adăugată folosind obiectul [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) de clasă atunci pentru a elimina marca de apă dintr-un document trebuie să setați doar numele formei de marcă de apă în timpul inserării și apoi eliminați forma de marcă de apă cu un nume atribuit.

Exemplul de cod următor vă arată cum să stabiliți numele formei de filigran și să o eliminați din document:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cs" >}}

## Adăugaţi o filigran într-o celulă de tabelă

Uneori trebuie să inserezi o apă de marcă/o imagine într-o celulă de tabel și afișați-l în afara tabelului, puteți utiliza proprietatea [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/). Această proprietate obține sau setează o steagă care indică dacă forma este afișată într-o tabelă sau în afara acestuia. Notă că această proprietate funcționează doar atunci când optimizați documentul pentru Microsoft Word 2010 folosind metoda [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/).

Exemplul de cod următor arată cum se foloseşte această proprietate:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}
