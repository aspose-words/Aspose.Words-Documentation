---
title: Bewaaropties opgeven in C++
second_title: Aspose.Words voor C++
articleTitle: Opties Voor Opslaan Opgeven
linktitle: Opties Voor Opslaan Opgeven
description: "Nauwkeuriger controle van het opslaan proces."
type: docs
weight: 10
url: /nl/cpp/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Wanneer u een document opslaat, kunt u een aantal geavanceerde eigenschappen instellen. Aspose.Words geeft u de [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/) - klasse, die een nauwkeuriger controle van het opslagproces mogelijk maakt. Er zijn overbelastingen van de **Save** methode die een **SaveOptions** object accepteren – het moet een object zijn van een klasse afgeleid van de **SaveOptions** klasse. Elke opslagnotatie heeft een overeenkomstige klasse met opslagopties voor deze opslagnotatie, bijvoorbeeld is er [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) voor Opslaan in PDF - indeling, [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions) voor Opslaan in Markdown - indeling of [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/) voor Opslaan in een afbeelding. Dit artikel geeft voorbeelden van het werken met een aantal opties klassen afgeleid van **SaveOptions**.

Het volgende codevoorbeeld laat zien hoe u de opslagopties instelt voordat u het document opslaat in HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cpp" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

In het artikel worden enkele eigenschappen beschreven die u kunt beheren wanneer u een document opslaat.

## Een Document versleutelen met een wachtwoord

Gebruik de eigenschap **Password** om een wachtwoord voor een versleuteld document op te vragen of in te stellen. Gebruik de eigenschap **Password** van de corresponderende klasse om met de geselecteerde documentnotatie te werken.

Als u bijvoorbeeld een document opslaat in de indeling DOC of DOT, gebruikt u de eigenschap [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) van de klasse [DocSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.doc_save_options).

Het volgende codevoorbeeld laat zien hoe u een wachtwoord instelt om een document te versleutelen met behulp van de versleutelingsmethode RC4:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cpp" >}}

Wanneer u een document opslaat in de indeling ODT, gebruikt u de eigenschap [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/get_password/) van de klasse [OdtSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.odt_save_options).

Het volgende codevoorbeeld laat zien hoe OpenDocument versleuteld met een wachtwoord geladen en opgeslagen moet worden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cpp" >}}

Niet alle indelingen ondersteunen encryptie en het gebruik van de eigenschap **Password**.

## Document Opslaan Voortgangsvermeldingen Tonen

Aspose.Words biedt de mogelijkheid om de eigenschap [ProgressCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_progresscallback/) te gebruiken om meldingen te ontvangen over de voortgang van het opslaan van documenten.

Het is nu beschikbaar bij het opslaan naar DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, of TXT formaten.

## De aanmaaktijd van het Document bijwerken

Aspose.Words biedt de mogelijkheid om de Eigenschap [CreatedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_createdtime/) te gebruiken om de aanmaakdatum van het document in UTC op te halen of in te stellen. U kunt deze waarde ook bijwerken voordat u deze opslaat met de optie [UpdateCreatedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatecreatedtimeproperty/).

Het volgende codevoorbeeld laat zien hoe u de aanmaaktijd van het document kunt bijwerken:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.cpp" >}}

## Laatst Opgeslagen Eigenschap Bijwerken

Aspose.Words biedt de mogelijkheid om de eigenschap [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/set_updatelastsavedtimeproperty/) te gebruiken om een waarde te verkrijgen of in te stellen die bepaalt of de Eigenschap [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) is bijgewerkt voordat deze wordt opgeslagen.

Het volgende codevoorbeeld laat zien hoe u deze eigenschap instelt en het document opslaat:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cpp" >}}

## Sla zwart-witafbeelding op met één Bit per pixelformaat

Om de opties voor het opslaan van afbeeldingen te beheren, wordt de klasse **ImageSaveOptions** gebruikt. U kunt bijvoorbeeld de eigenschap [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_pixelformat/) gebruiken om de pixelindeling voor de gegenereerde afbeeldingen in te stellen. Houd er rekening mee dat het pixelformaat van de uitvoerafbeelding kan afwijken van de ingestelde waarde vanwege het werk van GDI+.

Het volgende codevoorbeeld laat zien hoe u een zwart-wit afbeelding met één bit per pixelformaat kunt opslaan:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cpp" >}}
