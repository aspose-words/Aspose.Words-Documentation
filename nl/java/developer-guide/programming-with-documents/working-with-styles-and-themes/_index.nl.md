---
title: Werken met Styles en Thema's
second_title: Aspose.Words voor Java
articleTitle: Werken met Styles en Thema's
linktitle: Werken met Styles en Thema's
description: "Verbeterd Microsoft Word formatteren functies, werken met stijlen en thema's gebruik Java."
type: docs
weight: 110
url: /nl/java/working-with-styles-and-themes/
---

De [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) klasse wordt gebruikt om ingebouwde instellingen te beheren en toe te passen op stijlen.

## Hoe inhoud te extraheren op basis van stijlen

Op een eenvoudig niveau, het ophalen van de inhoud op basis van stijlen uit een Word-document kan nuttig zijn om te identificeren, lijst en tellen van de paragrafen en het uitvoeren van tekst geformatteerd met een specifieke stijl. Zo moet u bijvoorbeeld bepaalde soorten inhoud in het document identificeren, zoals voorbeelden, titels, referenties, trefwoorden, figurennamen en case studies.

Om dit nog een paar stappen verder te zetten, kan dit ook gebruikt worden om de structuur van het document, gedefinieerd door de stijlen die het gebruikt, te benutten om het document te hergebruiken voor een andere uitvoer, zoals HTML. Dit is in feite hoe de Aspose documentatie wordt gebouwd, Aspose.Words op de test. Een gereedschap gebouwd met behulp van Aspose.Words neemt de bron Word-documenten en splitst ze in onderwerpen op bepaalde hoofdniveaus. Een XML-bestand wordt aangemaakt met behulp van Aspose.Words die gebruikt wordt om de navigatieboom te bouwen die je links kunt zien. En toen Aspose.Words zet elk onderwerp om in HTML. De oplossing voor het ophalen van tekst geformatteerd met specifieke stijlen in een Word-document is typisch economisch en eenvoudig met behulp van Aspose.Words.

Om te illustreren hoe gemakkelijk Aspose.Words behandelt het ophalen van inhoud op basis van stijlen, laten we kijken naar een voorbeeld. In dit voorbeeld gaan we tekst ophalen die is geformatteerd met een specifieke paragraafstijl en een karakterstijl uit een voorbeeld Word-document.

Op hoog niveau gaat het hierbij om:

1. Een Word-document openen met behulp van de [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Klasse.
1. Verzamelen van alle paragrafen en alle draait in het document.
1. Alleen de vereiste alinea's en runs selecteren.

In het bijzonder, zullen we ophalen tekst geformatteerd met de

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

In dit sample document, de tekst geformatteerd met de

De implementatie van een op stijl gebaseerde query is vrij eenvoudig in de Aspose.Words document object model, omdat het gewoon gebruik maakt van tools die al op zijn plaats. Voor deze oplossing worden twee klassemethoden geïmplementeerd:

1. **ParagraphsByStyleName** Wat? Deze methode haalt een reeks van die paragrafen in het document op die een specifieke stijlnaam hebben.
1. **RunsByStyleName** Wat? Deze methode haalt een reeks van die runs op in het document met een specifieke stijlnaam.

Beide methoden zijn zeer vergelijkbaar, de enige verschillen zijn de knooppunt types en de weergave van de stijl informatie binnen de paragraaf en run nodes. Hier is een implementatie van alinea'sByStyleName weergegeven in de code voorbeeld hieronder om alle alinea's geformatteerd met de opgegeven stijl te vinden.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

Deze uitvoering maakt ook gebruik van de [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) methode van de `Document` klasse, die een verzameling van alle directe kindknooppunten retourneert.

Het is ook de moeite waard erop te wijzen dat de alinea's collectie niet een onmiddellijke overhead omdat de alinea's worden geladen in deze collectie alleen wanneer u toegang tot items in hen. Vervolgens hoeft u alleen maar door de collectie te gaan met behulp van de standaard voor elke operator en alinea's toe te voegen die de gespecificeerde stijl hebben aan de alinea's. Met Style array. De `Paragraph` stijl naam kan worden gevonden in de [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName) eigendom van de [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat) object.

De implementatie van RunsByStyleName is bijna hetzelfde, hoewel we duidelijk gebruik maken van `NodeType.Run` om run nodes op te halen. De [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle) eigendom van een [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) object wordt gebruikt voor toegang tot stijl informatie in de **Run** knooppunten

Het volgende voorbeeld van code vindt alle geformatteerde programma's met de opgegeven stijl.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

Wanneer beide queries zijn geïmplementeerd, hoeft u alleen maar een documentobject door te geven en de stijlnamen van de inhoud op te geven die u wilt ophalen:

{{% /alert %}}

De volgende code voorbeeld run queries en weergave resultaten.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

Wanneer alles klaar is, zal het uitvoeren van de sample de volgende uitvoer weergeven:

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

Zoals u kunt zien, is dit een zeer eenvoudig voorbeeld, met het nummer en de tekst van de verzamelde paragrafen en loopt in het voorbeeld Word document.

## Stijlscheiding invoegen om verschillende alineastijlen in te voegen

De stijlscheiding kan worden toegevoegd aan het einde van een alinea met behulp van de Ctrl + Alt + Enter Keyboard Sneltoets in MS Word. Deze functie maakt het mogelijk om twee verschillende alineastijlen gebruikt in een logische afgedrukte paragraaf. Als u wilt dat een tekst vanaf het begin van een bepaalde rubriek in een Inhoudsopgave verschijnt, maar niet wilt dat de hele rubriek in de Inhoudsopgave staat, kunt u deze functie gebruiken

Het volgende voorbeeld van code laat zien hoe je een scheidingsteken invoegt om verschillende alineastijlen in te voegen

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## Alle stijlen van sjabloon kopiëren

Er zijn gevallen waarin u alle stijlen van het ene document naar het andere wilt kopiëren. U kunt de `Document.CopyStylesFromTemplate` methode om stijlen van het opgegeven sjabloon naar een document te kopiëren. Wanneer stijlen worden gekopieerd van een sjabloon naar een document, worden gelijknamige stijlen in het document geherdefinieerd om de stijlbeschrijvingen in het sjabloon aan te passen. Unieke stijlen van het sjabloon worden gekopieerd naar het document. Unieke stijlen in het document blijven intact

Het volgende voorbeeld van code laat zien hoe je stijlen van het ene document naar het andere kopieert.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## Hoe te Manipuleren Themaeigenschappen

Wij hebben de basis API in Aspose.Words toegang tot de eigenschappen van documentthema's. Voor nu, dit API omvat de volgende openbare objecten:

- Thema
- ThemeFonts
- Themakleuren

Hier is hoe u kunt krijgen thema eigenschappen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

En hier is hoe u thema eigenschappen kunt instellen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
