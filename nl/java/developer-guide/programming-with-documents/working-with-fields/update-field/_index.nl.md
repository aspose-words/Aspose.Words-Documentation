---
title: Velden bijwerken in Java
second_title: Aspose.Words voor Java
articleTitle: Velden bijwerken
linktitle: Velden bijwerken
description: "Leer hoe u velden kunt bijwerken in Java. Velden programmamatisch bijwerken of automatische veldupdate gebruiken Java API"
type: docs
weight: 30
url: /nl/java/update-field/
timestamp: 2024-01-27-14-07-04
---

Typisch, een veld ingevoegd in Microsoft Word bevat al een actuele waarde. Als het veld bijvoorbeeld een formule of een paginanummer is, bevat het de juiste berekende waarde voor de gegeven versie van het document. Maar als je een toepassing hebt die een document genereert of wijzigt met velden zoals het samenvoegen van twee documenten of het bevolken met gegevens, dan moeten idealiter alle velden worden bijgewerkt om het document nuttig te maken.

## Velden bijwerken

Wanneer een document wordt geladen, Aspose.Words bootst het gedrag na van Microsoft Word met de optie om velden automatisch bij te werken is uitgeschakeld. Het gedrag kan als volgt worden samengevat:

- als u een document opent/opslaat blijven de velden intact
- u kunt expliciet alle velden in een document bijwerken, bijvoorbeeld, herbouwen `TOC` wanneer u
- wanneer u naar PDF of XPS de velden met betrekking tot paginanummering in headers/voeters worden bijgewerkt
- wanneer u uit te voeren Mail Merge alle velden worden automatisch bijgewerkt

### Velden programmatisch bijwerken

Om velden in het hele document expliciet bij te werken, belt u gewoon de [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) methode. Voor het bijwerken van de velden in een deel van een document, verkrijgen een [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) object en bel de [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields) methode. In Aspose.Words, u kunt een **Range** voor elke knooppunt in de documentboom, zoals [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), enz. het gebruik van de [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange) eigendom. U kunt het resultaat van een enkel veld bijwerken door de [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update) methode.

### Automatische update van pagina-gerelateerde velden tijdens renderen

Wanneer u een document omzet naar een vast paginaformaat, bijvoorbeeld naar PDF of XPS, dan Aspose.Words zal pagina-indelingsvelden automatisch bijwerken `PAGE`, `PAGEREF` gevonden in headers/voeters van het document. Dit gedrag bootst het gedrag na van Microsoft Word bij het afdrukken van een document.

Als u alle andere velden in het document wilt bijwerken, dan moet u bellen [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) voordat het document wordt weergegeven.

Het volgende voorbeeld laat zien hoe je alle velden kunt bijwerken voordat je een document aanmaakt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### Automatisch veld bijwerken tijdens Mail Merge

Wanneer u een Mail Merge alle velden in het document worden automatisch bijgewerkt. Dit is omdat de Mail Merge is een geval van een veldupdate. Het programma ontmoet een Mail Merge veld en moet het resultaat te updaten, dat houdt in het grijpen van de waarde van de gegevensbron en invoegen in het veld. De logica is natuurlijk ingewikkelder, bijvoorbeeld wanneer het einde van het document/mail merge regio wordt bereikt, maar er moeten nog meer gegevens worden samengevoegd, dan moet de regio worden gedupliceerd en moet de nieuwe reeks velden worden bijgewerkt.

## Velden bijwerken met vieze eigenschap

De w:dirty is een veld-level attribuut dat alleen het veld zal vernieuwen dat u aangeeft wanneer het document wordt geopend. Het vertelt MS Word alleen dit veld te vernieuwen de volgende keer dat het document wordt geopend. U kunt de eigenschap LoadOptions.setUpdateDirtyFields() gebruiken om aan te geven of de velden met het vuile attribuut moeten worden bijgewerkt. Wanneer de waarde van LoadOptions.setUpdateDirtyFields() ingesteld is op *true* alle velden met *true* waarde voor `Field.IsDirty` of `FieldChar.IsDirty` eigenschap worden bijgewerkt op document laden

Het volgende voorbeeld van code laat zien hoe velden met het vuile attribuut kunnen worden bijgewerkt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## Update LastSavedTime Property Alvorens op te slaan

U kunt de [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) eigenschap of de bijbehorende ingebouwde documenteigenschap moet worden bijgewerkt [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) bij het opslaan van het document.

Het volgende voorbeeld van code laat zien hoe u deze eigenschap kunt bijwerken:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
