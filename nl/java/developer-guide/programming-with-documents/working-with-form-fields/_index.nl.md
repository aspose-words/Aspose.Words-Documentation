---
title: Werken met formuliervelden in Java
second_title: Aspose.Words voor Java
articleTitle: Werken met formuliervelden
linktitle: Werken met formuliervelden
description: "Begrijp Form Fields functie, werken met Form Fields met behulp van Java."
type: docs
weight: 380
url: /nl/java/working-with-form-fields/
---

Een document met invullinten (velden) staat bekend als een formulier. U kunt bijvoorbeeld een registratieformulier aanmaken in Microsoft Word dat drop-down lijsten gebruikt waaruit gebruikers items kunnen selecteren. De `Form` veld is een locatie waar een bepaald type gegevens, zoals een naam of adres, wordt opgeslagen. Vorm velden in Microsoft Word bevatten tekstinvoer, combobox en selectievakje.

U kunt formuliervelden in uw project gebruiken om met uw gebruikers te communiceren. U maakt bijvoorbeeld een document aan waarvan de inhoud beschermd is, maar alleen formuliervelden kunnen bewerkt worden. De gebruikers kunnen de gegevens in de formuliervelden invoeren en het document indienen. Uw toepassing die gebruikt Aspose.Words kan gegevens uit de formuliervelden ophalen en verwerken.

Het plaatsen van formuliervelden in het document via code is eenvoudig. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) heeft speciale methoden om ze in te voegen, één voor elk formulierveldtype. Elk van de methoden accepteert een string parameter die de naam van het formulier veld. De naam kan een lege string zijn. Als u echter een naam voor het formulierveld opgeeft, dan wordt automatisch een bladwijzer met dezelfde naam aangemaakt.

## Formuliervelden invoegen

Formuliervelden zijn een specifiek geval van Word-velden die "interactie" met de gebruiker toestaan. Vorm velden in Microsoft Word bevatten tekstvak, combo-box en selectievakje.

**DocumentBuilder** bevat speciale methoden om elk type formulierveld in het document in te voegen: [insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), [insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) of [insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-int).

Het volgende voorbeeld van code laat zien hoe je een combobox formulierveld in een document invoegt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### Tekstinvoer toevoegen

Gebruik de **invoegen Tekstinvoer** methode om een tekstvak in het document in te voegen.

Het volgende voorbeeld van code laat zien hoe je een tekstinvoerformulierveld in een document invoegt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Controlevakje invoegen

Oproep **insertCheckBox** een selectievakje in het document plaatsen.

Het volgende voorbeeld van code laat zien hoe je een veld in het aanvinkvakje in een document invoegt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Een Combo Box invoegen

Oproep **invoegenComboBox** een combobox in het document plaatsen.

Het volgende codevoorbeeld laat zien hoe je een Combobox formulierveld in een document invoegt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Formuliervelden verkrijgen

Een verzameling formuliervelden wordt vertegenwoordigd door de [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) klasse die met behulp van de [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields) eigendom. Dit betekent dat u formuliervelden kunt verkrijgen in elke documentnode, inclusief het document zelf.

Het volgende voorbeeld van code laat zien hoe je een verzameling formuliervelden krijgt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van de volgende voorbeelden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

U kunt een bepaald formulierveld krijgen door de index of naam.

Het volgende voorbeeld van code laat zien hoe toegang te krijgen tot formuliervelden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

De **FormField** eigenschappen kunt u werken met formulier veldnaam, type en resultaat.

Het volgende voorbeeld van code laat zien hoe te werken met formulier veldnaam, type, en resultaat:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
