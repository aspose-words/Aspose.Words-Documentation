---
title: Specificeer laadopties in C#
second_title: Aspose.Words voor .NET
articleTitle: Specificeer laadopties
linktitle: Specificeer laadopties
description: "Het laadproces nauwkeuriger bedienen met behulp van C#."
type: docs
weight: 10
url: /nl/net/specify-load-options/
timestamp: 2024-07-09-19-00-42
---

Bij het laden van een document kunt u een aantal geavanceerde eigenschappen instellen. Aspose.Words geeft u de [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/) klasse, waardoor nauwkeurigere controle van het laadproces mogelijk is. Sommige laadformaten hebben een corresponderende klasse die de laadopties voor dit laadformaat bevat, bijvoorbeeld, er is [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/) voor het laden naar PDF-formaat of [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) voor het laden naar TXT. Dit artikel geeft voorbeelden van het werken met opties van de **LoadOptions** Klasse.

## Instellen Microsoft Word Versie om het uiterlijk te wijzigen

Verschillende versies van Microsoft Word applicatie kan documenten in verschillende tonen. Er is bijvoorbeeld een bekend probleem met OOXML-documenten zoals DOCX of DOTX geproduceerd met WPS Office. In dat geval kunnen essentiële elementen van de opmaak van documenten ontbreken of verschillend worden geïnterpreteerd, hetgeen Microsoft Word 2019 om een dergelijk document anders dan Microsoft Word 2010.

Standaard Aspose.Words opent documenten met behulp van Microsoft Word 2019 regels. Als u document laden moet laten verschijnen zoals het zou gebeuren in een van de vorige Microsoft Word toepassingsversies, moet u expliciet de gewenste versie met behulp van de [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/) eigendom van de **LoadOptions** Klasse.

Het volgende voorbeeld toont hoe u de Microsoft Word versie met laadopties:

{{< gist "aspose-words-gists" "62b066455ff6af0e8727e3fddae47aee" "load-docx-with-msword-version.cs" >}}

## Taalvoorkeuren instellen om het uiterlijk te wijzigen

De details van het tonen van een document in Microsoft Word hangt niet alleen af van de toepassingsversie en de **MswVersion** eigenschappen, maar ook de taalinstellingen. Microsoft Word kan documenten anders tonen, afhankelijk van de dialoog "Office Language Preferences," die kan worden gevonden in "File → Opties → Languаge." Met behulp van dit dialoogvenster kan een gebruiker bijvoorbeeld primaire taal, proeftalen, weergavetalen, enzovoort selecteren. Aspose.Words levert de [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/) eigenschap als equivalent van dit dialoogvenster. Als Aspose.Words uitgang verschilt van de Microsoft Word uitvoer, stel de juiste waarde voor **EditingLanguage** Dit kan het uitvoerdocument verbeteren.

Het volgende code voorbeeld laat zien hoe Japans als **EditingLanguage**:

{{< gist "aspose-words-gists" "5d49772a182a61eac0dcb9c13c98bc6e" "load-docx-with-japanese-as-editing-language.cs" >}}

## Gebruik WarningCallback Controleproblemen Tijdens laden van een document

Sommige documenten kunnen beschadigd zijn, ongeldige vermeldingen bevatten of functies hebben die momenteel niet ondersteund worden door Aspose.Words. Als u wilt weten over problemen die zich hebben voorgedaan tijdens het laden van een document, Aspose.Words levert de [IWarningCallback](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/) interface.

Het volgende voorbeeld van code toont de implementatie van de **IWarningCallback** interface:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "document-loading-warning-callback.cs" >}}

Gebruik de [WarningCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/warningcallback/) eigendom.

Het volgende voorbeeld van code laat zien hoe deze eigenschap te gebruiken:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "load-docx-with-warning-callback.cs" >}}

## ResourceLoading gebruiken Terugroepen om de externe bronnen laden controleren

Een document kan externe links bevatten naar afbeeldingen ergens op een lokale schijf, netwerk of internet. Aspose.Words automatisch dergelijke afbeeldingen in een document laden, maar er zijn situaties waarin dit proces moet worden gecontroleerd. Bijvoorbeeld om te beslissen of we echt een bepaalde afbeelding moeten laden of misschien overslaan. De [ResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/resourceloadingcallback/) Met de laadoptie kunt u dit regelen.

Het volgende voorbeeld van code toont de implementatie van de [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/) interface:

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "html-linked-resource-loading-callback.cs" >}}

Het volgende voorbeeld van code laat zien hoe de **ResourceLoadingCallback** eigenschap:

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "load-html-with-resource-loading-callback.cs" >}}

## TempFolder gebruiken om een geheugenuitzondering te vermijden

Aspose.Words ondersteunt extreem grote documenten die duizenden pagina's vol met rijke inhoud. Het laden van dergelijke documenten kan veel RAM vereisen. Bij het laden, Aspose.Words heeft nog meer geheugen nodig om tijdelijke structuren vast te houden die gebruikt worden om een document te verwerken.

Als u tijdens het laden van een document een probleem heeft met de uitzondering van Out of Memory, probeer dan de [TempFolder](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/tempfolder/) eigendom. In dit geval, Aspose.Words zal sommige gegevens opslaan in tijdelijke bestanden in plaats van geheugen, en dit kan helpen voorkomen dat een dergelijke uitzondering.

Het volgende code voorbeeld laat zien hoe te instellen **TempFolder**:

{{< gist "aspose-words-gists" "80fb635124a6afc0e75b9f17d1eab40c" "load-docx-using-temp-folder.cs" >}}

## De codering expliciet instellen

De meeste moderne documentformaten slaan hun inhoud op in Unicode en vereisen geen speciale behandeling. Aan de andere kant zijn er nog steeds veel documenten die een aantal pre-Unicode codering gebruiken en soms missen codering informatie of niet eens ondersteunen codering informatie door de natuur. Aspose.Words probeert automatisch automatisch de juiste codering te detecteren, maar in een zeldzaam geval moet u mogelijk een andere codering gebruiken dan die welke door ons coderingsherkenningsalgoritme wordt gedetecteerd. In dit geval, gebruik de [Encoding](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/encoding/) eigenschap om de codering te verkrijgen of in te stellen.

Het volgende voorbeeld van code laat zien hoe u de codering kunt instellen om de automatisch gekozen codering te omzeilen:

{{< gist "aspose-words-gists" "507181f2c99ba13012c441f1c436d9a7" "load-txt-using-encoding.cs" >}}

## Versleutelde documenten laden

U kunt laden Word documenten versleuteld met een wachtwoord. Om dit te doen, gebruik een speciale constructor overbelasting, die een [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/) object. Dit object bevat de [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/) eigenschap, die de wachtwoord string specificeert.

Het volgende voorbeeld van code laat zien hoe u een document versleuteld met een wachtwoord kunt laden:

{{< gist "aspose-words-gists" "5b929b4208996737657de94443bc2852" "load-encrypted-docx.cs" >}}

Als u niet van tevoren weet of het bestand wordt gecodeerd, kunt u de [FileFormatUtil](https://reference.aspose.com/words/net/aspose.words/fileformatutil/) klasse, die utility methoden biedt voor het werken met bestandsformaten, zoals het detecteren van het bestandsformaat of het omzetten van bestandsextensies naar/van bestandsformaat opsommingen. Om te detecteren of het document is gecodeerd en vereist een wachtwoord om het te openen, gebruik de [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/) eigendom.

Het volgende voorbeeld van code laat zien hoe OpenDocument te verifiëren of het is versleuteld of niet:

{{< gist "aspose-words-gists" "935e41f0f59c7d8bd8a082ccc14f6b84" "verify-odt-is-encrypted.cs" >}}
