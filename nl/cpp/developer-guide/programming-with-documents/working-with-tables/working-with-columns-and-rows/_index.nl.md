---
title: Werken met kolommen en Rijen in C++
second_title: Aspose.Words voor C++
articleTitle: Werken met kolommen en Rijen
linktitle: Werken met kolommen en Rijen
description: "Werken met delen van een tabel – rijen, kolommen en cellen met behulp van C++. Geef Kopregelrij C++ Op."
type: docs
weight: 30
url: /nl/cpp/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

Lees hoe u kolommen en Rijen kunt bewerken voor meer controle over hoe tabellen werken.

## Zoek de tabel Element Index

Kolommen, rijen en cellen worden beheerd door toegang te krijgen tot het geselecteerde documentknooppunt via de index. Het vinden van de index van een knooppunt houdt in dat alle onderliggende knooppunten van het elementtype van de ouderknooppunt worden verzameld en vervolgens de [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/) - methode wordt gebruikt om de index van de gewenste knooppunt in de verzameling te vinden.

### De Index van een tabel in een Document zoeken

Soms moet u wijzigingen aanbrengen in een bepaalde tabel in een document. Om dit te doen, kunt u verwijzen naar een tabel door zijn index.

Het volgende codevoorbeeld toont hoe u de index van een tabel in een document kunt ophalen:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-table-index.h" >}}

### Zoek de Index van een rij in een tabel {#find-the-index-of-a-row-in-a-table}

Op dezelfde manier moet u mogelijk wijzigingen aanbrengen in een specifieke rij in een geselecteerde tabel. Om dit te doen, kunt u ook verwijzen naar een rij door zijn index.

Het volgende codevoorbeeld laat zien hoe u de index van een rij in een tabel kunt ophalen:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-row-index.h" >}}

### Zoek de Index van een cel in een Rij {#find-the-index-of-a-cell-in-a-row}

Ten slotte moet u mogelijk wijzigingen aanbrengen in een specifieke cel, en u kunt dit ook doen met celindex.

Het volgende codevoorbeeld laat zien hoe u de index van een cel op een Rij kunt ophalen:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-cell-index.h" >}}

## Werken met kolommen

In het Aspose.Words Document Object Model (DOM) bestaat het [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) knooppunt uit [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) knooppunten en vervolgens [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) knooppunten. In het `Document` objectmodel van Aspose.Words, zoals in Word documenten, is er dus geen concept van een kolom.

De tabelrijen in Microsoft Word en Aspose.Words zijn volledig onafhankelijk en de basiseigenschappen en bewerkingen zijn alleen opgenomen in de rijen en cellen van de tabel. Dit geeft tabellen de mogelijkheid om een aantal interessante attributen te hebben:

- Elke tabelrij kan een heel ander aantal cellen hebben
- Verticaal kunnen de cellen van elke rij verschillende breedtes hebben
- Het is mogelijk om tabellen met verschillende rijformaten en het aantal cellen te verbinden

Alle bewerkingen die op kolommen worden uitgevoerd, zijn eigenlijk "snelkoppelingen" die de bewerking uitvoeren door gezamenlijk rijcellen zodanig te veranderen dat het lijkt alsof ze op kolommen worden toegepast. Dat wil zeggen, U kunt bewerkingen op kolommen uitvoeren door simpelweg over dezelfde celindex van de tabelrij te herhalen.

Het volgende codevoorbeeld vereenvoudigt dergelijke bewerkingen door een facade-klasse te bewijzen die de cellen verzamelt die een "kolom" van een tabel vormen:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "column-class.h" >}}

Het volgende codevoorbeeld laat zien hoe u een lege kolom in een tabel invoegt:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "insert-blank-column.h" >}}

Het volgende codevoorbeeld toont hoe u een kolom uit een tabel in een document verwijdert:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "remove-column.h" >}}

## Rijen opgeven als Koprijen

U kunt ervoor kiezen om de eerste rij in de tabel als koprij alleen op de eerste pagina of op elke pagina te herhalen als de tabel in meerdere is verdeeld. In Aspose.Words kunt u de koprij op elke pagina herhalen met de eigenschap [HeadingFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_headingformat/).

U kunt ook meerdere koprijen markeren als deze rijen zich na elkaar aan het begin van de tabel bevinden. Hiervoor moet u de eigenschappen **HeadingFormat** op deze rijen toepassen.

{{% alert color="primary" %}}

Merk op dat Koprijen niet werken in geneste tabellen. Dat wil zeggen, als u een tabel in een andere tabel hebt, heeft deze instelling geen effect. Het is een beperking van Microsoft Word die dit niet toestaat, niet Aspose.Words.

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe u een tabel kunt maken met Koprijen die op Volgende pagina ' s worden herhaald:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "repeat-rows-on-subsequent-pages.h" >}}

## Voorkomen dat tabellen en Rijen Over pagina ' s heen breken

Er zijn momenten waarop de inhoud van een tabel niet over pagina ' s moet worden verdeeld. Als een titel bijvoorbeeld boven een tabel staat, moeten de titel en de tabel altijd samen op dezelfde pagina worden gehouden om de juiste uitstraling te behouden.

Er zijn twee afzonderlijke technieken die nuttig zijn om deze functionaliteit te bereiken:

- `Allow row break across pages`, dat wordt toegepast op tabelrijen
- `Keep with next`, dat wordt toegepast op alinea ' s in tabelcellen

Standaard zijn de bovenstaande eigenschappen uitgeschakeld.

### Voorkomen dat een Rij Over pagina ' s heen breekt {#keep-a-row-from-breaking-across-pages}

Dit houdt in dat inhoud in de cellen van een rij niet over een pagina wordt gesplitst. In Microsoft Word kan dit worden gevonden onder Tabeleigenschappen als de optie "rij toestaan om over pagina 's te breken". In Aspose.Words wordt dit gevonden onder het [RowFormat](hhttps://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/) object van een [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) als de eigenschap [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_allowbreakacrosspages/).

Het volgende codevoorbeeld laat zien hoe u het breken van rijen over pagina ' s voor elke rij in een tabel uitschakelt:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "row-format-disable-break-across-pages.h" >}}

### Voorkomen dat een tabel Over pagina ' s {#keep-a-table-from-breaking-across-pages}heen breekt

Als u wilt voorkomen dat de tabel Over pagina ' s wordt gesplitst, moeten we opgeven dat de inhoud in de tabel bij elkaar moet blijven.

Hiervoor gebruikt Aspose.Words een methode waarmee gebruikers een tabel kunnen selecteren en de parameter [KeepWithNext](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_keepwithnext/) voor elke alinea in de tabelcellen kunnen inschakelen. De uitzondering is de laatste alinea in de tabel, die moet worden ingesteld op false.

Het volgende codevoorbeeld laat zien hoe u een tafel kunt instellen om op dezelfde pagina bij elkaar te blijven:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "keep-table-together.h" >}}
