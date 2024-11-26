---
title: Praca z hiperłączami w C#
second_title: Aspose.Words dla .NET
articleTitle: Dodaj lub zmodyfikuj hiperłącza
linktitle: Dodaj lub zmodyfikuj hiperłącza
description: "Jak dodać hiperłącze do dokumentu w formacie C# przy użyciu Aspose.Words dla .NET."
type: docs
weight: 50
url: /pl/net/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Hiperłączem w dokumentach Microsoft Word jest pole `HYPERLINK`. W formacie Aspose.Words hiperłącza są implementowane poprzez klasę [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/).

## Wstaw hiperłącze

Użyj metody [InsertHyperlink](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthyperlink/), aby wstawić hiperłącze do dokumentu. Metoda ta przyjmuje trzy parametry:

1. Tekst linku, który będzie wyświetlany w dokumencie
2. Miejsce docelowe linku (adres URL lub nazwa zakładki wewnątrz dokumentu)
3. Parametr logiczny, który powinien mieć wartość true, jeśli `URL` jest nazwą zakładki w dokumencie

Metoda **InsertHyperlink** zawsze dodaje apostrofy na początku i na końcu adresu URL

{{% alert color="primary" %}}

Należy pamiętać, że należy jawnie określić formatowanie czcionki dla tekstu wyświetlanego hiperłącza, korzystając z właściwości `Font`.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak wstawić hiperłącze do dokumentu za pomocą [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cs" >}}

## Zamień lub zmodyfikuj hiperłącza

Hiperłącze w dokumentach Microsoft Word jest polem. Pole w dokumencie Word, jak powiedzieliśmy wcześniej, jest złożoną strukturą składającą się z wielu węzłów, które obejmują początek pola, kod pola, separator pola, wynik pola i koniec pola. Pola mogą być zagnieżdżane, zawierać bogatą treść i obejmować wiele akapitów lub sekcji dokumentu.

Aby zastąpić lub zmodyfikować hiperłącza, należy znaleźć hiperłącza w dokumencie i zastąpić ich tekst, adresy URL lub jedno i drugie.

Poniższy przykład kodu pokazuje, jak znaleźć wszystkie hiperłącza w dokumencie programu Word i zmienić ich `URL` i nazwę wyświetlaną:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cs" >}}
