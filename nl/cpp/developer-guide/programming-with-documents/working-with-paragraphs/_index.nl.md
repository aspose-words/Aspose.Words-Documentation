---
title: Werken met alinea ' s in C++
second_title: Aspose.Words voor C++
articleTitle: Werken met paragrafen
linktitle: Werken met paragrafen
description: "Manipulatie van paragraafknooppunten met behulp van C++."
type: docs
weight: 210
url: /nl/cpp/working-with-paragraphs/
timestamp: 2024-01-30-16-22-34
---

Een alinea is een reeks tekens gecombineerd tot een logisch blok en eindigend met een speciaal teken – a *paragraph break*. In Aspose.Words wordt een alinea weergegeven door de [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) Klasse.

## Een alinea invoegen

Als u een nieuwe alinea in het document wilt invoegen, moet u er in feite een alinea-breekkarakter in invoegen. [DocumentBuilder.Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/) voegt niet alleen een tekenreeks in het document in, maar voegt ook een alinea-einde toe.

De huidige lettertypeopmaak wordt ook opgegeven door de Eigenschap [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) en de huidige alineaopmaak wordt bepaald door de eigenschap [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_paragraphformat/). In de volgende sectie zullen we meer in detail ingaan op de opmaak van alinea ' s.

Het volgende codevoorbeeld laat zien hoe u een alinea invoegt in een document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Alinea Opmaken

De huidige alineaopmaak wordt weergegeven door een **ParagraphFormat** object dat wordt geretourneerd door de Eigenschap **ParagraphFormat**. Dit object bevat verschillende eigenschappen voor alineaopmaak die beschikbaar zijn in Microsoft Word. U kunt de alineaopmaak eenvoudig terugzetten naar standaardstijl, links uitgelijnd geen inspringing, geen spatiëring, geen randen en geen schaduw door [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/clearformatting/) aan te roepen.

Het volgende codevoorbeeld laat zien hoe u alineaopmaak instelt:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

## Alineastijl Toepassen

Sommige opmaakobjecten zoals lettertype of ParagraphFormat ondersteunen stijlen. Een enkele ingebouwde of door de gebruiker gedefinieerde stijl wordt weergegeven door een `Style` - object dat de overeenkomstige stijleigenschappen bevat, zoals naam, basisstijl, lettertype en alineaopmaak van de stijl, enzovoort.

Bovendien biedt een **Style** object de eigenschap [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words/style/get_styleidentifier/) die een locale-onafhankelijke stijlidentificatie retourneert die wordt weergegeven door de **StyleIdentifier** - opsommingswaarde. Het punt is dat de namen van ingebouwde stijlen in Microsoft Word gelokaliseerd zijn voor verschillende talen. Met behulp van een stijl-ID kunt u de juiste stijl vinden, ongeacht de taal van het document. De opsommingswaarden komen overeen met de Microsoft Word ingebouwde stijlen zoals *Normal*, *Heading 1*, *Heading 2* enz. Alle door de gebruiker gedefinieerde stijlen krijgen de waarde **StyleIdentifier.User** toegewezen.

Het volgende codevoorbeeld laat zien hoe u een alineastijl toepast:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

## Stijlscheidingsteken invoegen om verschillende Alineastijlen toe te voegen

Het stijlscheidingsteken kan aan het einde van een alinea worden toegevoegd met de sneltoets Ctrl + Alt + Enter in MS Word. Deze functie maakt twee verschillende alineastijlen mogelijk die in één logische afgedrukte alinea worden gebruikt. Als u wilt dat sommige tekst van het begin van een bepaalde kop in een inhoudsopgave wordt weergegeven, maar niet de hele kop in de inhoudsopgave wilt, kunt u deze functie gebruiken.

Het volgende codevoorbeeld laat zien hoe u een stijlscheidingsteken invoegt om verschillende alineastijlen te accommoderen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Alineastijlscheidingsteken Identificeren

` ` Aspose.Words biedt een openbaar eigendom [BreakIsStyleSeparator](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_breakisstyleseparator/) in een `Paragraph` klasse maakt het mogelijk om de paragraaf Stijlscheidingsteken te identificeren zoals in het onderstaande voorbeeld wordt getoond:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cpp" >}}

## Randen en arcering toepassen op een alinea

Grenzen in Aspose.Words worden weergegeven door de [BorderCollection](https://reference.aspose.com/words/cpp/aspose.words/bordercollection/) Klasse – dit is een verzameling van [Border](https://reference.aspose.com/words/cpp/aspose.words/border/) objecten die toegankelijk zijn door index of door randtype. Het randtype wordt weergegeven door de `BorderType` - opsomming. Sommige waarden van de opsomming zijn van toepassing op meerdere of slechts één documentelement. **BorderType.Bottom** is bijvoorbeeld van toepassing op een alinea of tabelcel, terwijl **BorderType.DiagonalDown** alleen de diagonale Rand in een tabelcel specificeert.

Zowel de border collection als elke afzonderlijke border hebben vergelijkbare kenmerken zoals kleur, lijnstijl, lijnbreedte, afstand tot de tekst en optionele schaduw. Ze worden weergegeven door eigenschappen met dezelfde naam. U kunt verschillende randtypen bereiken door de eigenschapswaarden te combineren. Bovendien kunt u met zowel **BorderCollection** als **Border** objecten deze waarden terugzetten naar de standaardwaarde door de methode [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/border/clearformatting/) aan te roepen.

{{% alert color="primary" %}}

Merk op dat wanneer de randeigenschappen worden teruggezet naar hun standaardwaarden, de rand onzichtbaar wordt.

{{% /alert %}}

Aspose.Words heeft ook de [Shading](https://reference.aspose.com/words/cpp/aspose.words/shading/) klasse bevat schaduwattributen voor documentelementen. U kunt de gewenste schaduwtextuur instellen en de kleuren die op de achtergrond en voorgrond van het element worden toegepast.

De schaduwtextuur is ingesteld met een [TextureIndex](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) opsommingswaarde waarmee verschillende patronen op het **Shading** object kunnen worden toegepast. Als u bijvoorbeeld een achtergrondkleur voor een documentelement wilt instellen, gebruikt u de waarde [TextureIndex.TextureSolid](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) en stelt u de voorgrondkleur in.

Het volgende codevoorbeeld laat zien hoe u randen en arcering toepast op een alinea:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}
