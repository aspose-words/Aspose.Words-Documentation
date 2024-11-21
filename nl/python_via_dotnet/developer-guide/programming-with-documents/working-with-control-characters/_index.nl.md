---
title: Werken met controletekens
second_title: Aspose.Words voor Python via .NET
articleTitle: Werken met controletekens
linktitle: Werken met controletekens
description: "Inleiding tot het werken met controle karakters in Aspose.Words voor Python."
type: docs
weight: 400
url: /nl/python-net/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word documenten kunnen verschillende tekens bevatten die een bijzondere betekenis hebben. Normaal worden ze gebruikt voor opmaakdoeleinden en worden ze niet in de normale modus getekend. U kunt ze zichtbaar maken als u op de knop Opmaakmarkeringen tonen/verbergen klikt op de standaardwerkbalk.

Soms moet u tekens toevoegen of verwijderen van/naar de tekst. Bijvoorbeeld, wanneer het verkrijgen van tekst programmatisch uit het document, Aspose.Words behoudt de meeste controletekens, dus als je met deze tekst moet werken moet je waarschijnlijk de tekens verwijderen of vervangen.

De [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/) klasse is een repository voor de constanten die controletekens vertegenwoordigen die vaak voorkomen in documenten. Het biedt zowel char en string versies van dezelfde constanten. Bijvoorbeeld, tekenreeks [ControlChar.LINE_BREAK](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break) en char [ControlChar.LINE_BREAK_CHAR](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break_char) heeft dezelfde waarde.

Het volgende voorbeeld van code laat zien hoe je controle karakters gebruikt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-UseControlCharacters.py" >}}
