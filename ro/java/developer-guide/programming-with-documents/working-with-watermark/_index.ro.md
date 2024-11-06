---
title: Lucrul cu filigran în Java
second_title: Aspose.Words pentru Java
articleTitle: Lucrul cu filigran
linktitle: Lucrul cu filigran
type: docs
description: "Manipularea filigranului documentului folosind Java."
weight: 70
url: /ro/java/working-with-watermark/
---

Acest subiect discută cum să lucrați programatic cu un filigran folosind Aspose.Words. Un filigran este o imagine de fundal care se afișează în spatele textului dintr-un document. Un filigran poate conține un text sau o imagine reprezentată de clasa [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/).

{{% alert color="primary" %}}

**Încercați online**

Puteți încerca această funcționalitate cu [Filigran online gratuit pentru documente](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Adăugarea unui filigran la un Document

În Microsoft Word, un filigran poate fi inserat cu ușurință într-un document folosind comanda Insert Watermark. Aspose.Words oferă clasa [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) pentru a adăuga sau elimina filigranul în documente. Aspose.Words oferă enumerarea [WatermarkType ](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/)definind trei tipuri posibile de filigrane (Text, imagine și niciuna) cu care să lucrați.

### Adăugați Filigran Text

Următorul exemplu de cod demonstrează cum să inserați un filigran text într-un document definind [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) folosind metoda [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### Adăugați Filigran De Imagine

Următorul exemplu de cod demonstrează cum să inserați un filigran de imagine într-un document definind [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) folosind metoda [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

Filigranul poate fi, de asemenea, inserat folosind clasa de formă. Este foarte ușor să inserați orice formă sau imagine într-un antet sau subsol și astfel să creați un filigran de orice tip imaginabil.

Următorul exemplu de cod introduce un filigran într-un document Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


## Eliminați filigranul dintr-un Document

Clasa [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) oferă metoda `Remove` pentru a elimina filigranul dintr-un document.

Următoarele exemple de cod arată cum să eliminați un filigran din documente:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

Pentru a elimina filigranul dintr-un document, trebuie să setați doar numele formei filigranului în timpul inserării și apoi să eliminați forma filigranului printr-un nume atribuit.

Următorul exemplu de cod vă arată cum să setați numele formei filigranului și să îl eliminați din document:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## Adăugați un filigran într-o celulă de tabel

Uneori trebuie să inserați un filigran/imagine în celula unui tabel și să o afișați în afara tabelului, puteți utiliza proprietatea [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean). Această proprietate primește sau setează un steag care indică dacă forma este afișată în interiorul unui tabel sau în afara acestuia. Rețineți că această proprietate funcționează numai atunci când optimizați documentul pentru Microsoft Word 2010 folosind metoda [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int).

Următorul exemplu de cod arată cum să utilizați această proprietate:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
