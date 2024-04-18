---
title: Velden bijwerken Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Velden bijwerken
linktitle: Velden bijwerken
description: "Velden in een document op verschillende manieren bijwerken en verschillende opties gebruiken in Python."
type: docs
weight: 30
url: /nl/python-net/update-fields/
---

Typisch, een veld ingevoegd in Microsoft Word bevat al een actuele waarde. Als het veld bijvoorbeeld een formule of een paginanummer is, bevat het de juiste berekende waarde voor de gegeven versie van het document. Maar als je een toepassing hebt die een document genereert of wijzigt met velden zoals het samenvoegen van twee documenten of het bevolken met gegevens, dan moeten idealiter alle velden worden bijgewerkt om het document nuttig te maken.

## Velden bijwerken

Wanneer een document wordt geladen, Aspose.Words bootst het gedrag na van Microsoft Word met de optie om velden automatisch bij te werken is uitgeschakeld. Het gedrag kan als volgt worden samengevat:

- als u een document opent/opslaat blijven de velden intact
- u kunt expliciet alle velden in een document bijwerken (bijv. TOC herbouwen) wanneer u dat nodig heeft
- wanneer u naar PDF of XPS de velden met betrekking tot paginanummering in headers/voeters worden bijgewerkt
- wanneer u executeren mail merge alle velden worden automatisch bijgewerkt

### Velden programmatisch bijwerken

Om velden in het hele document expliciet bij te werken, gewoon bellen [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/). Voor het bijwerken van velden in een deel van een document, verkrijgen een [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) object en bel de [update_fields](https://reference.aspose.com/words/python-net/aspose.words/range/update_fields/) methode. In Aspose.Words, u een **Range** voor elke node in de documentboom, zoals [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), enz. met behulp van de [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/) eigendom. U kunt het resultaat van een enkel veld bijwerken door de [update](https://reference.aspose.com/words/python-net/aspose.words.fields/field/update/) methode.

### Automatische update van pagina-gerelateerde velden tijdens het renderen

Wanneer u een document naar een vast paginaformaat omzet, bijvoorbeeld naar PDF of XPS, dan Aspose.Words zal pagina-indelingsvelden automatisch bijwerken `PAGE`, `PAGEREF` gevonden in headers/voeters van het document. Dit gedrag bootst het gedrag na van Microsoft Word bij het afdrukken van een document.

Als u alle andere velden in het document wilt bijwerken, dan moet u bellen [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/) voordat het document wordt weergegeven.

Het volgende voorbeeld van code laat zien hoe u alle velden kunt bijwerken voordat u een document aanmaakt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-UpdateDocFields.py" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### Automatisch veld bijwerken tijdens Mail Merge

Wanneer u een <span notrans="<span notrans=" mail merge"=""></span>,"> alle velden in het document worden automatisch bijgewerkt. Dit komt omdat de mail merge is een geval van een veldupdate. Het programma ontmoet een mail merge veld en moet het resultaat te updaten, waarbij het grijpen van de waarde van de gegevensbron en invoegen in het veld. De logica is natuurlijk ingewikkelder, bijvoorbeeld wanneer het einde van het document/mail merge regio is bereikt, maar er moeten nog meer gegevens worden samengevoegd, dan moet de regio worden gedupliceerd en moet de nieuwe reeks velden worden bijgewerkt.

## Velden bijwerken met vieze eigenschap

De w:dirty is een veld-level attribuut dat alleen het veld zal vernieuwen dat u aangeeft wanneer het document wordt geopend. Het vertelt MS Word alleen dit veld te vernieuwen de volgende keer dat het document wordt geopend. U kunt [update_dirty_fields](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/update_dirty_fields/) eigenschap om aan te geven of de velden met het vuile attribuut moeten worden bijgewerkt. Wanneer de waarde van **_Vuile velden bijwerken** is ingesteld op <span notrans="<span notrans=" `True`"=""></span>,"> alle velden met `True` waarde voor [Field.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/field/is_dirty/) of [FieldChar.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/is_dirty/) eigenschap worden bijgewerkt op documentbelasting.

Het volgende codevoorbeeld laat zien hoe velden met het vuile attribuut kunnen worden bijgewerkt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UpdateDirtyFields.py" >}}

## Update LastSavedTime Property Alvorens op te slaan

U kunt [SaveOptions.update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) eigenschap of de bijbehorende ingebouwde documenteigenschap moet worden bijgewerkt [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) bij het opslaan van het document.

Het volgende voorbeeld van code laat zien hoe u deze eigenschap kunt bijwerken:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

