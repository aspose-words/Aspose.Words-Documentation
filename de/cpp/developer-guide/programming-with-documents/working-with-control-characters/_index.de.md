---
title: Arbeiten mit Steuerzeichen
second_title: Aspose.Words für C++
articleTitle: Arbeiten mit Steuerzeichen
linktitle: Arbeiten mit Steuerzeichen
description: "Einführung in die Arbeit mit Steuerzeichen in Aspose.Words für C++."
type: docs
weight: 400
url: /de/cpp/working-with-control-characters/
---

Microsoft Word Dokumente können verschiedene Zeichen enthalten, die eine besondere Bedeutung haben. Normalerweise werden sie zu Formatierungszwecken verwendet und nicht im normalen Modus gezeichnet. Sie können sie sichtbar machen, wenn Sie auf die Schaltfläche Formatierungsmarken ein- /ausblenden in der Standardsymbolleiste klicken.

Manchmal müssen Sie dem Text möglicherweise Zeichen hinzufügen oder daraus entfernen. Wenn Sie beispielsweise programmgesteuert Text aus dem Dokument abrufen, behält Aspose.Words die meisten Steuerzeichen bei. Wenn Sie also mit diesem Text arbeiten müssen, sollten Sie die Zeichen wahrscheinlich entfernen oder ersetzen.

Die Klasse [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/) ist ein Repository für die Konstanten, die Steuerzeichen darstellen, die häufig in Dokumenten vorkommen. Es bietet sowohl Zeichen- als auch Zeichenfolgenversionen derselben Konstanten. Beispielsweise haben Zeichenfolge [LineBreak](https://reference.aspose.com/words/cpp/aspose.words/controlchar/linebreak/) und Zeichen **ControlChar.LineBreakChar** denselben Wert.

Das folgende Codebeispiel zeigt, wie Steuerzeichen verwendet werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cpp" >}}