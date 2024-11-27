---
title: Werken met lijsten in C++
second_title: Aspose.Words voor C++
articleTitle: Werken Met Lijsten
linktitle: Werken Met Lijsten
description: "Inleiding tot de functie nummering opmaak in Aspose.Words voor C++."
type: docs
weight: 200
url: /nl/cpp/working-with-lists/
timestamp: 2024-01-30-16-22-34
---

Een lijst in een Microsoft Word document is een set eigenschappen voor lijstopmaak. Lijsten kunnen in uw documenten worden gebruikt om tekst op te maken, te rangschikken en te benadrukken. Lijsten zijn een geweldige manier om gegevens in documenten te ordenen en ze maken het voor lezers gemakkelijker om belangrijke punten te begrijpen.

Elke lijst kan maximaal 9 niveaus hebben en opmaakeigenschappen, zoals nummerstijl, startwaarde, inspringing, tabpositie enz.worden afzonderlijk voor elk niveau gedefinieerd.

In Aspose.Words wordt het werken met lijsten weergegeven door de [Lists](https://reference.aspose.com/words/cpp/aspose.words.lists/) naamruimte. Het [List](https://reference.aspose.com/words/cpp/aspose.words.lists/list/) object behoort echter altijd tot de [ListCollection](https://reference.aspose.com/words/cpp/aspose.words.lists/listcollection/) collectie.

In dit onderwerp wordt beschreven hoe u programmatisch kunt werken met lijsten met behulp van Aspose.Words.

## Opmaak opgeven voor een Lijstniveau

Objecten op lijstniveau worden automatisch gemaakt wanneer een lijst wordt gemaakt. Gebruik de eigenschappen en methoden van de klasse [ListLevel](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/) om de opmaak van afzonderlijke niveaus van een lijst te regelen.

## Herstartlijst voor elke sectie

U kunt een lijst voor elke sectie opnieuw starten met de eigenschap [IsRestartAtEachSection](https://reference.aspose.com/words/cpp/aspose.words.lists/list/get_isrestartateachsection/). Merk op dat deze optie alleen wordt ondersteund in RTF, DOC en DOCX documentindelingen. Deze optie wordt alleen naar DOCX geschreven als OoxmlCompliance hoger is dan Ecma376.

Het volgende codevoorbeeld laat zien hoe u een lijst maakt en deze opnieuw opstart voor elke sectie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cpp" >}}
