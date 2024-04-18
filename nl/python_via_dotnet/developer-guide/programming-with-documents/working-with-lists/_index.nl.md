---
title: Werken met lijsten in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Werken met lijsten
linktitle: Werken met lijsten
description: "Opmaaklijsten aanmaken, specificeren en herstarten in een document met behulp van Python."
type: docs
weight: 200
url: /nl/python-net/working-with-lists/
---

Een lijst in een Microsoft Word document is een verzameling van lijstopmaak eigenschappen. Lijsten kunnen in uw documenten worden gebruikt om tekst te formatteren, ordenen en benadrukken. Lijsten zijn een geweldige manier om gegevens in documenten te organiseren, en ze maken het voor lezers gemakkelijker om belangrijke punten te begrijpen

Elke lijst kan tot 9 niveaus en opmaakeigenschappen hebben, zoals nummerstijl, startwaarde, streepje, tabpositie enz. worden apart voor elk niveau gedefinieerd.

In Aspose.Words, het werken met lijsten wordt vertegenwoordigd door de [Lists](https://reference.aspose.com/words/python-net/aspose.words.lists/) module. De [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/) object altijd behoort tot de [ListCollection](https://reference.aspose.com/words/python-net/aspose.words.lists/listcollection/) verzameling.

Dit onderwerp beschrijft hoe je programmatisch werkt met lijsten met behulp van Aspose.Words

## Lijsten aanmaken door lijstopmaak toe te passen

Aspose.Words maakt het gemakkelijk lijsten aan te maken door lijstopmaak toe te passen. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) levert de [DocumentBuilder.list_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/list_format/) eigenschap die een [ListFormat](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/) object. Dit object heeft verschillende methoden om een lijst te starten en te beëindigen en het streepje te verhogen/verlaagen. Er zijn twee algemene soorten lijsten in Microsoft Word: doodgeschoten en genummerd.

- Om een lijst met kogels te beginnen, bel je. [ListFormat.apply_bullet_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/).
- Om een genummerde lijst te starten, bel [ListFormat.apply_number_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/).

De kogel of het nummer en de opmaak worden toegevoegd aan de huidige alinea en alle verdere alinea's die zijn gemaakt met behulp van [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) tot [ListFormat.remove_numbers](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/remove_numbers/) wordt opgeroepen om te stoppen met het formatteren van de lijst met kogels.

In Word-documenten kunnen lijsten bestaan uit maximaal negen niveaus. Lijstopmaak voor elk niveau geeft aan welke kogel of getal wordt gebruikt, linker streepje, ruimte tussen de kogel en tekst enz. De volgende methoden veranderen het lijstniveau en passen de opmaakeigenschappen van het nieuwe niveau toe:

- Om het lijstniveau van de huidige paragraaf met één niveau te verhogen, roep [ListFormat.list_indent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_indent/)
- Om het lijstniveau van de huidige paragraaf met één niveau te verlagen, aanroepen [ListFormat.list_outdent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_outdent/)

De methoden veranderen het lijstniveau en passen de opmaakeigenschappen van het nieuwe niveau toe.

{{% alert color="primary" %}}

U kunt ook de [ListFormat.list_level_number](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_level_number/) eigenschap om het lijstniveau voor de alinea te verkrijgen of in te stellen. De lijstniveaus zijn 0 tot 8.

{{% /alert %}}

Hieronder laat je zien hoe je een multilevel lijst maakt.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-MultilevelListFormatting.py" >}}

## Opmaak opgeven voor een lijstniveau

Lijst-niveau objecten worden automatisch aangemaakt wanneer een lijst wordt aangemaakt. Gebruik de eigenschappen en methoden van de [ListLevel](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/) klasse om de opmaak van individuele niveaus van een lijst te controleren.

## Lijst herstarten voor elke sectie

U kunt een lijst herstarten voor elke sectie met behulp van de [is_restart_at_elke_sectie eigenschap](https://reference.aspose.com/words/python-net/aspose.words.lists/list/is_restart_at_each_section/) eigendom. Merk op dat deze optie alleen wordt ondersteund in RTF, DOC en DOCX documentformaten. Deze optie wordt alleen naar DOCX geschreven als OoxmlCompliance hoger is dan Ecma376.

Het volgende voorbeeld van code laat zien hoe u een lijst aanmaakt en herstart voor elke sectie:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_list-RestartListAtEachSection.py" >}}
