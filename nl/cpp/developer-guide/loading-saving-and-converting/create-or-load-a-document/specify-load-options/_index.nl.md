---
title: Opties voor laden opgeven in C++
second_title: Aspose.Words voor C++
articleTitle: Opties Voor Laden Opgeven
linktitle: Opties Voor Laden Opgeven
description: "Controle nauwkeuriger het ladingsproces."
type: docs
weight: 10
url: /nl/cpp/specify-load-options/
timestamp: 2024-01-30-16-22-34
---

Bij het laden van een document kunt u een aantal geavanceerde eigenschappen instellen. Aspose.Words biedt u de [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/) - klasse, die een nauwkeuriger controle van het belastingproces mogelijk maakt. Sommige laadindelingen hebben een overeenkomstige klasse die laadopties bevat voor deze laadindeling, bijvoorbeeld is er [PdfLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/pdfloadoptions/) voor het laden naar PDF - indeling of [TxtLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/) Voor het laden naar TXT. Dit artikel geeft voorbeelden van het werken met opties van de **LoadOptions** klasse.

## Stel Microsoft Word versie in om het uiterlijk te wijzigen

Verschillende versies van de toepassing Microsoft Word kunnen documenten onverschillig weergeven. Er is bijvoorbeeld een bekend probleem met OOXML documenten zoals DOCX of DOTX geproduceerd met WPS Office. In een dergelijk geval kunnen essentiële documentmarkup-elementen ontbreken of anders worden geïnterpreteerd, waardoor Microsoft Word 2019 een dergelijk document anders weergeeft dan Microsoft Word 2010.

Standaard opent Aspose.Words documenten met Microsoft Word 2019-regels. Als u het laden van documenten wilt laten verschijnen zoals het zou gebeuren in een van de vorige Microsoft Word toepassingsversies, moet u expliciet de gewenste versie opgeven met behulp van de [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/) eigenschap van de **LoadOptions** klasse.

Het volgende codevoorbeeld laat zien hoe u de Microsoft Word versie instelt met opties voor laden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetMSWordVersion.cpp" >}}

## Taalvoorkeuren Instellen om het uiterlijk te wijzigen

De details van het weergeven van een document in Microsoft Word zijn niet alleen afhankelijk van de toepassingsversie en de eigenschap **MswVersion**, maar ook van de taalinstellingen. Microsoft Word kan documenten anders weergeven, afhankelijk van de instellingen van het dialoogvenster "Office Language Preferences", die te vinden zijn in "File → Options → Language". Met behulp van dit dialoogvenster kan een gebruiker bijvoorbeeld primaire taal, proeftalen, weergavetalen, enzovoort selecteren. Aspose.Words geeft de eigenschap [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_languagepreferences/) als equivalent van dit dialoogvenster. Als de uitvoer van Aspose.Words afwijkt van de uitvoer van Microsoft Word, stelt u de juiste waarde in voor **EditingLanguage** – Dit kan het uitvoerdocument verbeteren.

Het volgende codevoorbeeld laat zien hoe je Japans instelt als **EditingLanguage**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

## WarningCallback gebruiken om problemen te regelen tijdens het laden van een Document

Sommige documenten kunnen beschadigd zijn, ongeldige vermeldingen bevatten of functies hebben die momenteel niet worden ondersteund door Aspose.Words. Als u wilt weten over problemen die zich hebben voorgedaan tijdens het laden van een document, biedt Aspose.Words de interface [IWarningCallback](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/).

Het volgende codevoorbeeld toont de implementatie van de **IWarningCallback** interface:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-DocumentLoadingWarningCallback.cpp" >}}

Gebruik de eigenschap `WarningCallback` om informatie te krijgen over alle problemen gedurende de laadtijd.

Het volgende codevoorbeeld laat zien hoe deze eigenschap te gebruiken:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsWarningCallback.cpp" >}}

## Gebruik ResourceLoadingCallback om het laden van externe bronnen te regelen

Een document kan externe links bevatten naar afbeeldingen die zich ergens op een lokale schijf, netwerk of Internet bevinden. Aspose.Words laadt dergelijke afbeeldingen automatisch in een document, maar er zijn situaties waarin dit proces moet worden gecontroleerd. Bijvoorbeeld om te beslissen of we een bepaalde afbeelding echt moeten laden of misschien overslaan. Met de optie ResourceLoadingCallback laden kunt u dit regelen.

Het volgende codevoorbeeld toont de implementatie van de IResourceLoadingCallback interface:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-HtmlLinkedResourceLoadingCallback.cpp" >}}

Het volgende codevoorbeeld laat zien hoe u de eigenschap **ResourceLoadingCallback** gebruikt:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsResourceLoadingCallback.cpp" >}}

## Gebruik TempFolder om een geheugenuitbreiding te vermijden

Aspose.Words ondersteunt extreem grote documenten met duizenden pagina ' s vol rijke inhoud. Het laden van dergelijke documenten kan veel RAM vereisen. Tijdens het laden heeft Aspose.Words nog meer geheugen nodig om tijdelijke structuren te bewaren die worden gebruikt om een document te ontleden.

Als u een probleem ondervindt met de uitzondering voor geheugenverlies tijdens het laden van een document, probeert u de eigenschap [TempFolder](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_tempfolder/) te gebruiken. In dit geval zal Aspose.Words Sommige gegevens opslaan in tijdelijke bestanden in plaats van geheugen, en dit kan helpen een dergelijke uitzondering te voorkomen.

Het volgende codevoorbeeld laat zien hoe u **TempFolder**instelt:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetTempFolder.cpp" >}}

## Stel de codering expliciet in

De meeste moderne documentformaten slaan hun inhoud op in Unicode en vereisen geen speciale behandeling. Aan de andere kant zijn er nog steeds veel documenten die een pre-Unicode-codering gebruiken en soms coderingsinformatie missen of zelfs coderingsinformatie van nature niet ondersteunen. Aspose.Words probeert standaard automatisch de juiste codering te detecteren, maar in een zeldzaam geval moet u mogelijk een andere codering gebruiken dan die gedetecteerd door ons algoritme voor coderingherkenning. Gebruik in dit geval de eigenschap [Encoding](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_encoding/) om de codering op te halen of in te stellen.

Het volgende codevoorbeeld laat zien hoe u de codering instelt om de automatisch gekozen codering te overschrijven:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsEncoding.cpp" >}}

## Versleutelde Documenten Laden

U kunt Word documenten versleuteld laden met een wachtwoord. Gebruik hiervoor een speciale constructor overload, die een [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/) object accepteert. Dit object bevat de eigenschap [Password](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_password/), die de wachtwoordsteken specificeert.

Het volgende codevoorbeeld laat zien hoe u een document kunt laden dat is gecodeerd met een wachtwoord:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-OpenEncryptedDocument-OpenEncryptedDocument.cpp" >}}

Als u niet van tevoren weet of het bestand versleuteld is, kunt u de klasse [FileFormatUtil](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/) gebruiken, die hulpprogramma ' s biedt voor het werken met bestandsindelingen, zoals het detecteren van de bestandsindeling of het converteren van bestandsextensies naar/van bestandsindeling. Om te detecteren of het document versleuteld is en een wachtwoord vereist om het te openen, gebruikt u de Eigenschap `IsEncrypted`.

Het volgende codevoorbeeld laat zien hoe u kunt controleren of OpenDocument versleuteld is of niet:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-VerifyODTdocument.cpp" >}}
