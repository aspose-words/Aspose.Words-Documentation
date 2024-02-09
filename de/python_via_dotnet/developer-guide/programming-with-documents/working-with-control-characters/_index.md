---
title: Arbeiten mit Steuerzeichen
second_title: Aspose.Words für Python via .NET
articleTitle: Arbeiten mit Steuerzeichen
linktitle: Arbeiten mit Steuerzeichen
description: "Einführung in die Arbeit mit Steuerzeichen in Aspose.Words für Python."
type: docs
weight: 400
url: /de/python-net/working-with-control-characters/
---

Microsoft Word-Dokumente können verschiedene Zeichen enthalten, die eine besondere Bedeutung haben. Normalerweise dienen sie der Formatierung und werden im Normalmodus nicht gezeichnet. Sie können sie sichtbar machen, indem Sie in der Standardsymbolleiste auf die Schaltfläche "Formatierungsmarkierungen anzeigen/ausblenden" klicken.

Manchmal müssen Sie möglicherweise Zeichen zum Text hinzufügen oder daraus entfernen. Wenn Sie beispielsweise Text programmgesteuert aus dem Dokument abrufen, behält Aspose.Words die meisten Steuerzeichen bei. Wenn Sie also mit diesem Text arbeiten müssen, sollten Sie die Zeichen wahrscheinlich entfernen oder ersetzen.

Die [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/)-Klasse ist ein Repository für die Konstanten, die häufig in Dokumenten vorkommende Steuerzeichen darstellen. Es stellt sowohl char- als auch string-Versionen derselben Konstanten bereit. Beispielsweise haben String [ControlChar.LINE_BREAK](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break) und Char [ControlChar.LINE_BREAK_CHAR](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break_char) denselben Wert.

Das folgende Codebeispiel zeigt, wie Steuerzeichen verwendet werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-UseControlCharacters.py" >}}
