---
title: Velden invoegen in C++
second_title: Aspose.Words voor C++
articleTitle: Velden Invoegen
linktitle: Velden Invoegen
description: "Verschillende manieren om velden in uw document in te voegen met behulp van C++."
type: docs
weight: 20
url: /nl/cpp/inserting-fields/
timestamp: 2024-01-27-14-07-04
---

Er zijn verschillende manieren om velden in een document in te voegen:

- [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)gebruiken
- [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/)gebruiken
- behulp [Aspose.Words Document Object Model (DOM)](/words/cpp/aspose-words-document-object-model/)

In dit artikel zullen we elke manier in meer detail bekijken en analyseren hoe u bepaalde velden invoegt met behulp van deze opties.

## Velden invoegen in een Document met DocumentBuilder

In Aspose.Words wordt de methode [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) gebruikt om nieuwe velden in een document in te voegen. De eerste parameter accepteert de volledige veldcode van het veld dat moet worden ingevoegd. De tweede parameter is optioneel en maakt het mogelijk het veldresultaat van het veld handmatig in te stellen. Als dit niet wordt opgegeven, wordt het veld automatisch bijgewerkt. U kunt null of empty aan deze parameter doorgeven om een veld met een lege veldwaarde in te voegen. Als u niet zeker bent over de specifieke syntaxis van de veldcode, maakt u eerst het veld in Microsoft Word en schakelt u over om de veldcode weer te geven.

{{% alert color="primary" %}}

Als uw veldcode een parameter bevat die een spatie bevat, moet deze worden ingesloten in spraakmarkeringen. Anders werkt het veld in zowel Microsoft Word als Aspose.Words mogelijk niet zoals verwacht, omdat de parameter door beide wordt behandeld als afgekapt

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe u een samenvoegveld invoegt in een document met **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertField.h" >}}

Dezelfde techniek wordt gebruikt om velden in te voegen die in andere velden zijn genesteld.

Het volgende codevoorbeeld laat zien hoe u velden invoegt die zijn genesteld in een ander veld met behulp van **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cpp" >}}

### Landinstelling op veldniveau opgeven

Een taalidentificatie is een standaard internationale numerieke afkorting voor de taal in een land of geografische regio. Met Aspose.Words kunt u de landinstelling op veldniveau opgeven met behulp van de eigenschap [LocaleId](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_localeid/), die de landinstelling van het veld ID krijgt of instelt.

Het volgende codevoorbeeld laat zien hoe u deze optie gebruikt:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

### Niet-Getypt / Leeg Veld Invoegen

Als u niet-getypte/lege velden ({}) wilt invoegen zoals Microsoft Word toestaat, kunt u de methode [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield) gebruiken met de parameter [FieldType.FieldNone](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/). Als u een veld in een Word document wilt invoegen, kunt u op de toetsencombinatie "Ctrl + F9" drukken.

Het volgende codevoorbeeld laat zien hoe u een leeg veld in het document invoegt:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cpp" >}}

## Velden invoegen in een Document met FieldBuilder

De alternatieve manier om velden in Aspose.Words in te voegen is de klasse [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/). Het biedt een vloeiende interface om veldschakelaars en argumentwaarden te specificeren als tekst, knooppunten of zelfs geneste velden.

Het volgende codevoorbeeld laat zien hoe u een veld invoegt in een document met **FieldBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder-InsertFieldUsingFieldBuilder.cpp" >}}

## Velden invoegen met DOM

U kunt ook verschillende typen Velden invoegen met behulp van [Aspose.Words Document Object Model (DOM)](/words/cpp/aspose-words-document-object-model/). In deze sectie zullen we een paar voorbeelden bekijken.

### Het Samenvoegveld invoegen in een Document met behulp van DOM

Het `MERGEFIELD` veld in Word document kan worden weergegeven door de [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/) Klasse. U kunt de klasse **FieldMergeField** gebruiken om de volgende bewerkingen uit te voeren:

- geef de naam van het veld samenvoegen op
- geef de opmaak van het samenvoegveld op
- geef de tekst op tussen het veldscheidingsteken en het veldeinde van het samenvoegveld
- geef de tekst op die na het samenvoegveld moet worden ingevoegd als het veld niet leeg is
- geef de tekst op die vóór het samenvoegveld moet worden ingevoegd als het veld niet leeg is

{{% alert color="primary" %}}

Zie de [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/) - Klasse API voor meer details.

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe u het veld `MERGE` met behulp van DOM toevoegt aan een alinea in een document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Mail Merge adresblokveld invoegen in een Document met DOM

Het veld `ADDRESSBLOCK` wordt gebruikt om een Mail Merge Adresblok in een Word document in te voegen. `ADDRESSBLOCK` veld in Word document kan worden weergegeven door de [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/) Klasse. U kunt de klasse **FieldAddressBlock** gebruiken om de volgende bewerkingen uit te voeren:

- geef op of de naam van het land/de regio in het veld moet worden opgenomen
- geef aan of het adres moet worden opgemaakt volgens het land / de regio van de ontvanger zoals gedefinieerd door POST*CODE (Universele Postunie 2006)
- geef de naam van het uitgesloten land/regio op
- geef de naam en adresindeling op
- geef de taal ID op die wordt gebruikt om het adres op te maken

{{% alert color="primary" %}}

Zie de [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/) - Klasse API voor meer details.

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe u het veld Mail Merge `ADDRESSBLOCK` met behulp van DOM toevoegt aan een alinea in een document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Veld vooraf invoegen in een Document zonder DocumentBuilderte gebruiken

Het veld `ADVANCE` wordt gebruikt om de volgende tekst binnen een regel naar links, rechts, omhoog of omlaag te verplaatsen. Het `ADVANCE` veld in Word document kan worden weergegeven door de [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/) Klasse. U kunt FieldAdvance class gebruiken om de volgende bewerkingen uit te voeren:

- geef het aantal punten op waarmee de tekst die volgt op het veld verticaal vanaf de bovenrand van de pagina moet worden verplaatst
- geef het aantal punten op waarmee de tekst die volgt op het veld horizontaal moet worden verplaatst vanaf de linkerrand van de kolom, het kader of het tekstvak
- geef het aantal punten op waarmee de tekst die volgt op het veld naar links, rechts, omhoog of omlaag moet worden verplaatst

{{% alert color="primary" %}}

Zie de [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/) - Klasse API voor meer details.

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe u het veld `ADVANCE` met behulp van DOM toevoegt aan een alinea in een document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAdvanceFieldWithoutDocumentBuilder-InsertAdvanceFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### `ASK` veld invoegen in een Document zonder DocumentBuilderte gebruiken

Het veld `ASK` wordt gebruikt om de gebruiker te vragen om tekst toe te wijzen aan een bladwijzer in Word document. `ASK` veld in Word document kan worden weergegeven door de [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask/) Klasse. U kunt de klasse **FieldAsk** gebruiken om de volgende bewerkingen uit te voeren:

- geef de naam van de bladwijzer op
- geef standaard gebruikersrespons op (initiële waarde in het prompt-venster)
- geef op of de reactie van de gebruiker één keer per Mail Merge - bewerking moet worden ontvangen
- geef de prompttekst op (de titel van het promptvenster)

{{% alert color="primary" %}}

Zie de [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask) - Klasse API voor meer details.

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe u het veld `ASK` met behulp van DOM toevoegt aan een alinea in een document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertASKFieldWithoutDocumentBuilder-InsertASKFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### `AUTHOR` veld invoegen in een Document zonder DocumentBuilderte gebruiken

Het veld `AUTHOR` wordt gebruikt om de naam van de auteur van het Document op te geven uit de eigenschappen `Document`. Het `AUTHOR` veld in Word document kan worden weergegeven door de [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/) Klasse. U kunt de klasse **FieldAuthor** gebruiken om de volgende bewerkingen uit te voeren:

- geef de naam van de auteur van het document op

{{% alert color="primary" %}}

Zie de [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/) - Klasse API voor meer details.

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe u het veld `AUTHOR` met behulp van DOM toevoegt aan een alinea in een document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cpp" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### `INCLUDETEXT` veld invoegen in een Document zonder DocumentBuilderte gebruiken

Het veld `INCLUDETEXT` voegt de tekst en afbeeldingen in het document dat in de veldcode wordt genoemd. U kunt het hele document of een deel van het document waarnaar wordt verwezen door een bladwijzer invoegen. Dit veld in Word document wordt weergegeven door INCLUDETEXT. U kunt de klasse [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/) gebruiken om de volgende bewerkingen uit te voeren:

- geef de naam van de bladwijzer op van het opgenomen document
- geef de locatie van het document op

{{% alert color="primary" %}}

Zie de [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/) - Klasse API voor meer details.

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe u het veld `INCLUDETEXT` met behulp van DOM toevoegt aan een alinea in een document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertFieldIncludeTextWithoutDocumentBuilder.h" >}}

### `TOA` veld invoegen in een Document zonder DocumentBuilderte gebruiken

Het veld `TOA` (*Table of Authorities*) bouwt en voegt een tabel met autoriteiten toe. Het veld `TOA` verzamelt items die zijn gemarkeerd met velden `TA` (*Table of Authorities Entry*). Microsoft Office Word voegt het veld `TOA` in wanneer u op *Insert Table of Authorities* klikt in de groep **Table of Authorities** op het tabblad **References**. Wanneer u het veld `TOA` in uw document bekijkt, ziet de syntaxis er als volgt uit:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Zie de [FieldToa](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtoa/) - Klasse API voor meer details.

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe u het veld `TOA` met behulp van DOM toevoegt aan een alinea in een document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cpp" >}}/
