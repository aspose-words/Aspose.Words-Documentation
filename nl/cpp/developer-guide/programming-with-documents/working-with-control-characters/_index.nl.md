---
title: Werken Met Control Characters
second_title: Aspose.Words voor C++
articleTitle: Werken Met Control Characters
linktitle: Werken Met Control Characters
description: "Inleiding tot het werken met besturingstekens in Aspose.Words voor C++."
type: docs
weight: 400
url: /nl/cpp/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word documenten kunnen verschillende tekens bevatten die een speciale betekenis hebben. Normaal worden ze gebruikt voor opmaakdoeleinden en worden ze niet in de normale modus getekend. U kunt ze zichtbaar maken als u klikt op de knop Toon/Verberg opmaakmarkeringen op de standaardwerkbalk.

Soms moet u tekens aan/uit de tekst toevoegen of verwijderen. Wanneer u bijvoorbeeld programmatisch tekst uit het document verkrijgt, behoudt Aspose.Words de meeste besturingstekens, dus als u met deze tekst moet werken, moet u de tekens waarschijnlijk verwijderen of vervangen.

De klasse [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/) is een opslagplaats voor de constanten die controletekens vertegenwoordigen die vaak in documenten worden aangetroffen. Het biedt zowel char-als stringversies van dezelfde constanten. Tekenreeks [LineBreak](https://reference.aspose.com/words/cpp/aspose.words/controlchar/linebreak/) en tekenreeks **ControlChar.LineBreakChar** hebben bijvoorbeeld dezelfde waarde.

Het volgende codevoorbeeld laat zien hoe controle-tekens worden gebruikt:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cpp" >}}
