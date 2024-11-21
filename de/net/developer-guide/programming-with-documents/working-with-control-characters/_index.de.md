---
title: Arbeiten mit Steuerzeichen
second_title: Aspose.Words für .NET
articleTitle: Arbeiten mit Steuerzeichen
linktitle: Arbeiten mit Steuerzeichen
description: "Einführung in die Arbeit mit Steuerzeichen in Aspose.Words für .NET."
type: docs
weight: 400
url: /de/net/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word-Dokumente können verschiedene Zeichen enthalten, die eine besondere Bedeutung haben. Normalerweise dienen sie der Formatierung und werden im Normalmodus nicht gezeichnet. Sie können sie sichtbar machen, indem Sie in der Standardsymbolleiste auf die Schaltfläche "Formatierungsmarkierungen anzeigen/ausblenden" klicken.

Manchmal müssen Sie möglicherweise Zeichen zum Text hinzufügen oder daraus entfernen. Wenn Sie beispielsweise Text programmgesteuert aus dem Dokument abrufen, behält Aspose.Words die meisten Steuerzeichen bei. Wenn Sie also mit diesem Text arbeiten müssen, sollten Sie die Zeichen wahrscheinlich entfernen oder ersetzen.

Die [ControlChar](https://reference.aspose.com/words/de/net/aspose.words/controlchar/)-Klasse ist ein Repository für die Konstanten, die häufig in Dokumenten vorkommende Steuerzeichen darstellen. Es stellt sowohl char- als auch string-Versionen derselben Konstanten bereit. Beispielsweise haben String [LineBreak](https://reference.aspose.com/words/de/net/aspose.words/controlchar/linebreak/) und Char [LineBreakChar](https://reference.aspose.com/words/de/net/aspose.words/controlchar/linebreakchar) denselben Wert.

Das folgende Codebeispiel zeigt, wie Steuerzeichen verwendet werden:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cs" >}}/words/net/working-with-content-control-sdt/)
