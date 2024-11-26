---
title: Werken met tekstdocument in C++
second_title: Aspose.Words voor C++
articleTitle: Werken met tekstdocument
linktitle: Werken met tekstdocument
description: "Geavanceerde TXT documentverwerking, lijsten, BiDi, headers/footer, met behulp van C++."
type: docs
weight: 430
url: /nl/cpp/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

In dit artikel leren we welke opties nuttig kunnen zijn voor het werken met een tekstdocument via Aspose.Words. Houd er rekening mee dat dit geen volledige lijst van beschikbare opties is, maar slechts een voorbeeld van het werken met een aantal van hen.

## Voeg Bidirectionele Markeringen Toe

U kunt de Eigenschap [AddBidiMarks](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_addbidimarks/) gebruiken om aan te geven of u bidirectionele markeringen wilt toevoegen voordat elke BiDi wordt uitgevoerd bij het exporteren in platte tekst. Aspose.Words Voegt Unicode-teken in 'RIGHT-TO-LEFT MARK' (U+200f) vóór elke bidirectionele Run in de tekst. Deze optie komt overeen met de optie" Tweerichtingsmarkeringen toevoegen " in het dialoogvenster bestandsconversie van MS Word wanneer u exporteert naar een platte tekstindeling. Merk op dat het alleen in dialoog verschijnt als een van de Arabische of Hebreeuwse bewerkingstalen wordt toegevoegd in MS Word.

Het volgende codevoorbeeld laat zien hoe de eigenschap **AddBidiMarks** moet worden gebruikt. De standaardwaarde van deze eigenschap is *false*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-AddBidiMarks.cpp" >}}

## Lijstitems Herkennen Tijdens Het Laden Van TXT

Aspose.Words kan lijstitem van een tekstbestand importeren als lijstnummers of platte tekst in het documentobjectmodel. De eigenschap [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detectnumberingwithwhitespaces/) maakt het mogelijk om op te geven hoe genummerde lijstitems worden herkend wanneer een document wordt geïmporteerd vanuit platte tekst:

* Als deze optie is ingesteld op *true*, worden witruimtes ook gebruikt als scheidingstekens voor lijstnummers: lijstherkenningsalgoritme voor nummering in arabische stijl (1., 1.1.2.) gebruikt zowel witruimtes als punt (".") symbolen.
* Als deze optie is ingesteld op *false*, detecteert het lijstherkenningsalgoritme lijstparagrafen, wanneer lijstnummers eindigen met punt -, rechterhaak-of opsommingssymbolen (zoals "•", "*", "-" of "o").

Het volgende codevoorbeeld laat zien hoe deze eigenschap te gebruiken:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DetectNumberingWithWhitespaces.cpp" >}}

## Hoe om te gaan met Leading en Trailing spaties tijdens het laden van TXT

U kunt de manier bepalen waarop voor-en achterspaties worden verwerkt tijdens het laden van TXT - bestand. De voorste ruimtes konden worden afgeknipt, bewaard of omgezet in inspringing en de achterste ruimtes konden worden afgeknipt of bewaard.

Het volgende codevoorbeeld laat zien hoe u voor-en achterspaties kunt inkorten tijdens het importeren van TXT - bestand:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-HandleSpacesOptions.cpp" >}}

## Kop-en voettekst exporteren in uitvoer TXT

Als u kop-en voettekst in Uitvoer TXT document wilt exporteren, kunt u de eigenschap [ExportHeadersFootersMode](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptionsbase/get_exportheadersfootersmode/) gebruiken. Deze eigenschap specificeert de manier waarop kop-en voetteksten worden geëxporteerd naar de opmaak zonder opmaak.

Het volgende codevoorbeeld laat zien hoe kop-en voetteksten naar platte tekst kunnen worden geëxporteerd:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-ExportHeadersFootersMode.cpp" >}}

## Inspringing van de exportlijst in uitvoer TXT

Aspose.Words introduceerde de [TxtListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtlistindentation/) - klasse waarmee kan worden gespecificeerd hoe lijstniveaus worden ingesprongen tijdens het exporteren naar een platte tekstformaat. Tijdens het werken met [TxtSaveOption](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/) wordt de eigenschap [ListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_listindentation/) verstrekt om het teken op te geven dat moet worden gebruikt voor het inspringen van lijstniveaus en het aantal tekens dat moet worden gebruikt als inspringen per lijstniveau.

De standaardwaarde voor de karaktereigenschap is '\0', wat aangeeft dat er geen inspringing is. Voor de eigenschap count is de standaardwaarde 0, wat betekent dat er geen inspringing is.

### Tab-Teken Gebruiken

Het volgende codevoorbeeld laat zien hoe u lijstniveaus exporteert met behulp van tablettekens:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseTabCharacterPerLevelForListIndentation.cpp" >}}

### Spatie-Karakter Gebruiken

Het volgende codevoorbeeld laat zien hoe u lijstniveaus kunt exporteren met behulp van spatie-tekens:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseSpaceCharacterPerLevelForListIndentation.cpp" >}}

### Standaard Inspringen Gebruiken

Het volgende codevoorbeeld laat zien hoe u lijstniveaus exporteert met standaard inspringen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DefaultLevelForListIndentation.cpp" >}}
