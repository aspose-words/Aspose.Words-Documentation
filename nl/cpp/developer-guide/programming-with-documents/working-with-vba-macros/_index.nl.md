---
title: Werken met VBA Macro ' s in C++
second_title: Aspose.Words voor C++
articleTitle: Werken met VBA macro ' s
linktitle: Werken met VBA macro ' s
description: "Werken met document VBA projecten met behulp van C++."
type: docs
weight: 410
url: /nl/cpp/working-with-vba-macros/
timestamp: 2024-01-30-16-22-34
---

Visual Basic for Applications (VBA) for Microsoft Word is een eenvoudige maar krachtige programmeertaal die kan worden gebruikt om de functionaliteit uit te breiden. Aspose.Words API biedt drie klassen om toegang te krijgen tot de VBA project broncode:

- De klasse [VBAProject](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/) geeft toegang tot VBA projectinformatie
- De klasse [VBAModulesCollection](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodulecollection/) retourneert de verzameling van VBA projectmodules
- De [VbaModule](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/) klasse geeft toegang tot de VBA project module

## Een VBA Project maken

Aspose.Words API geeft `Document.VbaProject` eigenschap om VbaProject in het document te krijgen of in te stellen.

Het volgende codevoorbeeld laat zien hoe u een VBA project en VBA Module maakt, samen met basiseigenschappen zoals naam en Type:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cpp" >}}

## Macro ' S Lezen

Aspose.Words biedt gebruikers ook de mogelijkheid om VBA macro ' s te lezen.

Het volgende codevoorbeeld laat zien hoe VBA macro ' s uit het document gelezen moeten worden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cpp" >}}

## Macro ' s schrijven of wijzigen

Met behulp van Aspose.Words kunnen gebruikers VBA macro ' s wijzigen.

Het volgende codevoorbeeld laat zien hoe VBA Macro ' s te wijzigen met behulp van de eigenschap [SourceCode](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/get_sourcecode/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cpp" >}}

## Kloon VBA Project

Met Aspose.Words is het ook mogelijk om VBA projecten te klonen.

Het volgende codevoorbeeld laat zien hoe het VBA Project gekloond kan worden met de eigenschap [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/) waarmee een kopie van het bestaande project gemaakt wordt:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cpp" >}}

## Module VBA Klonen

U kunt ook VBA modules klonen indien nodig.

Het volgende codevoorbeeld laat zien hoe de Module VBA gekloond kan worden met de eigenschap [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/) waarmee een kopie van het bestaande project gemaakt wordt:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cpp" >}}
