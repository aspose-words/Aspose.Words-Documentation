---
title: Werk Met Teks Dokument in Java
second_title: Aspose.Words vir Java
articleTitle: Werk Met Teksdokument
linktitle: Werk Met Teksdokument
description: "Gevorderde TXT dokumentverwerking, lyste, BiDi, koptekste/voetskrif, met behulp van Java."
type: docs
weight: 430
url: /af/java/working-with-text-document/
---

In hierdie artikel sal ons leer watter opsies nuttig kan wees vir die werk met'n teksdokument via Aspose.Words. Let asseblief daarop dat dit nie'n volledige lys van beskikbare opsies is nie, maar slegs'n voorbeeld van werk met sommige van hulle.

## Voeg Tweerigtingmerke By

U kan die [AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks) eienskap gebruik om te spesifiseer of u tweerigtingmerke voor elke BiDi-loop moet byvoeg wanneer u in gewone teksformaat uitvoer. Aspose.Words voeg Unicode Karakter 'RIGHT-TO-LEFT MARK' (U+200f) voor elke tweerigting-Loop in teks. Hierdie opsie stem ooreen met die opsie" voeg tweerigtingmerke By " in die MS Word-Lêeromskakelingsdialoog wanneer u na'n Gewone Teksformaat uitvoer. Let daarop dat dit slegs in dialoog verskyn as enige van die arabiese of hebreeuse redigeringstale in MS Woord bygevoeg word.

Die volgende kode voorbeeld toon hoe om `TxtSaveOptions.AddBidiMarks` eiendom te gebruik. Die standaard waarde van hierdie eiendom is *true*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## Herken Lys Items Tydens Laai TXT

Aspose.Words kan lys item van'n teks lêer invoer as lys nommers of gewone teks in sy dokument voorwerp model. Die [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces) eienskap kan spesifiseer hoe genommerde lys items erken word wanneer'n dokument ingevoer word uit gewone teks formaat:

* As hierdie opsie op *true* gestel is, word witruimtes ook gebruik as lysnommer-afbakeners: lysherkenningsalgoritme vir arabiese stylnommering (1., 1.1.2.) gebruik beide witruimtes en punt (".") simbole.
* As hierdie opsie op *false* gestel is, ontdek die lysherkenningsalgoritme lysparagrawe, wanneer lysnommers eindig met punt, regterbeugel of koeëlsimbole (soos "•", "*", "-" of "o").

Die volgende kode voorbeeld toon hoe om hierdie eiendom te gebruik:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## Hanteer Voorste En Agterste Spasies tydens Laai TXT

U kan die manier van hantering van voorste en agterste spasies beheer tydens die laai van TXT lêers. Die voorste ruimtes kan gesny, bewaar of omgeskakel word na inkeping en agterste ruimtes kan gesny of bewaar word.

Die kode voorbeeld hieronder gegee toon hoe om voorste en agterste spasies te sny terwyl die invoer van die TXT lêer:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## Ontdek Dokument Teks Rigting

Aspose.Words bied [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection) eienskap in [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) klas om die teks rigting (RTL / LTR) in die dokument te bespeur. Hierdie eienskap stel of kry dokument teks aanwysings wat in [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/) opsomming. Die verstekwaarde is van links na regs.

Die volgende kode voorbeeld toon hoe om die teks rigting van die dokument te bespeur terwyl die invoer van die TXT lêer:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## Voer Uit Kop En Voetskrif In Afvoer TXT Lêer

As u die kop-en voetskrif in die uitvoer TXT - dokument wil uitvoer, kan u die [ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode) - eienskap gebruik. Hierdie eienskap spesifiseer die manier waarop koptekste en voetskrifte na die gewone teks formaat uitgevoer word.

Die volgende kode voorbeeld toon hoe om koptekste en voetskrifte uit te voer na gewone teks formaat:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## Uitvoer Lys Inkeping in Afvoer TXT

Aspose.Words ingestel [TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/) klas wat toelaat dat spesifiseer hoe lys vlakke is ingekap terwyl uitvoer na'n gewone teks formaat. Terwyl jy met [TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/) werk, word die [ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation) eienskap verskaf om die karakter te spesifiseer wat gebruik moet word vir die indentering van lysvlakke en tel wat spesifiseer hoeveel karakters as indentering per een lysvlak gebruik moet word.

Die standaard waarde vir karakter eienskap is '\0' wat aandui dat daar geen inkeping. Vir tel eiendom, die verstek waarde is 0 wat beteken geen inkeping.

### Gebruik Oortjie Karakter

Die volgende kode voorbeeld toon hoe om lys vlakke uitvoer met behulp van tab karakters:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### Gebruik Spasie Karakter

Die volgende kode voorbeeld toon hoe om lys vlakke uitvoer met behulp van spasie karakters:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### Gebruik Verstek Inkeping

Die volgende kode voorbeeld toon hoe om lys vlakke uitvoer met behulp van standaard inkeping:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}
