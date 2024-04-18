---
title: Hoe maak je een tabel in C#
second_title: Aspose.Words voor .NET
articleTitle: Een tabel aanmaken
linktitle: Een tabel aanmaken
description: "Een gids over hoe je een tafel te maken in C# op verschillende manieren. Tabel aanmaken in C# voor uw document."
type: docs
weight: 20
url: /nl/net/create-a-table/
---

Aspose.Words stelt gebruikers in staat om tabellen te maken in een document vanaf nul en biedt verschillende methoden om dit te doen. Dit artikel geeft details over hoe u geformatteerde tabellen toe te voegen aan uw document met behulp van elke methode, evenals een vergelijking van elke methode aan het einde van het artikel.

## Standaard tabelstijlen

De nieuw aangemaakte tabel wordt standaardwaarden gegeven die vergelijkbaar zijn met die in Microsoft Word:

|  Tabeleigenschappen |  Standaard in Aspose.Words |
|  :---------------------  |  :----------------------  |
|  `Border Style`            |  `Single`  |
|  `Border Width`            |  `1/2 pt`                   |
|  `Border Color`            |  `Black`  |
|  `Left and Right Padding`  |  `5.4 pts`                  |
|  `AutoFit Mode`            |  `AutoFit to Window`        |
|  `Allow AutoFit`           |  `True`  |

{{% alert color="primary" %}}

Een tabel kan inline zijn als het is strak geplaatst, of zweven als het kan worden geplaatst overal op de pagina. Standaard, Aspose.Words creëert altijd inline tafels.

{{% /alert %}}

## Een tabel aanmaken met DocumentBuilder

In Aspose.Words, gebruikers kunnen een tabel maken in een document met behulp van de [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/). Het basisalgoritme voor het maken van een tabel is als volgt:

1. Start de tabel met [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/)
2. Voeg een cel toe aan de tabel met behulp van [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/) Dit start automatisch een nieuwe rij
3. Optioneel, gebruik de [CellFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/cellformat/) eigenschap om celopmaak op te geven
4. De celinhoud invoegen met behulp van de juiste **DocumentBuilder** methoden zoals [Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/), [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/), en andere
5. Herhaal stap 2-4 totdat de rij voltooid is
6. Oproep [EndRow](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endrow/) om de huidige rij te beëindigen
7. Optioneel, gebruik de [RowFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/rowformat/) eigenschap om rijopmaak op te geven
8. Herhaal stap 2-7 totdat de tabel volledig is
9. Oproep [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) om de tafel te bouwen

{{% alert color="primary" %}}

Belangrijke details:

* [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/) kan ook worden genoemd in een cel, in welk geval het begint met de creatie van een geneste tabel in de cel.
* Na het bellen [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/), een nieuwe cel wordt aangemaakt, en elke inhoud die u toevoegt met behulp van andere methoden van de [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) klasse wordt toegevoegd aan de huidige cel. Om een nieuwe cel op dezelfde rij te maken, aanroepen **InsertCell** Alweer.
* If **InsertCell** onmiddellijk na [EndRow](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endrow/) en het einde van een rij, de tabel zal doorgaan op een nieuwe rij.
* De [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) methode om de tabel te beëindigen moet slechts één keer worden aangeroepen na het bellen **EndRow**. Bellen **EndTable** verplaatst de cursor van de huidige cel naar de positie direct na de tabel.

{{% /alert %}}

Het proces van het maken van een tabel is duidelijk te zien in de volgende afbeelding:

![creating-table-process](/words/net/create-a-table/creating-table-process.jpg)

Het volgende voorbeeld van code laat zien hoe u een eenvoudige tabel maakt met behulp van **DocumentBuilder** met standaardopmaak:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "create-simple-table.cs" >}}

Het volgende voorbeeld van code laat zien hoe u een geformatteerde tabel kunt maken met behulp van DocumentBuilder:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "formatted-table.cs" >}}

Het volgende voorbeeld van code laat zien hoe u een geneste tabel invoegt met behulp van DocumentBuilder:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "nested-table.cs" >}}

## Een tabel aanmaken via DOM (Document Object Model)

U kunt tabellen direct invoegen in de DOM door een nieuwe [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) knooppunt op een specifieke positie.

Houd er rekening mee dat direct na het aanmaken van de tabel node, de tabel zelf volledig leeg zal zijn, dat wil zeggen dat het nog geen rijen en cellen bevat. Om rijen en cellen in een tabel in te voegen, voeg de juiste [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) en [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) kind knooppunten naar de DOM.

{{% alert color="primary" %}}

Deze methode van het maken van een tabel gebruikt dezelfde tabel standaard als bij het gebruik van de **DocumentBuilder**.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe je een nieuwe tabel vanaf nul kunt bouwen door de juiste kindknooppunten toe te voegen aan de documentboom:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-directly.cs" >}}

## Een tabel aanmaken van HTML

Aspose.Words ondersteunt het invoegen van inhoud in een document van een HTML bron met behulp van de [InsertHtml](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthtml/) methode. De invoer kan een volledige HTML-pagina zijn of slechts een gedeeltelijk knipsel.

Gebruik van de **InsertHtml** methode, kunnen gebruikers tabellen in het document via tabel tags zoals `<table>`, `<tr>`, `<td>`.

Het volgende voorbeeld van code laat zien hoe je een tabel in een document van een string met HTML-tags invoegt:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-from-html.cs" >}}

## Een kopie van een bestaande tabel invoegen

Vaak moet je een tabel maken op basis van een reeds bestaande tabel in een document. De eenvoudigste manier om een tabel te dupliceren met behoud van alle opmaak is om de tabel knooppunt te klonen met behulp van de [Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/) methode.

Dezelfde techniek kan worden gebruikt om kopieën van een bestaande rij of cel aan een tabel toe te voegen.

Het volgende voorbeeld van code laat zien hoe een tabel te dupliceren met behulp van node constructors:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-complete-table.cs" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe je de laatste rij van een tabel kloont en toevoegt aan de tabel:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-last-row.cs" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Als u kijkt naar het maken van tabellen in een document dat dynamisch groeit met elke record van uw gegevensbron, dan wordt bovenstaande methode niet geadviseerd. In plaats daarvan wordt de gewenste output gemakkelijker bereikt door het gebruik van Mail merge de regio's. U kunt meer over deze techniek leren in de [Mail Merge met regio's](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions) Section.

## Vergelijk manieren om een tabel aan te maken

Aspose.Words biedt verschillende methoden om nieuwe tabellen aan te maken in een document. Elke methode heeft zijn eigen voor- en nadelen, zodat de keuze van welke te gebruiken vaak afhankelijk is van de specifieke situatie.

Laten we eens nader kijken naar deze manieren om tabellen te maken en hun voors en nadelen te vergelijken:

|  Methode | Voordelen |  Nadelen |
|  :-  |  :-  |  :-  |
| Via `DocumentBuilder` | De standaardmethode voor het invoegen van tabellen en andere documentinhoud | Soms moeilijk om veel soorten tabellen tegelijk met dezelfde bouwer instantie te creëren |
| Via DOM |  Past beter met de omringende code die knooppunten direct in de DOM zonder gebruik van een **DocumentBuilder** | De tabel is aangemaakt "leeg": voordat u de meeste operaties uitvoert, moet u bellen [EnsureMinimum](https://reference.aspose.com/words/net/aspose.words.tables/table/ensureminimum/) om ontbrekende kindknooppunten aan te maken |
| Van HTML | Kan een nieuwe tabel maken van HTML bron met tags als `<table>`, `<tr>`, `<td>` | Niet allemaal mogelijk Microsoft Word tabelformaten kunnen worden toegepast op HTML |
| Een bestaande tabel klonen | U kunt een kopie maken van een bestaande tabel met behoud van alle rij en celopmaak | De juiste kindernodes moeten worden verwijderd voordat de tabel klaar is voor gebruik |