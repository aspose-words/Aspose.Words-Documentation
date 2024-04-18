---
title: Werken met VBA Macros in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Werken met VBA Macros
linktitle: Werken met VBA Macros
description: "VBA macro's aanmaken, lezen, schrijven, klonen en beheren in een document met behulp van Python."
type: docs
weight: 410
url: /nl/python-net/working-with-vba-macros/
---

Visual Basic voor aanvragen (VBA) voor Microsoft Word is een eenvoudige maar krachtige programmeertaal die gebruikt kan worden om de functionaliteit uit te breiden. Aspose.Words API biedt drie klassen om toegang te krijgen tot de VBA project broncode:

- De [VBAProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) klasse biedt toegang tot VBA projectinformatie
- De [VBAModuleCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodulecollection/) klasse geeft de verzameling van VBA projectmodules terug
- De [VbaModule](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/) klasse biedt toegang tot de VBA project module
- De [VbaModuleType](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamoduletype/) De opsomming definieert de types van een model in een VBA-project. De module kan een proceduremodule, documentmodule, klassemodule of ontwerpermodule zijn

## Een VBA-project aanmaken

Aspose.Words API levert de [vba_project](https://reference.aspose.com/words/python-net/aspose.words/document/vba_project/) te verkrijgen of in te stellen eigenschap [VbaProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) in het document.

Het volgende voorbeeld van code laat zien hoe je een VBA project en VBA Module maakt samen met basiseigenschappen, bijvoorbeeld. [name](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/name/) en [type](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/type/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CreateVbaProject.py" >}}

## Macro's lezen

Aspose.Words biedt gebruikers ook de mogelijkheid om VBA macro's te lezen.

Het volgende voorbeeld van code laat zien hoe je VBA Macros uit het document leest:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ReadVbaMacros.py" >}}

## Macro's schrijven of wijzigen

Gebruik Aspose.Words, gebruikers kunnen VBA macro's wijzigen.

Het volgende voorbeeld van code laat zien hoe VBA Macros te wijzigen met behulp van de [source_code](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/source_code/) eigenschap:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ModifyVbaMacros.py" >}}

## Kloon VBA Project

Met Aspose.Words Het is ook mogelijk om VBA-projecten te klonen.

Het volgende voorbeeld van code laat zien hoe het VBA Project te klonen met behulp van de [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/clone/) eigenschap die een kopie maakt van het bestaande project:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaProject.py" >}}

## Kloon VBA Module

U kunt ook VBA modules klonen indien nodig.

Het volgende voorbeeld van code laat zien hoe de VBA Module te klonen met behulp van de [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/clone/) eigenschap die een kopie maakt van het bestaande project:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaModule.py" >}}

## Werken met de VBA Project Referenties

Aspose.Words API levert [VbaReferenceCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbareferencecollection/) klasse om te werken met VBA Project Referenties die een verzameling VBA projectreferenties vertegenwoordigen.

Het volgende voorbeeld van code laat zien hoe een aantal referenties uit de verzameling van referenties uit een VBA-project te verwijderen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-RemoveReferenceFromCollectionOfReferences.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-GetLibIdAndReferencePath.py" >}}