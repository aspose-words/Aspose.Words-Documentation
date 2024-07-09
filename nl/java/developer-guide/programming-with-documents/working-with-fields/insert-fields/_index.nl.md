---
title: Velden invoegen Java
second_title: Aspose.Words voor Java
articleTitle: Velden toevoegen
linktitle: Velden toevoegen
description: "Verschillende manieren om velden in uw document in te voegen met behulp van Java."
type: docs
weight: 20
url: /nl/java/insert-fields/
---

Er zijn verschillende manieren om velden in een document in te voegen:

- gebruik [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)
- gebruik [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)
- gebruik [Aspose.Words Document Object Model (DOM)](/words/nl/java/aspose-words-document-object-model/)

In dit artikel, zullen we kijken naar elke manier in meer detail en analyseren hoe bepaalde velden invoegen met behulp van deze opties.

## Velden in een document invoegen met DocumentBuilder

In Aspose.Words de [InsertField](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean)) methode wordt gebruikt om nieuwe velden in een document in te voegen. De eerste parameter accepteert de volledige veldcode van het in te voegen veld. De tweede parameter is optioneel en staat het veldresultaat van het veld handmatig in te stellen. Als dit niet wordt geleverd, wordt het veld automatisch bijgewerkt. U kunt null of leeg doorgeven aan deze parameter om een veld met een lege veldwaarde in te voegen. Als u niet zeker bent over de specifieke veldcode syntax, maak het veld in Microsoft Word eerst en switch om zijn veldcode te zien.

{{% alert color="primary" %}}

Als uw veldcode een parameter heeft die een spatie bevat, dan moet het worden omsloten door spraaktekens. Anders is het veld in beide Microsoft Word en Aspose.Words kan niet werken zoals verwacht omdat de parameter wordt behandeld als afgekapt.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe je een merge veld invoegt in een document met behulp van **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-InsertField.java" >}}

Dezelfde techniek wordt gebruikt om velden in andere velden in te voegen.

Het volgende voorbeeld van code laat zien hoe je velden in een ander veld invoegt met behulp van **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

### Lokale opgeven op veldniveau

Een taalidentificatiecode is een standaard internationale numerieke afkorting voor de taal in een land of geografische regio. Met Aspose.Words, U kunt de locatie op het veldniveau specificeren met behulp van de [LocaleId](https://reference.aspose.com/words/java/com.aspose.words/field/#getLocaleId) eigenschap, die de locatie-id van het veld krijgt of stelt.

Het volgende voorbeeld van code laat zien hoe u deze optie kunt gebruiken:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

### Niet-getypte/leeg veld invoegen

Als u ongetypte/lege velden wilt invoegen ({}) net als Microsoft Word kunt u de [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) methode met de [FieldType.FieldNone](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) parameter. Om een veld in een Word-document in te voegen, kunt u op de combinatie van de sleutels

Het volgende voorbeeld van code laat zien hoe je een leeg veld in het document invoegt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### Invoegen `COMPARE` Veld

De `COMPARE` veld vergelijkt twee waarden en geeft de numerieke waarde 1 terug als de vergelijking true of 0 als de vergelijking false.

Het volgende voorbeeld van code laat zien hoe toe te voegen `COMPARE` velden die DocumentBuilder gebruiken:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### Invoegen `IF` Veld

De `IF` veld kan worden gebruikt om argumenten voorwaardelijk te evalueren.

Het volgende voorbeeld van code laat zien hoe toe te voegen `IF` velden die DocumentBuilder gebruiken:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}

## Velden invoegen in een document met FieldBuilder

De alternatieve manier om velden in te voegen Aspose.Words is de [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/) Klasse. Het biedt een vloeiende interface om veldschakelaars en argumentwaarden te specificeren als tekst, nodes of zelfs geneste velden.

Het volgende voorbeeld van code laat zien hoe je een veld in een document invoegt met behulp van **FieldBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-FieldBuilder.java" >}}

## Velden invoegen met DOM

U kunt ook verschillende soorten velden invoegen met [Aspose.Words Document Object Model (DOM)](/words/nl/java/aspose-words-document-object-model/). In dit hoofdstuk zullen we enkele voorbeelden bekijken.

### Samenvoegen Veld in een document met DOM

`MERGEFIELD` veld in Word document kan worden vertegenwoordigd door de [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) Klasse. U kunt **FieldMergeField** klasse om de volgende bewerkingen uit te voeren:

- geef de naam van het mergeveld
- geef de opmaak van het mergeveld op
- geef de tekst aan die tussen het veldscheidingsteken en het veldeinde van het mergeveld ligt
- geef aan welke tekst moet worden ingevoegd na het mergeveld als het veld niet leeg is
- geef aan welke tekst vóór het mergeveld moet worden ingevoegd als het veld niet leeg is

{{% alert color="primary" %}}

Voor meer details, zie de [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) klasse API.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe u de `MERGE` veld gebruiken DOM naar een paragraaf in een document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.java" >}}

### Invoegen Mail Merge `ADDRESSBLOCK` veld in een document met DOM

De `ADDRESSBLOCK` veld wordt gebruikt om een mail merge adresblok in een Word-document. `ADDRESSBLOCK` veld in Word document kan worden vertegenwoordigd door de [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) Klasse. U kunt **FieldAddressBlock** klasse om de volgende bewerkingen uit te voeren:

- specificeren of de naam van het land/gebied in het veld moet worden vermeld
- te specificeren of het adres moet worden opgemaakt volgens het land/regio van de ontvanger zoals gedefinieerd in POST*CODE (Universele Postunie 2006)
- de naam van het uitgesloten land/regio specificeren
- naam en adresformaat specificeren
- geef de taal-ID op die wordt gebruikt om het adres te formatteren

{{% alert color="primary" %}}

Voor meer details, zie de [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) klasse API.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe u de Mail Merge `ADDRESSBLOCK` Veld DOM naar een paragraaf in een document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.java" >}}

### Invoegen `ADVANCE` veld in een document zonder DocumentBuilder te gebruiken

De `ADVANCE` veld wordt gebruikt om volgende tekst te compenseren binnen een regel naar links, rechts, omhoog of omlaag. `ADVANCE` veld in Word document kan worden vertegenwoordigd door de [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) Klasse. U kunt de **FieldAdvance** klasse om de volgende bewerkingen uit te voeren:

- geef het aantal punten aan waarmee de tekst die het veld volgt verticaal van de bovenste rand van de pagina moet worden verplaatst
- geef het aantal punten aan waarmee de tekst die het veld volgt horizontaal van de linkerkant van de kolom, het frame of het tekstvak moet worden verplaatst
- geef het aantal punten aan waarmee de tekst die volgt op het veld links, rechts, omhoog of omlaag moet worden verplaatst

{{% alert color="primary" %}}

Voor meer details, zie de [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) klasse API.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe u de `ADVANCE` Veld DOM naar een paragraaf in een document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAdvance.java" >}}

### Invoegen `ASK` veld in een document zonder DocumentBuilder te gebruiken

De `ASK` veld wordt gebruikt om de gebruiker te vragen om tekst toe te wijzen aan een bladwijzer in Word-document. `ASK` veld in Word document kan worden vertegenwoordigd door de [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) Klasse. U kunt **FieldAsk** klasse om de volgende bewerkingen uit te voeren:

- geef de naam van de bladwijzer op
- Geef standaard gebruikersantwoord op (eerste waarde in het prompt venster)
- geef aan of de reactie van de gebruiker eenmaal per mail merge werking
- geef de prompttekst (de titel van het promptvenster)

{{% alert color="primary" %}}

Voor meer details, zie de [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) klasse API.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe u de `ASK` Veld DOM naar een paragraaf in een document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAsk.java" >}}

### Invoegen `AUTHOR` veld in een document zonder DocumentBuilder te gebruiken

De `AUTHOR` veld wordt gebruikt om de naam van de auteur van het document van de `Document` eigenschappen. `AUTHOR` veld in Word document kan worden vertegenwoordigd door de [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) Klasse. U kunt **FieldAuthor** klasse om de volgende bewerkingen uit te voeren:

- geef de naam van de auteur op

{{% alert color="primary" %}}

Voor meer details, zie de [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) klasse API.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe u de `AUTHOR` Veld DOM naar een paragraaf in een document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAuthorField-InsertAuthorField.java" >}}

### Invoegen `INCLUDETEXT` veld in een document zonder DocumentBuilder te gebruiken

De `INCLUDETEXT` veld voegt de tekst en afbeeldingen in het document in de veldcode. U kunt het gehele document of een deel van het document waarnaar een bladwijzer verwijst, invoegen. Dit veld in Word-document wordt vertegenwoordigd door IMPLETEXT. U kunt [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) klasse om de volgende bewerkingen uit te voeren:

- geef de naam van de bladwijzer op van bijgesloten document
- geef de locatie van het document

{{% alert color="primary" %}}

Voor meer details, zie de [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) klasse API.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe u de `INCLUDETEXT` veld gebruiken DOM naar een paragraaf in een document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIncludeText.java" >}}

### Invoegen `TOA` veld in een document zonder DocumentBuilder te gebruiken

De `TOA` Het veld (*tabel van autoriteiten*) bouwt en voegt een tabel van autoriteiten toe. De `TOA` veld verzamelt items gemarkeerd door `TA` (*Toegangstabel*) velden. Microsoft Office Word voegt de `TOA` veld wanneer u op *Invoegen tabel van autoriteiten* in de **Lijst van instanties** groep op de **References** tab. Wanneer u de `TOA` veld in uw document, de syntax ziet er als volgt uit:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Voor meer details, zie de [FieldToa](https://reference.aspose.com/words/java/com.aspose.words/fieldtoa/) klasse API.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe u de `TOA` veld gebruiken DOM een paragraaf in een document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAField-InsertTOAField.java" >}}
