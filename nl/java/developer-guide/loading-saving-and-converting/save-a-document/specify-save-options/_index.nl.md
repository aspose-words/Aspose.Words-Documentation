---
title: Opties opslaan in Java
second_title: Aspose.Words voor Java
articleTitle: Opslaan opties specificeren
linktitle: Opslaan opties specificeren
description: "Geavanceerde eigenschappen instellen bij het opslaan van een document met Java een preciezere controle op het proces."
type: docs
weight: 20
url: /nl/java/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Bij het opslaan van een document kunt u een aantal geavanceerde eigenschappen instellen. Aspose.Words geeft u de [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/) klasse, waardoor nauwkeuriger controle over het opslaan proces mogelijk is. Er zijn overbelastingen van de **Save** methode die een **SaveOptions** object Het moet een object van een klasse afgeleid van de **SaveOptions** Klasse. Elke opslaan formaat heeft een overeenkomstige klasse die opslaan opties voor dit opslaan formaat bevat, bijvoorbeeld, er is [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) voor het opslaan naar PDF-formaat, [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) voor opslaan aan Markdown formaat, of [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) voor het opslaan naar een afbeelding. Dit artikel biedt voorbeelden van werken met een aantal opties klassen afgeleid van **SaveOptions**.

Het volgende voorbeeld van code laat zien hoe u de opties voor het opslaan van het document in HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Het artikel beschrijft een paar eigenschappen die u kunt controleren bij het opslaan van een document.

## Een document versleutelen Met een wachtwoord

Gebruik de **Password** eigenschap om een wachtwoord voor een gecodeerd document te verkrijgen of in te stellen. Gebruik de **Password** eigenschap van de betreffende klasse om te werken met het geselecteerde documentformaat.

Bijvoorbeeld, bij het opslaan van een document naar DOC of DOT formaat, gebruik de [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) eigendom van de [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) Klasse.

Het volgende codevoorbeeld laat zien hoe je een wachtwoord instelt om een document te versleutelen met behulp van de RC4-encryptiemethode:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

Gebruik de [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) eigendom van de [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/) Klasse.

Het volgende voorbeeld van code laat zien hoe OpenDocument versleuteld wordt geladen en opgeslagen met een wachtwoord:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

Niet alle formaten ondersteunen encryptie en het gebruik van **Password** eigendom.

## Document opslaan van voortgangsmeldingen tonen

Aspose.Words biedt de mogelijkheid om de [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) eigendom om meldingen te krijgen over de voortgang van het opslaan van documenten.

Het is nu beschikbaar bij het opslaan naar DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, of TXT-formaten.

## De aanmaaktijd van het document bijwerken

Aspose.Words biedt een vermogen om de [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) eigenschap om de aanmaakdatum van het document in UTC te verkrijgen of in te stellen. U kunt deze waarde ook bijwerken voordat u de [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty) optie.

Het volgende voorbeeld van code laat zien hoe u het document aanmaaktijd kunt bijwerken:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## Laatste opgeslagen eigenschap bijwerken

Aspose.Words biedt een vermogen om de [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) eigenschap om een waarde te verkrijgen of in te stellen die bepaalt of de [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) eigenschap wordt bijgewerkt voordat opgeslagen wordt.

Het volgende voorbeeld van code laat zien hoe deze eigenschap in te stellen en het document op te slaan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## Zwarte en witte afbeelding opslaan met één bit per pixelformaat

Om het opslaan van afbeeldingen te controleren, de **ImageSaveOptions** De klasse wordt gebruikt. Bijvoorbeeld, kunt u de [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) eigenschap om het beeldpuntformaat voor de gegenereerde afbeeldingen in te stellen. Houd er rekening mee dat het beeldpuntformaat van de uitvoerafbeelding kan verschillen van de ingestelde waarde vanwege het werk van GDI+.

Het volgende voorbeeld van code laat zien hoe je een zwart-wit afbeelding opslaat met één bit per pixel formaat:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
