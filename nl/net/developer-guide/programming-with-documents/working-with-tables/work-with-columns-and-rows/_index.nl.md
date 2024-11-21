---
title: Werk met kolommen en rijen in C#
second_title: Aspose.Words voor .NET
articleTitle: Werk met kolommen en rijen
linktitle: Werk met kolommen en rijen
description: "Werken met delen van een tabel C#. Koprij opgeven C#."
type: docs
weight: 30
url: /nl/net/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

Voor meer controle over hoe tabellen werken, leer hoe kolommen en rijen te manipuleren.

## De tabelelementindex zoeken {#find-the-index-of-table-elements}

Kolommen, rijen en cellen worden beheerd door toegang te krijgen tot de geselecteerde documentnode door de index. Het vinden van de index van een knooppunt impliceert het verzamelen van alle kindknooppunten van het elementtype van de oudernode, en vervolgens het gebruik van de [IndexOf](https://reference.aspose.com/words/net/aspose.words/nodecollection/indexof/) methode om de index van de gewenste knoop in de collectie te vinden.

### De index van een tabel vinden in een document {#find-the-index-of-table-in-a-document}

Soms moet u wijzigingen aanbrengen in een bepaalde tabel in een document. Om dit te doen, kunt u verwijzen naar een tabel door de index.

Het volgende voorbeeld van code laat zien hoe je de index van een tabel in een document kunt ophalen:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-table-index.cs" >}}

### Vind de index van een rij in een tabel {#find-the-index-of-a-row-in-a-table}

Het kan ook nodig zijn om wijzigingen aan te brengen in een specifieke rij in een geselecteerde tabel. Om dit te doen, kunt u ook verwijzen naar een rij door de index.

Het volgende voorbeeld van code laat zien hoe je de index van een rij in een tabel kunt ophalen:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-row-index.cs" >}}

### Vind de index van een cel in een rij {#find-the-index-of-a-cell-in-a-row}

Tenslotte moet je misschien wijzigingen aanbrengen in een specifieke cel, en je kunt dit ook doen per celindex.

Het volgende voorbeeld van code laat zien hoe je de index van een cel op een rij ophaalt:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-cell-index.cs" >}}

## Werk met kolommen {#work-with-columns}

In de Aspose.Words Document Object Model (DOM), de [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) knooppunt bestaat uit [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) nodes en dan [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) knooppunten. In de `Document` Objectmodel van Aspose.Words, zoals in Word documenten, is er geen concept van een kolom.

Naar ontwerp, de tabel rijen in Microsoft Word en Aspose.Words zijn volledig onafhankelijk, en de basiseigenschappen en operaties zijn alleen opgenomen in de rijen en cellen van de tabel. Dit geeft tabellen de mogelijkheid om een aantal interessante attributen:

- Elke rij kan een totaal ander aantal cellen hebben
- Verticaal kunnen de cellen van elke rij verschillende breedtes hebben
- Het is mogelijk om tabellen samen te voegen met verschillende rijformaten en aantal cellen

Elke bewerking uitgevoerd op kolommen zijn eigenlijk "shortcuts" die de operatie uitvoeren door collectief van rij cellen op een zodanige manier dat het lijkt alsof ze worden toegepast op kolommen. Dat wil zeggen, je kunt operaties uitvoeren op kolommen door simpelweg te itereren over dezelfde tabel rij cel index.

Het volgende codevoorbeeld vereenvoudigt dergelijke bewerkingen door een gevelklasse te bewijzen die de cellen verzamelt die een "kolom" van een tabel vormen:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "column-class.cs" >}}

Het volgende voorbeeld van code laat zien hoe je een lege kolom in een tabel invoegt:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "insert-blank-column.cs" >}}

Het volgende voorbeeld van code laat zien hoe u een kolom uit een tabel in een document verwijdert:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "remove-column.cs" >}}

## Rijen specificeren als koprijen

U kunt ervoor kiezen om de eerste rij in de tabel te herhalen als de Header Row alleen op de eerste pagina of op elke pagina als de tabel is opgesplitst in meerdere. In Aspose.Words, kunt u de Header Row herhalen op elke pagina met behulp van de [HeadingFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/headingformat/) eigendom.

U kunt ook meerdere header rijen markeren als dergelijke rijen zich aan het begin van de tabel bevinden. Om dit te doen, moet u de **HeadingFormat** eigenschappen van deze rijen.

{{% alert color="primary" %}}

Merk op dat Header Rows niet werken in geneste tabellen. Dat wil zeggen, als je een tafel in een andere tabel hebt, zal deze instelling geen effect hebben. Het is een beperking van Microsoft Word Dat staat dit niet toe, niet Aspose.Words.

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe een tabel te bouwen die Header Rows bevat die zich herhalen op volgende pagina's:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "repeat-rows-on-subsequent-pages.cs" >}}

## Houd tabellen en rijen te breken over pagina's {#keep-tables-and-rows-from-breaking-across-pages}

Er zijn tijden dat de inhoud van een tabel niet over pagina's moet worden verdeeld. Als bijvoorbeeld een titel boven een tabel staat, moeten de titel en de tabel altijd op dezelfde pagina bij elkaar worden gehouden om het juiste uiterlijk te behouden.

Er zijn twee aparte technieken die nuttig zijn om deze functionaliteit te bereiken:

- `Allow row break across pages`, die op tabelrijen wordt toegepast
- `Keep with next`, die wordt toegepast op de alinea's in tabelcellen

Standaard zijn bovenstaande eigenschappen uitgeschakeld.

### Houd een rij van Breaking Acrosh Pages {#keep-a-row-from-breaking-across-pages}

Dit houdt in dat de inhoud binnen de cellen van een rij moet worden beperkt van opgedeeld over een pagina. In Microsoft Word, Dit kan worden gevonden onder Tabel Eigenschappen als de optie In Aspose.Words Dit wordt gevonden onder de [RowFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/) object van a [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) als eigendom [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/net/aspose.words.tables/row/format/properties/allowbreakacrosspages).

Het volgende voorbeeld van code laat zien hoe brekende rijen voor elke rij in een tabel kunnen worden uitgeschakeld:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "row-format-disable-break-across-pages.cs" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}

### Houd een tafel van Breaking Across Pages {#keep-a-table-from-breaking-across-pages}

Om te voorkomen dat de tabel over pagina's verdeeld wordt, moeten we specificeren dat we willen dat de inhoud in de tabel bij elkaar blijft.

Om dit te doen, Aspose.Words maakt gebruik van een methode, die gebruikers in staat stelt een tabel te selecteren en de [KeepWithNext](https://reference.aspose.com/words/net/aspose.words/paragraphformat/keepwithnext/) parameter voor true voor elke alinea binnen de tabelcellen. De uitzondering is de laatste alinea in de tabel, die moet worden vastgesteld op false.

Het volgende voorbeeld van code laat zien hoe u een tabel kunt instellen om samen te blijven op dezelfde pagina:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "keep-table-together.cs" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}
