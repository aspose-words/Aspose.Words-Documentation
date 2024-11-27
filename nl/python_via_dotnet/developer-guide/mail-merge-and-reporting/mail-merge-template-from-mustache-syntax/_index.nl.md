---
title: Mail Merge Mustache syntaxis
second_title: Aspose.Words Voor Python via .NET
articleTitle: Mail Merge sjabloon van Mustache syntaxis
linktitle: Mail Merge sjabloon van Mustache syntaxis
type: docs
description: "Maak sjablonen met Mustache syntaxis met Python. Mustache syntaxis is de enige optie om te gebruiken met sjablonen die geen velden bevatten (HTML of TXT). Met Word templates heb je twee opties: velden of Mustache syntaxis."
keywords: "mail merge template mustache syntax python"
weight: 40
url: /nl/python-net/mail-merge-template-from-mustache-syntax/
timestamp: 2024-01-27-14-07-04
---

Met Aspose.Words kunt u naast de bekende sjablonen sjablonen maken met de syntaxis van mustache. Een Mustache is een alternatieve variant van de sjabloonsyntaxis die bestaat uit tagnamen die zijn ingesloten door `{{ }}` en wordt ondersteund door een modelobject dat de gegevens voor de sjabloon bevat.

De syntaxis van Mustache is de enige optie die kan worden gebruikt met sjablonen die geen velden bevatten, zoals sjablonen van HTML en TXT. Met Word - sjablonen hebt u twee opties om velden of Mustache - syntaxis te gebruiken.

De syntaxis van Mustache ondersteunt *foreach* tag, een alternatief voor het gebruik van Mail Merge Met regio ' s. Het voordeel is dus dat je mustache syntaxis kunt gebruiken als je om de een of andere reden niet in staat bent of gewoon geen merge velden en Merge regio ' s wilt gebruiken.

U kunt Mail Merge velden ook combineren met een aantal extra velden met behulp van de *foreach* tag zoals weergegeven in de afbeelding hieronder.

<img src="mustache-syntax.png" alt="mustache_syntax" style="width:800px"/>

## Een Mustache sjabloon maken

Het eerste belangrijke punt om te verduidelijken is dat Mustache Geen template-engine is. Mustache is een andere syntaxisvariant die beschikbaar is voor elke sjabloon in een [load format](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) die wordt ondersteund door Aspose.Words. Daarom kunt u zo ' n sjabloon zowel programmatisch als via een interface maken, u hoeft alleen maar bepaalde syntaxis op te nemen en te voldoen aan de Mustache - specificatie.

Stel dat u dezelfde e-mail naar 50 ontvangers moet sturen om de begroeting te personaliseren met hun overeenkomstige voornamen. U kunt de voornaam van de ontvanger vervangen door een tijdelijke aanduiding als volgt::

> Dear {{FirstName}}
>
> I hereby...

De vraag hier: Hoe kunt u 50 e-mails maken van 1 enkele Mustache sjabloon? Om dat te beantwoorden, moet u een Mail Merge uitvoeren met regio ' s om de krullende accolades voor tijdelijke aanduidingen in de sjabloon te vullen met werkelijke gegevens en een uitvoerdocument te genereren.

<img src="mustache-template.png" alt="mustache_template" style="width:650px"/>

{{% alert color="primary" %}}

Zoals je in het bovenstaande voorbeeld ziet, moet je in Mustache krullende accolades gebruiken voor tijdelijke aanduidingen die eruit zien als een mustache Wanneer je de krullende accolades 90 graden met de klok mee draait.

{{% /alert %}}

## Werken met Mustache syntaxis

Mustache wordt weergegeven als een logica-loze orde omdat het geen specifieke controle stroom instructies zoals *for* lussen en *if* en *else* voorwaarden. Maar u kunt de sectietags verwerkingslijsten en lambda ' s gebruiken om voorwaardelijke evaluatie en looping te bereiken. Dus om de Mustache syntaxis op te nemen in de Mail Merge bewerking, moet je de [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/) eigenschap gebruiken en de waarde ervan instellen op *True*.

## Gebruik `IF` velden om een Mail Merge Intelligent te maken

Met Aspose.Words kunt u Mail Merge velden en Mustache tags gebruiken met de `IF` instructie. De `IF` velden kunnen in elk Mail Merge document worden gebruikt om ongewenste spaties en komma ' s te onderdrukken als een veld leeg is.

De `IF` veldformule wordt hieronder weergegeven:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

Hier kan de voorwaarde een samenvoegveld of een Mustache - tag zijn.

U kunt bijvoorbeeld `IF` - velden gebruiken als u "zijn", "haar", "hij" of "zij" moet invoegen, afhankelijk van het geslacht, als volgt::

**{ IF { MERGEFIELD Gender } = "MALE" "true text" "false text"}**

**{ IF "{{ GENDER }}" = "MALE" "true text" "false text"}**

Het volgende codevoorbeeld laat zien hoe een Mail Merge - bewerking met Mustache - tags en `IF` - velden moet worden uitgevoerd:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Mail Merge and Reporting-base_operations-UseOfifelseMustacheSyntax.py" >}}

U kunt het verschil tussen het document opmerken voordat u de eigenschap [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/) toepast:

<img src="mustache-if-field-1.png" alt="mustache_if_field" style="width:800px"/>

En na het toepassen van de eigenschap [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/):

<img src="mustache-if-field-2.png" alt="mustache-if-field-2.png" style="width:800px"/>
