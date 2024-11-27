---
title: Mail Merge en rapportage in Python
second_title: Aspose.Words Voor Python via .NET
articleTitle: Mail Merge en rapportage
linktitle: Mail Merge en rapportage
type: docs
description: "Mail Merge is een populaire functie voor het snel maken van documenten met behulp van Python. Aspose.Words for Python via .NET neemt de standaard Mail Merge-functionaliteit en brengt deze vele stappen vooruit, waardoor het een volwaardige rapportageoplossing wordt waarmee u nog complexere documenten kunt maken, zoals rapporten, catalogi, voorraden en facturen."
keywords: "how to use Mail Merge python"
weight: 30
url: /nl/python-net/mail-merge-and-reporting/
timestamp: 2024-01-27-14-07-04
---

Mail Merge is een populaire functie voor het snel en eenvoudig maken van documenten zoals brieven, labels en enveloppen. Met Aspose.Words kunt u documenten genereren uit sjablonen met Mail Merge velden.

Een Mail Merge - veld is een veld dat u in een mail merge - sjabloon kunt invoegen om specifieke waarden uit een gegevensbronrecord op te nemen in uitvoerdocumenten. U kunt bijvoorbeeld een Samenvoegveld invoegen in een e-mailsjabloon, zodat de begroeting de voornaam van de ontvanger heeft in plaats van een algemene ' Hallo!". Aspose.Words plaatst gegevens van een externe bron, zoals een database of bestand, in deze velden en formatteert ze. Het resulterende document wordt opgeslagen in de opgegeven map.

Aspose.Words neemt de standaard Mail Merge-functionaliteit en zet deze vele stappen vooruit, waardoor het een volwaardige rapportageoplossing wordt waarmee u nog complexere documenten kunt maken, zoals rapporten, catalogi, voorraden en facturen. Hier zijn een paar voordelen van de Aspose.Words rapportage oplossing:

- Ontwerp rapporten in Microsoft Word met behulp van standaard Mail Merge velden
- Definieer regio ' s in het document die groeien, zoals gedetailleerde volgorde rijen (wordt momenteel niet ondersteund in Python versie)
- Afbeeldingen invoegen tijdens een mail merge
- Voer aangepaste logica uit, beheer de opmaak of voeg complexe inhoud toe met behulp van Mail Merge event handlers (wordt momenteel niet ondersteund in Python versie)
- Vul documenten in met gegevens van elk type gegevensbron (wordt momenteel niet ondersteund in Python - versie, alleen arrays-gegevensbron wordt ondersteund)

{{% alert color="primary" %}}

De module [aspose.words.mailmerging](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/) wordt gebruikt om te werken met e-mail samenvoegen.

{{% /alert %}}

## Mechanisme en hoofdcomponenten van een Mail Merge operatie {#mechanism-and-main-components-of-a-mail-merge-operation}

Aspose.Words biedt de mogelijkheid om documenten in verschillende [supported formats](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) Te laden en stelt gebruikers vervolgens in staat om een Mail Merge - bewerking uit te voeren.

Meestal kunt u met een geladen document samenvoegvelden opslaan, bijvoorbeeld een document in DOCX - indeling. Maar er zijn formaten die dergelijke velden niet opslaan, bijvoorbeeld TXT. Als Aspose.Words het laden van dergelijke bestandsindelingen ondersteunt, kunt u de samenvoegvelden rechtstreeks aan het documentmodel toevoegen, het document opslaan in een handige [supported format](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) en de Mail Merge - bewerking uitvoeren.

De Mail Merge operatie zal je *mail merge template* en je *data source* samenvoegen om individuele *merged documents* te genereren.

## Wat is een Mail Merge Template {#what-is-a-mail-merge-template}

Het doel van het toepassen van een mail merge - bewerking met behulp van een samenvoegsjabloon is om het proces van het maken van een document te vereenvoudigen.

Er zijn verschillende manieren om een samenvoegsjabloon te maken en te ontwerpen. U kunt Microsoft Word gebruiken en de samenvoegsjabloon hoeft geen Microsoft Word - sjabloon te zijn, dat wil zeggen een document in de indeling DOT of DOTX, Het kan een gewoon document in de indeling DOC of DOCX zijn. U moet een aantal speciale velden met de naam merge fields invoegen in deze sjabloon op plaatsen waar u wilt dat gegevens uit uw gegevensbron later worden ingevoegd. Of u kunt programmatisch een samenvoegsjabloon maken met behulp van de [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) - Klasse.

De samenvoegsjabloon bevat de hoofdtekst, die hetzelfde moet zijn in alle uitvoerdocumenten nadat u de bewerking Mail Merge hebt uitgevoerd. U kunt elke indeling voor uw sjabloon gebruiken als er een mogelijkheid is om samenvoegvelden toe te voegen. Alle samenvoegvelden binnen uw sjabloon worden ingevuld vanuit uw gegevensbron tijdens de bewerking Mail Merge.

## Gegevensbrontypen voor een Mail Merge - bewerking {#data-source-types-for-a-mail-merge-operation}

Momenteel accepteert Aspose.Words Voor Python via .NET Mail Merge alleen een reeks waarden als gegevensbron. Andere types zullen worden toegevoegd in de toekomstige versies.

Het volgende codevoorbeeld laat zien hoe u een eenvoudige sjabloon kunt maken en deze kunt vullen met gegevens met behulp van Mail Merge - functionaliteit:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Mail Merge and Reporting-base_operations-SimpleMailMerge.py" >}}


## Samengevoegde documenten van een Mail Merge bewerking {#merged-documents-of-a-mail-merge-operation}

Een samengevoegd document is het resultaat van de bewerking Mail Merge wanneer u de sjabloon samenvoegt met de gegevensbron. Alle samenvoegvelden in het samengevoegde document worden vervangen door werkelijke gegevens uit uw gegevensbron.

De volgende afbeelding toont een voorbeeld van de samenvoegsjabloon met samengevoegde velden voordat de bewerking Mail Merge wordt uitgevoerd.

![mail-merge-and-reporting-fields-aspose-words-net](mail-merge-and-reporting-1.jpg)

De volgende afbeelding toont een voorbeeld van het samengevoegde document als resultaat van het uitvoeren van de bewerking Mail Merge.

![mail-merge-and-reporting-result-aspose-words-net](mail-merge-and-reporting-2.jpg)

## Zie Ook

- [Werken met Mail Merge Sjablonen in Word](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)
