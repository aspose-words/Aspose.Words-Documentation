---
title: Werken met formuliervelden in C#
second_title: Aspose.Words voor .NET
articleTitle: Werken met formuliervelden
linktitle: Werken met formuliervelden
description: "Begrijp Form Fields functie, werken met Form Fields met behulp van C#."
type: docs
weight: 380
url: /nl/net/working-with-form-fields/
---

Een document met invullinten (velden) staat bekend als een formulier. U kunt bijvoorbeeld een registratieformulier aanmaken in Microsoft Word dat drop-down lijsten gebruikt waaruit gebruikers items kunnen selecteren. De `Form` veld is een locatie waar een bepaald type gegevens, zoals een naam of adres, wordt opgeslagen. Vorm velden in Microsoft Word bevatten tekstinvoer, combobox en selectievakje.

U kunt formuliervelden in uw project gebruiken om met uw gebruikers te communiceren. U maakt bijvoorbeeld een document aan waarvan de inhoud beschermd is, maar alleen formuliervelden kunnen bewerkt worden. De gebruikers kunnen de gegevens in de formuliervelden invoeren en het document indienen. Uw toepassing die gebruikt Aspose.Words kan gegevens uit de formuliervelden ophalen en verwerken.

Het plaatsen van formuliervelden in het document via code is eenvoudig. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) heeft speciale methoden om ze in te voegen, één voor elk formulierveldtype. Elk van de methoden accepteert een string parameter die de naam van het formulier veld. De naam kan een lege string zijn. Als u echter een naam voor het formulierveld opgeeft, dan wordt automatisch een bladwijzer met dezelfde naam aangemaakt.

## Formuliervelden invoegen

Formuliervelden zijn een specifiek geval van Word-velden die "interactie" met de gebruiker toestaan. Vorm velden in Microsoft Word bevatten tekstvak, combinatievakje en selectievakje.

**DocumentBuilder** bevat speciale methoden om elk type formulierveld in het document in te voegen: [InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/) , [InsertCheckBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcheckbox/), en [InsertComboBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcombobox/). Merk op dat als je een naam opgeeft voor het formulierveld, dan wordt een bladwijzer automatisch aangemaakt met dezelfde naam.

Het volgende codevoorbeeld laat zien hoe je een combobox formulierveld in een document invoegt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cs" >}}

### Tekstinvoer invoeren

Gebruik de **InsertTextInput** methode om een tekstvak in het document in te voegen.

Het volgende voorbeeld van code laat zien hoe je een tekstinvoerformulierveld in een document invoegt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cs" >}}

### Een vakje invoegen

Oproep **InsertCheckBox** een selectievakje in het document plaatsen.

Het volgende voorbeeld van code laat zien hoe je een selectievakje formulierveld in een document invoegt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cs" >}}

### Een combo-box invoegen

Oproep **InsertComboBox** een combobox in het document plaatsen.

Het volgende codevoorbeeld laat zien hoe je een Combobox formulierveld in een document invoegt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cs" >}}

## Formuliervelden verkrijgen

Een verzameling formuliervelden wordt vertegenwoordigd door de [FormFieldCollection](https://reference.aspose.com/words/net/aspose.words.fields/formfieldcollection/) klasse die met behulp van de [FormFields](https://reference.aspose.com/words/net/aspose.words/range/formfields/) eigendom. Dit betekent dat u formuliervelden kunt verkrijgen in een document node, inclusief het document zelf.

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van de volgende voorbeelden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe je een verzameling formuliervelden kunt krijgen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cs" >}}

U kunt een bepaald formulierveld krijgen door zijn index of naam.

Het volgende voorbeeld van code laat zien hoe toegang te krijgen tot formuliervelden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cs" >}}

De **FormField** eigenschappen kunt u werken met formulier veldnaam, type en resultaat.

Het volgende voorbeeld van code laat zien hoe te werken met formulier veldnaam, type en resultaat:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cs" >}}

## Formaat Formuliervelden

De [Font](https://reference.aspose.com/words/net/aspose.words/inline/font/) eigendom van [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) laat het toepassen van lettertypeopmaak op de **FormField** als geheel inclusief de veldwaarde.

Het volgende voorbeeld van code laat zien hoe lettertypeopmaak toe te passen op de **FormField**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsFontFormatting-FormFieldsFontFormatting.cs" >}}
