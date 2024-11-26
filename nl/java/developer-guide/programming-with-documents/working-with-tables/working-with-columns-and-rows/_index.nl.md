---
title: Werk met kolommen en rijen in Java
second_title: Aspose.Words voor Java
articleTitle: Werk met kolommen en rijen
linktitle: Werk met kolommen en rijen
description: "Werken met delen van een tabel Java. Koprij opgeven Java."
type: docs
weight: 30
url: /nl/java/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

Voor meer controle over hoe tabellen werken, leer hoe kolommen en rijen te manipuleren.

## De tabelelementindex zoeken

Kolommen, rijen en cellen worden beheerd door toegang te krijgen tot de geselecteerde documentnode door de index. Het vinden van de index van een knooppunt omvat het verzamelen van alle kindknooppunten van het elementtype uit de oudernode, en vervolgens het gebruik van de [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) methode om de index van de gewenste knoop in de collectie te vinden.

### Vind de index van een tabel in een document

Soms moet u wijzigingen aanbrengen in een bepaalde tabel in een document. Om dit te doen, kunt u verwijzen naar een tabel door de index.

Het volgende voorbeeld van code laat zien hoe je de index van een tabel in een document kunt ophalen:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### De index van een rij vinden in een tabel

Ook moet u mogelijk wijzigingen aanbrengen in een specifieke rij in een geselecteerde tabel. Om dit te doen, kunt u ook verwijzen naar een rij door de index.

Het volgende voorbeeld van code laat zien hoe je de index van een rij in een tabel ophaalt:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### De index van een cel vinden in een rij

Tenslotte moet je misschien wijzigingen aanbrengen in een specifieke cel, en je kunt dit ook doen per celindex.

Het volgende voorbeeld van code laat zien hoe je de index van een cel op een rij ophaalt:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## Werken met kolommen

In de Aspose.Words Document Object Model (DOM), de [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) knooppunt bestaat uit [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) nodes en dan [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) knooppunten. In de `Document` Objectmodel van Aspose.Words, zoals in Word documenten, is er geen concept van een kolom.

Door ontwerp, de tabel rijen in Microsoft Word en Aspose.Words volledig onafhankelijk zijn, en de basiseigenschappen en -bewerkingen zijn alleen in de rijen en cellen van de tabel opgenomen. Dit geeft tabellen de mogelijkheid om een aantal interessante attributen:

- Elke rij kan een totaal ander aantal cellen hebben
- Verticaal kunnen de cellen van elke rij verschillende breedtes hebben
- Het is mogelijk om tabellen samen te voegen met verschillende rijformaten en aantal cellen

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

Alle bewerkingen uitgevoerd op kolommen zijn eigenlijk "shortcuts" die de operatie uitvoeren door het collectief veranderen van rij cellen op een zodanige manier dat het lijkt alsof ze worden toegepast op kolommen. Dat wil zeggen, je kunt operaties uitvoeren op kolommen door simpelweg te itereren over dezelfde tabel rij cel index.

Het volgende codevoorbeeld vereenvoudigt dergelijke bewerkingen door een gevelklasse te bewijzen die de cellen verzamelt die een "kolom" van een tabel vormen:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

Het volgende voorbeeld van code laat zien hoe je een lege kolom in een tabel invoegt:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

Het volgende voorbeeld van code laat zien hoe u een kolom uit een tabel in een document verwijdert:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## Rijen specificeren als koprijen

U kunt ervoor kiezen om de eerste rij in de tabel te herhalen als de Header Row alleen op de eerste pagina of op elke pagina als de tabel is opgesplitst in meerdere. In Aspose.Words, kunt u de Header Row herhalen op elke pagina met behulp van de [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat) eigendom.

U kunt ook meerdere header rijen markeren als dergelijke rijen zich aan het begin van de tabel bevinden. Om dit te doen, moet u de **HeadingFormat** eigenschappen van deze rijen.

{{% alert color="primary" %}}

Merk op dat Header Rows niet werken in geneste tabellen. Dat wil zeggen, als je een tafel in een andere tabel hebt, zal deze instelling geen effect hebben. Het is een beperking van Microsoft Word Dat staat dit niet toe, niet Aspose.Words.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe u een tabel kunt bouwen met Header rijen die zich herhalen op volgende pagina's:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## Houd tabellen en rijen te breken over pagina's {#keep-tables-and-rows-from-breaking-across-pages}

Soms moet de inhoud van een tabel niet over pagina's worden verdeeld. Bijvoorbeeld, als een titel boven een tabel staat, moeten de titel en de tabel altijd samen op dezelfde pagina worden gehouden om het juiste uiterlijk te behouden.

Er zijn twee aparte technieken die nuttig zijn om deze functionaliteit te bereiken:

- `Allow row break across pages`, die wordt toegepast op tabelrijen
- `Keep with next`, die wordt toegepast op de alinea's in tabelcellen

Standaard zijn bovenstaande eigenschappen uitgeschakeld.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### Houd een Row van Breaking Across Pages {#keep-a-row-from-breaking-across-pages}

Dit houdt in dat de inhoud binnen de cellen van een rij moet worden beperkt van het splitsen over een pagina. In Microsoft Word, Dit kan worden gevonden onder Tabel Eigenschappen als de optie In Aspose.Words Dit wordt gevonden onder de [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) object van a [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) als eigendom [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages).

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

Het volgende voorbeeld van code laat zien hoe brekende rijen voor elke rij in een tabel kunnen worden uitgeschakeld:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### Houd een tafel van Breaking Across Pages {#keep-a-table-from-breaking-across-pages}

Om te voorkomen dat de tabel over pagina's verdeeld wordt, moeten we specificeren dat we willen dat de inhoud in de tabel bij elkaar blijft.

Om dit te doen, Aspose.Words maakt gebruik van een methode, die gebruikers in staat stelt een tabel te selecteren en [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) parameter voor true voor elke alinea binnen de tabelcellen. De uitzondering is de laatste alinea in de tabel, die moet worden vastgesteld op false.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

Het volgende voorbeeld van code laat zien hoe u een tabel kunt instellen om samen te blijven op dezelfde pagina:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}
