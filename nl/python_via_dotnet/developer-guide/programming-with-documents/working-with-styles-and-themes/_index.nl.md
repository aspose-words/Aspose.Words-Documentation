---
title: Werken met Styles en Thema's
second_title: Aspose.Words voor Python via .NET
articleTitle: Werken met Styles en Thema's
linktitle: Werken met Styles en Thema's
description: "Toegang tot en beheer van stijlen en thema's in een document met behulp van Python."
type: docs
weight: 110
url: /nl/python-net/working-with-styles-and-themes/
---

De [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) klasse wordt gebruikt om ingebouwde instellingen te beheren en gebruikersinstellingen toe te passen op stijlen.

## Toegang tot stijlen

U kunt een verzameling van stijlen gedefinieerd in het document met behulp van de [Document.styles](https://reference.aspose.com/words/python-net/aspose.words/documentbase/styles/) eigendom. Deze collectie bevat zowel de ingebouwde als door de gebruiker gedefinieerde stijlen in een document. Een bepaalde stijl kan worden verkregen door de naam/alias, stijlidentificatie, of index. Het volgende voorbeeld toont hoe toegang te krijgen tot de verzameling van stijlen gedefinieerd in het document.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-AccessStyles.py" >}}

## Hoe inhoud te extraheren op basis van stijlen

Op een eenvoudig niveau, het ophalen van de inhoud op basis van stijlen uit een Word-document kan nuttig zijn om te identificeren, lijst en tellen van de paragrafen en runs van tekst geformatteerd met een specifieke stijl. Zo moet u bijvoorbeeld bepaalde soorten inhoud in het document identificeren, zoals voorbeelden, titels, referenties, trefwoorden, figuurnamen en case studies.

Om dit nog een paar stappen verder te zetten, kan dit ook worden gebruikt om de structuur van het document, gedefinieerd door de stijlen die het gebruikt, te benutten om het document te hergebruiken voor een andere uitvoer, zoals HTML. Dit is in feite hoe de Aspose documentatie wordt gebouwd, Aspose.Words op de test. Een gereedschap gebouwd met behulp van Aspose.Words neemt de bron Word-documenten en splitst ze in onderwerpen op bepaalde hoofdniveaus. Een XML-bestand wordt geproduceerd met behulp van Aspose.Words die gebruikt wordt om de navigatieboom te bouwen die je links ziet. En toen Aspose.Words zet elk onderwerp om in HTML.

De oplossing voor het ophalen van tekst geformatteerd met specifieke stijlen in een Word-document is typisch economisch en eenvoudig met behulp van Aspose.Words.

### De oplossing

Om te illustreren hoe gemakkelijk Aspose.Words behandelt het ophalen van inhoud op basis van stijlen, laten we kijken naar een voorbeeld. In dit voorbeeld gaan we tekst ophalen die is geformatteerd met een specifieke paragraafstijl en een karakterstijl uit een voorbeeld Word-document. Op hoog niveau gaat het hierbij om:
- Een Word-document openen met de [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Klasse.
- Verzamelen van alle paragrafen en alle runs in het document.
- Het selecteren van alleen de vereiste paragrafen en runs. In het bijzonder, zullen we ophalen tekst geformatteerd met de

![working-with-styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


In dit sample document, de tekst geformatteerd met de

### De code

De implementatie van een op stijl gebaseerde query is vrij eenvoudig in de Aspose.Words document object model, omdat het gewoon gebruik maakt van tools die al op zijn plaats. Voor deze oplossing worden twee klassemethoden geïmplementeerd:
- **alinea_op_stijl_naam** Wat? Deze methode haalt een reeks van die alinea's op in het document met een specifieke stijlnaam.
- **runs_by_style_name** Wat? Deze methode haalt een reeks van die runs op in het document met een specifieke stijlnaam. Beide methoden zijn zeer vergelijkbaar, de enige verschillen zijn de knooppunttypes en de weergave van de stijlinformatie binnen de paragraaf en run nodes. Hier is een implementatie van `paragraphs_by_style_name`: Hieronder vindt u alle alinea's geformatteerd met de opgegeven stijl.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ParagraphsByStyleName.py" >}}

{{% alert color="primary" %}}

Deze uitvoering maakt ook gebruik van de [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) methode van de [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) klasse, die een verzameling van alle knooppunten met het opgegeven type, die in dit geval in alle paragrafen.

De tweede parameter van de [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) methode is ingesteld op `True`. Dit dwingt de [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) methode om uit alle kindknooppunten recursief te kiezen, in plaats van de directe kinderen te selecteren.

{{% /alert %}}

Het is ook de moeite waard erop te wijzen dat de alinea's collectie niet een onmiddellijke overhead omdat de alinea's worden geladen in deze collectie alleen wanneer u toegang tot items in hen. Daarna hoef je alleen maar door de collectie te gaan, met behulp van de standaard voor elke operator en alinea's toe te voegen die de opgegeven stijl hebben aan de array van alinea's_with_style. De `Paragraph` stijlnaam kan worden gevonden in de [Style.name](https://reference.aspose.com/words/python-net/aspose.words/style/name/) eigendom van de [Paragraph.paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/paragraph/paragraph_format/) object. De tenuitvoerlegging van **runs_by_style_name** is bijna hetzelfde, hoewel we duidelijk gebruiken [NodeType.RUN](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#run) om run nodes op te halen. De [Font.style](https://reference.aspose.com/words/python-net/aspose.words/font/style/) eigendom van een [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) object wordt gebruikt voor toegang tot stijl informatie in de [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) knooppunten. Hieronder vindt u alle programma's geformatteerd met de opgegeven stijl.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-RunsByStyleName.py" >}}


Wanneer beide vragen zijn geïmplementeerd, hoeft u alleen maar een documentobject door te geven en de stijlnamen van de inhoud op te geven die u wilt ophalen: Onderstaand voorbeeld run queries en display resultaten. U kunt het sjabloonbestand van dit voorbeeld downloaden van [Hier](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Styles.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractContentBasedOnStyles.py" >}}

### Eindresultaat

Wanneer alles klaar is, zal het uitvoeren van het sample de volgende uitvoer weergeven:

![styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


Zoals je kunt zien, is dit een heel eenvoudig voorbeeld, met het nummer en de tekst van de verzamelde paragrafen en loopt in het voorbeeld Word document.

## Alle stijlen van sjabloon kopiëren

Er zijn gevallen waarin u alle stijlen van het ene document naar het andere wilt kopiëren. U kunt [Document.copy_styles_from_template](https://reference.aspose.com/words/python-net/aspose.words/document/copy_styles_from_template/) methode om stijlen van het opgegeven sjabloon naar een document te kopiëren. Wanneer stijlen worden gekopieerd van een sjabloon naar een document, worden gelijknamige stijlen in het document geherdefinieerd om de stijlbeschrijvingen in het sjabloon aan te passen. Unieke stijlen van de sjabloon worden gekopieerd naar het document. Unieke stijlen in het document blijven intact. Below code voorbeeld toont hoe je stijlen van het ene document naar het andere kopieert.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-CopyStyles.py" >}}

## Hoe te Manipuleren Themaeigenschappen

Wij hebben de basis API in Aspose.Words toegang tot thema-eigenschappen van documenten. Voor nu, dit API omvat:

- [Theme](https://reference.aspose.com/words/python-net/aspose.words.themes/theme/)
- [ThemeFonts](https://reference.aspose.com/words/python-net/aspose.words.themes/themefonts/)
- [ThemeColors](https://reference.aspose.com/words/python-net/aspose.words.themes/themecolors/)

Hier is hoe u kunt krijgen thema eigenschappen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-GetThemeProperties.py" >}}

En hier is hoe u thema eigenschappen kunt instellen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-SetThemeProperties.py" >}}
