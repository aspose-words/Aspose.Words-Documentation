---
title: DocumentBuilder gebruiken om een Document eenvoudig te wijzigen
second_title: Aspose.Words voor C++
articleTitle: DocumentBuilder gebruiken om een Document eenvoudig te wijzigen
linktitle: DocumentBuilder gebruiken om een Document eenvoudig te wijzigen
type: docs
description: "Gebruik de documentbouwer om een document eenvoudig te wijzigen in C++."
weight: 190
url: /nl/cpp/using-documentbuilder-to-modify-a-document-easily/
timestamp: 2024-01-27-14-07-04
---

## Opmaak Opgeven

### Lettertype Opmaak

De huidige lettertypeopmaak wordt weergegeven door een `Font` object dat wordt geretourneerd door de eigenschap `DocumentBuilder.Font`. De klasse `Font` bevat een grote verscheidenheid aan lettertypeeigenschappen die mogelijk zijn in Microsoft Word. Onderstaand voorbeeld laat zien hoe u lettertypeopmaak instelt.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

### Alinea-Opmaak

De huidige alineaopmaak wordt weergegeven door een `ParagraphFormat` object dat wordt geretourneerd door de eigenschap `DocumentBuilder.ParagraphFormat`. Dit object bevat verschillende eigenschappen voor alineaopmaak die beschikbaar zijn in Microsoft Word. U kunt de alineaopmaak eenvoudig terugzetten naar standaardstijl, links uitgelijnd, geen inspringing, geen spatiëring, geen randen en geen schaduw door `ParagraphFormat.ClearFormatting` aan te roepen. Onderstaand voorbeeld laat zien hoe u de opmaak van alinea ' s instelt.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

### Werken met Aziatische typografie

#### Pas automatisch de ruimte aan tussen Aziatische en Latijnse tekst, cijfers

Als u een sjabloon ontwerpt met zowel Oost-Aziatische als Latijnse tekst en u het uiterlijk van de formuliersjabloon wilt verbeteren door de spaties tussen beide typen tekst te regelen, kunt u de formuliersjabloon configureren om de spaties tussen deze twee typen tekst automatisch aan te passen. U kunt AddSpaceBetweenFarEastAndAlpha en AddSpaceBetweenFarEastAndDigit eigenschappen van ParagraphFormat Klasse gebruiken om dit te bereiken.

Het volgende codevoorbeeld laat zien hoe `ParagraphFormat.AddSpaceBetweenFarEastAndAlpha` en `ParagraphFormat.AddSpaceBetweenFarEastAndDigit` eigenschappen gebruikt moeten worden.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### Aziatische Alineaafstand en inspringingen wijzigen

Het volgende codevoorbeeld laat zien hoe u de Aziatische alineaafstand en inspringingen kunt wijzigen.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### Regelonderbrekingsopties Instellen

Aziatische typografie tabblad van de `Paragraph` Eigenschappen dialoogvenster in MS Word heeft lijneinde groep. De opties van deze groep kunnen worden ingesteld met behulp van FarEastLineBreakControl, WordWrap, HangingPunctuation eigenschappen van ParagraphFormat klasse. Be low code voorbeeld laat zien hoe deze eigenschappen te gebruiken.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}

### Celopmaak

Celopmaak wordt gebruikt tijdens het maken van een tabel. Het wordt weergegeven door een `CellFormat` object dat wordt geretourneerd door de eigenschap `DocumentBuilder.CellFormat`. CellFormat bevat verschillende eigenschappen van tabelcellen, zoals breedte of verticale uitlijning. In het onderstaande voorbeeld wordt weergegeven hoe u een tabel maakt die één opgemaakte cel bevat.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableCellFormatting.cpp" >}}

### Rij Opmaak

De huidige rijopmaak wordt bepaald door een `RowFormat` object dat wordt geretourneerd door de eigenschap `DocumentBuilder.RowFormat`. Het object bevat informatie over alle tabelrijopmaak. In het onderstaande voorbeeld wordt weergegeven hoe u een tabel maakt die een enkele cel bevat en rijopmaak toepast.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableRowFormatting.cpp" >}}

### Lijst Opmaak

Aspose.Words maakt het eenvoudig maken van lijsten mogelijk door lijstopmaak toe te passen. DocumentBuilder geeft de eigenschap `DocumentBuilder.ListFormat` die een `ListFormat` object retourneert. Dit object heeft verschillende methoden om een lijst te starten en te beëindigen en de inspringing te vergroten/verkleinen. Er zijn twee algemene soorten lijsten in Microsoft Word: met opsommingstekens en genummerd.

- Als u een lijst met opsommingstekens wilt starten, belt u `ListFormat.ApplyBulletDefault`.
- Als u een genummerde lijst wilt starten, belt u `ListFormat.ApplyNumberDefault`.

Het opsommingsteken of het nummer en de opmaak worden toegevoegd aan de huidige alinea en alle verdere alinea ' s die met **DocumentBuilder** zijn gemaakt totdat `ListFormat.RemoveNumbers` wordt opgeroepen om de opmaak van de opsommingstekenslijst te stoppen. In Word documenten kunnen lijsten bestaan uit maximaal negen niveaus. De opmaak van de lijst voor elk niveau geeft aan welk opsommingsteken of nummer wordt gebruikt, de linker inspringing, de ruimte tussen het opsommingsteken en de tekst, enz.

- Als u het lijstniveau van de huidige alinea met één niveau wilt verhogen, roept u `ListFormat.ListIndent` op.
- Als u het lijstniveau van de huidige alinea met één niveau wilt verlagen, roept u `ListFormat.ListOutdent` op.

De methoden wijzigen het lijstniveau en passen de opmaakeigenschappen van het nieuwe niveau toe.

{{% alert color="primary" %}}

U kunt ook de Eigenschap `ListFormat.ListLevelNumber` gebruiken om het lijstniveau voor de alinea op te vragen of in te stellen. De lijstniveaus zijn genummerd van 0 tot 8.

{{% /alert %}}

Onderstaand voorbeeld laat zien hoe je een lijst op meerdere niveaus kunt maken.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cpp" >}}

### Pagina-Instellingen en sectie-opmaak

Pagina-instellingen en sectie-eigenschappen worden ingekapseld in het `PageSetup` - object dat wordt geretourneerd door de eigenschap `DocumentBuilder.PageSetup`. Het object bevat alle kenmerken van de pagina-instelling van een sectie (linkermarge, onderste marge, papierformaat, enzovoort) als eigenschappen. Het onderstaande voorbeeld laat zien hoe u eigenschappen zoals paginagrootte en oriëntatie voor de huidige sectie instelt.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.cpp" >}}

### Een stijl toepassen

Sommige opmaakobjecten zoals lettertype of ParagraphFormat ondersteunen stijlen. Een enkele ingebouwde of door de gebruiker gedefinieerde stijl wordt weergegeven door een `Style` - object dat de overeenkomstige stijleigenschappen bevat, zoals naam, basisstijl, lettertype en alineaopmaak van de stijl, enzovoort.

Bovendien biedt een **Style** - object de eigenschap `Style.StyleIdentifier` die een locale-onafhankelijke stijlidentificatie retourneert die wordt weergegeven door een **Style.StyleIdentifier** - opsommingswaarde. Het punt is dat de namen van ingebouwde stijlen in Microsoft Word gelokaliseerd zijn voor verschillende talen. Met behulp van een stijl-ID kunt u de juiste stijl vinden, ongeacht de taal van het document. De opsommingswaarden komen overeen met de ingebouwde stijlen van Microsoft Word zoals Normaal, Heading 1, Heading 2 enz. Alle door de gebruiker gedefinieerde stijlen krijgen de **StyleIdentifier.User value** toegewezen. Onderstaand voorbeeld laat zien hoe u een alineastijl toepast.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

### Grenzen en schaduw

Grenzen worden weergegeven door de BorderCollection. Dit is een verzameling Grensobjecten die toegankelijk zijn per index of per grenstype. Het randtype wordt weergegeven door de `BorderType` - opsomming. Sommige waarden van de opsomming zijn van toepassing op meerdere of slechts één documentelement. `BorderType.Bottom` is bijvoorbeeld van toepassing op een alinea of tabelcel, terwijl `BorderType.DiagonalDown` alleen de diagonale Rand in een tabelcel specificeert.

Zowel de border collection als elke afzonderlijke border hebben vergelijkbare kenmerken zoals kleur, lijnstijl, lijnbreedte, afstand tot tekst en optionele schaduw. Ze worden weergegeven door eigenschappen met dezelfde naam. U kunt verschillende randtypen bereiken door de eigenschapswaarden te combineren. Bovendien kunt u met zowel **BorderCollection** als **Border** objecten deze waarden terugzetten naar de standaardwaarde door de methode `Border.ClearFormatting` aan te roepen. Merk op dat wanneer randeigenschappen worden teruggezet naar standaardwaarden, de rand onzichtbaar is. De klasse `Shading` bevat schaduwattributen voor documentelementen. U kunt de gewenste schaduwtextuur instellen en de kleuren die op de achtergrond en voorgrond van het element worden toegepast.

De schaduwtextuur is ingesteld met een `TextureIndex` opsommingswaarde waarmee verschillende patronen op het **Shading** object kunnen worden toegepast. Als u bijvoorbeeld een achtergrondkleur voor een documentelement wilt instellen, gebruikt u de waarde `TextureIndex.TextureSolid` en stelt u de voorgrondkleur in. Het onderstaande voorbeeld laat zien hoe u randen en arcering toepast op een alinea.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}

### Snap to Grid

Aspose.Words biedt twee eigenschappen `ParagraphFormat.SnapToGrid` en `Font.SnapToGrid` om alinea-eigenschap snap naar raster te krijgen en in te stellen.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetSnapToGrid.cpp" >}}

## De Cursor verplaatsen

### De huidige cursorpositie detecteren

U kunt op elk gewenst moment verkrijgen waar de cursor van de bouwer momenteel is geplaatst. De eigenschap `DocumentBuilder.CurrentNode` retourneert het knooppunt dat momenteel is geselecteerd in deze builder. De node is een direct kind van een paragraaf. Alle bewerkingen invoegen die u met `DocumentBuilder` uitvoert, worden vóór `DocumentBuilder.CurrentNode` ingevoegd. Wanneer de huidige alinea leeg is of de cursor vlak voor het einde van de alinea staat, geeft `DocumentBuilder.CurrentNode` als resultaat null.

U kunt ook de eigenschap `DocumentBuilder.CurrentParagraph` gebruiken, die de alinea krijgt die momenteel in deze **DocumentBuilder** is geselecteerd. Het onderstaande voorbeeld toont hoe u toegang krijgt tot het huidige knooppunt in een documentbouwer. U kunt het sjabloonbestand van dit voorbeeld hier downloaden.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderCursorPosition.cpp" >}}

### Verhuizen naar een Node (paragrafen en hun kinderen)

Als u een documentobjectknooppunt hebt, dat een alinea of een direct kind van een alinea is, kunt u de cursor van de bouwer naar dit knooppunt wijzen. Gebruik de methode `DocumentBuilder.MoveTo` om dit uit te voeren. Het onderstaande voorbeeld laat zien hoe een cursorpositie naar een opgegeven knooppunt kan worden verplaatst. U kunt het sjabloonbestand van dit voorbeeld hier downloaden.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

### Naar het Document gaan Begin / Einde

Als u naar het begin van het document moet gaan, belt u `DocumentBuilder.MoveToDocumentStart`. Als u naar het einde van het document moet gaan, belt u `DocumentBuilder.MoveToDocumentEnd`. Het onderstaande voorbeeld laat zien hoe u een cursorpositie naar het begin of einde van een document verplaatst. U kunt het sjabloonbestand van dit voorbeeld hier downloaden.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### Verhuizen naar een sectie

Als u met een document werkt dat meerdere secties bevat, kunt u met `DocumentBuilder.MoveToSection` naar een gewenste sectie gaan. Deze methode verplaatst de cursor naar het begin van een bepaalde sectie en accepteert de index van de vereiste sectie. Wanneer de sectieindex groter is dan of gelijk is aan 0, wordt een index vanaf het begin van het document opgegeven, waarbij 0 de eerste sectie is. Wanneer de sectieindex kleiner is dan 0, wordt een index vanaf het einde van het document opgegeven, waarbij -1 de laatste sectie is. Onderstaand voorbeeld laat zien hoe u een cursorpositie naar de opgegeven sectie verplaatst. U kunt het sjabloonbestand van dit voorbeeld hier downloaden.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSection.cpp" >}}

### Naar een Header/Footer gaan

Wanneer u gegevens in een kop-of voettekst moet plaatsen, moet u deze eerst verplaatsen met `DocumentBuilder.MoveToHeaderFooter`. De methode accepteert een HeaderFooterType - opsommingswaarde die het type kop-of voettekst identificeert waarnaar de cursor moet worden verplaatst. Als u kop-en voetteksten wilt maken die voor de eerste pagina anders zijn, moet u de eigenschap `PageSetup.DifferentFirstPageHeaderFooter` instellen op **true**. Als u kop-en voetteksten wilt maken die verschillend zijn voor even en oneven pagina ' s, moet u `PageSetup.OddAndEvenPagesHeaderFooter` instellen op **true**.

Als u terug wilt naar het hoofdverhaal, gebruikt u **DocumentBuilder.MoveToSection** om uit de kop-of voettekst te stappen. In het onderstaande voorbeeld worden kop-en voetteksten gemaakt in een document met DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### Naar een paragraaf gaan

Gebruik `DocumentBuilder.MoveToParagraph` om de cursor naar een gewenste alinea in de huidige sectie te verplaatsen. U moet twee parameters aan deze methode doorgeven: paragraphIndex (de index van de alinea waarnaar moet worden verplaatst) en characterIndex (de index van het teken in de alinea).

De navigatie wordt uitgevoerd in het huidige verhaal van de huidige sectie. Dat wil zeggen, als u de cursor verplaatst naar de primaire kop van de eerste sectie, dan geeft paragraphIndex de index van de alinea binnen die kop van die sectie.

Wanneer paragraphIndex groter is dan of gelijk is aan 0, geeft dit een index aan vanaf het begin van de sectie waarbij 0 de eerste alinea is. Wanneer paragraphIndex kleiner is dan 0, geeft het een index aan vanaf het einde van de sectie met -1 als laatste alinea.

De tekenindex kan momenteel alleen worden opgegeven als 0 om naar het begin van de alinea te gaan of -1 om naar het einde van de alinea te gaan. Onderstaand voorbeeld laat zien hoe u een cursorpositie naar de opgegeven alinea verplaatst. U kunt het sjabloonbestand van dit voorbeeld hier downloaden.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToParagraph.cpp" >}}

### Verplaatsen naar een tabelcel

Gebruik `DocumentBuilder.MoveToCell` als u de cursor naar een tabelcel in de huidige sectie wilt verplaatsen. Deze methode accepteert vier parameters:

- tableIndex - de index van de tabel waarnaar moet worden verplaatst.
- rowIndex - de index van de rij in de tabel.
- columnIndex - de index van de kolom in de tabel.
- characterIndex - de index van het teken in de cel.

De navigatie wordt uitgevoerd in het huidige verhaal van de huidige sectie. Voor de indexparameters wordt, wanneer de index groter is dan of gelijk is aan 0, een index vanaf het begin gespecificeerd waarbij 0 het eerste element is. Wanneer de index kleiner is dan 0, wordt een index vanaf het einde gespecificeerd met -1 als laatste element.

Merk ook op dat characterIndex momenteel alleen 0 kan opgeven om naar het begin van de cel te gaan of -1 om naar het einde van de cel te gaan. Onderstaand voorbeeld laat zien hoe u een cursorpositie naar de opgegeven tabelcel verplaatst. U kunt het sjabloonbestand van dit voorbeeld hier downloaden.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### Naar een bladwijzer gaan

Bladwijzers worden vaak gebruikt om bepaalde plaatsen in het document te markeren waar nieuwe elementen moeten worden ingevoegd. Gebruik `DocumentBuilder.MoveToBookmark` om naar een bladwijzer te gaan. Deze methode heeft twee overbelastingen. De eenvoudigste accepteert niets anders dan de naam van de bladwijzer waar de cursor moet worden verplaatst. Onderstaand voorbeeld laat zien hoe u een cursorpositie naar een bladwijzer verplaatst. U kunt het sjabloonbestand van dit voorbeeld hier downloaden.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

Deze overbelasting verplaatst de cursor naar een positie net na het begin van de bladwijzer met de opgegeven naam. Een andere overbelasting `DocumentBuilder.MoveToBookmark` verplaatst de cursor met grotere precisie naar een bladwijzer. Het accepteert twee extra Booleaanse parameters:

- isStart bepaalt of de cursor naar het begin of naar het einde van de bladwijzer moet worden verplaatst.
- isAfter bepaalt of de cursor na de begin-of eindpositie van de bladwijzer moet worden verplaatst of dat de cursor vóór de begin-of eindpositie van de bladwijzer moet worden verplaatst.

Onderstaand voorbeeld laat zien hoe u een cursorpositie verplaatst naar net na het einde van de bladwijzer.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

De vergelijking voor beide methoden is niet hoofdlettergevoelig.

Het invoegen van nieuwe tekst op deze manier vervangt NIET de bestaande tekst van de bladwijzer. Merk op dat sommige bladwijzers in het document zijn toegewezen aan formuliervelden. Als u naar een dergelijke bladwijzer gaat en daar tekst invoegt, wordt de tekst in de formulierveldcode ingevoegd. Hoewel dit het formulierveld niet ongeldig maakt, is de ingevoegde tekst niet zichtbaar omdat deze deel uitmaakt van de veldcode.

## Hoe te converteren tussen meeteenheden

De meeste objecteigenschappen in de Aspose.Words API die een bepaalde meting vertegenwoordigen (breedte/hoogte, marges en verschillende afstanden) accepteren waarden in punten (1 inch is gelijk aan 72 punten). Soms is dit niet handig, dus er is de `ConvertUtil` klasse die helperfuncties biedt om te converteren tussen verschillende meeteenheden. Het maakt het mogelijk om inches te converteren naar punten, punten naar inches, pixels naar punten en punten naar pixels. Wanneer pixels worden omgezet in punten en vice versa, kan het worden uitgevoerd met een resolutie van 96 dpi (dots per inch) of met de opgegeven dpi-resolutie.
**ConvertUtil**

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}
