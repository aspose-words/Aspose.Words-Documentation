---
title: Een document omzetten naar HTML, MHTML of EPUB in C#
second_title: Aspose.Words voor .NET
articleTitle: Een document omzetten naar HTML, MHTML of EPUB
linktitle: Een document omzetten naar HTML, MHTML of EPUB
description: "Een document omzetten van bijna elk formaat naar HTML of MHTML, evenals naar EPUB-formaat met behulp van C#. U kunt ook opslaan opties voor het beheer van het uitvoerdocument."
type: docs
weight: 20
url: /nl/net/convert-a-document-to-html-mhtml-or-epub/
---

Documenten in HTML en MHTML flow-layout formaten zijn ook erg populair en kunnen worden gebruikt op elk webplatform. Daarom is het omzetten van documenten naar HTML en MHTML een belangrijk kenmerk van Aspose.Words.

EPUB (kort voor "Elektronische Publicatie") is een op HTML gebaseerd formaat dat gewoonlijk wordt gebruikt voor elektronische boekdistributie. Dit formaat wordt volledig ondersteund in Aspose.Words voor het exporteren van elektronische boeken die compatibel zijn met de meeste leesapparaten.

## Een document omzetten

Voor eenvoudige conversie naar HTML, MHTML, of EPUB, een van de [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) methode overbelasting wordt gebruikt. U kunt het document opslaan in een bestand of stream en expliciet instellen van het uitvoerdocument opslaan formaat of definiëren van de bestandsnaam extensie.

Het volgende voorbeeld laat zien hoe je DOCX kunt converteren naar HTML met een opslagformaat:

**.NET**

{{< highlight csharp >}}

// Load the document from disk.
Document doc = new Document(dataDir + "Test File.docx");

// Save the document into HTML.
doc.Save(dataDir + "Document", SaveFormat.Html);
{{< /highlight >}}

Om een document naar MHTML of EPUB te converteren, gebruik `SaveFormat.Mhtml` of `SaveFormat.Epub` respectievelijk.

## Een document omzetten met rondreisinformatie

Het HTML-formaat ondersteunt niet veel Microsoft Word functies, en als we een documentmodel zo dicht mogelijk bij het origineel moeten herstellen, moeten we wat extra informatie opslaan in het HTML-bestand. Deze informatie wordt ook wel "rondreisinformatie" genoemd. Daartoe, Aspose.Words biedt een mogelijkheid om ronde-trip informatie te exporteren bij het opslaan naar HTML, MHTML, of EPUB met behulp van de [ExportRoundtripInformation](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportroundtripinformation/) eigendom. Het opslaan van de ronde-trip informatie maakt het mogelijk om documenten eigenschappen zoals tabs, opmerkingen, headers en voetteksten tijdens het laden documenten van de vermelde formaten terug te herstellen in een **Document** object.

De standaardwaarde is **true** voor HTML en **false** voor MHTML en EPUB:

- Wanneer **true**, de rondreisinformatie wordt geëxporteerd als - aw - * CSS eigenschappen van de overeenkomstige HTML elementen
- Wanneer **false**, er is geen ronde-trip informatie om naar geproduceerde bestanden te worden uitgevoerd

Het volgende voorbeeld van code laat zien hoe ronde-trip informatie te exporteren bij het omzetten van een document van DOCX in HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtmlWithRoundtrip-ConvertDocumentToHtmlWithRoundtrip.cs" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Opties opslaan bij conversie naar HTML

Aspose.Words maakt het mogelijk om een Word-document te converteren naar HTML met behulp van standaard of aangepaste opties voor opslaan. Enkele voorbeelden van aangepaste opties voor opslaan worden hieronder beschreven.

### Geef een map op voor het opslaan van bronnen

Gebruik Aspose.Words We kunnen een fysieke map opgeven waar alle bronnen, zoals afbeeldingen, lettertypen en externe CSS, worden opgeslagen wanneer een document wordt omgezet naar HTML. Standaard is dit een lege tekenreeks.

Specificeren van de [ResourceFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolder/) eigenschap is de eenvoudigste manier om de map in te stellen waar alle bronnen geschreven moeten worden. We kunnen individuele eigenschappen gebruiken, zoals [FontsFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolder/) die lettertypen opslaat in de opgegeven map en [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolder/) die afbeeldingen opslaat in een opgegeven map. Wanneer een relatief pad is gespecificeerd, **FontsFolder** en **ImagesFolder** verwijzen naar de map waar de codeset zich bevindt; **ResourceFolder** en [CssStyleSheetFileName](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/cssstylesheetfilename/) verwijzen naar de uitvoermap waar het HTML-document zich bevindt.

In dit voorbeeld, **ResourceFolder** specificeert het relatieve pad. Dit pad verwijst naar de uitvoermap waar HTML-document wordt opgeslagen. De waarde van de **ResourceFolderAlias** eigenschap wordt gebruikt om URL's aan te maken voor alle bronnen.

Het volgende voorbeeld van code laat zien hoe met deze eigenschappen te werken:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportResourcesUsingHtmlSaveOptions-ExportResourcesUsingHtmlSaveOptions.cs" >}}

Gebruik van de [ResourceFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolderalias/) eigenschap, kunnen we ook de naam van de map die gebruikt wordt om URI's van alle bronnen geschreven in een HTML-document te construeren. Dit is de eenvoudigste manier om aan te geven hoe URI's moeten worden gegenereerd voor alle resource bestanden. Dezelfde informatie kan voor afbeeldingen en lettertypen afzonderlijk gespecificeerd worden via [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolderalias/) en [FontsFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolderalias/) eigenschappen, respectievelijk.

Er is echter geen individuele eigenschap voor CSS. Het gedrag van de **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** en **CssStyleSheetFileName** eigenschappen worden niet gewijzigd. Merk op dat de **CssStyleSheetFileName** eigenschap wordt zowel gebruikt voor het specificeren van mapnaam en bestandsnaam.

- **ResourceFolder** heeft lagere prioriteit dan mappen opgegeven via **FontsFolder**, **ImagesFolder**, en **CssStyleSheetFileName**. Als de map in de **ResourceFolder** bestaat niet, het wordt automatisch aangemaakt.
- **ResourceFolderAlias** heeft een lagere prioriteit dan **FontsFolderAlias** en **ImagesFolderAlias**. Als **ResourceFolderAlias** is leeg, de waarde van de **ResourceFolder** eigenschap zal worden gebruikt om resource URI's aan te maken. Als **ResourceFolderAlias** is ingesteld op "." (punt), resource URI's zullen alleen bestandsnamen bevatten zonder een pad te specificeren.

### Export Base64 Codering Lettertypenbronnen

Aspose.Words biedt een mogelijkheid om aan te geven of lettertypebronnen moeten worden ingebed in HTML in Base64 coderingen. Om dit uit te voeren, gebruik de [ExportFontsAsBase64](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontsasbase64/) eigenschap Dit is een uitbreiding van de [ExportFontResources](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontresources/) eigendom. Standaard is de waarde **false**, en lettertypen worden in aparte bestanden geschreven. Maar als deze optie ingesteld is **true**, De lettertypen zullen worden ingebed in de CSS van het document in Base64-codering. De **ExportFontsAsBase64** eigenschap heeft alleen invloed op HTML-formaat en heeft geen invloed op EPUB en MHTML.

Het volgende voorbeeld van code laat zien hoe je Base64-gecodeerde lettertypen naar HTML kunt exporteren:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportFontsAsBase64-ExportFontsAsBase64.cs" >}}

## Opties opslaan bij conversie naar EPUB

Aspose.Words maakt het mogelijk om een Word-document te converteren naar EPUB-formaat met behulp van standaard of aangepaste opties voor opslaan. U kunt een aantal opties opgeven door een instantie van [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) aan de [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) methode.

Het volgende voorbeeld van code laat zien hoe u een Word-document naar EPUB converteert met een aantal aangepaste opties voor opslaan:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cs" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Zie ook

- [Hoe ronde-tripinformatie exporteren bij opslaan naar HTML](/words/net/custom-styles-used-for-proper-aspose-words-html-aspose-words-roundtrip/)
