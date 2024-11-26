---
title: Werk Met Teks Dokument in C++
second_title: Aspose.Words vir C++
articleTitle: Werk Met Teksdokument
linktitle: Werk Met Teksdokument
description: "Gevorderde TXT dokumentverwerking, lyste, BiDi, koptekste/voetskrif, met behulp van C++."
type: docs
weight: 430
url: /af/cpp/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

In hierdie artikel sal ons leer watter opsies nuttig kan wees vir die werk met'n teksdokument via Aspose.Words. Let asseblief daarop dat dit nie'n volledige lys van beskikbare opsies is nie, maar slegs'n voorbeeld van werk met sommige van hulle.

## Voeg Tweerigtingmerke By

U kan die [AddBidiMarks](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_addbidimarks/) eienskap gebruik om te spesifiseer of u tweerigtingmerke voor elke BiDi-loop moet byvoeg wanneer u in gewone teksformaat uitvoer. Aspose.Words voeg Unicode Karakter 'RIGHT-TO-LEFT MARK' (U+200f) voor elke tweerigting-Loop in die teks. Hierdie opsie stem ooreen met die opsie" voeg tweerigtingmerke By " in MS word-Lêeromskakelingsdialoog wanneer u na'n Gewone Teksformaat uitvoer. Let daarop dat dit slegs in dialoog verskyn as enige van die arabiese of hebreeuse redigeringstale in MS Woord bygevoeg word.

Die volgende kode voorbeeld toon hoe om **AddBidiMarks** eiendom te gebruik. Die standaard waarde van hierdie eiendom is *false*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-AddBidiMarks.cpp" >}}

## Herken Lys Items Tydens Laai TXT

Aspose.Words kan lys item van'n teks lêer invoer as lys nommers of gewone teks in sy dokument voorwerp model. Die [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detectnumberingwithwhitespaces/) eienskap kan spesifiseer hoe genommerde lys items erken word wanneer'n dokument ingevoer word uit gewone teks formaat:

* As hierdie opsie op *true* gestel is, word witruimtes ook gebruik as lysnommer-afbakeners: lysherkenningsalgoritme vir arabiese stylnommering (1., 1.1.2.) gebruik beide witruimtes en punt (".") simbole.
* As hierdie opsie is ingestel op *false*, lys erkenning algoritme ontdek lys paragrawe, wanneer lys nommers eindig met een van die punte, regter hakies of koeël simbole (soos "•", "*", "-" of "o").

Die volgende kode voorbeeld toon hoe om hierdie eiendom te gebruik:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DetectNumberingWithWhitespaces.cpp" >}}

## Hoe Om Voorste en Agterste spasies Te Hanteer tydens Laai TXT

U kan die manier van hantering van voorste en agterste spasies tydens die laai van TXT - lêer beheer. Die voorste ruimtes kan gesny, bewaar of omgeskakel word na inkeping en agterste ruimtes kan gesny of bewaar word.

Die volgende kode voorbeeld toon hoe om voorste en agterste spasies te sny terwyl die invoer van TXT lêer:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-HandleSpacesOptions.cpp" >}}

## Voer Uit Kop En Voetskrif in Uitset TXT

As jy koptekst en voetskrif in uitset TXT dokument wil uitvoer, kan jy die [ExportHeadersFootersMode](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptionsbase/get_exportheadersfootersmode/) eienskap gebruik. Hierdie eienskap spesifiseer die manier waarop koptekste en voetskrifte na die gewone teks formaat uitgevoer word.

Die volgende kode voorbeeld toon hoe om koptekste en voetskrifte uit te voer na gewone teks formaat:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-ExportHeadersFootersMode.cpp" >}}

## Uitvoer Lys Inkeping in Afvoer TXT

Aspose.Words het die [TxtListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtlistindentation/) klas wat toelaat dat spesifiseer hoe lys vlakke is ingekap terwyl uitvoer na'n gewone teks formaat. Terwyl jy met [TxtSaveOption](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/) werk, word die [ListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_listindentation/) eienskap verskaf om die karakter te spesifiseer wat gebruik moet word vir die indentering van lysvlakke en tel wat spesifiseer hoeveel karakters as indentering per een lysvlak gebruik moet word.

Die verstekwaarde vir karakter eienskap is '\0' wat aandui dat daar geen inkeping is nie. Vir tel eiendom, die verstek waarde is 0 wat beteken geen inkeping.

### Gebruik Oortjie Karakter

Die volgende kode voorbeeld toon hoe om lys vlakke uitvoer met behulp van tab karakters:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseTabCharacterPerLevelForListIndentation.cpp" >}}

### Gebruik Spasie Karakter

Die volgende kode voorbeeld toon hoe om lys vlakke uitvoer met behulp van spasie karakters:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseSpaceCharacterPerLevelForListIndentation.cpp" >}}

### Gebruik Verstek Inkeping

Die volgende kode voorbeeld toon hoe om lys vlakke uitvoer met behulp van standaard inkeping:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DefaultLevelForListIndentation.cpp" >}}
