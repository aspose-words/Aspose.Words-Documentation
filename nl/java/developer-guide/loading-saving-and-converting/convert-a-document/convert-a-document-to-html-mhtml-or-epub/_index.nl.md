---
title: Een document omzetten naar HTML, MHTML of EPUB
second_title: Aspose.Words voor Java
articleTitle: Een document omzetten naar HTML, MHTML of EPUB
linktitle: Een document omzetten naar HTML, MHTML of EPUB
description: "Gebruik Aspose.Words voor Java documenten van Word of andere ondersteunde formaten converteren naar HTML, MHTML of EPUB."
type: docs
weight: 20
url: /nl/java/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-10-21-08-52-03
---

Documenten in HTML en MHTML flow-layout formaten zijn ook zeer populair en kunnen worden gebruikt op elk webplatform. Daarom is het omzetten van documenten naar HTML en MHTML een belangrijk kenmerk van Aspose.Words.

EPUB (kort voor "Elektronische Publicatie") is een op HTML gebaseerd formaat dat wordt gebruikt voor elektronische boekdistributie. Dit formaat wordt volledig ondersteund in Aspose.Words voor het exporteren van elektronische boeken die compatibel zijn met de meeste leesapparaten.

## Een document omzetten

Voor eenvoudige conversie naar HTML, MHTML, of EPUB, een van de [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) methode overbelasting wordt gebruikt. U kunt het document opslaan in een bestand of stream en expliciet instellen van het uitvoerdocument opslaan formaat of definiëren van de bestandsnaam extensie.

Het volgende voorbeeld laat zien hoe je DOCX kunt converteren naar HTML met een opslagformaat:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

Om een document naar MHTML of EPUB te converteren, gebruik `SaveFormat.MHTML` of `SaveFormat.EPUB` respectievelijk.

## Een document omzetten met rondreisinformatie

Het HTML-formaat ondersteunt niet veel Microsoft Word functies, en als we een documentmodel zo dicht mogelijk bij het origineel moeten herstellen, moeten we wat extra informatie opslaan in het HTML-bestand. Dergelijke informatie wordt ook wel "rondreisinformatie" genoemd. Voor dit doel, Aspose.Words biedt een mogelijkheid om ronde-trip informatie te exporteren bij het opslaan naar HTML, MHTML, of EPUB met behulp van de [ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation) eigendom. Het opslaan van de ronde-trip informatie maakt het herstellen van documenten eigenschappen zoals tabs, opmerkingen, headers en voetteksten tijdens het laden documenten van de vermelde formaten terug in een **Document** object.

De standaard waarde is **true** voor HTML en **false** voor MHTML en EPUB:

- Wanneer **true**, de rondreisinformatie wordt geëxporteerd als - aw - * CSS-eigenschappen van de overeenkomstige HTML-elementen
- Wanneer **false**, er is geen ronde-trip-informatie om in geproduceerde bestanden uit te voeren

Het volgende voorbeeld van code laat zien hoe ronde-trip informatie te exporteren bij het omzetten van een document van DOCX in HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Opties opslaan bij conversie naar HTML

Aspose.Words staat het converteren van een Word-document naar HTML met behulp van standaard of aangepaste opties voor opslaan. Enkele voorbeelden van aangepaste opties voor opslaan worden hieronder beschreven.

### Geef een map op voor het opslaan van bronnen

Gebruik Aspose.Words we kunnen een fysieke map opgeven waar alle bronnen, zoals afbeeldingen, lettertypen en externe CSS, worden opgeslagen wanneer een document wordt omgezet naar HTML. Standaard is dit een lege tekenreeks.

Specificeren van de [ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder) eigenschap is de eenvoudigste manier om de map in te stellen waar alle bronnen geschreven moeten worden. We kunnen individuele eigenschappen gebruiken, zoals [FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder) die lettertypen opslaat in de opgegeven map en [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder) die afbeeldingen opslaat in een opgegeven map. Wanneer een relatief pad is gespecificeerd, **FontsFolder** en **ImagesFolder** verwijzen naar de map waar de codeset zich bevindt; **ResourceFolder** en [CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName) verwijzen naar de uitvoermap waar het HTML-document zich bevindt.

In dit voorbeeld, **ResourceFolder** specificeert het relatieve pad. Dit pad verwijst naar de uitvoermap waar het HTML-document wordt opgeslagen. De waarde van de **ResourceFolderAlias** eigenschap wordt gebruikt om URL's te maken voor alle bronnen.

Het volgende code voorbeeld laat zien hoe te werken met deze eigenschappen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

Gebruik van de [ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias) eigenschap, kunnen we ook de naam van de map die wordt gebruikt om URI's van alle bronnen geschreven in een HTML-document te construeren. Dit is de eenvoudigste manier om aan te geven hoe URI's moeten worden gegenereerd voor alle resource bestanden. Dezelfde informatie kan afzonderlijk worden opgegeven voor afbeeldingen en lettertypen via [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias) en [FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias) eigenschappen, respectievelijk.

Er is echter geen individuele eigenschap voor CSS. Het gedrag van de **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** en **CssStyleSheetFileName** eigenschappen worden niet gewijzigd. Merk op dat de **CssStyleSheetFileName** eigenschap wordt zowel gebruikt voor het specificeren van mapnaam en bestandsnaam.

- **ResourceFolder** heeft lagere prioriteit dan mappen opgegeven via **FontsFolder**, **ImagesFolder**, en **CssStyleSheetFileName**. Als de map in de **ResourceFolder** bestaat niet, het wordt automatisch aangemaakt.
- **ResourceFolderAlias** heeft een lagere prioriteit dan **FontsFolderAlias** en **ImagesFolderAlias**. Als **ResourceFolderAlias** is leeg, de waarde van de **ResourceFolder** eigenschap zal worden gebruikt om resource URI's aan te maken. Als **ResourceFolderAlias** is ingesteld op "." (punt), resource URI's bevatten alleen bestandsnamen zonder een pad te specificeren.

### Export Base64 Codering Lettertypen Hulpbronnen

Aspose.Words biedt een mogelijkheid om aan te geven of font resources moeten worden ingebed in HTML in Base64 coderingen. Om dit uit te voeren, gebruik de [ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64) eigenschap Dit is een uitbreiding van de [ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources) eigendom. Standaard is de waarde **false**, en lettertypen worden in aparte bestanden geschreven. Maar als deze optie ingesteld is op **true**, De lettertypen zullen worden ingebed in de CSS van het document in Base64 codering. De **ExportFontsAsBase64** eigenschap heeft alleen invloed op HTML-formaat en heeft geen invloed op EPUB en MHTML.

Het volgende codevoorbeeld laat zien hoe Base64-gecodeerde lettertypen naar HTML te exporteren:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## Opties opslaan bij conversie naar EPUB

Aspose.Words maakt het mogelijk om een Word-document te converteren naar EPUB-formaat met behulp van standaard of aangepaste opties voor opslaan. U kunt een aantal opties opgeven door een instantie van [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) aan de [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions) methode.

Het volgende voorbeeld van code laat zien hoe een Word-document naar EPUB wordt omgezet met een aantal aangepaste opties voor opslaan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc).

{{% /alert %}}

## Zie ook

- [Hoe ronde-tripininformatie exporteurs bij opslaan naar HTML](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)
