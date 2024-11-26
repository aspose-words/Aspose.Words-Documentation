---
title: Jak znaleźć właściwości pola w C#
second_title: Aspose.Words dla .NET
articleTitle: Znajdź Właściwości pola
linktitle: Znajdź Właściwości pola
description: "Jak znaleźć niektóre właściwości pola, takie jak kod pola i wynik pola w C#."
type: docs
weight: 25
url: /pl/net/find-field-properties/
timestamp: 2024-01-27-14-07-04
---

Pole wstawione za pomocą [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) zwraca obiekt [Field](https://reference.aspose.com/words/net/aspose.words.fields/field/). Jest to klasa fasadowa, która udostępnia przydatne metody szybkiego znajdowania niektórych właściwości pola.

Poniższy przykład kodu pokazuje, jak znaleźć kod pola i wynik pola:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldCode.cs" >}}

Uwaga, jeśli szukasz tylko nazw pól scalania w dokumencie, możesz zamiast tego użyć wbudowanej metody [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/).

Poniższy przykład kodu pokazuje, jak uzyskać nazwy wszystkich pól scalania w dokumencie:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cs" >}}
