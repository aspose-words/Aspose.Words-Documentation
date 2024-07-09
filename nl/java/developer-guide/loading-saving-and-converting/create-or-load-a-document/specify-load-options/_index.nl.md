---
title: Specificeer laadopties in Java
second_title: Aspose.Words voor Java
articleTitle: Opties voor laden specificeren
linktitle: Opties voor laden specificeren
description: "Geavanceerde eigenschappen instellen bij het laden van een document met Java een nauwkeurigere controle van het proces te verkrijgen."
type: docs
weight: 10
url: /nl/java/specify-load-options/
---

Bij het laden van een document kunt u een aantal geavanceerde eigenschappen instellen. Aspose.Words geeft u de [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) klasse, waardoor nauwkeurigere controle van het laadproces mogelijk is. Sommige laadformaten hebben een corresponderende klasse die laadopties voor dit laadformaat bevat, bijvoorbeeld, er is [PdfLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfloadoptions/) voor het laden naar PDF-formaat of [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) voor het laden naar TXT. Dit artikel geeft voorbeelden van het werken met opties van de **LoadOptions** Klasse.

## Instellen Microsoft Word Versie om het uiterlijk te wijzigen

Verschillende versies van de Microsoft Word applicatie kan documenten in verschillende tonen. Er is bijvoorbeeld een bekend probleem met OOXML-documenten zoals DOCX of DOTX geproduceerd met WPS Office. In dergelijke gevallen kunnen essentiële elementen van de opmaak van documenten ontbreken of verschillend worden geïnterpreteerd, Microsoft Word 2019 om een dergelijk document anders dan Microsoft Word 2010.

Standaard Aspose.Words opent documenten met Microsoft Word 2019 regels. Als u document laden moet laten verschijnen zoals het zou gebeuren in een van de vorige Microsoft Word toepassingsversies, moet u expliciet de gewenste versie met behulp van de [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) eigendom van de **LoadOptions** Klasse.

Het volgende code voorbeeld laat zien hoe u de Microsoft Word versie met laadopties:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetMSWordVersion.java" >}}

## Taalvoorkeuren instellen om het uiterlijk te wijzigen

De details van het weergeven van een document in Microsoft Word hangt niet alleen af van de toepassingsversie en de **MswVersion** eigenschappen, maar ook de taalinstellingen. Microsoft Word kan documenten anders tonen, afhankelijk van de "Office Language Preferences" instellingen, die kunnen worden gevonden in "File → Opties → Languаge." Met behulp van dit dialoogvenster kan een gebruiker bijvoorbeeld primaire taal, proeftalen, weergavetalen, enzovoort selecteren. Aspose.Words levert de [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getLanguagePreferences) eigenschap als equivalent van dit dialoogvenster. Als Aspose.Words uitvoer verschilt van de Microsoft Word uitvoer, stel de juiste waarde voor **EditingLanguage** Dit kan het uitvoerdocument verbeteren.

Het volgende voorbeeld toont hoe Japans als **EditingLanguage**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

## Gebruik WarningCallback Controleproblemen Tijdens laden van een document

Sommige documenten kunnen beschadigd zijn, ongeldige vermeldingen bevatten of functies hebben die momenteel niet ondersteund worden door Aspose.Words. Als u wilt weten over problemen die zich hebben voorgedaan tijdens het laden van een document, Aspose.Words levert de [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) interface.

De volgende code voorbeeld toont de implementatie van de **IWarningCallback** interface:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-DocumentLoadingWarningCallback.java" >}}

Om informatie te krijgen over alle problemen gedurende de laadtijd, gebruik de [WarningCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getWarningCallback) eigendom.

Het volgende voorbeeld van code laat zien hoe deze eigenschap te gebruiken:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsWarningCallback.java" >}}

## ResourceLoading gebruiken Terugroepen naar de externe bronnen laden controleren

Een document kan externe links bevatten naar afbeeldingen ergens op een lokale schijf, netwerk of internet. Aspose.Words automatisch dergelijke afbeeldingen in een document laden, maar er zijn situaties waarin dit proces moet worden gecontroleerd. Bijvoorbeeld om te beslissen of we echt een bepaalde afbeelding moeten laden of misschien overslaan. De [ResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getResourceLoadingCallback) Met de laadoptie kunt u dit regelen.

De volgende code voorbeeld toont de implementatie van de [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/) interface:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-HtmlLinkedResourceLoadingCallback.java" >}}

De volgende code voorbeeld laat zien hoe de **ResourceLoadingCallback** eigenschap:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsResourceLoadingCallback.java" >}}

## TempFolder gebruiken om een geheugenuitzondering te vermijden

Aspose.Words ondersteunt zeer grote documenten die duizenden pagina's vol met rijke inhoud. Het laden van dergelijke documenten kan veel RAM vereisen. Bij het laden, Aspose.Words heeft nog meer geheugen nodig om tijdelijke structuren vast te houden die gebruikt worden om een document te verwerken.

Als u een probleem heeft met de Out of Memory uitzondering tijdens het laden van een document, probeer dan de [TempFolder](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getTempFolder) eigendom. In dit geval, Aspose.Words zal sommige gegevens opslaan in tijdelijke bestanden in plaats van geheugen, en dit kan helpen voorkomen dat een dergelijke uitzondering.

Het volgende voorbeeld van de code laat zien hoe u moet instellen **TempFolder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetTempFolder.java" >}}

## De codering expliciet instellen

De meeste moderne documentformaten slaan hun inhoud op in Unicode en vereisen geen speciale behandeling. Aan de andere kant zijn er nog steeds veel documenten die een aantal pre-Unicode codering gebruiken en soms missen codering informatie of niet eens ondersteunen codering informatie door de natuur. Aspose.Words probeert automatisch automatisch de juiste codering op te sporen, maar in een zeldzaam geval moet u mogelijk een andere codering gebruiken dan die welke door ons coderingsherkenningsalgoritme wordt gedetecteerd. In dit geval, gebruik de [Encoding](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getEncoding) eigenschap om de codering te verkrijgen of in te stellen.

Het volgende voorbeeld van code laat zien hoe u de codering kunt instellen om de automatisch gekozen codering te omzeilen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadOptionsEncoding.java" >}}

## Versleutelde documenten laden

U kunt laden Word documenten versleuteld met een wachtwoord. Om dit te doen, gebruik een speciale constructor overbelasting, die een [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) object. Dit object bevat de [Password](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPassword) eigenschap, die de wachtwoordstring specificeert.

Het volgende voorbeeld van code laat zien hoe u een document versleuteld met een wachtwoord kunt laden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenEncryptedDocument.java" >}}

Als u niet van tevoren weet of het bestand wordt gecodeerd, kunt u de [FileFormatUtil](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/) klasse, die utility methoden biedt voor het werken met bestandsformaten, zoals het detecteren van het bestandsformaat of het omzetten van bestandsextensies naar/van bestandsformaat opsommingen. Om te detecteren of het document is gecodeerd en vereist een wachtwoord om het te openen, gebruik de [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) eigendom.

Het volgende voorbeeld van code laat zien hoe OpenDocument te verifiëren of het is versleuteld of niet:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-VerifyODTdocument.java" >}}
