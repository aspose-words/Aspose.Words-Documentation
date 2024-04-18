---
title: Werken met stijlen en thema's in C#
second_title: Aspose.Words voor .NET
articleTitle: Werken met Styles en Thema's
linktitle: Werken met Styles en Thema's
description: "Geavanceerd Microsoft Word opmaakfuncties, werken met stijlen en thema's met behulp van C#."
type: docs
weight: 110
url: /nl/net/working-with-styles-and-themes/
---

De [StyleCollection](https://reference.aspose.com/words/net/aspose.words/stylecollection/) klasse wordt gebruikt om ingebouwde instellingen te beheren en gebruikersinstellingen toe te passen op stijlen.

## Toegang tot stijlen

U kunt een verzameling van stijlen gedefinieerd in het document met behulp van de [Document.Styles](https://reference.aspose.com/words/net/aspose.words/documentbase/styles/) eigendom. Deze collectie bevat zowel de ingebouwde als door de gebruiker gedefinieerde stijlen in een document. Een bepaalde stijl kan worden verkregen door de naam/alias, stijlidentificatie, of index. Het volgende voorbeeld toont hoe toegang te krijgen tot de verzameling van stijlen gedefinieerd in het document.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-AccessStyles-AccessStyles.cs" >}}

## Hoe inhoud te extraheren op basis van stijlen

Op een eenvoudig niveau, het ophalen van de inhoud op basis van stijlen uit een Word-document kan nuttig zijn om te identificeren, lijst en tellen van de paragrafen en runs van tekst geformatteerd met een specifieke stijl. Zo moet u bijvoorbeeld bepaalde soorten inhoud in het document identificeren, zoals voorbeelden, titels, referenties, trefwoorden, figuurnamen en case studies.

Om dit nog een paar stappen verder te zetten, kan dit ook worden gebruikt om de structuur van het document, gedefinieerd door de stijlen die het gebruikt, te benutten om het document te hergebruiken voor een andere uitvoer, zoals HTML. Dit is in feite hoe de Aspose documentatie wordt gebouwd, Aspose.Words op de test. Een gereedschap gebouwd met behulp van Aspose.Words neemt de bron Word-documenten en splitst ze in onderwerpen op bepaalde hoofdniveaus. Een XML-bestand wordt geproduceerd met behulp van Aspose.Words die gebruikt wordt om de navigatieboom te bouwen die je links ziet. En toen Aspose.Words zet elk onderwerp om in HTML.

De oplossing voor het ophalen van tekst geformatteerd met specifieke stijlen in een Word-document is typisch economisch en eenvoudig met behulp van Aspose.Words.

### De oplossing

Om te illustreren hoe gemakkelijk Aspose.Words behandelt het ophalen van inhoud op basis van stijlen, laten we kijken naar een voorbeeld. In dit voorbeeld gaan we tekst ophalen die is geformatteerd met een specifieke paragraafstijl en een karakterstijl uit een voorbeeld Word-document. Op een hoog niveau gaat het om:# Een Word-document openen met behulp van de [Document](https://reference.aspose.com/words/net/aspose.words/document/) klasse.# Verzamelen van alle alinea's en alle draait in het document.# Alleen de vereiste alinea's en runs selecteren. In het bijzonder, zullen we ophalen tekst geformatteerd met de

![working-with-styles-and-themes-aspose-words-net](/words/net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


In dit sample document, de tekst geformatteerd met de

### De code

De implementatie van een op stijl gebaseerde query is vrij eenvoudig in de Aspose.Words document object model, omdat het gewoon gebruik maakt van tools die al op zijn plaats. Twee klassen methoden zijn geïmplementeerd voor deze oplossing:# **ParagraphsByStyleName** Wat? Deze methode haalt een reeks van die alinea's op in het document met een specifieke stijlnaam. # **RunsByStyleName** Wat? Deze methode haalt een reeks van die runs op in het document met een specifieke stijlnaam. Beide methoden zijn zeer vergelijkbaar, de enige verschillen zijn de knooppunttypes en de weergave van de stijlinformatie binnen de paragraaf en run nodes. Hier is een implementatie van de paragrafen ByStyleName: Hieronder vindt u alle alinea's geformatteerd met de opgegeven stijl.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cs" >}}

{{% alert color="primary" %}}

Deze uitvoering maakt ook gebruik van de `Document.GetChildNodes` methode van de `Document` klasse, die een verzameling van alle knooppunten met het opgegeven type, die in dit geval in alle paragrafen.

De tweede parameter van de **Document.GetChildNodes** methode is ingesteld op true. Dit dwingt de **Document.GetChildNodes** methode om uit alle kindknooppunten recursief te kiezen, in plaats van de directe kinderen te selecteren.

{{% /alert %}}

Het is ook de moeite waard erop te wijzen dat de alinea's collectie niet een onmiddellijke overhead omdat de alinea's worden geladen in deze collectie alleen wanneer u toegang tot items in hen. Daarna hoeft u alleen maar door de collectie te gaan, de standaard voor elke operator te gebruiken en alinea's toe te voegen die de opgegeven stijl hebben aan de alinea's. Met Style array. De `Paragraph` stijlnaam kan worden gevonden in de [Style.Name](https://reference.aspose.com/words/net/aspose.words/style/name/) eigendom van de [Paragraph.ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraph/paragraphformat/) object. De implementatie van RunsByStyleName is bijna hetzelfde, hoewel we duidelijk gebruik maken van [NodeType.Run](https://reference.aspose.com/words/net/aspose.words/nodetype/) om run nodes op te halen. De [Font.Style](https://reference.aspose.com/words/net/aspose.words/font/style/) eigendom van een [Run](https://reference.aspose.com/words/net/aspose.words/run/) object wordt gebruikt voor toegang tot stijl informatie in de **Run** knooppunten. Hieronder vindt u alle programma's geformatteerd met de opgegeven stijl.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cs" >}}


Wanneer beide vragen zijn geïmplementeerd, hoeft u alleen maar een documentobject door te geven en de stijlnamen van de inhoud op te geven die u wilt ophalen: Onderstaand voorbeeld run queries en display resultaten. U kunt het sjabloonbestand van dit voorbeeld downloaden van [Hier](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Styles.docx).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cs" >}}

### Eindresultaat

Wanneer alles klaar is, zal het uitvoeren van het sample de volgende uitvoer weergeven:

![styles-and-themes-aspose-words-net](/words/net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


Zoals je kunt zien, is dit een heel eenvoudig voorbeeld, met het nummer en de tekst van de verzamelde paragrafen en loopt in het voorbeeld Word document.

## Alle stijlen van sjabloon kopiëren

Er zijn gevallen waarin u alle stijlen van het ene document naar het andere wilt kopiëren. U kunt `Document.CopyStylesFromTemplate` methode om stijlen van het opgegeven sjabloon naar een document te kopiëren. Wanneer stijlen worden gekopieerd van een sjabloon naar een document, worden gelijknamige stijlen in het document geherdefinieerd om de stijlbeschrijvingen in het sjabloon aan te passen. Unieke stijlen van de sjabloon worden gekopieerd naar het document. Unieke stijlen in het document blijven intact. Below code voorbeeld toont hoe je stijlen van het ene document naar het andere kopieert.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cs" >}}

## Hoe te Manipuleren Themaeigenschappen

Wij hebben de basis API in Aspose.Words toegang tot thema-eigenschappen van documenten. Voor nu, dit API omvat:

- Thema
- ThemaFonts
- Themakleuren

Hier is hoe u kunt krijgen thema eigenschappen:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-GetThemeProperties.cs" >}}

En hier is hoe u thema eigenschappen kunt instellen:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-SetThemeProperties.cs" >}}
