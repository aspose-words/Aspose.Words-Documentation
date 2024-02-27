---
title: Praca z hiperłączami
second_title: Aspose.Words dla Python via .NET
articleTitle: Dodaj lub zmodyfikuj hiperłącza
linktitle: Dodaj lub zmodyfikuj hiperłącza
description: "Dodaj, zamień lub zmodyfikuj hiperłącze w dokumencie za pomocą Python."
type: docs
weight: 50
url: /pl/python-net/working-with-hyperlinks/
---

Hiperłączem w dokumentach Microsoft Word jest pole `HYPERLINK`. W formacie Aspose.Words hiperłącza są implementowane poprzez klasę [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/).

## Wstawianie hiperłącza

Użyj metody [insert_hyperlink](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_hyperlink/), aby wstawić hiperłącze do dokumentu. Metoda ta przyjmuje trzy parametry:

1. Tekst linku, który będzie wyświetlany w dokumencie
2. Miejsce docelowe linku (adres URL lub nazwa zakładki wewnątrz dokumentu)
3. Parametr logiczny, który powinien mieć wartość true, jeśli `URL` jest nazwą zakładki w dokumencie

Metoda **InsertHyperlink** zawsze dodaje apostrofy na początku i na końcu adresu URL.

{{% alert color="primary" %}}

Należy pamiętać, że należy jawnie określić formatowanie czcionki dla tekstu wyświetlanego hiperłącza, korzystając z właściwości `Font`.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak wstawić hiperłącze do dokumentu za pomocą [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHyperlink.py" >}}

## Zamień lub zmodyfikuj hiperłącza

Hiperłącze w dokumentach Microsoft Word jest polem. Pole w dokumencie programu Word to złożona struktura składająca się z wielu węzłów, które obejmują początek pola, kod pola, separator pola, wynik pola i koniec pola. Pola mogą być zagnieżdżane, zawierać bogatą treść i obejmować wiele akapitów lub sekcji dokumentu

Aby zastąpić lub zmodyfikować hiperłącza, należy znaleźć hiperłącza w dokumencie i zastąpić ich tekst, adresy URL lub jedno i drugie.

Poniższy przykład kodu pokazuje, jak znaleźć wszystkie hiperłącza w dokumencie programu Word i zmienić ich `URL` i nazwę wyświetlaną:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ReplaceHyperlinks.py" >}}
