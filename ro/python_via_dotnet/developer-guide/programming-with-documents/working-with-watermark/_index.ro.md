---
title: Lucrul cu filigran în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Lucrul cu filigran
linktitle: Lucrul cu filigran
description: "Creați și gestionați filigranele într-un document folosind Python."
type: docs
weight: 340
url: /ro/python-net/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

Acest subiect discută cum să lucrați programatic cu filigran folosind Aspose.Words. Un filigran este o imagine de fundal care se afișează în spatele textului dintr-un document. Un filigran poate conține un text sau o imagine reprezentată de clasa [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/).

{{% alert color="primary" %}}

**Încercați online**

Puteți încerca această funcționalitate cu [Filigran online gratuit pentru documente](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Cum se adaugă un filigran la un Document

În Microsoft Word, un filigran poate fi inserat cu ușurință într-un document folosind comanda Insert Watermark. Aspose.Words oferă clasa [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) pentru a adăuga sau elimina filigranul în documente. Aspose.Words oferă enumerarea [WatermarkType](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/) definind trei tipuri posibile de filigrane ([TEXT](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#text), [IMAGE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#image) și [NONE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#none)) cu care să lucrați.

### Adăugați Filigran Text

Următorul exemplu de cod demonstrează cum să inserați un filigran text într-un document definind [TextWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/textwatermarkoptions/) folosind metoda [set_text](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_text/).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddTextWatermarkWithSpecificOptions.py" >}}

### Adăugați Filigran De Imagine

Următorul exemplu de cod demonstrează cum să inserați un filigran de imagine într-un document definind [ImageWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/imagewatermarkoptions/) folosind metoda [set_image](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_image/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddImageWatermarkWithSpecificOptions.py" >}}

Filigranul poate fi, de asemenea, inserat folosind clasa de formă. Este foarte ușor să inserați orice formă sau imagine într-un antet sau subsol și astfel să creați un filigran de orice tip imaginabil.

Următorul exemplu de cod introduce un filigran într-un document Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddWatermark.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu din [aici](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}


## Eliminați filigranul dintr-un Document

Clasa [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) oferă metoda remove pentru a elimina filigranul dintr-un document.

Următorul exemplu de cod arată cum să eliminați un filigran din documente:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermarkFromDocument.py" >}}

Dacă Filigranele sunt adăugate folosind obiectul clasei [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), atunci pentru a elimina filigranul dintr-un document, trebuie să setați doar numele formei filigranului în timpul inserării și apoi să eliminați forma filigranului printr-un nume atribuit.

Următorul exemplu de cod vă arată cum să setați numele formei filigranului și să îl eliminați din document:

{{< highlight python >}}
# Set name to be able to remove it afterwards
watermark.name = "WaterMark"
{{< /highlight >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermark.py" >}}

## Adăugați un filigran în celula de tabel

Uneori trebuie să introduceți un filigran/imagine în celula unui tabel și să o afișați în afara tabelului, puteți utiliza proprietatea [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/). Această proprietate primește sau setează un steag care indică dacă forma este afișată în interiorul unui tabel sau în afara acestuia. Rețineți că această proprietate funcționează numai atunci când optimizați documentul pentru Microsoft Word 2010 folosind metoda [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/).

Următorul exemplu de cod arată cum să utilizați această proprietate:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}
