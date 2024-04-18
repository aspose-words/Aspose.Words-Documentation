---
title: Velden invoegen C#
second_title: Aspose.Words voor .NET
articleTitle: Velden toevoegen
linktitle: Velden toevoegen
description: "Hoe velden in een document in te voegen met behulp van C# Leer verschillende manieren met codevoorbeelden."
type: docs
weight: 20
url: /nl/net/inserting-fields/
---

Er zijn verschillende manieren om velden in een document in te voegen:

* gebruik [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)
* gebruik [FieldBuilder](https://reference.aspose.com/words/net/aspose.words.fields/fieldbuilder/)
* gebruik [Aspose.Words Document Object Model (DOM)](/words/nl/net/aspose-words-document-object-model/)

In dit artikel, zullen we kijken naar elke manier in meer detail en analyseren hoe om bepaalde velden in te voegen met behulp van deze opties.

## Velden invoegen in een document met DocumentBuilder

In Aspose.Words de [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) methode wordt gebruikt om nieuwe velden in een document in te voegen. De eerste parameter accepteert de volledige veldcode van het in te voegen veld. De tweede parameter is optioneel en maakt het mogelijk het veldresultaat van het veld handmatig in te stellen. Als dit niet wordt geleverd, wordt het veld automatisch bijgewerkt. U kunt null of leeg doorgeven aan deze parameter om een veld met een lege veldwaarde in te voegen. Als u niet zeker bent over de specifieke veld code syntax, maak het veld in Microsoft Word eerst en switch om zijn veldcode te zien.

{{% alert color="primary" %}}

Als uw veldcode een parameter bevat die een spatie bevat, dan moet deze in spraaktekens worden ingesloten. Anders is het veld in beide Microsoft Word en Aspose.Words kan niet werken zoals verwacht omdat de parameter wordt behandeld als afgekapt.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe je een merge veld invoegt in een document met behulp van **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertField-InsertField.cs" >}}

Dezelfde techniek wordt gebruikt om velden in andere velden in te voegen.

Het volgende voorbeeld van code laat zien hoe u velden invoegt die zich in een ander veld bevinden met behulp van **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cs" >}}

### Lokale opgeven op veldniveau

Een taalidentificatiecode is een standaard internationale numerieke afkorting voor de taal in een land of geografische regio. Met Aspose.Words, U kunt de locatie op het veldniveau opgeven met behulp van de [LocaleId](https://reference.aspose.com/words/net/aspose.words.fields/field/localeid/) eigenschap, die de locatie-id van het veld krijgt of bepaalt.

Het volgende voorbeeld van code laat zien hoe u deze optie kunt gebruiken:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cs" >}}

### Niet-getypte/leeg veld invoegen

Als u ongetypte/lege velden wilt invoegen ({}) net als Microsoft Word kunt u de [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) methode met de [FieldType.FieldNone](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) parameter. Om een veld in een Word-document in te voegen, kunt u op de combinatie van de toetsen "Ctrl + F9" drukken.

Het volgende voorbeeld van code laat zien hoe je een leeg veld in het document invoegt:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cs" >}}

## Velden invoegen in een document met veldbouwer
De alternatieve manier om velden in te voegen Aspose.Words is de [FieldBuilder](https://reference.aspose.com/words/net/aspose.words.fields/fieldbuilder/) Klasse. Het biedt een vloeiend interface om veldschakelaars en argumentwaarden te specificeren als tekst, nodes of zelfs geneste velden.

Het volgende voorbeeld van code laat zien hoe je een veld in een document invoegt met behulp van **FieldBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder.cs" >}}

## Velden invoegen met DOM

U kunt ook verschillende soorten velden invoegen met [Aspose.Words Document Object Model (DOM)](/words/nl/net/aspose-words-document-object-model/). In dit hoofdstuk zullen we enkele voorbeelden bekijken.

### Samenvoegen Veld in een document met DOM

De `MERGEFIELD` veld in Word document kan worden vertegenwoordigd door de [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/) Klasse. U kunt de **FieldMergeField** klasse om de volgende bewerkingen uit te voeren:

- geef de naam van het mergeveld
- de opmaak van het mergeveld specificeren
- geef de tekst aan die tussen het veldscheidingsteken en het veldeinde van het mergeveld ligt
- geef de tekst die moet worden ingevoegd na het mergeveld als het veld niet leeg is
- geef de tekst die vóór het mergeveld moet worden ingevoegd als het veld niet leeg is

{{% alert color="primary" %}}

Voor meer details, zie de [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/) klasse API.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe u de `MERGE` veld gebruiken DOM naar een paragraaf in een document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cs" >}}

### Invoegen Mail Merge `ADDRESSBLOCK` veld in een document met behulp van DOM

De `ADDRESSBLOCK` veld wordt gebruikt om een mail merge adresblok in Word-document. `ADDRESSBLOCK` veld in Word document kan worden vertegenwoordigd door de [FieldAddressBlock](https://reference.aspose.com/words/net/aspose.words.fields/fieldaddressblock/) Klasse. U kunt de **FieldAddressBlock** klasse om de volgende bewerkingen uit te voeren:

- specificeren of de naam van het land/gebied in het veld moet worden vermeld
- te specificeren of het adres moet worden opgemaakt volgens het land/regio van de ontvanger zoals gedefinieerd in POST*CODE (Universele Postunie 2006)
- de naam van het uitgesloten land/regio vermelden
- naam en adresformaat specificeren
- geef de taal-ID die wordt gebruikt om het adres te formatteren

{{% alert color="primary" %}}

Voor meer details, zie de [FieldAddressBlock](https://reference.aspose.com/words/net/aspose.words.fields/fieldaddressblock/) klasse API.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe u de Mail Merge `ADDRESSBLOCK` Veld DOM naar een paragraaf in een document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cs" >}}

### Invoegen `ADVANCE` veld in een document zonder DocumentBuilder te gebruiken

De `ADVANCE` veld wordt gebruikt om volgende tekst te compenseren binnen een regel naar links, rechts, omhoog of omlaag. De `ADVANCE` veld in Word document kan worden vertegenwoordigd door de [FieldAdvance](https://reference.aspose.com/words/net/aspose.words.fields/fieldadvance/) Klasse. U kunt de **FieldAdvance** klasse om de volgende bewerkingen uit te voeren:

- geef het aantal punten aan waarmee de tekst die het veld volgt verticaal van de bovenste rand van de pagina moet worden verplaatst
- geef het aantal punten aan waarmee de tekst die het veld volgt horizontaal van de linkerkant van de kolom, het frame of het tekstvak moet worden verplaatst
- geef het aantal punten aan waarmee de tekst die volgt op het veld links, rechts, omhoog of omlaag moet worden verplaatst

{{% alert color="primary" %}}

Voor meer details, zie de [FieldAdvance](https://reference.aspose.com/words/net/aspose.words.fields/fieldadvance/) klasse API.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe u de `ADVANCE` Veld DOM naar een paragraaf in een document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAdvanceFieldWithOutDocumentBuilder-InsertAdvanceFieldWithOutDocumentBuilder.cs" >}}

### Invoegen `ASK` veld in een document zonder DocumentBuilder te gebruiken

De `ASK` veld wordt gebruikt om de gebruiker te vragen om tekst toe te wijzen aan een bladwijzer in Word-document. `ASK` veld in Word document kan worden vertegenwoordigd door de [FieldAsk](https://reference.aspose.com/words/net/aspose.words.fields/fieldask/) Klasse. U kunt de **FieldAsk** klasse om de volgende bewerkingen uit te voeren:

- geef de naam van de bladwijzer op
- Geef standaard gebruikers antwoord (eerste waarde in het prompt venster)
- geef aan of de reactie van de gebruiker eenmaal per mail merge werking
- geef de prompttekst (de titel van het promptvenster)

{{% alert color="primary" %}}

Voor meer details, zie de [FieldAsk](https://reference.aspose.com/words/net/aspose.words.fields/fieldask/) klasse API.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe u de `ASK` Veld DOM naar een paragraaf in een document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertASKFieldWithOutDocumentBuilder-InsertASKFieldWithOutDocumentBuilder.cs" >}}

### Invoegen `AUTHOR` veld in een document zonder DocumentBuilder te gebruiken

De `AUTHOR` veld wordt gebruikt om de naam van de auteur van het document van de `Document` eigenschappen. De `AUTHOR` veld in Word document kan worden vertegenwoordigd door de [FieldAuthor](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/) Klasse. U kunt de **FieldAuthor** klasse om de volgende bewerkingen uit te voeren:

- geef de naam van de auteur op

{{% alert color="primary" %}}

Voor meer details, zie de [FieldAuthor](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/) klasse API.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe u de `AUTHOR` Veld DOM naar een paragraaf in een document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cs" >}}

### Invoegen `INCLUDETEXT` veld in een document zonder DocumentBuilder te gebruiken

De `INCLUDETEXT` veld voegt de tekst en afbeeldingen in het document genoemd in de veldcode. U kunt het gehele document of een deel van het document waarnaar een bladwijzer verwijst, invoegen. Dit veld in het Word-document wordt vertegenwoordigd door IBEITETEXT. U kunt de [FieldIncludeText](https://reference.aspose.com/words/net/aspose.words.fields/fieldincludetext/) klasse om de volgende bewerkingen uit te voeren:

- geef de naam van de bladwijzer op van het meegeleverde document
- de locatie van het document specificeren

{{% alert color="primary" %}}

Voor meer details, zie de [FieldIncludeText](https://reference.aspose.com/words/net/aspose.words.fields/fieldincludetext/) klasse API.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe u de `INCLUDETEXT` veld gebruiken DOM naar een paragraaf in een document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertIncludeFieldWithoutDocumentBuilder-InsertFieldIncludeTextWithoutDocumentBuilder.cs" >}}

### Invoegen `TOA` veld in een document zonder DocumentBuilder te gebruiken

De `TOA` Het veld (*tabel van de autoriteiten*) bouwt en voegt een tabel van autoriteiten toe. De `TOA` veld verzamelt items gemarkeerd door `TA` (') Velden waarop de autoriteiten zijn ingeschreven. Microsoft Office Word voegt de `TOA` veld wanneer u op *Invoegen tabel van autoriteiten* in de **Lijst van instanties** groep op de **References** tab. Wanneer u de `TOA` veld in uw document, de syntax ziet er als volgt uit:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Voor meer details, zie de [FieldToa](https://reference.aspose.com/words/net/aspose.words.fields/fieldtoa/) klasse API.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe u de `TOA` veld gebruiken DOM naar een paragraaf in een document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cs" >}}
