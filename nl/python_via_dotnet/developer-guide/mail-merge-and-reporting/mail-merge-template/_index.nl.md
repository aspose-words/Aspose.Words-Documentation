---
title: Mail Merge sjabloon in Python
second_title: Aspose.Words Voor Python via .NET
articleTitle: Mail Merge sjabloon
linktitle: Mail Merge sjabloon
type: docs
description: "Maak een Mail Merge - sjabloon om vaste inhoud in uitvoerdocumenten te definiëren en genereer vervolgens samenvoegdocumenten met behulp van de samenvoegvelden in Python."
keywords: "create Mail Merge template python"
weight: 10
url: /nl/python-net/mail-merge-template/
timestamp: 2024-01-31-14-23-37
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

Gebruik de klasse [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) om de vereiste samenvoegsjabloon te maken met behulp van Aspose.Words. U kunt een tekst, een samenvoegveld en een regeleinde in zo ' n sjabloon opnemen met behulp van de methoden [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [inset_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) en [insert_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_paragraph/).

Het volgende codevoorbeeld laat zien hoe u een Mail Merge sjabloon maakt:

{{< highlight python >}}
@staticmethod
def create_mail_merge_template() :
    
    builder = aw.DocumentBuilder()
    
    # Insert a text input field the unique name of this field is "Hello", the other parameters define
    # what type of FormField it is, the format of the text, the field result and the maximum text length (0 = no limit)
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
    builder.insert_field("MERGEFIELD CustomerFirstName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD CustomerLastName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " , ", 0)
    
    # Inserts a paragraph break into the document
    builder.insert_paragraph()
    
    # Insert mail body
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Thanks for purchasing our ", 0)
    builder.insert_field("MERGEFIELD ProductName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", please download your Invoice at ", 0)
    builder.insert_field("MERGEFIELD InvoiceURL \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ". If you have any questions please call ", 0)
    builder.insert_field("MERGEFIELD Supportphone \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", or email us at ", 0)
    builder.insert_field("MERGEFIELD SupportEmail \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ".", 0)
    
    builder.insert_paragraph()
    
    # Insert mail ending
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Best regards,", 0)
    builder.insert_break(aw.BreakType.LINE_BREAK)
    builder.insert_field("MERGEFIELD EmployeeFullname \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD EmployeeDepartment \\* MERGEFORMAT")
    
    return builder.document
{{< /highlight >}}

De afbeelding hieronder toont de gemaakte sjabloon:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## Eigenschappen van een Mail Merge - sjabloon aanpassen

Met Aspose.Words kunt u uw sjabloon aanpassen via vele eigenschappen. Template aanpassing zal hieronder worden beschreven door middel van een voorbeeld van het aanpassen van sommige eigenschappen van afbeeldingen en tekst.

## Zie Ook

* Voor meer informatie over het handmatig maken van sjablonen in Microsoft Word, raadpleegt u de [Een sjabloon maken](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) artikel in de Microsoft documentatie
