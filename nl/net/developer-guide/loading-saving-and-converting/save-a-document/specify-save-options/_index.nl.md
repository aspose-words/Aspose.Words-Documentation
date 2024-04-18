---
title: Opties opslaan in C#
second_title: Aspose.Words voor .NET
articleTitle: Opslaan opties specificeren
linktitle: Opslaan opties specificeren
description: "Het opslaan met behulp van nauwkeurigere controle C#."
type: docs
weight: 10
url: /nl/net/specify-save-options/
---

Bij het opslaan van een document kunt u een aantal geavanceerde eigenschappen instellen. Aspose.Words geeft u de [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/) klasse, die meer nauwkeurige controle van het opslaan proces mogelijk maakt. Er zijn overbelastingen van de **Save** methode die een **SaveOptions** object Het moet een object van een klasse afgeleid van de **SaveOptions** Klasse. Elke opslag formaat heeft een overeenkomstige klasse die opslaan opties voor dit opslaan formaat bevat, bijvoorbeeld, er is [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) voor het opslaan naar PDF-formaat, [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) voor het opslaan aan Markdown formaat, of [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) voor het opslaan naar een afbeelding. Dit artikel geeft voorbeelden van werken met een aantal opties klassen afgeleid van **SaveOptions**.

Het volgende voorbeeld van code laat zien hoe u de opties voor het opslaan van het document in HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cs" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Het artikel beschrijft een paar eigenschappen die u kunt controleren bij het opslaan van een document.

## Een document versleutelen Met een wachtwoord

Gebruik de **Password** eigenschap om een wachtwoord voor een gecodeerd document te krijgen of in te stellen. Gebruik de **Password** eigenschap van de corresponderende klasse om te werken met het geselecteerde documentformaat.

Bijvoorbeeld bij het opslaan van een document naar DOC of DOT formaat, gebruik de [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) eigendom van de [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) Klasse.

Het volgende voorbeeld van code laat zien hoe u een wachtwoord instelt om een document te versleutelen met behulp van de RC4-encryptiemethode:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cs" >}}

Bij het opslaan van een document in Odt formaat, gebruik de [Password](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/password/) eigendom van de [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/) Klasse.

Het volgende codevoorbeeld laat zien hoe OpenDocument versleuteld met een wachtwoord kan worden geladen en opgeslagen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cs" >}}

Niet alle formaten ondersteunen encryptie en het gebruik van **Password** eigendom.

## Document opslaan van voortgangsmeldingen tonen

Aspose.Words biedt de mogelijkheid om de [ProgressCallback](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/progresscallback/) eigenschap om meldingen te krijgen over de voortgang van het opslaan van documenten.

Het is nu beschikbaar bij het opslaan naar DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, of TXT-formaten.

## De aanmaaktijd van het document bijwerken

Aspose.Words biedt een vermogen om de [CreatedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/createdtime/) eigenschap om de aanmaakdatum van het document in UTC te verkrijgen of in te stellen. U kunt deze waarde ook bijwerken voordat u de [UpdateCreatedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatecreatedtimeproperty/) optie.

Het volgende voorbeeld van de code laat zien hoe u het document aanmaaktijd kunt bijwerken:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-UpdateIfLastPrinted.cs" >}}

## Laatste opgeslagen eigenschap bijwerken

Aspose.Words biedt een vermogen om de [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) eigenschap om een waarde te verkrijgen of in te stellen die bepaalt of [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) eigenschap wordt bijgewerkt voordat u opslaat.

Het volgende voorbeeld van code laat zien hoe deze eigenschap in te stellen en het document op te slaan:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cs" >}}

## Externe bronnen controleren bij het opslaan van een document in HTML of SVG

Om HTML of SVG naar PDF te converteren, kunt u eenvoudig de [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) methode en geef een bestandsnaam op met de extensie Als u afbeeldingen, CSS, enz. wilt laden van externe bronnen, kunt u gebruik maken [IResourceSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/iresourcesavingcallback/).

Het volgende voorbeeld van code laat zien hoe u HTML naar PDF kunt converteren en afbeeldingen van externe bronnen kunt laden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ImageLoadingWithCredentialsHandler-ImageLoadingWithCredentialsHandler.cs" >}}

## Zwart-wit afbeelding opslaan met één bit per pixelformaat

Om het opslaan van afbeeldingen te controleren, de **ImageSaveOptions** De les wordt gebruikt. U kunt bijvoorbeeld de [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) eigenschap om het beeldpuntformaat voor de gegenereerde afbeeldingen in te stellen. Houd er rekening mee dat het pixelformaat van de uitvoerafbeelding kan verschillen van de ingestelde waarde vanwege het werk van GDI+.

Het volgende voorbeeld van code laat zien hoe je een zwart-wit afbeelding opslaat met één bit per pixel formaat:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cs" >}}
