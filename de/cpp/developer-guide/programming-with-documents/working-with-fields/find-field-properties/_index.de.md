---
title: So finden Sie Feldeigenschaften
second_title: Aspose.Words für C++
articleTitle: Feldeigenschaften suchen
linktitle: Feldeigenschaften suchen
description: "So finden Sie einige Feldeigenschaften wie Feldcode und Feldergebnis in C++."
type: docs
weight: 25
url: /de/cpp/find-field-properties/
---

Ein Feld, das mit [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) eingefügt wird.[InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) gibt ein [Field](https://reference.aspose.com/words/cpp/aspose.words.fields/field/)-Objekt zurück. Dies ist eine Fassadenklasse, die nützliche Methoden zum schnellen Auffinden einiger Eigenschaften eines Felds bereitstellt.

Das folgende Codebeispiel zeigt, wie Sie den Feldcode und das Feldergebnis finden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsCode.cpp" >}}

Hinweis Wenn Sie nur nach den Namen von Seriendruckfeldern in einem Dokument suchen, können Sie stattdessen die integrierte [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/)-Methode verwenden.

Das folgende Codebeispiel zeigt, wie Namen aller Seriendruckfelder in einem Dokument abgerufen werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}