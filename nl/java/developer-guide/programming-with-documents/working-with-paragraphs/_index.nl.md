---
title: Werken met alinea's in Java
second_title: Aspose.Words voor Java
articleTitle: Werken met alinea's
linktitle: Werken met alinea's
description: "Paragraaf node manipulatie praktijken gebruiken Java."
type: docs
weight: 210
url: /nl/java/working-with-paragraphs/
---

Een alinea is een verzameling karakters die worden gecombineerd tot een logisch blok en eindigen met een speciaal karakter. In Aspose.Words, een lid wordt vertegenwoordigd door de [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) Klasse.

## Paragraaf invoegen

Om een nieuwe paragraaf in het document in te voegen, moet je er een paragraaf breekteken in voegen. [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln) voegt niet alleen een tekstreeks in het document in, maar voegt ook een paragraafbreuk toe.

De huidige lettertypeopmaak wordt ook gespecificeerd door de [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) eigenschap, en de huidige alinea opmaak wordt bepaald door de [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) eigendom. In het volgende deel gaan we nader in op paragraafopmaak.

Het volgende voorbeeld van code laat zien hoe een paragraaf in een document moet worden ingevoegd:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## Opmaak paragraaf

De huidige paragraafopmaak wordt vertegenwoordigd door de [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) object dat door de [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) eigendom. Dit object inkapselt verschillende alinea-opmaak eigenschappen beschikbaar in Microsoft Word. U kunt eenvoudig reset een alinea's formatteren op zijn standaard [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting).

Het volgende voorbeeld van code laat zien hoe je paragraafopmaak instelt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## Paragraafstijl toepassen

Sommige formatteren objecten zoals Lettertype of AlineaFormat ondersteuning stijlen. Een enkele ingebouwde of door de gebruiker gedefinieerde stijl wordt vertegenwoordigd door een [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) object dat de bijbehorende stijleigenschappen zoals naam, basisstijl, lettertype en paragraafopmaak van de stijl bevat, enzovoort.

Bovendien **Style** object geeft de [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) eigenschap die een locale-onafhankelijke stijl identifier vertegenwoordigd door een **StyleIdentifier** Waarde van de opsomming. Het punt is dat de namen van ingebouwde stijlen in Microsoft Word zijn gelokaliseerd voor verschillende talen. Met behulp van een stijl identifier, kunt u de juiste stijl te vinden, ongeacht de document taal. De opsommingswaarden komen overeen met de Microsoft Word ingebouwde stijlen zoals *Normal*, *Rubriek 1*,*Rubriek 2*, etc. Alle door de gebruiker gedefinieerde stijlen zijn toegewezen aan **StyleIdentifier. Gebruikerswaarde**.

Het volgende voorbeeld van code laat zien hoe je een alineastijl moet toepassen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## Stijlscheiding invoegen om verschillende alineastijlen in te voegen

De stijlscheiding kan worden toegevoegd aan het einde van een alinea met behulp van de Ctrl + Alt + Enter Keyboard Sneltoets in MS Word. Deze functie maakt het mogelijk om twee verschillende alineastijlen gebruikt in een logische afgedrukte paragraaf. Als je vanaf het begin van een bepaalde rubriek tekst wilt zien in een Inhoudsopgave, maar niet de hele rubriek in de Inhoudsopgave wilt, kun je deze functie gebruiken.

Het volgende voorbeeld van code laat zien hoe je een scheidingsteken invoegt om verschillende alineastijlen aan te passen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## Randen en Schaduwen toepassen op een alinea

Grenzen in Aspose.Words worden vertegenwoordigd door de [BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/) klasse Dit is een verzameling van [Border](https://reference.aspose.com/words/java/com.aspose.words/border/) objecten die toegankelijk zijn per index of per grenstype. De `Border` type wordt vertegenwoordigd door de [BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/) Samenvatting. Sommige waarden van de opsomming zijn van toepassing op meerdere of slechts één documentelement. Bijvoorbeeld, **BorderType.Bottom** is van toepassing op een alinea of tabelcel zolang **BorderType.DiagonalDown** geeft alleen de diagonale rand in een tabelcel aan.

Zowel de randcollectie als elke afzonderlijke rand hebben vergelijkbare eigenschappen zoals kleur, lijnstijl, lijnbreedte, afstand tot de tekst en optionele schaduw. Ze worden vertegenwoordigd door eigenschappen met dezelfde naam. U kunt verschillende grenstypes bereiken door de vastgoedwaarden te combineren. Bovendien zijn beide **BorderCollection** en **Border** objecten kunt u deze waarden terugzetten naar standaard door de [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) methode.

{{% alert color="primary" %}}

Merk op dat wanneer randeigenschappen worden teruggezet naar standaardwaarden, de rand onzichtbaar is.

{{% /alert %}}

Aspose.Words heeft [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) klasse bevat schaduwattributen voor documentelementen. U kunt de gewenste schaduw textuur en de kleuren die worden toegepast op de achtergrond en voorgrond van het element instellen.

De schaduwstructuur is ingesteld met de [TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/) telling waarde die de toepassing van verschillende patronen op de **Shading** object. Om bijvoorbeeld een achtergrondkleur voor een documentelement in te stellen, gebruik de `TextureIndex.TextureSolid` waardeer en zet de voorgrond schaduwkleur naar gelang van het geval. Het onderstaande codevoorbeeld laat zien hoe je grenzen kunt toepassen en een alinea kunt afschermen.

Het volgende voorbeeld van een code laat zien hoe je grenzen kunt toepassen en een alinea kunt afschermen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}
