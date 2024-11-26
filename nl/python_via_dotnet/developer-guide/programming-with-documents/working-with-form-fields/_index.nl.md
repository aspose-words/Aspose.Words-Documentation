---
title: Werken met formuliervelden in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Werken met formuliervelden
linktitle: Werken met formuliervelden
description: "Een formulierveld in een document invoegen, verkrijgen of formatteren Python."
type: docs
weight: 380
url: /nl/python-net/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Een document met invullinten (velden) staat bekend als een formulier. U kunt bijvoorbeeld een registratieformulier aanmaken in Microsoft Word dat drop-down lijsten gebruikt waaruit gebruikers items kunnen selecteren. De `Form` veld is een locatie waar een bepaald type gegevens, zoals een naam of adres, wordt opgeslagen. Vorm velden in Microsoft Word bevatten tekstinvoer, combobox en selectievakje.

U kunt formuliervelden in uw project gebruiken om met uw gebruikers te communiceren. U maakt bijvoorbeeld een document aan waarvan de inhoud beschermd is, maar alleen formuliervelden kunnen bewerkt worden. De gebruikers kunnen de gegevens in de formuliervelden invoeren en het document indienen. Uw toepassing die gebruikt Aspose.Words kan gegevens uit de formuliervelden ophalen en verwerken.

Het plaatsen van formuliervelden in het document via code is eenvoudig. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) heeft speciale methoden om ze in te voegen, één voor elk formulierveldtype. Elk van de methoden accepteert een string parameter die de naam van het formulier veld. De naam kan een lege string zijn. Als u echter een naam voor het formulierveld opgeeft, dan wordt automatisch een bladwijzer met dezelfde naam aangemaakt.

## Formuliervelden invoegen

Formuliervelden zijn een specifiek geval van Word-velden die "interactie" met de gebruiker toestaan. Vorm velden in Microsoft Word bevatten tekstvak, combinatievakje en selectievakje.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) bevat speciale methoden om elk type formulierveld in het document in te voegen: [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/), en [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/). Merk op dat als je een naam opgeeft voor het formulierveld, dan wordt een bladwijzer automatisch aangemaakt met dezelfde naam.

Het volgende codevoorbeeld laat zien hoe je een combobox formulierveld in een document invoegt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-InsertFormFields.py" >}}

### Tekstinvoer invoeren

Gebruik de [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/) methode om een tekstvak in het document in te voegen.

Het volgende voorbeeld van code laat zien hoe je een tekstinvoerformulierveld in een document invoegt:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_text_input_form_field.docx")
{{< /highlight >}}

### Een vakje invoegen

Oproep [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) een selectievakje in het document plaatsen.

Het volgende voorbeeld van code laat zien hoe je een selectievakje formulierveld in een document invoegt:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_check_box("CheckBox", True, True, 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_check_box_form_field.docx")
{{< /highlight >}}

### Een combo-box invoegen

Oproep [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/) een Combobox in het document plaatsen.

Het volgende codevoorbeeld laat zien hoe je een Combobox formulierveld in een document invoegt:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

items =  ["One", "Two", "Three"] 
builder.insert_combo_box("DropDown", items, 0)

doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_combo_box_form_field.docx")
{{< /highlight >}}

## Formuliervelden verkrijgen

Een verzameling formuliervelden wordt vertegenwoordigd door de [FormFieldCollection](https://reference.aspose.com/words/python-net/aspose.words.fields/formfieldcollection/) klasse die met behulp van de [form_fields](https://reference.aspose.com/words/python-net/aspose.words/range/form_fields/) eigendom. Dit betekent dat u formuliervelden kunt verkrijgen in een document node, inclusief het document zelf.

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van de volgende voorbeelden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetFormFieldsCollection.py" >}}

U kunt een bepaald formulierveld krijgen door zijn index of naam.

Het volgende voorbeeld van code laat zien hoe toegang te krijgen tot formuliervelden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetByName.py" >}}

De [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) eigenschappen kunt u werken met formulier veldnaam, type en resultaat.

Het volgende voorbeeld van code laat zien hoe te werken met formulier veldnaam, type en resultaat:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsWorkWithProperties.py" >}}

## Formaat Formuliervelden

De [font](https://reference.aspose.com/words/python-net/aspose.words/inline/font/) eigendom van [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) laat het toepassen van lettertypeopmaak op de [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) als geheel inclusief de veldwaarde.

Het volgende voorbeeld van code laat zien hoe lettertypeopmaak toe te passen op de **FormField**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsFontFormatting.py" >}}
