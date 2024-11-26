---
title: Velden in C++bijwerken
second_title: Aspose.Words voor C++
articleTitle: Velden Bijwerken
linktitle: Velden Bijwerken
description: "Meer informatie over het bijwerken van velden in C++. Werk velden programmatisch bij of gebruik automatische veldupdate met behulp van C++ API."
type: docs
weight: 30
url: /nl/cpp/update-fields/
timestamp: 2024-01-27-14-07-04
---

Een veld dat in Microsoft Word is ingevoegd, bevat doorgaans al een up-to-date waarde. Als het veld bijvoorbeeld een formule of een paginanummer is, bevat het de juiste berekende waarde voor de opgegeven versie van het document. Maar als u een toepassing hebt die een document genereert of wijzigt met velden zoals het samenvoegen van twee documenten of het vullen met gegevens, moeten idealiter alle velden worden bijgewerkt om het document nuttig te maken.

## Hoe velden bij te werken

Wanneer een document wordt geladen, imiteert Aspose.Words het gedrag van Microsoft Word met de optie om velden automatisch bij te werken is uitgeschakeld. Het gedrag kan als volgt worden samengevat::

- wanneer u een document opent/opslaat, blijven de velden intact
- u kunt expliciet alle velden in een document bijwerken, bijvoorbeeld `TOC` opnieuw opbouwen, wanneer dat nodig is
- wanneer u PDF of XPS rendert, worden de velden met betrekking tot paginanummering in kop-en voetteksten bijgewerkt
- wanneer u Mail Merge uitvoert, worden alle velden automatisch bijgewerkt

### Velden Programmatisch Bijwerken

Als u velden in het hele document expliciet wilt bijwerken, roept u gewoon de methode [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/) aan. Als u velden in een deel van een document wilt bijwerken, haalt u een [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) - object op en roept u de [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/range/updatefields/) - methode aan. In Aspose.Words kunt u een **Range** verkrijgen voor elk knooppunt in de documentstructuur, zoals [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), enz. gebruik de eigenschap [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/).U kunt het resultaat van een enkel veld bijwerken door de methode [Update](https://reference.aspose.com/words/cpp/aspose.words.fields/field/update/) aan te roepen.

### Automatische Update van pagina-gerelateerde velden tijdens het renderen

Wanneer u de conversie van een document naar een vaste paginaopmaak uitvoert, bijvoorbeeld naar PDF of XPS, zal Aspose.Words automatisch de aan de pagina-indeling gerelateerde velden `PAGE` bijwerken, `PAGEREF` in kop-en voetteksten van het document. Dit gedrag bootst het gedrag van Microsoft Word na bij het afdrukken van een document.

Als u alle andere velden in het document wilt bijwerken, moet u [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/) aanroepen voordat u het document weergeeft.

Het volgende codevoorbeeld laat zien hoe u alle velden kunt bijwerken voordat u een document weergeeft:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cpp" >}}

### Automatische Veldupdate Tijdens Mail Merge

Wanneer u een mail merge uitvoert, worden alle velden in het document automatisch bijgewerkt. Dit komt omdat Mail Merge een geval is van een veldupdate. Het programma komt een Mail Merge veld tegen en moet het resultaat bijwerken, waarbij de waarde uit de gegevensbron wordt gehaald en in het veld wordt ingevoegd. De logica is natuurlijk ingewikkelder, bijvoorbeeld wanneer het einde van het document/mail merge - gebied is bereikt, maar er nog meer gegevens moeten worden samengevoegd, dan moet het gebied worden gedupliceerd en de nieuwe set velden worden bijgewerkt.

## LastSavedTime Eigenschap Bijwerken Voordat U Opslaat

U kunt de eigenschap [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatelastsavedtimeproperty/) gebruiken om de bijbehorende ingebouwde documenteigenschap [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) bij te werken wanneer u het document opslaat.

Het volgende codevoorbeeld laat zien hoe u deze eigenschap kunt bijwerken:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cpp" >}}


