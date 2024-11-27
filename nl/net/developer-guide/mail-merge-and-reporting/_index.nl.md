---
title: Mail Merge en rapportage in C#
second_title: Aspose.Words voor .NET
articleTitle: Mail Merge en rapportage
linktitle: Mail Merge en rapportage
type: docs
description: "Mail Merge is een populaire functie voor het snel maken van documenten met behulp van C#. Aspose.Words for .NET neemt de standaard Mail Merge-functionaliteit en brengt deze vele stappen vooruit, waardoor het een volwaardige rapportageoplossing wordt waarmee u nog complexere documenten kunt maken, zoals rapporten, catalogi, voorraden en facturen."
keywords: "how to use Mail Merge c#"
weight: 30
url: /nl/net/mail-merge-and-reporting/
timestamp: 2024-07-11-08-07-06
---

Mail Merge is een populaire functie voor het snel en eenvoudig maken van documenten zoals brieven, labels en enveloppen. Met Aspose.Words kunt u documenten genereren uit sjablonen met Mail Merge velden.

Een Mail Merge - veld is een veld dat u in een mail merge - sjabloon kunt invoegen om specifieke waarden uit een gegevensbronrecord op te nemen in uitvoerdocumenten. U kunt bijvoorbeeld een Samenvoegveld invoegen in een e-mailsjabloon, zodat de begroeting de voornaam van de ontvanger heeft in plaats van een algemene ' Hallo!". Aspose.Words plaatst gegevens van een externe bron, zoals een database of bestand, in deze velden en formatteert ze. Het resulterende document wordt opgeslagen in de opgegeven map.

Aspose.Words neemt de standaard Mail Merge-functionaliteit en zet deze vele stappen vooruit, waardoor het een volwaardige rapportageoplossing wordt waarmee u nog complexere documenten kunt maken, zoals rapporten, catalogi, voorraden en facturen. Hier zijn een paar voordelen van de Aspose.Words rapportage oplossing:

- Ontwerp rapporten in Microsoft Word met behulp van standaard Mail Merge velden
- Definieer regio ' s in het document die groeien, zoals gedetailleerde volgorde rijen
- Afbeeldingen invoegen tijdens een mail merge
- Aangepaste logica uitvoeren, opmaak beheren of complexe inhoud invoegen met behulp van Mail Merge gebeurtenishandlers
- Vul documenten in met gegevens uit elk type gegevensbron

{{% alert color="primary" %}}

De [Aspose.Words.MailMerging](https://reference.aspose.com/words/net/aspose.words.mailmerging/) naamruimte wordt gebruikt om te werken met e-mail samenvoegen.

{{% /alert %}}

## Mechanisme en hoofdcomponenten van Mail Merge {#mechanism-and-main-components-of-a-mail-merge-operation}

Aspose.Words biedt de mogelijkheid om documenten in verschillende [supported formats](https://reference.aspose.com/words/net/aspose.words/loadformat/) Te laden en stelt gebruikers vervolgens in staat om een Mail Merge - bewerking uit te voeren.

Meestal kunt u met een geladen document samenvoegvelden opslaan, bijvoorbeeld een document in DOCX - indeling. Maar er zijn formaten die dergelijke velden niet opslaan, bijvoorbeeld TXT. Als Aspose.Words het laden van dergelijke bestandsindelingen ondersteunt, kunt u de samenvoegvelden rechtstreeks aan het documentmodel toevoegen, het document opslaan in een handige [supported format](https://reference.aspose.com/words/net/aspose.words/saveformat/) en de Mail Merge - bewerking uitvoeren.

De Mail Merge operatie zal je *mail merge template* en je *data source* samenvoegen om individuele *merged documents* te genereren.

## Wat is een Mail Merge Template {#what-is-a-mail-merge-template}

Het doel van het toepassen van een mail merge - bewerking met behulp van een samenvoegsjabloon is om het proces van het maken van een document te vereenvoudigen.

Er zijn verschillende manieren om een samenvoegsjabloon te maken en te ontwerpen. U kunt Microsoft Word gebruiken en de samenvoegsjabloon hoeft geen Microsoft Word - sjabloon te zijn, dat wil zeggen een document in de indeling DOT of DOTX, Het kan een gewoon document in de indeling DOC of DOCX zijn. U moet een aantal speciale velden met de naam merge fields invoegen in deze sjabloon op plaatsen waar u wilt dat gegevens uit uw gegevensbron later worden ingevoegd. Of u kunt programmatisch een samenvoegsjabloon maken met behulp van de [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) - Klasse.

De samenvoegsjabloon bevat de hoofdtekst, die hetzelfde moet zijn in alle uitvoerdocumenten nadat u de bewerking Mail Merge hebt uitgevoerd. U kunt elke indeling voor uw sjabloon gebruiken als er een mogelijkheid is om samenvoegvelden toe te voegen. Alle samenvoegvelden binnen uw sjabloon worden ingevuld vanuit uw gegevensbron tijdens de bewerking Mail Merge.

## Gegevensbronnen voor een Mail Merge - bewerking {#data-source-types-for-a-mail-merge-operation}

Aspose.Words Mail Merge accepteert verschillende gegevensbronnen. Dit kan een DataTable, DataView, DataSet, IDataReader, een array van waarden ondersteund door ADO .NET, of aangepaste gegevensbronnen vertegenwoordigd door [IMailMergeDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/) implementaties.

De gegevensbron bevat alle informatie die tijdens de Mail Merge - bewerking wordt opgehaald om individuele e-mails en documenten te personaliseren. Gegevensbronnen kunnen handmatig worden gemaakt of worden gegenereerd door rapportage vanuit een bestaande database of applicatie. Als u gegevens in XML - indeling hebt, kunt u deze laden en samenvoegen met de DataSet. De bewerking Mail Merge zal alle gegevensbronrecords doorlopen en deze invoegen in Mail Merge velden in het document. U kunt een aantal mail merge - interfaces implementeren, zoals [IMailMergeDataSourceRoot](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasourceroot/), om gegevens uit elke gegevensbron samen te voegen, inclusief een LINQ - query, een XML - bestand of bedrijfsobjecten.

Het volgende codevoorbeeld laat zien hoe u een gegevenstabel laadt als de gegevensbron voor de bewerking Mail Merge:

{{< gist "aspose-words-gists" "de5e13f5d5bb7d8cb88da900b4f9ed8b" "execute-with-regions-data-table.cs" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Orders.docx).

{{% /alert %}}

## Samengevoegde documenten van een Mail Merge bewerking {#merged-documents-of-a-mail-merge-operation}

Een samengevoegd document is het resultaat van de bewerking Mail Merge wanneer u de sjabloon samenvoegt met de gegevensbron. Alle samenvoegvelden in het samengevoegde document worden vervangen door werkelijke gegevens uit uw gegevensbron.

De volgende afbeelding toont een voorbeeld van de samenvoegsjabloon met samengevoegde velden voordat de bewerking Mail Merge wordt uitgevoerd.

![mail-merge-and-reporting-fields-aspose-words-net](mail-merge-and-reporting-1.jpg)

De volgende afbeelding toont een voorbeeld van het samengevoegde document als resultaat van het uitvoeren van de bewerking Mail Merge.

![mail-merge-and-reporting-result-aspose-words-net](mail-merge-and-reporting-2.jpg)

## Zie Ook

- [Werken met Mail Merge Sjablonen in Word](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)
