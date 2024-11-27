---
title: Een tabel maken in C++
second_title: Aspose.Words voor C++
articleTitle: Een tabel maken
linktitle: Een tabel maken
description: "Verschillende manieren om tabellen te maken met C++. Maak een tabel in C++ voor uw document. Voeg een tabel toe in C++."
type: docs
weight: 20
url: /nl/cpp/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words stelt gebruikers in staat om tabellen in een document helemaal opnieuw te maken en biedt verschillende methoden om dit te doen. Dit artikel bevat details over het toevoegen van opgemaakte tabellen aan uw document met behulp van elke methode, evenals een vergelijking van elke methode aan het einde van het artikel.

## Standaard Tabelstijlen

De nieuw aangemaakte tabel krijgt standaardwaarden die vergelijkbaar zijn met die in Microsoft Word:

| Tabel Eigenschap | Standaard in Aspose.Words |
| :- | :- |
| `Border Style` | `Single` |
| `Border Width` | 1/2 pt |
| `Border Color` | `Black` |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` | `True` |

{{% alert color="primary" %}}

Een tabel kan inline zijn als deze strak is geplaatst, of zwevend als deze overal op de pagina kan worden geplaatst. Standaard maakt Aspose.Words altijd inline tabellen.

{{% /alert %}}

## Een tabel maken met DocumentBuilder

In Aspose.Words kunnen gebruikers een tabel in een document maken met de [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/). Het basisalgoritme voor het maken van een tabel is als volgt::

1. Begin de tabel met [StartTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starttable/)
2. Voeg een cel toe aan de tabel met [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/) – hiermee wordt automatisch een nieuwe rij gestart
3. Gebruik optioneel de eigenschap [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/) om celopmaak op te geven
4. De celinhoud invoegen met behulp van de juiste **DocumentBuilder** - methoden zoals [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertImage](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertimage/) en andere
5. Herhaal stap 2-4 totdat de rij is voltooid
6. Roep [EndRow](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endrow/) aan om de huidige rij te beëindigen
7. Gebruik optioneel de eigenschap [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/) om rijopmaak op te geven
8. Herhaal stap 2-7 totdat de tabel is voltooid
9. Roep [EndTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endtable/) aan om de tabel af te maken

{{% alert color="primary" %}}

Belangrijke details:

- [StartTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starttable/) kan ook binnen een cel worden aangeroepen, in welk geval het begint met het maken van een geneste tabel binnen de cel.
- Na het aanroepen van [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/) wordt een nieuwe cel gemaakt en alle inhoud die u met andere methoden van de [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) - klasse toevoegt, wordt aan de huidige cel toegevoegd. Als u een nieuwe cel in dezelfde rij wilt maken, roept u **InsertCell** opnieuw op.
- Als **InsertCell** direct na [EndRow](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endrow/) en het einde van een rij wordt aangeroepen, gaat de tabel verder op een nieuwe rij.
- De [EndTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endtable/) methode om de tabel te beëindigen mag slechts één keer aangeroepen worden na het aanroepen van **EndRow**. Aanroepen van **EndTable** verplaatst de cursor van de huidige cel naar de positie direct na de tabel.

{{% /alert %}}

Het proces van het maken van een tabel is duidelijk te zien in de volgende afbeelding:

![creating-table-process](creating-table-process.jpg)

Het volgende codevoorbeeld laat zien hoe u een eenvoudige tabel maakt met **DocumentBuilder** met standaardopmaak:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "create-simple-table.h" >}}

Het volgende codevoorbeeld laat zien hoe u een opgemaakte tabel maakt met DocumentBuilder:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "formatted-table.h" >}}

Het volgende codevoorbeeld laat zien hoe u een geneste tabel invoegt met DocumentBuilder:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "nested-table.h" >}}

## Een tabel maken via DOM (Document Object Model)

U kunt tabellen rechtstreeks in DOM invoegen door een nieuw [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) knooppunt op een specifieke positie toe te voegen.

Houd er rekening mee dat onmiddellijk na het maken van de tabelknoop de tabel zelf volledig leeg zal zijn, dat wil zeggen dat deze nog geen rijen en cellen bevat. Als u rijen en cellen in een tabel wilt invoegen, voegt u de juiste [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) en [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) onderliggende knooppunten toe aan de DOM.

{{% alert color="primary" %}}

Deze methode voor het maken van een tabel gebruikt dezelfde standaardwaarden als bij het gebruik van **DocumentBuilder**.

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe u een nieuwe tabel helemaal opnieuw kunt maken door de juiste onderliggende knooppunten aan de documentstructuur toe te voegen:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "insert-table-directly.h" >}}

## Een tabel maken van HTML

Aspose.Words ondersteunt het invoegen van inhoud in een document vanuit een HTML bron met behulp van de [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/) methode. De invoer kan een volledige HTML pagina zijn of slechts een gedeeltelijk fragment.

Met de methode **InsertHtml** kunnen gebruikers tabellen invoegen in het document via tabellabels zoals `<table>`, `<tr>`, `<td>`.

Het volgende codevoorbeeld laat zien hoe u een tabel invoegt in een document vanuit een tekenreeks met HTML - tags:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "insert-table-from-html.h" >}}

## Een kopie van een bestaande tabel invoegen

Er zijn vaak momenten waarop u een tabel moet maken op basis van een reeds bestaande tabel in een document. De eenvoudigste manier om een tabel te dupliceren met behoud van alle opmaak is om de Tabelknooppunt te klonen met behulp van de methode [Clone](https://reference.aspose.com/words/cpp/aspose.words/node/clone/).

Dezelfde techniek kan worden gebruikt om kopieën van een bestaande rij of cel aan een tabel toe te voegen.

Het volgende codevoorbeeld toont hoe een tabel te dupliceren met behulp van knoopconstructeurs:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "clone-complete-table.h" >}}

Het volgende codevoorbeeld laat zien hoe u de laatste rij van een tabel kunt klonen en aan de tabel kunt toevoegen:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "clone-last-row.h" >}}

Als u tabellen in een document wilt maken die dynamisch groeien met elke record uit uw gegevensbron, wordt de bovenstaande methode niet aanbevolen. In plaats daarvan wordt de gewenste output gemakkelijker bereikt door Mail merge met regio ' s te gebruiken. Meer informatie over deze techniek vindt u in de [Mail Merge Met regio ' s](/words/cpp/types-of-mail-merge-operations/) sectie.

## Manieren om een tabel te maken vergelijken

Aspose.Words biedt verschillende methoden om nieuwe tabellen in een document te maken. Elke methode heeft zijn eigen voor-en nadelen, dus de keuze van welke te gebruiken hangt vaak af van de specifieke situatie.

Laten we deze manieren van het maken van tabellen nader bekijken en hun voor-en nadelen vergelijken:

| Methode | Voordeel | Nadelen |
| :- | :- | :- |
| `DocumentBuilder` | De standaardmethode voor het invoegen van tabellen en andere documentinhoud | Soms moeilijk om meerdere soorten tabellen tegelijkertijd te maken met dezelfde builder-instantie |
| Via DOM | Past beter in de omringende code die knooppunten direct in de DOM maakt en invoegt zonder een **DocumentBuilder**te gebruiken | De tabel wordt "leeg" gemaakt: voordat u de meeste bewerkingen uitvoert, moet u [EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words.tables/table/ensureminimum/) aanroepen om eventuele ontbrekende kindknooppunten te maken |
| Van HTML | Kan een nieuwe tabel maken van HTML bron met behulp van tags zoals `<table>`, `<tr>`, `<td>` | Niet alle mogelijke Microsoft Word tabelindelingen kunnen worden toegepast op HTML |
| Klonen van een bestaande tabel | U kunt een kopie van een bestaande tabel maken met behoud van alle rij-en celopmaak | De juiste kindknooppunten moeten worden verwijderd voordat de tabel klaar is voor gebruik |
