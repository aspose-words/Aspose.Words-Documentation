---
title: Werken met lijsten in Java
second_title: Aspose.Words voor Java
articleTitle: Werken met lijsten
linktitle: Werken met lijsten
description: "Inleiding tot nummering formattering functie in Aspose.Words voor Java."
type: docs
weight: 200
url: /nl/java/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

Een lijst in een Microsoft Word document is een verzameling van lijstopmaak eigenschappen. Lijsten kunnen in uw documenten worden gebruikt om tekst te formatteren, ordenen en benadrukken. Lijsten zijn een geweldige manier om gegevens in documenten te organiseren, en ze maken het voor lezers gemakkelijker om belangrijke punten te begrijpen.

Elke lijst kan tot 9 niveaus en opmaakeigenschappen hebben, zoals nummerstijl, startwaarde, streepje, tabpositie, en andere worden apart gedefinieerd voor elk niveau.

Dit artikel beschrijft programmamatisch werken met lijsten met Aspose.Words.

## Lijsten aanmaken door lijstopmaak toe te passen

Aspose.Words maakt het gemakkelijk lijsten aan te maken door lijstopmaak toe te passen. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) levert de [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) eigenschap die een **ListFormat** object. Dit object heeft verschillende methoden om een lijst te starten en te beëindigen en het streepje te verhogen/verlaagen. Er zijn twee algemene soorten lijsten in Microsoft Word: kogels en nummers:

- Om een lijst met kogels te beginnen, bel [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- Om een genummerde lijst te starten, bel [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

De bullet of nummer en formattering worden toegevoegd aan de huidige paragraaf en alle verdere alinea's gemaakt met behulp van **DocumentBuilder** tot [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) wordt opgeroepen om te stoppen met het formatteren van de lijst met kogels.

In Word-documenten kunnen lijsten bestaan uit maximaal negen niveaus. Lijstopmaak voor elk niveau geeft aan welke kogel of getal wordt gebruikt, linker streepje, ruimte tussen de kogel en tekst enz. De volgende methoden veranderen het lijstniveau en passen de opmaakeigenschappen van het nieuwe niveau toe:

- Om het lijstniveau van de huidige paragraaf met één niveau te verhogen, roep [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- Om het lijstniveau van de huidige paragraaf met één niveau te verlagen, aanroepen [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

De methoden veranderen het lijstniveau en passen de opmaakeigenschappen van het nieuwe niveau toe.

{{% alert color="primary" %}}

U kunt ook de [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) eigenschap om het lijstniveau voor de alinea te verkrijgen of in te stellen. De lijstniveaus zijn genummerd van 0 tot 8.

{{% /alert %}}

Het volgende voorbeeld toont hoe je een multilevel lijst kunt bouwen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## Formatteren voor een lijstniveau specificeren

Lijst-niveau objecten worden automatisch aangemaakt wanneer een lijst wordt aangemaakt. Gebruik de eigenschappen en methoden van de [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) klasse om de opmaak van individuele niveaus van een lijst te controleren.

## Lijst herstarten voor elke sectie

U kunt een lijst herstarten voor elke sectie met behulp van de [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection) eigendom. Merk op dat deze optie alleen wordt ondersteund in RTF, DOC en DOCX document formaten. Deze optie wordt alleen naar DOCX geschreven als OoxmlCompliance hoger is dan Ecma376.

Het volgende voorbeeld van code laat zien hoe je een lijst aanmaakt en herstart voor elke sectie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

