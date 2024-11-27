---
title: Mail Merge sjabloon in C#
second_title: Aspose.Words voor .NET
articleTitle: Mail Merge sjabloon
linktitle: Mail Merge sjabloon
type: docs
description: "Maak een Mail Merge - sjabloon om vaste inhoud in uitvoerdocumenten te definiëren en genereer vervolgens samenvoegdocumenten met behulp van de samenvoegvelden in C#."
keywords: "create Mail Merge template с#"
weight: 10
url: /nl/net/mail-merge-template/
timestamp: 2024-07-11-08-07-06
---

Het is gebruikelijk om een samenvoegsjabloon te gebruiken als basisdocument voor een Mail Merge - bewerking, hetzij als het een eenvoudige Mail Merge of Mail Merge Met regio ' s is. Mail merge met regio ' s is krachtiger en populairder dan de eenvoudige mail merge. Eenvoudig Mail Merge wordt beschouwd als een specifiek geval van Mail Merge Met regio ' s waar de regio het hele document is. Alles wordt uitgelegd in het volgende artikel "typen van Mail Merge - bewerking" in meer detail.

De sjabloon zorgt ervoor dat de tekst in het samengevoegde document correct is opgemaakt en de bewerking Mail Merge garandeert dat de tekst uit de gegevensbron correct is ingevoerd in de samenvoegsjabloon.

Aspose.Words biedt de mogelijkheid om een Mail Merge - sjabloon te maken om vaste inhoud te definiëren en vervolgens samenvoegdocumenten te genereren met behulp van de samenvoegvelden. De samenvoegsjabloon heeft dus de nodige tekst, die hetzelfde is in alle uitvoerdocumenten, en de samenvoegvelden om de veranderende inhoud in te vullen. Als gevolg hiervan wordt informatie uit de opgegeven gegevensbron via deze velden toegevoegd aan de samenvoegsjabloon tijdens het genereren van het samengevoegde document.

## Wat is een Mail Merge Template

Een Mail Merge - sjabloon is een gepersonaliseerd document dat de vaste gegevens en de samengevoegde velden bevat waar u de variabele tekst wilt hebben. Een samenvoegsjabloon kan in elke indeling zijn die velden ondersteunt, bijvoorbeeld, DOC, DOCX, DOT, DOTX, RTF. Daarnaast kunt u ook de mustache sjabloon gebruiken die in het artikel "Mustache Sjabloonsyntaxis" in meer detail wordt uitgelegd.

U kunt een samenvoegsjabloon maken als model voor nieuwe documenten en deze moet de hoofdtekst bevatten die voor elke versie van het samengevoegde document hetzelfde moet zijn. Het toevoegen van samenvoegvelden in de sjabloon vertegenwoordigt de personalisatiegegevens, zoals namen of adressen die worden opgehaald uit een gegevensbron. Met een bewerking Mail Merge worden de personalisatiegegevens uit uw gegevensbron automatisch ingevoegd in uw samenvoegsjabloondocument.

Bovendien kunt u een Mail Merge - regio toevoegen aan uw sjabloon door twee Mail Merge - velden in te voegen om het begin en het einde van het e-mailgebied te markeren. Het volgende artikel "typen van Mail Merge - bewerking" legt dat in meer detail uit.

## Een Mail Merge sjabloon maken

U kunt een sjabloon maken en er specifieke samenvoegvelden aan toevoegen, die worden vervangen door de waarden uit de gegevensbron, handmatig, bijvoorbeeld met behulp van Microsoft Word, of programmatisch met behulp van Aspose.Words. In dit artikel zullen we kijken naar de programmatische manier van het maken van een sjabloon.

Gebruik de klasse [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) om de vereiste samenvoegsjabloon te maken met behulp van Aspose.Words. U kunt een tekst, een samenvoegveld en een regeleinde in zo ' n sjabloon opnemen met behulp van de methoden [InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/), [InsetField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) en [InsertParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertparagraph/).

Het volgende codevoorbeeld laat zien hoe u een Mail Merge sjabloon maakt:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "create-mail-merge-template.cs" >}}

De afbeelding hieronder toont de gemaakte sjabloon:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## Eigenschappen van een Mail Merge - sjabloon aanpassen

Met Aspose.Words kunt u uw sjabloon aanpassen via vele eigenschappen. Template aanpassing zal hieronder worden beschreven door middel van een voorbeeld van het aanpassen van sommige eigenschappen van afbeeldingen en tekst.

### Afbeeldingseigenschappen Aanpassen

U kunt de eigenschappen van de afbeelding opgeven met de klasse [ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/). Merk op dat u een afbeelding uit een database kunt invoegen zoals beschreven in [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Working%20with%20Fields.cs#L214).

Het volgende codevoorbeeld laat zien hoe u de naam en de grootte van het afbeeldingsbestand kunt opgeven:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "image-field-merging.cs" >}}

### Teksteigenschappen Aanpassen

U kunt de eigenschap [Text](https://reference.aspose.com/words/net/aspose.words.mailmerging/fieldmergingargs/text/) gebruiken om tekst in het document in te voegen voor het huidige samenvoegveld. U kunt ook de opmaak van teksten en alinea ' s in uw sjabloon wijzigen met de klassen [Font](https://reference.aspose.com/words/net/aspose.words/font/) en [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/). U kunt de tekst die voor of na het samenvoegveld moet worden ingevoegd, verwerken met behulp van de eigenschappen [TextBefore](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/textbefore/) en [TextAfter](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/textafter/) die zijn opgenomen in de klasse [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/).

Het volgende codevoorbeeld laat zien hoe u selectievakjes of HTML invoegt tijdens Mail Merge - bewerking:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Fax.docx).

U kunt ook de implementatie van de `HandleMergeField` klasse controleren van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/828b58e207e96afa624956867ec9c777fa10af87/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Working%20with%20Fields.cs#L43).

{{% /alert %}}

## Zie Ook

* Voor meer informatie over het handmatig maken van sjablonen in Microsoft Word, raadpleegt u de [Een sjabloon maken](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) artikel in de Microsoft documentatie
