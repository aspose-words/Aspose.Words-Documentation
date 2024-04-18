---
title: Tabelopmaak in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Formatteren toepassen
linktitle: Formatteren toepassen
description: "Tabelopmaak in details met behulp van Python. Gebruik Python om elk deel van de tabel te formatteren."
type: docs
weight: 70
url: /nl/python-net/applying-formatting/
---

Elk element van een tabel kan met verschillende opmaak worden toegepast. Bijvoorbeeld, tabelopmaak zal worden toegepast op de hele tabel, rij opmaak op slechts bepaalde rijen, celopmaak op slechts bepaalde cellen.

Aspose.Words levert een rijk API ophalen en toepassen op een tabel. U kunt de [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/), en [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/) knooppunten om de opmaak in te stellen.

In dit artikel zullen we bespreken hoe formatteren toe te passen op verschillende tabelknooppunten en welke tabelopmaakinstellingen Aspose.Words steun.

## Formatteren toepassen op verschillende nodes

In deze sectie zullen we kijken naar het toepassen van formattering op verschillende tabelknooppunten.

### Tabelniveauopmaak

Om opmaak toe te passen op een tabel, kunt u de beschikbare eigenschappen gebruiken op de overeenkomstige **Table** knooppunt met behulp van de [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/), en [TableCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/tablecollection/) lessen.

{{% alert color="primary" %}}

Merk op dat de tabel ten minste één rij moet hebben voordat de tabeleigenschappen kunnen worden toegepast. Dit betekent dat bij het bouwen van een tafel met de [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), deze opmaak moet worden gedaan na de eerste oproep naar [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/#default), of nadat de eerste rij aan de tabel is toegevoegd, of wanneer knooppunten rechtstreeks in de tabel worden ingevoegd DOM.

{{% /alert %}}

De foto's hieronder tonen een voorstelling van de **Table** formatteren functies in Microsoft Word en de overeenkomstige eigenschappen in Aspose.Words.

![formattin-features-table-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-1.png)




![formatting-table-options-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-2.png)

Het volgende voorbeeld van code laat zien hoe je een omtrekrand op een tabel kunt toepassen:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "apply-outline-border.py" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe een tabel te bouwen met alle randen ingeschakeld (raster):

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "build-table-with-borders.py" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Rijniveauopmaak

**Rijen** formatteren kan worden gecontroleerd met behulp van de [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/), [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/row/row_format/), en [RowCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/rowcollection/) lessen.

{{% alert color="primary" %}}

Merk op dat een **Row** kan alleen een kind knoop van een **Table**. Tegelijkertijd moet er tenminste één **Cell** in de **Row** zodat formatteren kan worden toegepast.

{{% /alert %}}

De foto's hieronder tonen een voorstelling van de **Row** formatteren functies in Microsoft Word en de overeenkomstige eigenschappen in Aspose.Words.

![formatting-row-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-3.png)


Het volgende voorbeeld van code laat zien hoe de tabel rij opmaak te wijzigen:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "modify-row-formatting.py" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Celniveau-indeling

Cell-level opmaak wordt gecontroleerd door de [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/cell_format/), en [CellCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/cellcollection/) lessen.

{{% alert color="primary" %}}

Merk op dat een **Cell** kan alleen een kind knoop van een **Row**. Tegelijkertijd moet er tenminste één [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) in de **Cell** zodat formatteren kan worden toegepast.

Naast de **Paragraph**, u kunt ook een **Table** in een **Cell**.

{{% /alert %}}

De foto's hieronder tonen een voorstelling van de **Cell** formatteren functies in Microsoft Word en de overeenkomstige eigenschappen in Aspose.Words.

![formatting-cell-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-4.png)




![auto-formatting-cell-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-5.png)


Het volgende voorbeeld van code laat zien hoe je de opmaak van een tabelcel kunt wijzigen:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "modify-cell-formatting.py" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe u de hoeveelheid ruimte (in punten) kunt instellen die aan de linker/boven/rechts/onderkant van de cel moet worden toegevoegd:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "cell-padding.py" >}}

## Rijhoogtes opgeven

De eenvoudigste manier om de rijhoogte in te stellen is door de **DocumentBuilder**. Gebruik van de juiste **RowFormat** eigenschappen, kunt u de standaard hoogte instellen of een andere hoogte toepassen voor elke rij in de tabel.

In Aspose.Words, de hoogte van de tabelrij wordt bepaald door:

- de rij hoogte eigenschap [Height](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/height/)
- de hoogte regel eigenschap voor de gegeven rij [HeightRule](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/height_rule/)

Tegelijkertijd kan voor elke rij een andere hoogte worden ingesteld, zodat u de tabelinstellingen breed kunt controleren.

{{% alert color="primary" %}}

Regel opties voor het specificeren van de hoogte van een object kan worden ingesteld met behulp van de [HeightRule](https://reference.aspose.com/words/python-net/aspose.words/heightrule/) Lijst.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe je een tabel maakt die één cel bevat en rijopmaak toepast:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "apply-row-formatting.py" >}}

## Tabel- en celbreedten specificeren

Een tabel in een Microsoft Word document biedt verschillende manieren om de tabel en individuele cellen te wijzigen. Deze eigenschappen kunnen aanzienlijke controle over het uiterlijk en gedrag van de tafel, zodat Aspose.Words ondersteunt het gedrag van tabellen, zoals in Microsoft Word.

Het is belangrijk te weten dat tabelelementen verschillende eigenschappen hebben die van invloed kunnen zijn op de berekening van de breedtes van de totale tabel, evenals individuele cellen:

- Voorkeursbreedte op tafel
- Voorkeursbreedte op individuele cellen
- Automatisering op tafel toestaan

Dit artikel geeft aan hoe de verschillende tabelbreedte berekening eigenschappen werken en hoe u volledige controle over tabelbreedte berekening te krijgen. Dit is
bijzonder nuttig om te weten wanneer de tabelindeling niet zoals verwacht lijkt.

{{% alert color="primary" %}}

In de meeste gevallen wordt de voorkeurscel aanbevolen dan de tafelbreedte. De voorkeur celbreedte is meer in overeenstemming met de DOCX-formaat specificatie en de Aspose.Words model.

De celbreedte is eigenlijk een berekende waarde voor het DOCX-formaat. De werkelijke celbreedte kan van veel dingen afhangen. Bijvoorbeeld, het veranderen van de paginaranden of de voorkeurstabelbreedte kan de werkelijke celbreedte beïnvloeden.

De gewenste celbreedte is een celeigenschap die in het document wordt opgeslagen. Het hangt nergens van af en verandert niet wanneer u de tabel of andere eigenschappen van de cel verandert.

{{% /alert %}}

{{% alert color="primary" %}}

Alle eigenschappen en methoden beschreven in dit artikel zijn gerelateerd aan hoe tabellen werken in Microsoft Word. Dus in de meeste gevallen, als je het opbouwen van uw tabel programmatisch, maar vinden het moeilijk om de gewenste tabel te creëren, kunt u in plaats daarvan proberen visueel creëren in Microsoft Word eerst en vervolgens gewoon kopieer de formattering waarden in uw toepassing.

{{% /alert %}}

### Hoe wordt voorkeursbreedte gebruikt

De gewenste breedte van een tabel of individuele cellen wordt gedefinieerd door de voorkeursbreedte eigenschap, dat is de grootte die een element streeft te passen. Dat wil zeggen, de voorkeursbreedte kan worden gespecificeerd voor de gehele tabel of voor individuele cellen. In sommige situaties is het misschien niet mogelijk om deze breedte precies te passen, maar de werkelijke breedte zal in de meeste gevallen dicht bij deze waarde zijn.

De juiste voorkeursbreedte type en waarde worden ingesteld met behulp van de methoden van de [PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/) klasse:

- de [Auto](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) methode voor het specificeren van de auto of de gewenste breedte
- de [FromPercent](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) methode om een percentagebreedte op te geven
- de [FromPoints](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) methode om de breedte in punten te specificeren

De afbeeldingen hieronder tonen een weergave van de * voorkeursbreedte instelling functies* in Microsoft Word en de overeenkomstige eigenschappen in Aspose.Words.

![formatting-table-properties-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-8.png)

Een voorbeeld van hoe deze opties worden toegepast op een echte tabel in een document is te zien in onderstaande afbeelding.

![tables-applying-options-python](/words/python-net/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

Voordat u de gewenste breedte in een tabel kunt gebruiken, moet u ervoor zorgen dat de tabel ten minste één rij bevat. Dit komt omdat dergelijke tafelopmaak in een Microsoft Word document of in een document aangemaakt in Aspose.Words wordt opgeslagen in de rijen van de tabel.

{{% /alert %}}

#### Geef de voorkeurstabel of celbreedte

In Aspose.Words, tafel en cel breedtes zijn ingesteld met behulp van de [Table.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/table/preferred_width/) de [CellFormat.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/preferred_width/) eigendom, met opties beschikbaar in de [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) Lijst:

- **Auto**, die gelijk is aan geen voorkeursbreedte ingesteld
- **Percent**, die past bij het element ten opzichte van de beschikbare ruimte in het venster of containergrootte, en herrekent de waarde wanneer de beschikbare breedte verandert
- **Points**, die overeenkomt met een element van de opgegeven breedte in punten

{{% alert color="primary" %}}

Standaard kan een tabel worden beschreven als zijnde gemonteerd op 100% van de beschikbare ruimte op de pagina. In dit geval betekent dit dat de tabel zal proberen om de ruimte tussen de linker en rechter pagina marges in te nemen.

{{% /alert %}}

Gebruik van de [Table.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/table/preferred_width/) eigenschap zal zijn voorkeursbreedte ten opzichte van de container aanpassen: pagina, tekst kolom, of buitenste tabel cel als het een geneste tabel.

Het volgende voorbeeld van code laat zien hoe u de tabel automatisch kunt aanpassen aan 50% van de paginabreedte:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-page-width.py" >}}

Gebruik van de [CellFormat.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/preferred_width/) eigenschap op een bepaalde cel zal de gewenste breedte aanpassen.

Het volgende voorbeeld van code laat zien hoe u de verschillende voorkeursbreedte instellingen kunt instellen:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "preferred-width-settings.py" >}}

#### Voorkeursbreedte type en waarde vinden

U kunt de [Type](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/type/) en [Value](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/value/) eigenschappen om de gewenste breedte details van de gewenste tabel of cel te vinden.

Het volgende voorbeeld van code laat zien hoe u het gewenste breedtetype van een tabelcel kunt ophalen:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "retrieve-preferred-width-type.py" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Automatisch instellen

De [AllowAutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_auto_fit/) eigenschap laat cellen in een tabel groeien en krimpen volgens een geselecteerd criterium. U kunt bijvoorbeeld de **Automatisch aanpassen aan venster** optie om de tabel aan de breedte van de pagina, en de **Automatisch aanpassen aan inhoud** optie om elke cel te laten groeien of krimpen volgens de inhoud.

{{% alert color="primary" %}}

Bovendien heeft de **AllowAutoFit** eigenschap kan worden gebruikt in combinatie met een voorkeur celbreedte om een cel te formatteren die automatisch past bij de inhoud, maar ook een initiële breedte heeft. Indien nodig kan de celbreedte dan voorbij deze breedte groeien.

{{% /alert %}}

Standaard, Aspose.Words voegt een nieuwe tabel in met **Automatisch aanpassen aan venster**. De tabel wordt aangepast aan de beschikbare paginabreedte. Om de grootte van een tafel te wijzigen, kunt u de [AutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/auto_fit/#autofitbehavior) methode. Deze methode accepteert een [AutoFitBehavior](https://reference.aspose.com/words/python-net/aspose.words.tables/autofitbehavior/) Een opsomming die aangeeft welk type autofit op de tabel wordt toegepast.

Het is belangrijk om te weten dat de autofit methode is eigenlijk een snelkoppeling die verschillende eigenschappen toe te passen op de tabel op hetzelfde moment. Dit zijn eigenschappen die de tabel het waargenomen gedrag geven. We zullen deze eigenschappen bespreken voor elke autofit optie.

Het volgende codevoorbeeld laat zien hoe je een tabel instelt om elke cel te krimpen of te laten groeien volgens de inhoud:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "allow-auto-fit.py" >}}

#### Tabel automatisch aanpassen aan venster

Wanneer het automatisch aanpassen van een venster wordt toegepast op een tabel, worden de volgende bewerkingen uitgevoerd achter de schermen:

1. De **Table.AllowAutoFit** eigenschap is ingeschakeld om de grootte van kolommen automatisch te wijzigen om de beschikbare inhoud te passen, met behulp van een **Table.PreferredWidth** waarde van 100%
2. **CellFormat.PreferredWidth** wordt verwijderd uit alle tabelcellen
      {{% alert color="primary" %}}
   Merk op dat dit enigszins verschilt van de Microsoft Word gedrag, waarbij de voorkeursbreedte van elke cel wordt ingesteld op geschikte waarden op basis van hun huidige grootte en inhoud. Aspose.Words werkt de gewenste breedte niet bij, zodat ze gewoon worden gewist in plaats daarvan.
      {{% /alert %}}
3. Kolombreedten worden in mindering gebracht voor de huidige tabelinhoud Het eindresultaat is een tabel die de gehele beschikbare breedte beslaat
4. De breedte van de kolommen in de tabel verandert automatisch als de gebruiker de tekst bewerkt

Het volgende voorbeeld van code laat zien hoe u een tabel automatisch aan de paginabreedte kunt aanpassen:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-page-width.py" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### Tabel automatisch aanpassen aan inhoud

Wanneer de tabel automatisch wordt aangepast, worden de volgende stappen achter de schermen uitgevoerd:

1. De **Table.AllowAutoFit** eigenschap is ingeschakeld om elke cel automatisch te wijzigen volgens de inhoud

2. De voorkeurstabelbreedte wordt verwijderd uit **Table.PreferredWidth**, **CellFormat.PreferredWidth** wordt verwijderd voor elke tabelcel
      {{% alert color="primary" %}}

   Merk op dat deze autofit optie verwijdert de gewenste breedte van cellen, net als in Microsoft Word. Als u de kolomgroottes wilt behouden en de kolommen wilt verhogen of verlagen om de inhoud te passen, moet u de **Table.AllowAutoFit** eigendom aan **True** op zichzelf in plaats van het gebruik van de autofit snelkoppeling.{{% /alert %}}

3. Kolombreedten worden in mindering gebracht voor de huidige tabelinhoud: het eindresultaat is een tabel waarin de kolombreedten en de breedte van de gehele tabel automatisch worden aangepast zodat de inhoud het beste bij de gebruiker past

Het volgende voorbeeld van code laat zien hoe u een tabel automatisch op de inhoud kunt plaatsen:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-contents.py" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### Automatisch aanpassen in tabel uitschakelen en vaste kolombreedtes gebruiken

Als een tabel autofit heeft uitgeschakeld en vaste kolombreedtes worden gebruikt, worden de volgende stappen uitgevoerd:

1. **Table.AllowAutoFit** eigenschap is uitgeschakeld zodat kolommen niet groeien of krimpen naar hun inhoud
2. De voorkeursbreedte van de gehele tabel wordt verwijderd uit **Table.PreferredWidth**, **CellFormat.PreferredWidth** wordt verwijderd uit alle tabelcellen
3. Het eindresultaat is een tabel waarvan de kolombreedte wordt bepaald door de [CellFormat.Width](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/width/) eigenschap, en waarvan de kolommen niet automatisch worden verkleind wanneer de gebruiker tekst invoert of wanneer de pagina wordt aangepast

{{% alert color="primary" %}}

Merk op dat als geen breedte is opgegeven voor **CellFormat.Width**, de standaardwaarde van één inch (72 punten) wordt gebruikt.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe autofit kan worden uitgeschakeld en de vaste breedte voor de opgegeven tabel kan worden ingeschakeld:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-fixed-column-widths.py" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### De volgorde van voorrang bij het berekenen van celbreedte

Aspose.Words stelt gebruikers in staat om de breedte van een tabel of cel te definiëren via meerdere objecten, waaronder [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/) De [Width](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/width/q) eigenschap is meestal overgebleven van eerdere versies, maar het is nog steeds nuttig voor het vereenvoudigen van het instellen van de celbreedte.

Het is belangrijk te weten dat de **CellFormat.Width** eigenschap werkt anders afhankelijk van welke van de andere breedte eigenschappen al bestaan in de tabel.

Aspose.Words gebruikt de volgende volgorde voor het berekenen van celbreedtes:

|  Beschikking |  Eigenschap |  Omschrijving |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_auto_fit/) wordt bepaald |  Als **AutoFit** is ingeschakeld:<br/>- de tabel kan verder groeien dan de gewenste breedte om de inhoud te kunnen verwerken.<br/>- elke wijziging in de **CellFormat.Width** waarde wordt genegeerd en de cel past in plaats daarvan bij de inhoud |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) met een waarde van **Points** of **Percent** |  **CellFormat.Width** wordt genegeerd |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) met een waarde van **Auto** |  De waarde van **CellFormat.Width** wordt gekopieerd en wordt de voorkeursbreedte van de cel (in punten) |

{{% alert color="primary" %}}

Wijzigingen in de breedte worden niet bijgewerkt in de gewenste breedte en moeten in plaats daarvan op de gewenste breedte worden toegepast.

{{% /alert %}}

{{% alert color="primary" %}}

Geef tijdens het maken van een vaste tabelindeling de celbreedte op. Een cel zonder breedte kan niet opgeslagen worden in DOC-formaat. Andere documentformaten dan DOC, zoals DOCX, kunnen in principe cellen zonder breedte opslaan in een vaste tabelindeling.

{{% /alert %}}

## Spatiëring tussen cellen toestaan

U kunt extra ruimte tussen tafelcellen krijgen of instellen, vergelijkbaar met de optie "Сell space" in Microsoft Word. Dit kan met behulp van de [AllowCellSpacing](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_cell_spacing/) eigendom.

Een voorbeeld van hoe deze opties worden toegepast op een echte tabel in een document is te zien in onderstaande afbeelding.

<img src="/words/python-net/applying-formatting/applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-python" style="width:500px"/>

Het volgende voorbeeld van code laat zien hoe je de afstand tussen cellen kunt instellen:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "allow-cell-spacing.py" >}}

## Randen en schaduwen toepassen

Grenzen en schaduw kunnen worden aangebracht op de gehele tabel met behulp van [Table.SetBorder](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_border/), [Table.SetBorders](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_borders/) en [Table.SetShading](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_shading/), of alleen naar specifieke cellen met behulp van [CellFormat.Borders](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/borders/) en [CellFormat.Shading](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/shading/). Bovendien kunnen rijranden worden ingesteld met [RowFormat.Borders](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/borders/), maar schaduw kan niet op deze manier worden toegepast.

De afbeeldingen hieronder tonen de rand en schaduw instellingen in Microsoft Word en de overeenkomstige eigenschappen in Aspose.Words.

![formatting-border-line-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-6.png)

![formatting-cell-color-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-7.png)

Het volgende voorbeeld van code laat zien hoe een tabel en cel met verschillende randen en schaduwen te formatteren:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "format-table-and-cell-with-different-borders.py" >}}