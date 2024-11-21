---
title: Tabelopmaak in Java
second_title: Aspose.Words voor Java
articleTitle: Tabelopmaak toepassen
linktitle: Tabelopmaak toepassen
description: "Tabelopmaak in details. Gebruik Java om elk deel van de tabel te formatteren."
type: docs
weight: 70
url: /nl/java/applying-formatting/
timestamp: 2024-01-27-14-07-04
---

Elk element van een tabel kan met verschillende opmaak worden toegepast. Bijvoorbeeld, tabelopmaak zal worden toegepast op de hele tabel, rij opmaak op slechts bepaalde rijen, celopmaak op slechts bepaalde cellen.

Aspose.Words levert een rijk API ophalen en toepassen op een tabel. U kunt de [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), en [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) knooppunten om opmaak in te stellen.

In dit artikel, zullen we praten over hoe je formatteren toe te passen op verschillende tabel knooppunten en welke tabel formattering instellingen Aspose.Words steun.

## Formatteren toepassen op verschillende knooppunten

In deze sectie zullen we kijken naar het toepassen van opmaak op verschillende tabelknooppunten.

### Tabelniveauopmaak

Om opmaak toe te passen op een tabel kunt u de beschikbare eigenschappen op de overeenkomstige **Table** knooppunt met behulp van de [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/), en [TableCollection](https://reference.aspose.com/words/java/com.aspose.words/tablecollection/) lessen.

{{% alert color="primary" %}}

Merk op dat de tabel ten minste één rij moet hebben voordat de tabeleigenschappen kunnen worden toegepast. Dit betekent dat bij het bouwen van een tafel met de [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), deze opmaak moet worden gedaan na de eerste oproep naar [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell()), of na de eerste rij wordt toegevoegd aan de tabel, of wanneer knooppunten direct worden ingevoegd in de DOM.

{{% /alert %}}

De foto's hieronder tonen een voorstelling van de **Table** opmaakfuncties in Microsoft Word en hun overeenkomstige eigenschappen in Aspose.Words.

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-1.png)

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-2.png)

Het volgende voorbeeld van een code laat zien hoe een omtrekrand op een tabel kan worden toegepast:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-outline-border.java" >}}

Het volgende voorbeeld van code laat zien hoe je een tabel kunt bouwen met alle randen ingeschakeld (raster):

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "build-table-with-borders.java" >}}

### Opmaak van rijniveau

Rij-niveau** formatteren kan worden gecontroleerd met behulp van de [Row](https://reference.aspose.com/words/java/com.aspose.words/row/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), en [RowCollection](https://reference.aspose.com/words/java/com.aspose.words/rowcollection/) lessen.

{{% alert color="primary" %}}

Merk op dat een **Row** kan alleen een kind knooppunt van een **Table**. Tegelijkertijd moet er tenminste één **Cell** in de **Row** zodat opmaak kan worden toegepast.

{{% /alert %}}

De foto's hieronder tonen een voorstelling van de **Row** opmaakfuncties in Microsoft Word en hun overeenkomstige eigenschappen in Aspose.Words.

![apply-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-3.png)

Het volgende voorbeeld van code laat zien hoe u de tabelrij formattering kunt wijzigen:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-row-formatting.java" >}}

### Opmaak celniveau

Cell-level opmaak wordt gecontroleerd door de [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/), [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/), en [CellCollection](https://reference.aspose.com/words/java/com.aspose.words/cellcollection/) lessen.

{{% alert color="primary" %}}

Merk op dat een **Cell** kan alleen een kind knooppunt van een **Row**. Tegelijkertijd moet er tenminste één [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) in de **Cell** zodat opmaak kan worden toegepast.

Naast de **Paragraph**, u kunt ook een **Table** in een **Cell**.

{{% /alert %}}

De foto's hieronder tonen een voorstelling van de **Cell** opmaakfuncties in Microsoft Word en hun overeenkomstige eigenschappen in Aspose.Words.

![apply-formatting-to-cell-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-4.png)

![apply-auto-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-5.png)

Het volgende voorbeeld van code laat zien hoe u de opmaak van een tabelcel kunt wijzigen:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-cell-formatting.java" >}}

Het volgende voorbeeld van code laat zien hoe u de hoeveelheid ruimte (in punten) kunt instellen die aan de linker/boven/rechts/onderkant van de cel moet worden toegevoegd:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "cell-padding.java" >}}

## Rijhoogten specificeren

De eenvoudigste manier om de rijhoogte in te stellen is de **DocumentBuilder**. Gebruik van de juiste **RowFormat** eigenschappen, kunt u de standaard hoogte instellen of toepassen een andere hoogte voor elke rij in de tabel.

In Aspose.Words, de hoogte van de tabelrij wordt bepaald door:

- de rij hoogte eigenschap [Height](https://reference.aspose.com/words/java/com.aspose.words/row/format#Height)
- de hoogte regel eigenschap voor de gegeven rij [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/row/format#HeightRule)

Tegelijkertijd kan voor elke rij een andere hoogte worden ingesteld. Dit stelt u in staat om de tabelinstellingen wijd te controleren.

{{% alert color="primary" %}}

Regelopties voor het opgeven van de hoogte van een object kunnen worden ingesteld met behulp van de [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/heightrule/) Velden.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe je een tabel maakt die één cel bevat en rijopmaak toepast:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-row-formatting.java" >}}

## Tabel- en celbreedtes specificeren

Een tabel in een Microsoft Word document biedt verschillende manieren om de tabel en individuele cellen te wijzigen. Deze eigenschappen kunnen aanzienlijke controle over het uiterlijk en gedrag van de tafel, zodat Aspose.Words ondersteunt het gedrag van tabellen, zoals in Microsoft Word.

Het is belangrijk om te weten dat tabelelementen verschillende eigenschappen vertonen die van invloed kunnen zijn op de wijze waarop de breedtes van de totale tabel, evenals individuele cellen, worden berekend:

- Voorkeursbreedte op de tafel
- Voorkeursbreedte op individuele cellen
- Automatisch op de tafel laten passen

Dit artikel geeft aan hoe de verschillende tabelbreedte berekening eigenschappen werken en hoe u volledige controle over de tabelbreedte berekening te krijgen. Dit is
vooral nuttig om te weten wanneer de tabelindeling niet zoals verwacht lijkt.

{{% alert color="primary" %}}

In de meeste gevallen wordt de voorkeurscel aanbevolen dan de tafelbreedte. De voorkeur celbreedte is meer in overeenstemming met de DOCX-formaat specificatie en de Aspose.Words model.

De celbreedte is eigenlijk een berekende waarde voor het DOCX-formaat. De werkelijke celbreedte kan van veel dingen afhangen. Bijvoorbeeld, het veranderen van de paginaranden of de voorkeurstabelbreedte kan de werkelijke celbreedte beïnvloeden.

De gewenste celbreedte is een celeigenschap die in het document wordt opgeslagen. Het hangt nergens van af en verandert niet wanneer u de tabel of andere eigenschappen van de cel verandert.

{{% /alert %}}

{{% alert color="primary" %}}

Alle eigenschappen en methoden beschreven in dit artikel zijn gerelateerd aan hoe tabellen werken in Microsoft Word. Dus in de meeste gevallen, als je het opbouwen van uw tabel programmatisch, maar vinden het moeilijk om de gewenste tabel te maken, kunt u in plaats daarvan proberen visueel creëren in Microsoft Word eerst en vervolgens gewoon kopieer de formattering waarden in uw toepassing.

{{% /alert %}}

### Hoe wordt voorkeursbreedte gebruikt

De gewenste breedte van een tabel of individuele cellen wordt gedefinieerd door de voorkeursbreedte eigenschap, dat is de grootte die een element streeft te passen. Dat wil zeggen, de voorkeursbreedte kan worden gespecificeerd voor de gehele tabel of voor individuele cellen. In sommige situaties is het misschien niet mogelijk om deze breedte precies te passen, maar de werkelijke breedte zal in de meeste gevallen dicht bij deze waarde zijn.

De juiste voorkeursbreedte type en waarde worden ingesteld met behulp van de methoden van de [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/) klasse:

- de [Auto](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#AUTO) veld om de auto of de gewenste breedte te specificeren
- de [FromPercent](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPercent-double) methode om een percentagebreedte op te geven
- de [FromPoints](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPoints-double) methode om de breedte in punten te specificeren

De afbeeldingen hieronder tonen een weergave van de * voorkeursbreedte instelling functies* in Microsoft Word en hun overeenkomstige eigenschappen in Aspose.Words.

![formatting-table-properties-aspose-words-java](/words/java/applying-formatting/applying-formatting-8.png)

Een voorbeeld van hoe deze opties worden toegepast op een echte tabel in een document is te zien in onderstaande afbeelding.

![table-applied-options-java](/words/java/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

Voordat u de gewenste breedte in een tabel kunt gebruiken, moet u ervoor zorgen dat de tabel ten minste één rij bevat. Dit komt omdat dergelijke tabel formatteren in een Microsoft Word document of in een document aangemaakt in Aspose.Words wordt opgeslagen in de rijen van de tabel.

{{% /alert %}}

#### Geef de voorkeurstabel of celbreedte

In Aspose.Words, tafel en cel breedtes zijn ingesteld met behulp van de [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) de [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) eigendom, met opties beschikbaar in de [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) Lijst:

- **Auto**, die gelijk is aan geen voorkeursbreedte ingesteld
- **Percent**, die past bij het element ten opzichte van de beschikbare ruimte in het venster of containergrootte, en herberekent de waarde wanneer de beschikbare breedte verandert
- **Points**, die overeenkomt met een element van de opgegeven breedte in punten

{{% alert color="primary" %}}

Standaard kan een tabel worden beschreven als gemonteerd op 100% van de beschikbare ruimte op de pagina. In dit geval betekent dit dat de tabel zal proberen om de ruimte tussen de linker en rechter pagina marges in te nemen.

{{% /alert %}}

Gebruik van de [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) eigenschap zal zijn voorkeursbreedte ten opzichte van de container aanpassen: pagina, tekst kolom, of buitenste tabel cel als het een geneste tabel.

Het volgende voorbeeld van code laat zien hoe u de tabel automatisch kunt aanpassen tot 50% van de paginabreedte:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-page-width.java" >}}

Gebruik van de [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) eigenschap op een bepaalde cel zal zijn voorkeursbreedte aanpassen.

Het volgende voorbeeld van code laat zien hoe u de verschillende voorkeursbreedte instellingen kunt instellen:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "preferred-width-settings.java" >}}

#### Voorkeursbreedte type en waarde zoeken

U kunt de [Type](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getType) en [Value](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getValue) eigenschappen om de gewenste breedte details van de gewenste tabel of cel te vinden.

Het volgende voorbeeld van code laat zien hoe u het gewenste breedtetype van een tabelcel kunt ophalen:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "retrieve-preferred-width-type.java" >}}

### Automatisch instellen

De [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) eigenschap laat cellen in een tabel groeien en krimpen volgens een geselecteerd criterium. U kunt bijvoorbeeld de **Automatisch aanpassen aan venster** optie om de tabel aan de breedte van de pagina, en de **Automatisch aanpassen aan inhoud** optie om elke cel te laten groeien of krimpen volgens de inhoud.

{{% alert color="primary" %}}

Bovendien heeft de **AllowAutoFit** eigenschap kan worden gebruikt in combinatie met een voorkeur celbreedte om een cel te formatteren die automatisch past bij de inhoud, maar ook een initiële breedte heeft. Indien nodig kan de celbreedte dan voorbij deze breedte groeien.

{{% /alert %}}

Standaard, Aspose.Words voegt een nieuwe tabel toe met **Automatisch aanpassen aan venster**. De tabel wordt aangepast aan de beschikbare paginabreedte. Om de grootte van een tafel te wijzigen, kunt u de [AutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#autoFit-int) methode. Deze methode accepteert een [AutoFitBehavior](https://reference.aspose.com/words/java/com.aspose.words/autofitbehavior/) Lijst die aangeeft welk type autofit op de tabel wordt toegepast.

Het is belangrijk om te weten dat de autofit methode is eigenlijk een snelkoppeling die verschillende eigenschappen van toepassing is op de tabel op hetzelfde moment. Dit zijn eigenschappen die de tabel het waargenomen gedrag geven. We zullen deze eigenschappen bespreken voor elke autofit optie.

Het volgende code voorbeeld laat zien hoe je een tabel instelt om elke cel te krimpen of te laten groeien volgens de inhoud:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-auto-fit.java" >}}

We zullen de volgende tabel gebruiken om de verschillende auto fit instellingen als demonstratie toe te passen.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-1.png" alt="apply-different-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

#### Tabel automatisch aanpassen aan venster

Wanneer het automatisch aanpassen van een venster wordt toegepast op een tabel, worden de volgende bewerkingen uitgevoerd achter de schermen:

1. De **Table.AllowAutoFit** eigenschap is ingeschakeld om de grootte van kolommen automatisch te wijzigen om aan de beschikbare inhoud te passen, met behulp van een **Table.PreferredWidth** waarde van 100%
2. **CellFormat.PreferredWidth** wordt verwijderd uit alle tabelcellen
      {{% alert color="primary" %}}
   Merk op dat dit iets anders is dan de Microsoft Word gedrag, waarbij de voorkeursbreedte van elke cel is ingesteld op geschikte waarden op basis van hun huidige grootte en inhoud. Aspose.Words werkt de gewenste breedte niet bij, zodat ze gewoon worden gewist in plaats daarvan.
      {{% /alert %}}
3. Kolombreedten worden in mindering gebracht voor de huidige tabelinhoud Het eindresultaat is een tabel die de gehele beschikbare breedte beslaat
4. De breedte van de kolommen in de tabel verandert automatisch als de gebruiker de tekst bewerkt

Het volgende voorbeeld van code laat zien hoe u een tabel automatisch aan de paginabreedte kunt aanpassen:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-page-width.java" >}}

Een voorbeeld van hoe deze opties worden toegepast op de bovenstaande tabel is te zien in de afbeelding hieronder.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-2.png" alt="autofit-table-aspose-words-java" style="width:500px"/>

#### Tabel automatisch aanpassen aan inhoud

Wanneer de tabel automatisch is aangepast, worden de volgende stappen achter de schermen uitgevoerd:

1. De **Table.AllowAutoFit** eigenschap is ingeschakeld om elke cel automatisch te wijzigen volgens de inhoud

2. De voorkeurstabelbreedte wordt verwijderd uit **Table.PreferredWidth**, **CellFormat.PreferredWidth** wordt verwijderd voor elke tabelcel
      {{% alert color="primary" %}}

   Merk op dat deze autofit optie verwijdert de gewenste breedte van cellen, net als in Microsoft Word. Als u de kolomgroottes wilt behouden en de kolommen wilt verhogen of verkleinen om de inhoud te passen, moet u de **Table.AllowAutoFit** eigendom aan **True** op zichzelf in plaats van het gebruik van de autofit snelkoppeling.{{% /alert %}}

3. Kolombreedten worden in mindering gebracht voor de huidige tabelinhoud: het eindresultaat is een tabel waarin de kolombreedtes en de breedte van de gehele tabel automatisch worden aangepast zodat de inhoud het beste past als de gebruiker de tekst bewerkt

Het volgende voorbeeld van code laat zien hoe u een tabel automatisch op de inhoud kunt monteren:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-contents.java" >}}

Een voorbeeld van hoe deze opties worden toegepast op de bovenstaande tabel is te zien in de afbeelding hieronder.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-3.png" alt="resize-column-autofit-settings-aspose-words-java" style="width:500px"/>

#### Automatisch aanpassen in tabel uitschakelen en vaste kolombreedtes gebruiken

Als een tabel autofit is uitgeschakeld en vaste kolombreedtes worden gebruikt, worden de volgende stappen uitgevoerd:

1. **Table.AllowAutoFit** eigenschap is uitgeschakeld zodat kolommen niet groeien of krimpen naar hun inhoud
2. De voorkeursbreedte van de gehele tabel wordt verwijderd uit **Table.PreferredWidth**, **CellFormat.PreferredWidth** wordt verwijderd uit alle tabelcellen
3. Het eindresultaat is een tabel waarvan de kolombreedte wordt bepaald door de [CellFormat.Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) eigenschap, en waarvan de kolommen niet automatisch worden verkleind wanneer de gebruiker tekst invoert of wanneer de pagina wordt aangepast

{{% alert color="primary" %}}

Merk op dat als er geen breedte is opgegeven voor **CellFormat.Width**, de standaardwaarde van één inch (72 punten) wordt gebruikt.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe u autofit kunt uitschakelen en vaste breedte voor de opgegeven tabel kunt inschakelen:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-fixed-column-widths.java" >}}

Een voorbeeld van hoe deze opties worden toegepast op de bovenstaande tabel is te zien in de afbeelding hieronder.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-4.png" alt="disable-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

### Volgorde van precedence bij het berekenen van celbreedte

Aspose.Words stelt gebruikers in staat om de breedte van een tabel of cel te definiëren via meerdere objecten, waaronder [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) De [Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) eigenschap is meestal overgebleven van eerdere versies, maar het is nog steeds handig voor het vereenvoudigen van het instellen van de celbreedte.

Het is belangrijk te weten dat de **CellFormat.Width** eigenschap werkt anders afhankelijk van welke van de andere breedte eigenschappen al bestaan in de tabel.

Aspose.Words gebruikt de volgende volgorde voor het berekenen van celbreedtes:

|  Beschikking |  Eigenschap |  Omschrijving |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) wordt bepaald |  Als **AutoFit** is ingeschakeld:<br/>- de tabel kan verder groeien dan de gewenste breedte om de inhoud te kunnen verwerken.<br/>- elke wijziging in de **CellFormat.Width** waarde wordt genegeerd en de cel past op de inhoud in plaats daarvan |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) met een waarde van **Points** of **Percent** |  **CellFormat.Width** wordt genegeerd |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) met een waarde van **Auto** |  De waarde van **CellFormat.Width** wordt gekopieerd en wordt de voorkeursbreedte van de cel (in punten) |

{{% alert color="primary" %}}

Wijzigingen in de breedte worden niet bijgewerkt in de gewenste breedte en moeten in plaats daarvan op de gewenste breedte worden toegepast.

{{% /alert %}}

{{% alert color="primary" %}}

Geef tijdens het maken van een vaste tabelindeling de celbreedte op. Een cel zonder breedte kan niet opgeslagen worden in DOC-formaat. Andere documentformaten dan DOC, zoals DOCX, kunnen in principe cellen zonder breedte opslaan in een vaste tabelindeling.

{{% /alert %}}

## Spatiëring tussen cellen toestaan

U kunt extra ruimte tussen tafelcellen krijgen of instellen, vergelijkbaar met de optie "Сell space" in Microsoft Word. Dit kan met behulp van de [AllowCellSpacing](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowCellSpacing) eigendom.

Een voorbeeld van hoe deze opties worden toegepast op een echte tabel in een document is te zien in onderstaande afbeelding.

<img src="/words/java/applying-formatting/applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-java" style="width:500px"/>

Het volgende voorbeeld van code laat zien hoe je de afstand tussen cellen kunt instellen:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-cell-spacing.java" >}}

## Randen en schaduwen toepassen

Grenzen en schaduwen kunnen worden aangebracht op de gehele tabel met behulp van [Table.SetBorder](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorder-int-int-double-java.awt.Color-boolean), [Table.SetBorders](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorders-int-double-java.awt.Color) en [Table.SetShading](https://reference.aspose.com/words/java/com.aspose.words/table/#setShading-int-java.awt.Color-java.awt.Color), of alleen naar specifieke cellen met behulp van [CellFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getBorders) en [CellFormat.Shading](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getShading). Bovendien kunnen rijranden worden ingesteld met behulp van [RowFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getBorders), maar schaduw kan niet op deze manier worden toegepast.

De afbeeldingen hieronder tonen de rand en schaduw instellingen in Microsoft Word en hun overeenkomstige eigenschappen in Aspose.Words.

![apply-borders-shading-aspose-words-java-1](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-6.png)


![apply-borders-shading-aspose-words-java-2](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-7.png)


Het volgende voorbeeld van code laat zien hoe een tabel en cel met verschillende randen en schaduwen te formatteren:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "format-table-and-cell-with-different-borders.java" >}}
