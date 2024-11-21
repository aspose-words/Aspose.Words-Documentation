---
title: So finden Sie Feldeigenschaften in C#
second_title: Aspose.Words für .NET
articleTitle: Suchen Sie nach Feldeigenschaften
linktitle: Suchen Sie nach Feldeigenschaften
description: "So finden Sie einige Feldeigenschaften wie Feldcode und Feldergebnis in C#."
type: docs
weight: 25
url: /de/net/find-field-properties/
timestamp: 2024-01-27-14-07-04
---

Ein mit [DocumentBuilder](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/insertfield/) eingefügtes Feld gibt ein [Field](https://reference.aspose.com/words/de/net/aspose.words.fields/field/)-Objekt zurück. Dies ist eine Fassadenklasse, die nützliche Methoden bereitstellt, um schnell einige Eigenschaften eines Feldes zu finden.

Das folgende Codebeispiel zeigt, wie Sie den Feldcode und das Feldergebnis finden:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldCode.cs" >}}

Beachten Sie, dass Sie stattdessen die integrierte [GetFieldNames](https://reference.aspose.com/words/de/net/aspose.words.mailmerging/mailmerge/getfieldnames/)-Methode verwenden können, wenn Sie nur nach den Namen von Zusammenführungsfeldern in einem Dokument suchen.

Das folgende Codebeispiel zeigt, wie man Namen aller Zusammenführungsfelder in einem Dokument erhält:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cs" >}}
