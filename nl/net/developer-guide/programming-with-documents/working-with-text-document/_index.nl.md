---
title: Werken met tekstdocument in C#
second_title: Aspose.Words voor .NET
articleTitle: Werken met tekstdocument
linktitle: Werken met tekstdocument
description: "Geavanceerde TXT-documentverwerking, lijsten, BiDi, headers/voeter, gebruik C#."
type: docs
weight: 430
url: /nl/net/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

In dit artikel zullen we weten welke opties nuttig kunnen zijn voor het werken met een tekstdocument via Aspose.Words. Let op: dit is niet een volledige lijst van beschikbare opties, maar slechts een voorbeeld van werken met sommige van hen.

## Bidirectionele toevoegen Merken

U kunt de [AddBidiMarks](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/addbidimarks/) eigenschap om aan te geven of bidirectionele markeringen moeten worden toegevoegd voordat elke BiDi wordt uitgevoerd bij het exporteren in platte tekstformaat. Aspose.Words plaatst Unicode Karakter 'RIGHT-TO-LEFT MARK' (U+200F) voor elke bidirectionele Run in de tekst. Deze optie komt overeen met "Bidirectionele markeringen toevoegen" optie in MS Word File Conversie dialoog wanneer u exporteren naar een platte tekst formaat. Merk op dat het verschijnt in dialoog alleen als een van de Arabische of Hebreeuwse bewerken talen worden toegevoegd in MS Word.

Het volgende voorbeeld van code laat zien hoe te gebruiken **AddBidiMarks** eigendom. De standaardwaarde van deze eigenschap is *false*:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-AddBidiMarks.cs" >}}

## Lijstitems herkennen tijdens laden van TXT

Aspose.Words kan lijstitem van een tekstbestand importeren als lijstnummers of platte tekst in het documentobjectmodel. De [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detectnumberingwithwhitespaces/) eigenschap geeft aan hoe genummerde lijst items worden herkend wanneer een document wordt geïmporteerd uit platte tekst formaat:

* Als deze optie ingesteld is *true*, whitespaces worden ook gebruikt als lijstnummergrenzen: lijstherkenningsalgoritme voor Arabische stijlnummers (1., 1.1.2.) gebruikt zowel witruimtes als stip (".") symbolen.

* Als deze optie ingesteld is *false*, lijsten van herkenningsalgoritmen detecteert lijst paragrafen, wanneer lijstnummers eindigen met ofwel punt, rechter beugel of kogelsymbolen (zoals "•," "*," "-" of "o").

Het volgende voorbeeld van code laat zien hoe deze eigenschap te gebruiken:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DetectNumberingWithWhitespaces.cs" >}}

## Tijdens het laden van TXT lood- en trailruimtes hanteren

Tijdens het laden van TXT-bestand kunt u de manier van omgaan met toonaangevende en trailing spaties controleren. De openingsruimten kunnen worden gesnoeid, bewaard of omgezet in inspringruimtes en kunnen worden gesnoeid of bewaard.

Het volgende voorbeeld van code laat zien hoe te trimmen toonaangevende en trailing spaties tijdens het importeren van TXT-bestand:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-HandleSpacesOptions.cs" >}}

## Document detecteren Tekstrichting

Aspose.Words levert de [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/documentdirection/) object in de [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) klasse om de tekstrichting (RTL / LTR) in het document te detecteren. Deze eigenschap selecteert of ontvangt tekstbeschrijvingen in de [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/documentdirection/) Lijst. De standaardwaarde blijft aan *right*.

Het volgende voorbeeld van code laat zien hoe tekstrichting van het document te detecteren tijdens het importeren van TXT-bestand:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DocumentTextDirection.cs" >}}

## Header en Voettekst exporteren in uitvoerTXT

Als u header en footer wilt exporteren in uitvoer TXT-document, kunt u de [ExportHeadersFootersMode](https://reference.aspose.com/words/net/aspose.words.saving/exportheadersfootersmode/) eigendom. Deze eigenschap specificeert de manier waarop headers en voetteksten worden geëxporteerd naar het platte tekstformaat.

Het volgende voorbeeld van code laat zien hoe je headers en footers naar platte tekst formaat exporteren:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-ExportHeadersFootersMode.cs" >}}

## Lijst-inspringing exporteren in uitvoer-TXT

Aspose.Words ingevoerd [TxtListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtlistindentation/) klasse die aangeeft hoe lijstniveaus worden ingespringd tijdens het exporteren naar een platte tekstformaat. Tijdens het werken met [TxtSaveOption](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/), de [ListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/listindentation/) eigenschap wordt gegeven om het teken te specificeren dat moet worden gebruikt voor het inspringen van lijstniveaus en het tellen van het aantal tekens dat moet worden gebruikt als inspringing per één lijstniveau.

De standaardwaarde voor karaktereigenschap is '\0' wat aangeeft dat er geen inspringing is. Voor count property is de standaard waarde 0 wat betekent dat er geen inspringing is.

### Gebruik van tabteken

Het volgende voorbeeld van code laat zien hoe u lijstniveaus kunt exporteren met tabtekens:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseTabCharacterPerLevelForListIndentation.cs" >}}

### Spatieteken gebruiken

Het volgende voorbeeld van code laat zien hoe u lijstniveaus kunt exporteren met behulp van spatietekens:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseSpaceCharacterPerLevelForListIndentation.cs" >}}

### Standaard-inspringing gebruiken

Het volgende voorbeeld van code laat zien hoe u lijstniveaus kunt exporteren met standaard inspringen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DefaultLevelForListIndentation.cs" >}}
