---
title: Tabelopmaak in C++
second_title: Aspose.Words voor C++
articleTitle: Opmaak Toepassen
linktitle: Opmaak Toepassen
description: "Tabelopmaak in details met behulp van C++. C++ gebruiken om elk deel van de tabel op te maken."
type: docs
weight: 70
url: /nl/cpp/applying-formatting/
timestamp: 2024-10-21-11-17-44
---

Elk element van een tabel kan met verschillende opmaak worden toegepast. Tabelopmaak wordt bijvoorbeeld toegepast op de hele tabel, rijopmaak op alleen bepaalde rijen en celopmaak op alleen bepaalde cellen.

Aspose.Words biedt een rijke API om opmaak op te halen en toe te passen op een tabel. U kunt de knooppunten [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/) en [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) gebruiken om de opmaak in te stellen.

In dit artikel zullen we het hebben over het toepassen van opmaak op verschillende tabelknooppunten en welke tabelopmaakinstellingen Aspose.Words ondersteunt.

## Opmaak toepassen op verschillende knooppunten

In deze sectie zullen we kijken naar het toepassen van opmaak op verschillende tabelknooppunten.

### Opmaak Op Tabelniveau

Als u opmaak wilt toepassen op een tabel, kunt u de eigenschappen gebruiken die beschikbaar zijn op het corresponderende knooppunt **Table** met de klassen [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/) en [TableCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/tablecollection/).

{{% alert color="primary" %}}

Merk op dat de tabel ten minste één rij moet hebben voordat de Tabeleigenschappen kunnen worden toegepast. Dit betekent dat bij het bouwen van een tabel met de [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), deze opmaak moet worden gedaan na de eerste aanroep naar [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/), of nadat de eerste rij aan de tabel is toegevoegd, of wanneer knooppunten rechtstreeks in de DOM worden ingevoegd.

{{% /alert %}}

De onderstaande afbeeldingen tonen een weergave van de **Table** opmaakfuncties in Microsoft Word en hun overeenkomstige eigenschappen in Aspose.Words.

![formattin-features-table-level-aspose-words-cpp](applying-formatting-1.png)

![formatting-table-options-aspose-words-cpp](applying-formatting-2.png)

Het volgende codevoorbeeld laat zien hoe u een overzichtskader toepast op een tabel:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-outline-border.h" >}}

Het volgende codevoorbeeld laat zien hoe u een tabel bouwt met alle randen ingeschakeld (raster):

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "build-table-with-borders.h" >}}

### Opmaak Op Rijniveau

**Rij-niveau**

{{% alert color="primary" %}}

Merk op dat een **Row** alleen een kindknoop van een **Table** kan zijn. Tegelijkertijd moet er ten minste één **Cell** in de **Row** zijn, zodat opmaak erop kan worden toegepast.

{{% /alert %}}

De onderstaande afbeeldingen tonen een weergave van de **Row** opmaakfuncties in Microsoft Word en hun overeenkomstige eigenschappen in Aspose.Words.

![formatting-row-level-aspose-words-cpp](applying-formatting-3.png)

Het volgende codevoorbeeld laat zien hoe u de opmaak van de tabelrij kunt wijzigen:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-row-formatting.h" >}}

### Opmaak Op Celniveau

Opmaak op celniveau wordt geregeld door de klassen [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) en [CellCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/cellcollection/).

{{% alert color="primary" %}}

Merk op dat een **Cell** alleen een kindknoop van een **Row** kan zijn. Tegelijkertijd moet er ten minste één [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) in de **Cell** staan, zodat opmaak erop kan worden toegepast.

Naast de **Paragraph** kunt u ook een **Table** invoegen in een **Cell**.

{{% /alert %}}

De onderstaande afbeeldingen tonen een weergave van de **Cell** opmaakfuncties in Microsoft Word en hun overeenkomstige eigenschappen in Aspose.Words.

![formatting-cell-level-aspose-words-cpp](applying-formatting-4.png)

![auto-formatting-cell-level-aspose-words-cpp](applying-formatting-5.png)

Het volgende codevoorbeeld laat zien hoe u de opmaak van een tabelcel kunt wijzigen:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-cell-formatting.h" >}}

Het volgende codevoorbeeld laat zien hoe u de hoeveelheid ruimte (in punten) kunt instellen om toe te voegen aan de linker/boven/rechts/onderkant van de inhoud van de cel:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "cell-padding.h" >}}

## Rijhoogtes Opgeven

De eenvoudigste manier om de rijhoogte in te stellen is door de **DocumentBuilder** te gebruiken. Met behulp van de juiste eigenschappen van **RowFormat** kunt u de standaardhoogte instellen of een andere hoogte toepassen voor elke rij in de tabel.

In Aspose.Words wordt de rijhoogte van de tabel bepaald door:

- de rijhoogte eigenschap - [Height](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_height/)
- de eigenschap hoogteregel voor de gegeven rij - [HeightRule](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_heightrule/)

Tegelijkertijd kan voor elke rij een andere hoogte worden ingesteld – Hiermee kunt u de tafelinstellingen op grote schaal regelen.

{{% alert color="primary" %}}

Regelopties voor het opgeven van de hoogte van een object kunnen worden ingesteld met behulp van de [HeightRule](https://reference.aspose.com/words/cpp/aspose.words/heightrule/) - opsomming.

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe u een tabel maakt die een enkele cel bevat en rijopmaak toepast:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-row-formatting.h" >}}

## Tabel-en Celbreedtes opgeven

Een tabel in een Microsoft Word - document biedt verschillende manieren om de grootte van de tabel en afzonderlijke cellen te wijzigen. Deze eigenschappen maken een aanzienlijke controle mogelijk over het uiterlijk en het gedrag van de tabel, zodat Aspose.Words het gedrag van tabellen ondersteunt, zoals in Microsoft Word.

Het is belangrijk om te weten dat tabelelementen verschillende eigenschappen hebben die van invloed kunnen zijn op de manier waarop de breedtes van de totale tabel, evenals individuele cellen, worden berekend:

- Gewenste breedte op tafel
- Gewenste breedte op individuele cellen
- Autofit op tafel toestaan

In dit artikel wordt beschreven hoe de verschillende eigenschappen voor de berekening van de tabelbreedte werken en hoe u volledige controle krijgt over de berekening van de tabelbreedte. Dit is
vooral handig om te weten in gevallen waarin de tabelindeling niet wordt weergegeven zoals verwacht.

{{% alert color="primary" %}}

In de meeste gevallen wordt de voorkeurscel aanbevolen dan de tabelbreedte. De gewenste celbreedte komt meer overeen met de DOCX - opmaakspecificatie en het Aspose.Words - model.

De celbreedte is eigenlijk een berekende waarde voor de indeling DOCX. De werkelijke celbreedte kan van veel dingen afhangen. Het wijzigen van de paginamarges of de gewenste tabelbreedte kan bijvoorbeeld van invloed zijn op de werkelijke celbreedte.

De gewenste celbreedte is een celeigenschap die is opgeslagen in het document. Het is nergens afhankelijk van en verandert niet wanneer u de tabel of andere eigenschappen van de cel wijzigt.

{{% /alert %}}

{{% alert color="primary" %}}

Alle eigenschappen en methoden die in dit artikel worden beschreven, hebben betrekking op de manier waarop tabellen in Microsoft Word werken. Dus in de meeste gevallen, als u uw tabel programmatisch bouwt, maar het moeilijk vindt om de gewenste tabel te maken, kunt u in plaats daarvan proberen deze eerst visueel te maken in Microsoft Word en vervolgens eenvoudig de opmaakwaarden in uw toepassing kopiëren.

{{% /alert %}}

### Hoe de Voorkeursbreedte te gebruiken

De gewenste breedte van een tabel of afzonderlijke cellen wordt gedefinieerd door de eigenschap voorkeursbreedte, de grootte die een element probeert te passen. Dat wil zeggen, de voorkeursbreedte kan worden opgegeven voor de hele tabel of voor afzonderlijke cellen. In sommige situaties is het misschien niet mogelijk om deze breedte precies te passen, maar de werkelijke breedte zal in de meeste gevallen dicht bij deze waarde liggen.

Het gewenste breedtetype en de gewenste waarde worden ingesteld met behulp van de methoden van de klasse [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/):

- de [Auto](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/auto/) methode om auto of "geen voorkeursbreedte"op te geven
- de methode [FromPercent](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompercent/) om een percentagebreedte op te geven
- de methode [FromPoints](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompoints/) om de breedte in punten op te geven

De onderstaande afbeeldingen tonen een weergave van de *preferred width setting features* in Microsoft Word en hun overeenkomstige eigenschappen in Aspose.Words.

![formatting-table-properties-aspose-words-cpp](applying-formatting-8.png)

Een voorbeeld van hoe deze opties worden toegepast op een echte tabel in een document is te zien in de onderstaande afbeelding.

![todo:image_alt_text](applying-formatting-9.png)

{{% alert color="primary" %}}

Voordat u de gewenste breedte in een tabel kunt gebruiken, moet u ervoor zorgen dat de tabel ten minste één rij bevat. Dit komt omdat dergelijke tabelopmaak in een Microsoft Word - document of in een document dat in Aspose.Words is gemaakt, wordt opgeslagen in de rijen van de tabel.

{{% /alert %}}

#### Geef de gewenste tabel of celbreedte op

In Aspose.Words worden tabel - en celbreedtes ingesteld met behulp van de Eigenschap [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) en de eigenschap [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/), met opties beschikbaar in de opsomming van [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/):

- **Auto**, wat gelijk is aan geen voorkeursbreedte set
- **Percent**, dat past bij het element ten opzichte van de beschikbare ruimte in het venster of de containergrootte en de waarde opnieuw berekent wanneer de beschikbare breedte verandert
- **Points**, wat overeenkomt met een element van de opgegeven breedte in punten

{{% alert color="primary" %}}

Standaard kan een tabel worden beschreven als 100% van de beschikbare ruimte op de pagina. In dit geval betekent dit dat de tabel de ruimte tussen de linker-en rechtermarges van de pagina probeert in te nemen.

{{% /alert %}}

Met behulp van de eigenschap [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) wordt de gewenste breedte aangepast ten opzichte van de container: pagina, tekstkolom of buitenste tabelcel als het een geneste tabel is.

Het volgende codevoorbeeld laat zien hoe u de tabel instelt op 50% van de paginabreedte:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-to-page-width.h" >}}

Met behulp van de eigenschap [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/) op een bepaalde cel wordt de gewenste breedte aangepast.

Het volgende codevoorbeeld laat zien hoe u de verschillende voorkeursbreedte-instellingen instelt:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "preferred-width-settings.h" >}}

#### Zoek het gewenste Breedtetype en de gewenste waarde

U kunt de eigenschappen [Type](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) en [Value](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) gebruiken om de gewenste breedtedetails van de gewenste tabel of cel te vinden.

Het volgende codevoorbeeld toont hoe u het gewenste breedtetype van een tabelcel kunt ophalen:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "retrieve-preferred-width-type.h" >}}

### Hoe Autofit in te stellen

Met de eigenschap [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) kunnen cellen in een tabel groeien en krimpen volgens een geselecteerd criterium. U kunt bijvoorbeeld de optie **AutoFit to Window** gebruiken om de tabel aan te passen aan de breedte van de pagina en de optie **AutoFit to Content** om elke cel te laten groeien of krimpen op basis van de inhoud.

{{% alert color="primary" %}}

Bovendien kan de eigenschap **AllowAutoFit** worden gebruikt in combinatie met een gewenste celbreedte om een cel op te maken die automatisch past bij de inhoud, maar ook een initiële breedte heeft. Indien nodig kan de celbreedte dan voorbij deze breedte groeien.

{{% /alert %}}

Standaard voegt Aspose.Words een nieuwe tabel in met **AutoFit to Window**. De tabel wordt op maat gemaakt volgens de beschikbare paginabreedte. Als u het formaat van een tabel wilt wijzigen, kunt u de methode [AutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/autofit/) aanroepen. Deze methode accepteert een [AutoFitBehavior](https://reference.aspose.com/words/cpp/aspose.words.tables/autofitbehavior/) - opsomming die aangeeft welk type autofit op de tabel wordt toegepast.

Het is belangrijk om te weten dat de autofit-methode eigenlijk een snelkoppeling is die tegelijkertijd verschillende eigenschappen op de tabel toepast. Dit zijn eigenschappen die de tabel het waargenomen gedrag geven. We zullen deze eigenschappen bespreken voor elke autofit-optie.

Het volgende codevoorbeeld laat zien hoe een tabel moet worden opgesteld om elke cel te krimpen of te laten groeien volgens de inhoud ervan:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-auto-fit.h" >}}

#### AutoFit tabel naar Venster

Wanneer autofitting naar een venster op een tabel wordt toegepast, worden de volgende bewerkingen achter de schermen uitgevoerd:

1. De eigenschap **Table.AllowAutoFit** is ingeschakeld om automatisch de grootte van kolommen aan te passen aan de beschikbare inhoud, met een **Table.PreferredWidth** waarde van 100%
2. **CellFormat.PreferredWidth** wordt verwijderd uit alle tabelcellen
   {{% alert color="primary" %}}
   Merk op dat dit enigszins afwijkt van het gedrag Microsoft Word, waarbij de gewenste breedte van elke cel is ingesteld op de juiste waarden op basis van hun huidige grootte en inhoud. Aspose.Words werkt de gewenste breedte niet bij, zodat ze in plaats daarvan gewoon worden gewist.
   {{% /alert %}}
3. Kolombreedtes worden herberekend voor de huidige tabelinhoud - het eindresultaat is een tabel die de volledige beschikbare breedte beslaat
4. De breedte van de kolommen in de tabel verandert automatisch als de gebruiker de tekst bewerkt

Het volgende codevoorbeeld laat zien hoe u een tabel automatisch kunt koppelen aan de paginabreedte:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-page-width.h" >}}

#### AutoFit tabel naar inhoud

Wanneer de tabel automatisch de inhoud bevat, worden de volgende stappen achter de schermen uitgevoerd:

1. De eigenschap **Table.AllowAutoFit** is ingeschakeld om de grootte van elke cel automatisch aan te passen aan de inhoud ervan

2. De gewenste tabelbreedte wordt verwijderd uit **Table.PreferredWidth**, **CellFormat.PreferredWidth** wordt verwijderd voor elke tabelcel
   {{% alert color="primary" %}}

   Merk op dat deze optie Automatisch aanpassen de gewenste breedte uit cellen verwijdert, net als in Microsoft Word. Als u de kolomgrootte wilt behouden en de kolommen wilt vergroten of verkleinen om aan de inhoud te voldoen, moet u de eigenschap **Table.AllowAutoFit** op zichzelf instellen op **True** in plaats van de snelkoppeling automatisch instellen.{{% /alert %}}

3. Kolombreedtes worden opnieuw berekend voor de huidige tabelinhoud – het eindresultaat is een tabel waarin de kolombreedtes en de breedte van de hele tabel automatisch worden aangepast om het beste bij de inhoud te passen terwijl de gebruiker de tekst bewerkt

Het volgende codevoorbeeld laat zien hoe u een tabel automatisch kunt koppelen aan de inhoud ervan:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-contents.h" >}}

#### Schakel AutoFit uit in tabel en gebruik Vaste kolombreedtes

Als een tabel autofit heeft uitgeschakeld en in plaats daarvan vaste kolombreedtes worden gebruikt, worden de volgende stappen uitgevoerd:

1. Eigenschap **Table.AllowAutoFit** is uitgeschakeld zodat kolommen niet groeien of krimpen tot hun inhoud
2. De gewenste breedte van de hele tabel wordt verwijderd uit **Table.PreferredWidth**, **CellFormat.PreferredWidth** wordt verwijderd uit alle tabelcellen
3. Het eindresultaat is een tabel waarvan de kolombreedtes worden bepaald door de eigenschap [CellFormat.Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) en waarvan de kolommen niet automatisch worden aangepast wanneer de gebruiker tekst invoert of wanneer de pagina wordt aangepast

{{% alert color="primary" %}}

Merk op dat als er geen breedte is opgegeven voor **CellFormat.Width**, de standaardwaarde van één inch (72 punten) wordt gebruikt.

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe autofit uit te schakelen en vaste breedte in te schakelen voor de opgegeven tabel:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-fixed-column-widths.h" >}}

### Volgorde van voorrang bij het berekenen van de celbreedte

Aspose.Words stelt gebruikers in staat om de breedte van een tabel of cel te definiëren via meerdere objecten, waaronder [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) – de eigenschap [Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) is grotendeels overgebleven van eerdere versies, maar het is nog steeds nuttig voor het vereenvoudigen van het instellen van de celbreedte.

Het is belangrijk om te weten dat de eigenschap **CellFormat.Width** anders werkt, afhankelijk van welke van de andere breedte-eigenschappen al in de tabel bestaan.

Aspose.Words gebruikt de volgende volgorde voor het berekenen van celbreedtes:

| Bestelling | Eigenschap | Beschrijving |
| :- | :- | :- |
|  | [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) is bepaald | Als **AutoFit** is ingeschakeld:<br />- de tabel kan voorbij de gewenste breedte groeien om de inhoud te accommoderen-deze krimpt meestal niet onder de gewenste breedte<br />- elke wijziging in de waarde **CellFormat.Width** wordt genegeerd en de cel past in plaats daarvan op de inhoud |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) met een waarde van **Points** of **Percent** | **CellFormat.Width** wordt genegeerd |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) met een waarde van **Auto** | De waarde van **CellFormat.Width** wordt gekopieerd en wordt de gewenste breedte van de cel (in punten) |

{{% alert color="primary" %}}

Wijzigingen in de eigenschap width worden niet bijgewerkt in de gewenste breedte en moeten in plaats daarvan worden toegepast op de gewenste breedte.

{{% /alert %}}

{{% alert color="primary" %}}

Geef tijdens het maken van een vaste tabelindeling de celbreedte op. Een cel zonder breedte kan niet worden opgeslagen in de indeling DOC. Andere documentindelingen dan DOC, zoals DOCX, maken het in principe mogelijk cellen zonder breedte in een vaste tabelindeling op te slaan.

{{% /alert %}}

## Ruimte Tussen Cellen Toestaan

U kunt extra ruimte tussen tabelcellen krijgen of instellen, vergelijkbaar met de optie" Celafstand " in Microsoft Word. Dit kan gedaan worden met de eigenschap [AllowCellSpacing](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowcellspacing/).

Een voorbeeld van hoe deze opties worden toegepast op een echte tabel in een document is te zien in de onderstaande afbeelding.

<img src="applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-cpp" style="width:500px"/>

Het volgende codevoorbeeld laat zien hoe u de afstand tussen cellen instelt:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-cell-spacing.h" >}}

## Grenzen en schaduw toepassen

Randen en schaduw kunnen worden toegepast op de hele tabel met behulp van [Table.SetBorder](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborder/), [Table.SetBorders](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborders/) en [Table.SetShading](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setshading/), of alleen op specifieke cellen met behulp van [CellFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_borders/) en [CellFormat.Shading](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_shading/). Bovendien kunnen rijgrenzen worden ingesteld met behulp van [RowFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_borders/), maar schaduw kan niet op deze manier worden toegepast.

De onderstaande afbeeldingen tonen de rand - en Schaduwinstellingen in Microsoft Word en de bijbehorende eigenschappen in Aspose.Words.

![formatting-border-line-aspose-words-cpp](applying-formatting-6.png)

![formatting-cell-color-aspose-words-cpp](applying-formatting-7.png)

Het volgende codevoorbeeld laat zien hoe u een tabel en cel met verschillende randen en schaduwen kunt opmaken:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "format-table-and-cell-with-different-borders.h" >}}
