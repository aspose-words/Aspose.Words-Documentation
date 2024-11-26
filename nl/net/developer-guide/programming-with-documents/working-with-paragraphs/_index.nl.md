---
title: Werken met alinea's in C#
second_title: Aspose.Words voor .NET
articleTitle: Werken met alinea's
linktitle: Werken met alinea's
description: "Een paragraaf toevoegen aan een document C#. Paragraafstijlen instellen in C#. Werk met paragraafstijlscheiding C#. Paragraafknoop manipuleren C#."
type: docs
weight: 210
url: /nl/net/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

Een alinea is een verzameling tekens die worden gecombineerd tot een logisch blok en eindigend met een speciaal karakter, een *paragraf break*. In Aspose.Words, een lid wordt vertegenwoordigd door de [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) Klasse.

## Paragraaf invoegen

Om een nieuwe paragraaf in het document in te voegen, moet je er een paragraaf breekteken in voegen. [DocumentBuilder.Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/) voegt niet alleen een tekstreeks in het document in, maar voegt ook een paragraafbreuk toe.

De huidige lettertypeopmaak wordt ook gespecificeerd door de [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) eigenschap, en de huidige alinea opmaak wordt bepaald door de [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/) eigendom. In het volgende deel gaan we nader in op paragraafopmaak.

Het volgende voorbeeld van code laat zien hoe je een paragraaf in een document invoegt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

## Formaat paragraaf

De huidige paragraafopmaak wordt vertegenwoordigd door de [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) object dat door de [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/) eigendom. Dit object inkapselt verschillende alinea-opmaak eigenschappen beschikbaar in Microsoft Word. U kunt eenvoudig reset een alinea's formatteren op zijn standaard [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/paragraphformat/clearformatting/).

Het volgende voorbeeld van code laat zien hoe je paragraafopmaak instelt:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cs" >}}

## Paragraafstijl toepassen

Sommige opmaakobjecten, zoals **Font** of **ParagraphFormat**, ondersteuningsstijlen. Een ingebouwde of door de gebruiker gedefinieerde stijl wordt vertegenwoordigd door een [Style](https://reference.aspose.com/words/net/aspose.words/style/) object, dat de juiste stijl eigenschappen zoals naam, basisstijl, lettertype, stijl paragraaf formatteren, enzovoort bevat.

Bovendien heeft de **Style** object [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/style/styleidentifier/) eigenschap, die de locale-onafhankelijke stijl identifier vertegenwoordigd door de [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/styleidentifier/) Waarde van de opsomming. Het feit is dat de namen van de ingebouwde stijlen in Microsoft Word zijn gelokaliseerd voor verschillende talen. Met behulp van de stijl identifier, kunt u de juiste stijl te vinden, ongeacht de document taal. De opsommingswaarden komen overeen met de ingebouwde Microsoft Word stijlen zoals *Normal*, *Heading 1*,*Heading 2* enzovoort. Alle door de gebruiker gedefinieerde stijlen zijn ingesteld op de **StyleIdentifier.User** Waarde van de opsomming.

Het volgende voorbeeld van code laat zien hoe je een alineastijl moet toepassen:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cs" >}}

### Stijlscheiding invoegen om verschillende alineastijlen te plaatsen

Aan het einde van een alinea kan een stijlscheiding worden toegevoegd met behulp van de sneltoets Ctrl+Alt+Enter in Microsoft Word. Met deze functie kunt u twee verschillende alineastijlen gebruiken in dezelfde logische afgedrukte paragraaf. Als u wilt dat een tekst vanaf het begin van een bepaalde rubriek in de inhoudsopgave verschijnt, maar niet wilt dat de hele kop in de inhoudsopgave wordt weergegeven, kunt u deze functie gebruiken.

Het volgende voorbeeld van code laat zien hoe je een scheidingsteken invoegt om verschillende alineastijlen aan te passen:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cs" >}}

### Paragraaf identificeren Scheidingsteken

Aspose.Words stelt [BreakIsStyleSeparator](https://reference.aspose.com/words/net/aspose.words/paragraph/breakisstyleseparator/) openbare goederen op de `Paragraph` klasse om een alinea te identificeren met een stijlafscheider, zoals in het voorbeeld hieronder is aangegeven:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cs" >}}

## Randen en Schaduwen toepassen op een alinea

Grenzen in Aspose.Words worden vertegenwoordigd door de [BorderCollection](https://reference.aspose.com/words/net/aspose.words/bordercollection/) klasse Dit is een verzameling van [Border](https://reference.aspose.com/words/net/aspose.words/border/) objecten die toegankelijk zijn per index of per grenstype. Het grenstype wordt op zijn beurt vertegenwoordigd door de [BorderType](https://reference.aspose.com/words/net/aspose.words/bordertype/) Lijst. Sommige opsommingswaarden gelden voor meerdere of slechts één documentelement. Bijvoorbeeld, **BorderType.Bottom** is van toepassing op een alinea of tabel, terwijl **BorderType.DiagonalDown** geeft alleen een diagonale rand aan in een tabelcel.

Zowel de randcollectie als elke afzonderlijke rand hebben vergelijkbare eigenschappen zoals kleur, lijnstijl, lijnbreedte, afstand tot tekst en optionele schaduw. Zij worden vertegenwoordigd door eigenschappen met dezelfde naam. U kunt verschillende grenstypes krijgen door de waarde van onroerend goed te combineren. Bovendien heeft de **BorderCollection** en **Border** objecten kunt u deze waarden te resetten naar hun standaard waarden door het aanroepen van de [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/border/clearformatting/) methode.

{{% alert color="primary" %}}

Merk op dat wanneer de eigenschappen van de randen worden teruggezet naar hun standaardwaarden, de rand onzichtbaar wordt.

{{% /alert %}}

Aspose.Words heeft [Shading](https://reference.aspose.com/words/net/aspose.words/shading/) klasse die schaduwattributen bevat voor documentelementen. U kunt de gewenste schaduw textuur en kleuren die worden toegepast op de achtergrond en voorgrond van een element met behulp van de [TextureIndex](https://reference.aspose.com/words/net/aspose.words/textureindex/) Waarde van de opsomming. **TextureIndex** kunt u ook verschillende patronen toe te passen op de **Shading** object. Om bijvoorbeeld de achtergrondkleur voor een documentelement in te stellen, gebruik de **TextureIndex.TextureSolid** waardeer en stel de voorgrondschaduwkleur in.

Het volgende voorbeeld van code laat zien hoe je grenzen kunt toepassen en een paragraaf kunt camoufleren:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cs" >}}

## Paragraafregels tellen

Als u het aantal regels in een alinea voor een Word-document wilt tellen, kan het volgende codemonster worden gebruikt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CountLinesInParagraphs-CountLinesInParagraph.cs" >}}
