---
title: Gebruik `DocumentBuilder` Een document wijzigen
second_title: Aspose.Words voor Java
articleTitle: Gebruik `DocumentBuilder` Een document wijzigen
linktitle: Gebruik `DocumentBuilder` Een document wijzigen
type: docs
description: "Gebruik de documentbouwer om een document eenvoudig te wijzigen in Java."
weight: 20
url: /nl/java/using-documentbuilder-to-modify-a-document/
timestamp: 2024-10-21-11-17-44
---

## Opmaak specificeren

### Lettertypeopmaak

Huidige lettertypeopmaak wordt weergegeven door een `Font` object teruggegeven door de `DocumentBuilder.Font` eigendom. De `Font` klasse bevat een breed scala aan font eigenschappen mogelijk in Microsoft Word.

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
|  :-  |
Het volgende voorbeeld van code laat zien hoe je lettertypeopmaak instelt.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### Celopmaak

Celopmaak wordt gebruikt tijdens het bouwen van een tabel. Het wordt vertegenwoordigd door een `CellFormat` object teruggegeven door de `DocumentBuilder.CellFormat` eigendom. CellFormat inkapselt verschillende celeigenschappen zoals breedte of verticale uitlijning.

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
|  :-  |
Het volgende voorbeeld van code laat zien hoe u een tabel kunt maken die een enkele geformatteerde cel bevat.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### Rijopmaak

De huidige rijopmaak wordt bepaald door een `RowFormat` object dat door de `DocumentBuilder.RowFormat` eigendom. Het object bevat informatie over alle tabelrijopmaak.

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
|  :-  |
Delow code voorbeeld toont hoe je een tabel maakt die één cel bevat en rijopmaak toepast.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### Lijstopmaak

Aspose.Words maakt het gemakkelijk lijsten aan te maken door lijstopmaak toe te passen. DocumentBuilder levert de `DocumentBuilder.ListFormat` eigenschap die een `ListFormat` object. Dit object heeft verschillende methoden om een lijst te starten en te beëindigen en het streepje te verhogen/verlaagen.

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
|  :-  |
Er zijn twee algemene soorten lijsten in Microsoft Word: doodgeschoten en genummerd.

- Om een lijst met kogels te beginnen, bel [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault).
- Om een genummerde lijst te starten, bel [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault).

De bullet of nummer en formattering worden toegevoegd aan de huidige paragraaf en alle verdere alinea's gemaakt met behulp van **DocumentBuilder** tot [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) wordt opgeroepen om te stoppen met het formatteren van de lijst met kogels.

In Word-documenten kunnen lijsten bestaan uit maximaal negen niveaus. Lijstopmaak voor elk niveau geeft aan welke kogel of getal wordt gebruikt, linker streepje, ruimte tussen de kogel en tekst enz.

- Om het lijstniveau van de huidige paragraaf met één niveau te verhogen, roep [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent).
- Om het lijstniveau van de huidige paragraaf met één niveau te verlagen, aanroepen [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent).

De methoden veranderen het lijstniveau en passen de opmaakeigenschappen van het nieuwe niveau toe.

{{% alert color="primary" %}}

U kunt ook de [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) eigenschap om het lijstniveau voor de alinea te verkrijgen of in te stellen. De lijstniveaus zijn genummerd van 0 tot 8.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe je een multilevel lijst kunt bouwen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### Pagina instellen en sectie formatteren

Pagina-instellingen en sectie-eigenschappen zijn ingekapseld in de `PageSetup` object dat door de `DocumentBuilder.PageSetup` eigendom. Het object bevat alle pagina setup attributen van een sectie (linker marge, onderste marge, papiergrootte, enzovoort) als eigenschappen.

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
|  :-  |
Het volgende voorbeeld van code laat zien hoe u eigenschappen zoals paginagrootte en oriëntatie voor de huidige sectie kunt instellen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### Een stijl toepassen

Sommige formatteren objecten zoals Lettertype of AlineaFormat ondersteuning stijlen. Een enkele ingebouwde of door de gebruiker gedefinieerde stijl wordt vertegenwoordigd door een `Style` object dat de bijbehorende stijleigenschappen zoals naam, basisstijl, lettertype en paragraafopmaak van de stijl bevat, enzovoort.

Bovendien **Style** object geeft de [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) eigenschap die een locale-onafhankelijke stijl identifier vertegenwoordigd door een **Style.StyleIdentifier** Waarde van de opsomming. Het punt is dat de namen van ingebouwde stijlen in Microsoft Word zijn gelokaliseerd voor verschillende talen. Met behulp van een stijl identifier, kunt u de juiste stijl te vinden, ongeacht de document taal. De opsommingswaarden komen overeen met de Microsoft Word ingebouwde stijlen zoals Normaal , Rubriek 1 , Rubriek 2 enz. Alle door de gebruiker gedefinieerde stijlen zijn toegewezen aan **StyleIdentifier. Gebruikerswaarde**.

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
|  :-  |
Het volgende voorbeeld van code laat zien hoe je een alineastijl moet toepassen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### Grenzen en schaduw

Grenzen worden vertegenwoordigd door de grenscollectie. Dit is een verzameling van Grensobjecten die toegankelijk zijn per index of per grenstype. Randtype wordt vertegenwoordigd door de `BorderType` Samenvatting. Sommige waarden van de opsomming zijn van toepassing op meerdere of slechts één documentelement. Bijvoorbeeld, `BorderType.Bottom` is van toepassing op een alinea of tabelcel zolang `BorderType.DiagonalDown` geeft alleen de diagonale rand in een tabelcel aan.

Zowel de randcollectie als elke afzonderlijke rand hebben vergelijkbare eigenschappen zoals kleur, lijnstijl, lijnbreedte, afstand tot de tekst en optionele schaduw. Ze worden vertegenwoordigd door eigenschappen met dezelfde naam. U kunt verschillende grenstypes bereiken door eigendomswaarden te combineren. Bovendien zijn beide **BorderCollection** en **Border** objecten kunt u deze waarden terugzetten naar standaard door de [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) methode. Merk op dat wanneer randeigenschappen worden teruggezet naar standaardwaarden, de rand onzichtbaar is.

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
|  :-  |
De [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) klasse bevat schaduwattributen voor documentelementen. U kunt de gewenste schaduw textuur en de kleuren die worden toegepast op de achtergrond en voorgrond van het element instellen.

De schaduwstructuur is ingesteld op een [TextuurIndex](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) telling waarde die de toepassing van verschillende patronen op de **Shading** object. Om bijvoorbeeld een achtergrondkleur voor een documentelement in te stellen, gebruik de [TextuurIndex.TextuurSolid](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) waardeer en zet de voorgrond schaduwkleur naar gelang van het geval.

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
|  :-  |
Het onderstaande voorbeeld laat zien hoe je grenzen kunt toepassen en een alinea kunt camoufleren.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### Naar raster knippen

Aspose.Words biedt twee eigenschappen `ParagraphFormat.SnapToGrid` en `Font.SnapToGrid` om te krijgen en instellen paragraaf eigenschap snap naar raster

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### De cursor verplaatsen

### De huidige cursorpositie detecteren

U kunt verkrijgen waar de cursor van de bouwer momenteel op elk moment is geplaatst. De [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) eigenschap geeft de node terug die momenteel in deze bouwer is geselecteerd. De node is een direct kind van een paragraaf. Alle invoegacties die u uitvoert met behulp van `DocumentBuilder` zal invoegen voor de `DocumentBuilder.CurrentNode`. Wanneer de huidige alinea leeg is of de cursor vlak voor het einde van de alinea is geplaatst, `DocumentBuilder.CurrentNode` Geeft nul terug.

Ook kunt u de [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) eigenschap, die krijgt de paragraaf die momenteel is geselecteerd in deze **DocumentBuilder**. Delow code voorbeeld toont hoe u de huidige knooppunt in een documentbouwer kunt benaderen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### Verhuizen naar elke knoop (paragrafen en hun kinderen)

Als u een document object knooppunt, dat is een paragraaf of een direct kind van een paragraaf, kunt u de cursor van de bouwer wijzen naar deze knooppunt. Gebruik de [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) methode om dit uit te voeren.
Het volgende voorbeeld van code laat zien hoe je een cursorpositie naar een opgegeven knooppunt verplaatst.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### Verplaatsen naar het document Start/End

Als je naar het begin van het document moet gaan, bel dan [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart). Als je naar het einde van het document moet gaan, bel dan [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Verplaatsen naar een afdeling

Als u werkt met een document dat meerdere secties bevat, kunt u verplaatsen naar een gewenste sectie met behulp van [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int). Deze methode verplaatst de cursor naar het begin van een gespecificeerde sectie en accepteert de index van de vereiste sectie. Wanneer de sectie-index groter is dan of gelijk is aan 0, specificeert deze een index vanaf het begin van het document, waarbij 0 de eerste sectie is. Wanneer de sectie-index kleiner is dan 0, specificeert het een index vanaf het einde van het document met -1 als laatste sectie. Delow code voorbeeld laat zien hoe je een cursorpositie naar de gespecificeerde sectie verplaatst. U kunt het sjabloonbestand van dit voorbeeld downloaden van [Hier](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### Verplaatsen naar kop/voet

Wanneer u een aantal gegevens in een header of voettekst moet plaatsen, moet u daar eerst met behulp van [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int). De methode accepteert een HeaderFooterType tellingswaarde die het type header of voettekst identificeert waar de cursor moet worden verplaatst.

Als u headers en voetteksten wilt maken die anders zijn voor de eerste pagina, moet u de [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) eigendom aan **true**. Als u headers en voetteksten wilt maken die verschillen voor even en oneven pagina's, moet u deze instellen [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) tot **true**.

Als je terug moet naar het hoofdverhaal, gebruik[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) om uit de kop of voet te komen. Onderstaand voorbeeld maakt headers en footers aan in een document met DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Verplaatsing naar een paragraaf

Gebruik[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) om de cursor naar een gewenste paragraaf in de huidige sectie te verplaatsen. Je moet twee parameters doorgeven aan deze methode: paragraphIndex (de index van de paragraaf om naar te verplaatsen) en karakterIndex (de index van het teken in de alinea).

De navigatie wordt uitgevoerd in het huidige verhaal van de huidige sectie. Dat wil zeggen, als je de cursor verplaatst naar de primaire header van de eerste sectie, dan paragraphIndex specificeert de index van de paragraaf in die header van die sectie.

Wanneer paragraphIndex groter is dan of gelijk aan 0, specificeert het een index vanaf het begin van de sectie met 0 als eerste alinea. Wanneer paragraphIndex kleiner is dan 0, specificeert het een index vanaf het einde van de sectie met -1 als laatste alinea. De tekenindex kan momenteel alleen worden opgegeven als 0 om naar het begin van de alinea te gaan of -1 om naar het einde van de alinea te gaan. Het volgende voorbeeld van code laat zien hoe je een cursorpositie naar de gespecificeerde paragraaf verplaatst. U kunt het sjabloonbestand van dit voorbeeld downloaden van [Hier](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### Verplaatsen naar een tabelcel

Gebruik [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) als je de cursor naar een tabelcel in de huidige sectie moet verplaatsen. Deze methode accepteert vier parameters:

- tabelIndex - de index van de tabel om naar te verplaatsen.
- rijIndex - de index van de rij in de tabel.
- kolomIndex - de index van de kolom in de tabel.
- karakterIndex - de index van het teken in de cel.

De navigatie wordt uitgevoerd in het huidige verhaal van de huidige sectie.

Voor de indexparameters, wanneer de index groter is dan of gelijk aan 0, specificeert het een index vanaf het begin met 0 als het eerste element. Wanneer de index kleiner is dan 0, specificeert hij een index vanaf het einde met -1 als laatste element.

Merk ook op dat karakterIndex momenteel alleen 0 kan opgeven om naar het begin van de cel of -1 te verplaatsen naar het einde van de cel. Het volgende voorbeeld van code laat zien hoe je een cursorpositie naar de opgegeven tabelcel verplaatst. U kunt het sjabloonbestand van dit voorbeeld downloaden van [Hier](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Verplaatsen naar een bladwijzer

Bladwijzers worden vaak gebruikt om bepaalde plaatsen in het document te markeren waar nieuwe elementen moeten worden ingevoegd. Om naar een bladwijzer te gaan gebruiken [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String). Deze methode heeft twee overbelastingen. De eenvoudigste accepteert niets anders dan de naam van de bladwijzer waar de cursor moet worden verplaatst. Het volgende voorbeeld toont hoe je een cursorpositie naar een bladwijzer verplaatst.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

Deze overbelasting verplaatst de cursor naar een positie net na het begin van de bladwijzer met de opgegeven naam. Nog een overbelasting [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) verplaatst de cursor naar een bladwijzer met grotere precisie. Het accepteert twee extra booleaanse parameters:

- isStart bepaalt of de cursor naar het begin of naar het einde van de bladwijzer verplaatst moet worden.
- isAfter bepaalt of de cursor verplaatst moet worden na de start- of eindpositie van de bladwijzer, of dat de cursor verplaatst moet worden voordat de bladwijzer begint of eindigt.

Het volgende voorbeeld van code laat zien hoe je een cursor positie naar net na de bladwijzer einde.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

Nieuwe tekst op deze manier invoegen vervangt niet de bestaande tekst van de bladwijzer. Merk op dat sommige bladwijzers in het document worden toegewezen aan formuliervelden. Door naar zo'n bladwijzer te gaan en tekst in te voegen wordt de tekst in het formulierveld ingevoerd. Hoewel dit het formulierveld niet ongeldig maakt, zal de ingevoegde tekst niet zichtbaar zijn omdat het deel wordt van de veldcode.

### Verplaatsen naar een `Merge` Veld

Soms moet u een "handleiding" mail merge gebruik `DocumentBuilder` of vul een merge veld op een speciale manier in een mail merge Event handler. Dat is wanneer [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) Kan nuttig zijn. De methode accepteert de naam van het mergeveld. Het verplaatst de cursor naar een positie net voorbij het opgegeven merge veld en verwijdert het merge veld. Het volgende voorbeeld van code laat zien hoe je de cursor naar een positie verplaatst net voorbij het opgegeven merge veld.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## Hoe te converteren tussen meeteenheden

De meeste object eigenschappen in de Aspose.Words API die een aantal metingen vertegenwoordigt (breedte/hoogte, marges en verschillende afstanden) accepteren waarden in punten (1 inch is gelijk aan 72 punten). Soms is dit niet handig dus er is de `ConvertUtil` klasse die helperfuncties biedt om te converteren tussen verschillende meeteenheden. Het laat het omzetten van inches naar punten, wijst naar inches, pixels naar punten, en wijst naar pixels. Wanneer pixels worden omgezet naar punten en vice versa, kan het worden uitgevoerd op 96 dpi (dots per inch) resoluties of op de opgegeven dpi resolutie.

**ConvertUtil** is zeer nuttig bij het instellen van verschillende pagina eigenschappen, omdat bijvoorbeeld inches zijn meer gebruikelijke meeteenheden dan punten. Het volgende voorbeeld laat zien hoe u de pagina eigenschappen in inches kunt instellen.

Het volgende voorbeeld van code laat zien hoe pagina eigenschappen in inches te specificeren.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
