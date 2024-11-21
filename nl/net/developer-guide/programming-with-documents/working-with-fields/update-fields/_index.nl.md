---
title: Velden bijwerken C#
second_title: Aspose.Words voor .NET
articleTitle: Velden bijwerken
linktitle: Velden bijwerken
description: "Leer hoe u velden kunt bijwerken in C#. Velden programmamatisch bijwerken of automatische veldupdate gebruiken .NET API."
type: docs
weight: 30
url: /nl/net/update-fields/
timestamp: 2024-01-27-14-07-04
---

Typisch, een veld ingevoegd in Microsoft Word bevat al een actuele waarde. Als het veld bijvoorbeeld een formule of een paginanummer is, bevat het de juiste berekende waarde voor de gegeven versie van het document. Maar als je een toepassing hebt die een document genereert of wijzigt met velden zoals het samenvoegen van twee documenten of het bevolken met gegevens, dan moeten idealiter alle velden worden bijgewerkt om het document nuttig te maken.

## Velden bijwerken

Wanneer een document wordt geladen, Aspose.Words bootst het gedrag na van Microsoft Word met de optie om velden automatisch bij te werken is uitgeschakeld. Het gedrag kan als volgt worden samengevat:

- als u een document opent/opslaat blijven de velden intact
- u kunt expliciet alle velden in een document bijwerken, bijvoorbeeld, herbouwen `TOC`, wanneer u
- wanneer u naar PDF of XPS de velden met betrekking tot paginanummering in headers/voeters worden bijgewerkt
- wanneer u executeren mail merge alle velden worden automatisch bijgewerkt

### Velden programmatisch bijwerken

Om de velden in het hele document expliciet bij te werken, gewoon de [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) methode. Voor het bijwerken van velden in een deel van een document, verkrijgen een [Range](https://reference.aspose.com/words/net/aspose.words/range/) object en bel de [UpdateFields](https://reference.aspose.com/words/net/aspose.words/range/updatefields/) methode. In Aspose.Words, u een **Range** voor elke node in de documentboom, zoals [Section](https://reference.aspose.com/words/net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) , [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), enz. met behulp van de [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/) eigendom. U kunt het resultaat van een enkel veld bijwerken door de [Update](https://reference.aspose.com/words/net/aspose.words.fields/field/update/) methode.

### Automatische update van pagina-gerelateerde velden tijdens het renderen

Wanneer u een document naar een vast paginaformaat omzet, bijvoorbeeld naar PDF of XPS, dan Aspose.Words zal pagina-indelingsvelden automatisch bijwerken `PAGE`, `PAGEREF` gevonden in headers/voeters van het document. Dit gedrag bootst het gedrag na van Microsoft Word bij het afdrukken van een document.

Als u alle andere velden in het document wilt bijwerken, dan moet u bellen [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) voordat het document wordt weergegeven.

Het volgende voorbeeld van code laat zien hoe u alle velden kunt bijwerken voordat u een document aanmaakt:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cs" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### Automatisch veld bijwerken tijdens Mail Merge

Wanneer u een <span notrans="<span notrans=" mail merge"=""></span>,"> alle velden in het document worden automatisch bijgewerkt. Dit komt omdat de mail merge is een geval van een veldupdate. Het programma ontmoet een mail merge veld en moet het resultaat te updaten, waarbij het grijpen van de waarde van de gegevensbron en invoegen in het veld. De logica is natuurlijk ingewikkelder, bijvoorbeeld wanneer het einde van het document/mail merge regio is bereikt, maar er moeten nog meer gegevens worden samengevoegd, dan moet de regio worden gedupliceerd en moet de nieuwe reeks velden worden bijgewerkt.

## Velden bijwerken met vieze eigenschap

De w:dirty is een veld-level attribuut dat alleen het veld zal vernieuwen dat u aangeeft wanneer het document wordt geopend. Het vertelt MS Word alleen dit veld te vernieuwen de volgende keer dat het document wordt geopend. U kunt de [UpdateDirtyFields](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/updatedirtyfields/) eigenschap om aan te geven of de velden met het vuile attribuut moeten worden bijgewerkt. Wanneer de waarde van **UpdateDirtyFields** is ingesteld op <span notrans="<span notrans=" *true*"=""></span>,"> alle velden met *true* waarde voor [Field.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/field/isdirty/) of [FieldChar.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/isdirty/) eigenschap worden bijgewerkt op documentbelasting.

Het volgende codevoorbeeld laat zien hoe velden met het vuile attribuut kunnen worden bijgewerkt:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadOptionsUpdateDirtyFields.cs" >}}

## Update LastSavedTime Property Alvorens op te slaan

U kunt de [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) eigenschap of de bijbehorende ingebouwde documenteigenschap moet worden bijgewerkt [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) bij het opslaan van het document.

Het volgende voorbeeld van code laat zien hoe u deze eigenschap kunt bijwerken:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cs" >}}
