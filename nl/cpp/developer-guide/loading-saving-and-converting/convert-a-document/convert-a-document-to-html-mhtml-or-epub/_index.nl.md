---
title: Een Document converteren naar HTML, MHTML of EPUB
second_title: Aspose.Words voor C++
articleTitle: Een Document converteren naar HTML, MHTML of EPUB
linktitle: Een Document converteren naar HTML, MHTML of EPUB
description: "Converteer een document van bijna elk formaat naar HTML of MHTML, evenals naar EPUB formaat met behulp van C++. U kunt ook opslagopties opgeven voor het beheren van het uitvoerdocument."
type: docs
weight: 20
url: /nl/cpp/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-10-21-08-52-03
---

Documenten in HTML en MHTML flow-layout formaten zijn ook erg populair en kunnen op elk webplatform worden gebruikt. Om die reden is het converteren van documenten naar HTML en MHTML een belangrijk kenmerk van Aspose.Words.

EPUB (afkorting van "Electronic Publication") is een HTML-gebaseerd formaat dat vaak wordt gebruikt voor elektronische boekdistributie. Deze indeling wordt volledig ondersteund in Aspose.Words voor het exporteren van elektronische boeken die compatibel zijn met de meeste leesapparaten.

## Een Document converteren

Voor eenvoudige omzetting naar HTML, MHTML of EPUB wordt een van de [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) methode overbelastingen gebruikt. U kunt het document opslaan in een bestand of stream en expliciet de opslagindeling voor uitvoerdocumenten instellen of definiëren vanuit de bestandsextensie.

Het volgende voorbeeld laat zien hoe DOCX Naar HTML te converteren met het opgeven van een opslagformaat:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocxToHtml.cpp" >}}

Als u een document wilt converteren naar MHTML of EPUB, gebruikt u respectievelijk `SaveFormat.Mhtml` of `SaveFormat.Epub`.

## Een Document converteren met retourinformatie

De HTML - indeling ondersteunt niet veel Microsoft Word - Functies en als we een documentmodel zo dicht mogelijk bij het origineel moeten herstellen, moeten we wat extra informatie opslaan in het HTML - bestand. Deze informatie wordt ook wel "round-trip informatie" genoemd. Voor dit doel biedt Aspose.Words de mogelijkheid om retourinformatie te exporteren bij het opslaan naar HTML, MHTML of EPUB met behulp van de eigenschap [ExportRoundtripInformation](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportroundtripinformation/). Als u de retourinformatie opslaat, kunt u Documenteigenschappen zoals tabbladen, opmerkingen, kopteksten en voetteksten herstellen tijdens het laden van documenten van de vermelde indelingen terug in een **Document** - object.

De standaardwaarde is **true** voor HTML en **false** voor MHTML en EPUB:

- Wanneer **true** de retourinformatie wordt geëxporteerd als - aw - * CSS eigenschappen van de overeenkomstige HTML elementen
- Wanneer **false** geen retourinformatie in geproduceerde bestanden moet worden uitgevoerd

Het volgende codevoorbeeld laat zien hoe retourinformatie kan worden geëxporteerd bij het converteren van een document van DOCX Naar HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocumentToHtmlWithRoundtrip.cpp" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Bewaaropties opgeven bij conversie naar HTML

Aspose.Words maakt het mogelijk om een Word document te converteren naar HTML met behulp van standaard-of aangepaste opslagopties. Enkele voorbeelden van aangepaste opslagopties worden hieronder beschreven.

### Een map opgeven voor het opslaan van Resources

Met behulp van Aspose.Words kunnen we een fysieke map opgeven waarin alle bronnen, zoals afbeeldingen, lettertypen en externe CSS, worden opgeslagen wanneer een document wordt geconverteerd naar HTML. Standaard is dit een lege string.

Het opgeven van de Eigenschap [ResourceFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolder/) is de eenvoudigste manier om de map in te stellen waar alle bronnen moeten worden geschreven. We kunnen individuele eigenschappen gebruiken, zoals [FontsFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolder/) die lettertypen opslaat in de opgegeven map en [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolder/) die afbeeldingen opslaat in een opgegeven map. Wanneer een relatief pad is opgegeven, verwijzen **FontsFolder** en **ImagesFolder** naar de map waar de codeassemblage zich bevindt, **ResourceFolder** en [CssStyleSheetFileName](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_cssstylesheetfilename/) naar de uitvoermap waar het HTML document zich bevindt.

In dit voorbeeld geeft **ResourceFolder** het relatieve pad op. Dit pad verwijst naar de uitvoermap waarin het HTML document is opgeslagen. De waarde van de eigenschap **ResourceFolderAlias** wordt gebruikt om URLs voor alle resources te maken.

Het volgende codevoorbeeld laat zien hoe u met deze eigenschappen kunt werken:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportResourcesUsingHtmlSaveOptions.cpp" >}}

Met behulp van de eigenschap [ResourceFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolderalias/) kunnen we ook de naam opgeven van de map die wordt gebruikt om URIs te construeren van alle bronnen die in een HTML document zijn geschreven. Dit is de eenvoudigste manier om te specificeren hoe URIs moet worden gegenereerd voor alle bronbestanden. Dezelfde informatie kan afzonderlijk worden opgegeven voor afbeeldingen en lettertypen via respectievelijk [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolderalias/) en [FontsFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolderalias/) eigenschappen.

Er is echter geen individuele eigenschap voor CSS. Het gedrag van de **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** en **CssStyleSheetFileName** eigenschappen worden niet gewijzigd. Merk op dat de eigenschap **CssStyleSheetFileName** zowel wordt gebruikt voor het opgeven van de mapnaam als de bestandsnaam.

- **ResourceFolder** heeft een lagere prioriteit dan mappen die zijn opgegeven via **FontsFolder**, **ImagesFolder** en **CssStyleSheetFileName**. Als de map die in **ResourceFolder** is opgegeven niet bestaat, wordt deze automatisch aangemaakt.
- **ResourceFolderAlias** heeft een lagere prioriteit dan **FontsFolderAlias** en **ImagesFolderAlias**. Als **ResourceFolderAlias** leeg is, wordt de waarde van de eigenschap **ResourceFolder** gebruikt om resource URIs te maken. Als **ResourceFolderAlias** is ingesteld op "." (punt), bevat resource URIs alleen bestandsnamen zonder een pad op te geven.

### Bronnen Voor Base64 Encoding Fonts Exporteren

Aspose.Words biedt de mogelijkheid om aan te geven of font resources moeten worden ingebed in HTML in Base64-coderingen. Gebruik hiervoor de eigenschap [ExportFontsAsBase64](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontsasbase64/) – Dit is een uitbreiding van de Eigenschap [ExportFontResources](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontresources/). Standaard is de waarde **false** en worden lettertypen in afzonderlijke bestanden geschreven. Maar als deze optie is ingesteld op **true**, worden lettertypen ingebed in de CSS van het document in Base64-codering. De eigenschap **ExportFontsAsBase64** heeft alleen invloed op HTML formaat en heeft geen invloed op EPUB en MHTML.

Het volgende codevoorbeeld laat zien hoe u Base64-gecodeerde lettertypen exporteert naar HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportFontsAsBase64.cpp" >}}

## Bewaaropties opgeven bij conversie naar EPUB

Aspose.Words maakt het mogelijk om een Word - document om te zetten in EPUB - indeling met behulp van standaard-of aangepaste opslagopties. U kunt een aantal opties opgeven door een instantie van [HtmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/) door te geven aan de methode `Save`.

Het volgende codevoorbeeld laat zien hoe u een Word - document converteert naar EPUB met het opgeven van enkele aangepaste opslagopties:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cpp" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
