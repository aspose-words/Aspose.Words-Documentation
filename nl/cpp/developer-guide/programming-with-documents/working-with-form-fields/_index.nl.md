---
title: Werken met formuliervelden in C++
second_title: Aspose.Words voor C++
articleTitle: Werken met formuliervelden
linktitle: Werken met formuliervelden
description: "Functie formuliervelden begrijpen, werken met formuliervelden met behulp van C++."
type: docs
weight: 380
url: /nl/cpp/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Een document dat invulvelden (velden) bevat, wordt een formulier genoemd. U kunt bijvoorbeeld een registratieformulier maken in Microsoft Word met vervolgkeuzelijsten waaruit gebruikers inzendingen kunnen selecteren. Een formulierveld is een locatie waar een bepaald type gegevens, zoals een naam of adres, wordt opgeslagen. Formuliervelden in Microsoft Word bevatten tekstinvoer, Combobox en checkbox.

U kunt formuliervelden in uw project gebruiken om te" communiceren " met uw gebruikers. U maakt bijvoorbeeld een document waarvan de inhoud is beschermd, maar alleen formuliervelden kunnen worden bewerkt. De gebruikers kunnen de gegevens in de formuliervelden invoeren en het document indienen. Uw toepassing die Aspose.Words gebruikt, kan gegevens uit de formuliervelden ophalen en verwerken.

Het plaatsen van formuliervelden in het document via code is eenvoudig. [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) heeft speciale methoden om ze in te voegen, één voor elk formulierveldtype. Elk van de methoden accepteert een string parameter die de naam van het formulierveld. De naam kan een lege string zijn. Als u echter een naam voor het formulierveld opgeeft, wordt automatisch een bladwijzer met dezelfde naam gemaakt.

## Formuliervelden Invoegen

Formuliervelden zijn een bijzonder geval van Word velden die "interactie" met de gebruiker mogelijk maken. Formuliervelden in Microsoft Word omvatten tekstvak, keuzelijst met invoervak en checkbox.

**DocumentBuilder**

Het volgende codevoorbeeld laat zien hoe u een combobox formulierveld invoegt in een document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cpp" >}}

## Formuliervelden Verkrijgen

Een verzameling formuliervelden wordt weergegeven door de klasse [FormFieldCollection](https://reference.aspose.com/words/cpp/aspose.words.fields/formfieldcollection/) die kan worden opgehaald met de Eigenschap [FormFields](https://reference.aspose.com/words/cpp/aspose.words/range/get_formfields/). Dit betekent dat u formuliervelden in elk documentknooppunt kunt verkrijgen, inclusief het document zelf.

Het volgende codevoorbeeld laat zien hoe u een verzameling formuliervelden kunt ophalen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cpp" >}}

U kunt een bepaald formulierveld krijgen op basis van de index of naam.

Het volgende codevoorbeeld laat zien hoe u formuliervelden kunt openen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cpp" >}}

Met de eigenschappen **FormField** kunt u werken met formulierveldnaam, type en resultaat.

Het volgende codevoorbeeld laat zien hoe u werkt met formulierveldnaam, type en resultaat:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cpp" >}}
