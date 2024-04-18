---
title: Specificeer laadopties in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Specificeer laadopties
linktitle: Specificeer laadopties
description: "Het laadproces nauwkeuriger bedienen met behulp van Python."
type: docs
weight: 10
url: /nl/python-net/specify-load-options/
---

Bij het laden van een document kunt u een aantal geavanceerde eigenschappen instellen. Aspose.Words geeft u de [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) klasse, waardoor nauwkeurigere controle van het laadproces mogelijk is. Sommige laadformaten hebben een corresponderende klasse die de laadopties voor dit laadformaat bevat, bijvoorbeeld, er is [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) voor het laden naar PDF-formaat of [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) voor het laden naar TXT. Dit artikel geeft voorbeelden van het werken met opties van de [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) Klasse.

## Instellen Microsoft Word Versie om het uiterlijk te wijzigen

Verschillende versies van Microsoft Word applicatie kan documenten in verschillende tonen. Er is bijvoorbeeld een bekend probleem met OOXML-documenten zoals DOCX of DOTX geproduceerd met WPS Office. In dat geval kunnen essentiële elementen van de opmaak van documenten ontbreken of verschillend worden geïnterpreteerd, hetgeen Microsoft Word 2019 om een dergelijk document anders dan Microsoft Word 2010.

Standaard Aspose.Words opent documenten met behulp van Microsoft Word 2019 regels. Als u document laden moet laten verschijnen zoals het zou gebeuren in een van de vorige Microsoft Word toepassingsversies, moet u expliciet de gewenste versie met behulp van de [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) eigendom van de [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) Klasse.

Het volgende voorbeeld toont hoe u de Microsoft Word versie met laadopties:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-SetMSWordVersion.py" >}}

## Taalvoorkeuren instellen om het uiterlijk te wijzigen

De details van het tonen van een document in Microsoft Word hangt niet alleen af van de toepassingsversie en de [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) eigenschappen, maar ook de taalinstellingen. Microsoft Word kan documenten anders tonen, afhankelijk van de dialoog "Office Language Preferences," die kan worden gevonden in "File → Opties → Languаge." Met behulp van dit dialoogvenster kan een gebruiker bijvoorbeeld primaire taal, proeftalen, weergavetalen, enzovoort selecteren. Aspose.Words levert de [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) eigenschap als equivalent van dit dialoogvenster. Als Aspose.Words uitgang verschilt van de Microsoft Word uitvoer, stel de juiste waarde voor [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/) Dit kan het uitvoerdocument verbeteren.

Het volgende code voorbeeld laat zien hoe Japans als [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

## TempFolder gebruiken om een geheugenuitzondering te vermijden

Aspose.Words ondersteunt extreem grote documenten die duizenden pagina's vol met rijke inhoud. Het laden van dergelijke documenten kan veel RAM vereisen. Bij het laden, Aspose.Words heeft nog meer geheugen nodig om tijdelijke structuren vast te houden die gebruikt worden om een document te verwerken.

Als u tijdens het laden van een document een probleem heeft met de uitzondering van Out of Memory, probeer dan de [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/) eigendom. In dit geval, Aspose.Words zal sommige gegevens opslaan in tijdelijke bestanden in plaats van geheugen, en dit kan helpen voorkomen dat een dergelijke uitzondering.

Het volgende code voorbeeld laat zien hoe te instellen [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UseTempFolder.py" >}}

## De codering expliciet instellen

De meeste moderne documentformaten slaan hun inhoud op in Unicode en vereisen geen speciale behandeling. Aan de andere kant zijn er nog steeds veel documenten die een aantal pre-Unicode codering gebruiken en soms missen codering informatie of niet eens ondersteunen codering informatie door de natuur. Aspose.Words probeert automatisch automatisch de juiste codering te detecteren, maar in een zeldzaam geval moet u mogelijk een andere codering gebruiken dan die welke door ons coderingsherkenningsalgoritme wordt gedetecteerd. In dit geval, gebruik de [encoding](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/encoding/) eigenschap om de codering te verkrijgen of in te stellen.

Het volgende voorbeeld van code laat zien hoe u de codering kunt instellen om de automatisch gekozen codering te omzeilen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-LoadWithEncoding.py" >}}

## Versleutelde documenten laden

U kunt laden Word documenten versleuteld met een wachtwoord. Om dit te doen, gebruik een speciale constructor overbelasting, die een [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) object. Dit object bevat de [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/) eigenschap, die de wachtwoord string specificeert.

Het volgende voorbeeld van code laat zien hoe u een document versleuteld met een wachtwoord kunt laden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-OpenEncryptedDocument.py" >}}

Als u niet van tevoren weet of het bestand wordt gecodeerd, kunt u de [FileFormatUtil](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/) klasse, die utility methoden biedt voor het werken met bestandsformaten, zoals het detecteren van het bestandsformaat of het omzetten van bestandsextensies naar/van bestandsformaat opsommingen. Om te detecteren of het document is gecodeerd en vereist een wachtwoord om het te openen, gebruik de [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/) eigendom.

Het volgende voorbeeld van code laat zien hoe het document wordt versleuteld of niet:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-VerifyEncryptedDocument.py" >}}
