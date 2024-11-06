---
title: Lucrul cu filigran în C++
second_title: Aspose.Words pentru C++
articleTitle: Lucrul cu filigran
linktitle: Lucrul cu filigran
type: docs
description: "Manipularea filigranului documentului folosind C++."
weight: 340
url: /ro/cpp/working-with-watermark/
---

Acest subiect discută cum să lucrați programatic cu filigran folosind Aspose.Words. Un filigran este o imagine de fundal care se afișează în spatele textului dintr-un document. Un filigran poate conține un text sau o imagine reprezentată de clasa [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/).

## Adăugarea unui filigran la un Document

În Microsoft Word, un filigran poate fi inserat cu ușurință într-un document folosind comanda Insert Watermark. Aspose.Words oferă clasa [watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) pentru a adăuga sau elimina filigranul în documente. Aspose.Words oferă enumerarea [WatermarkType ](https://reference.aspose.com/words/cpp/aspose.words/)definind trei tipuri posibile de filigrane (Text, imagine și niciuna) cu care să lucrați.

### Adăugați Filigran Text

Următorul exemplu de cod demonstrează cum să inserați un filigran text într-un document definind [TextWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/textwatermarkoptions/) folosind metoda [SetText](https://reference.aspose.com/words/cpp/aspose.words/watermark/settext/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cpp" >}}

### Adăugați Filigran De Imagine

Următorul exemplu de cod demonstrează cum să inserați un filigran de imagine într-un document definind [ImageWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/imagewatermarkoptions/) folosind metoda [SetImage](https://reference.aspose.com/words/cpp/aspose.words/watermark/setimage/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cpp" >}}

Filigranul poate fi, de asemenea, inserat folosind clasa de formă. Este foarte ușor să inserați orice formă sau imagine într-un antet sau subsol și astfel să creați un filigran de orice tip imaginabil. Următorul exemplu de cod introduce un filigran într-un document Word.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-AddWatermark-AddWatermark.cpp" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}


## Eliminați filigranul dintr-un Document

Clasa [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) oferă metoda remove pentru a elimina filigranul dintr-un document.

Următorul exemplu de cod arată cum să eliminați un filigran din documente:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cpp" >}}

Dacă Filigranele sunt adăugate folosind obiectul clasei [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/), atunci pentru a elimina filigranul dintr-un document, trebuie să setați doar numele formei filigranului în timpul inserării și apoi să eliminați forma filigranului printr-un nume atribuit.

Următorul exemplu de cod vă arată cum să setați numele formei filigranului și să îl eliminați din document:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark->set_Name(u"WaterMark");
{{< /highlight >}}


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cpp" >}}

## Adăugați un filigran în celula de tabel

Uneori trebuie să inserați un filigran/imagine în celula unui tabel și să o afișați în afara tabelului, puteți utiliza proprietatea [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/). Această proprietate primește sau setează un steag care indică dacă forma este afișată în interiorul unui tabel sau în afara acestuia. Rețineți că această proprietate funcționează numai atunci când optimizați documentul pentru Microsoft Word 2010 folosind metoda [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/).

Următorul exemplu de cod arată cum să utilizați această proprietate:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}
