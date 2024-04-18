---
title: Werken met lijsten in C#
second_title: Aspose.Words voor .NET
articleTitle: Werken met lijsten
linktitle: Werken met lijsten
description: "Inleiding tot nummering formattering functie in Aspose.Words voor .NET."
type: docs
weight: 200
url: /nl/net/working-with-lists/
---

Een lijst in een Microsoft Word document is een verzameling van alinea-opmaakeigenschappen. Lijsten kunnen worden gebruikt in documenten om tekst te structureren, ordenen en markeren. Lijsten zijn een geweldige manier om gegevens in documenten te organiseren op een manier die het gemakkelijk maakt voor lezers om belangrijke punten te absorberen en te begrijpen.

Elke lijst kan maximaal 9 niveaus hebben, en opmaakeigenschappen zoals nummerstijl, startwaarde, inspringing, tab positie, en anderen zijn apart gedefinieerd voor elk niveau.

In Aspose.Words, het werken met lijsten wordt vertegenwoordigd door de [Lists](https://reference.aspose.com/words/net/aspose.words.lists/) naamruimte. De [List](https://reference.aspose.com/words/net/aspose.words.lists/list/) object altijd behoort tot de [ListCollection](https://reference.aspose.com/words/net/aspose.words.lists/listcollection/).

Dit artikel beschrijft programmamatisch werken met lijsten met Aspose.Words.

## Lijsten aanmaken door lijstopmaak toe te passen

Aspose.Words maakt het gemakkelijk lijsten aan te maken door lijstopmaak toe te passen. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) levert de [ListFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/listformat/) eigenschap die een **ListFormat** object. Dit object heeft verschillende methoden om een lijst te starten en te beëindigen en het streepje te verhogen/verlaagen. Er zijn twee algemene soorten lijsten in Microsoft Word: kogels en nummers:

- Om een lijst met kogels te beginnen, bel je. [ApplyBulletDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applybulletdefault/)
- Om een genummerde lijst te starten, bel [ApplyNumberDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applynumberdefault/)

De kogel of het nummer en de opmaak worden toegevoegd aan de huidige alinea en alle verdere alinea's die zijn gemaakt met behulp van **DocumentBuilder** tot [RemoveNumbers](https://reference.aspose.com/words/net/aspose.words.lists/listformat/removenumbers/) wordt opgeroepen om te stoppen met het formatteren van de lijst met kogels.

In Word-documenten kunnen lijsten bestaan uit maximaal negen niveaus. Lijstopmaak voor elk niveau geeft aan welke kogel of getal wordt gebruikt, linker streepje, ruimte tussen de kogel en tekst enz. De volgende methoden veranderen het lijstniveau en passen de opmaakeigenschappen van het nieuwe niveau toe:

- Om het lijstniveau van de huidige paragraaf met één niveau te verhogen, roep [ListIndent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listindent/)
- Om het lijstniveau van de huidige paragraaf met één niveau te verlagen, aanroepen [ListOutdent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listoutdent/)

U kunt ook de [ListLevelNumber](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listlevelnumber/) eigenschap om het lijstniveau voor de alinea te verkrijgen of in te stellen.

{{% alert color="primary" %}}

De lijstniveaus zijn 0 tot 8.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe een multilevel lijst te bouwen:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cs" >}}

## Opmaak opgeven voor een lijstniveau

Lijst-niveau objecten worden automatisch aangemaakt wanneer een lijst wordt aangemaakt. Gebruik de eigenschappen en methoden van de [ListLevel](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/) klasse om de opmaak van individuele niveaus van een lijst te controleren.

## Lijst herstarten voor elke sectie

U kunt een lijst herstarten voor elke sectie met behulp van de [IsRestartAtEachSection](https://reference.aspose.com/words/net/aspose.words.lists/list/isrestartateachsection/) eigendom. Merk op dat deze optie alleen wordt ondersteund in RTF, DOC en DOCX documentformaten. Deze optie wordt alleen naar DOCX geschreven als OoxmlCompliance hoger is dan Ecma376.

Het volgende voorbeeld van code laat zien hoe u een lijst aanmaakt en herstart voor elke sectie:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cs" >}}
