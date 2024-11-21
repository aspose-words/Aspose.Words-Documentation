---
title: Werken met tekstdocument in Java
second_title: Aspose.Words voor Java
articleTitle: Werken met tekstdocument
linktitle: Werken met tekstdocument
description: "Geavanceerde TXT-documentverwerking, lijsten, BiDi, headers/voeter, gebruik Java."
type: docs
weight: 430
url: /nl/java/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

In dit artikel zullen we weten welke opties nuttig kunnen zijn voor het werken met een tekstdocument via Aspose.Words. Let op: dit is niet een volledige lijst van beschikbare opties, maar slechts een voorbeeld van werken met sommige van hen.

## Bidirectional toevoegen Merken

U kunt de [AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks) eigenschap om aan te geven of bidirectionele markeringen moeten worden toegevoegd voordat elke BiDi wordt uitgevoerd bij het exporteren in platte tekstformaat. Aspose.Words plaatst Unicode Karakter 'RIGHT-TO-LEFT MARK' (U+200F) voor elke bidirectionele Run in tekst. Deze optie komt overeen met "Bidirectionele markeringen toevoegen" optie in het MS Word File Conversie dialoogvenster wanneer u exporteren naar een platte tekst formaat. Merk op dat het alleen verschijnt in het dialoogvenster als een van de Arabische of Hebreeuwse bewerken talen worden toegevoegd in MS Word.

Het volgende voorbeeld van code laat zien hoe te gebruiken `TxtSaveOptions.AddBidiMarks` eigendom. De standaardwaarde van deze eigenschap is *true*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## Lijstitems herkennen tijdens laden van TXT

Aspose.Words kan lijstitem van een tekstbestand importeren als lijstnummers of platte tekst in het documentobjectmodel. De [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces) eigenschap geeft aan hoe genummerde lijst items worden herkend wanneer een document wordt geïmporteerd uit platte tekst formaat:

* Als deze optie ingesteld is *true*, whitespaces worden ook gebruikt als lijstnummergrenzen: lijstherkenningsalgoritme voor Arabische stijlnummers (1., 1.1.2.) gebruikt zowel witruimtes als punt (".") symbolen.
* Als deze optie ingesteld is *false*, de lijstherkenningsalgoritmen detecteert lijstparagrafen, wanneer lijstnummers eindigen met stip, rechter beugel of kogelsymbolen (zoals "•," "*," "-" of "o").

Het volgende voorbeeld van code laat zien hoe deze eigenschap te gebruiken:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## Tijdens het laden van TXT leiden en trailen

Tijdens het laden van TXT-bestanden kunt u de manier van omgaan met toonaangevende en trailende ruimtes controleren. De openingsruimten kunnen worden gesnoeid, bewaard of tot inspringen worden omgebouwd en aansluitende ruimten kunnen worden gesnoeid of bewaard.

Het onderstaande voorbeeld van de code laat zien hoe je leading en trailing spaties trimt tijdens het importeren van het TXT bestand:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## Document detecteren Tekstrichting

Aspose.Words levert [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection) eigenschap in [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) klasse om de tekstrichting (RTL / LTR) in het document te detecteren. Deze eigenschap stelt de tekstrichting van het document in of krijgt deze [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/) Samenvatting. De standaardwaarde is links naar rechts.

Het volgende voorbeeld van code laat zien hoe u de tekstrichting van het document kunt detecteren tijdens het importeren van het TXT-bestand:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## Header en Footer exporteren in uitvoer-TXT-bestand

Als u de header en footer wilt exporteren in het uitvoer TXT document, kunt u de [ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode) eigendom. Deze eigenschap specificeert de manier waarop headers en voetteksten worden geëxporteerd naar het platte tekstformaat.

Het volgende voorbeeld van code laat zien hoe je headers en footers naar platte tekst formaat exporteren:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## Lijst-inspringing exporteren in uitvoer-TXT

Aspose.Words ingevoerd [TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/) klasse die aangeeft hoe lijstniveaus worden ingespringd tijdens het exporteren naar een platte tekstformaat. Tijdens het werken met [TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/), de [ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation) eigenschap wordt gegeven om het teken te specificeren dat gebruikt moet worden voor het inspringen van lijstniveaus en het tellen van het aantal tekens dat gebruikt moet worden als inspringing per één lijstniveau.

De standaardwaarde voor karaktereigenschap is '\0' wat aangeeft dat er geen inspringing is. Voor count property is de standaard waarde 0 wat betekent dat er geen inspringing is.

### Gebruik van tabteken

Het volgende voorbeeld van code toont hoe u lijstniveaus kunt exporteren met behulp van tabtekens:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### Spatieteken gebruiken

Het volgende voorbeeld van code laat zien hoe u lijstniveaus kunt exporteren met behulp van spatietekens:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### Standaard-inspringing gebruiken

Het volgende voorbeeld van code laat zien hoe u lijstniveaus kunt exporteren met standaard inspringen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}
