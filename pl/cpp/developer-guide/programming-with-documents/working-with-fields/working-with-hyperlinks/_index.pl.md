---
title: Praca z hiperłączami w C++
second_title: Aspose.Words dla C++
articleTitle: Dodawanie lub modyfikowanie hiperłączy
linktitle: Dodawanie lub modyfikowanie hiperłączy
description: "Jak dodać hiperłącze do dokumentu za pomocą Aspose.Words dla C++."
type: docs
weight: 180
url: /pl/cpp/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Hiperłącze w dokumentach Microsoft Word to pole `HYPERLINK`. W Aspose.Words hiperłącza są implementowane przez klasę [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/).

## Wstawianie hiperłącza

Użyj metody [InsertHyperlink](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthyperlink/), aby wstawić hiperłącze do dokumentu. Ta metoda akceptuje trzy parametry:

1. Tekst linku do wyświetlenia w dokumencie
2. Miejsce docelowe łącza (URL lub nazwa zakładki wewnątrz dokumentu)
3. Parametr logiczny, który powinien być prawdziwy, jeśli `URL` jest nazwą zakładki wewnątrz dokumentu

Metoda **InsertHyperlink** zawsze dodaje apostrofy na początku i na końcu URL.

{{% alert color="primary" %}}

Pamiętaj, że musisz jawnie określić formatowanie czcionki dla tekstu wyświetlania hiperłącza za pomocą właściwości `Font`.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak wstawić hiperłącze do dokumentu za pomocą [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Zastąp lub zmodyfikuj hiperłącza

Hiperłącze w dokumentach Microsoft Word jest polem. Pole w dokumencie Word to złożona struktura składająca się z wielu węzłów, które obejmują początek pola, Kod pola, separator pola, wynik pola i koniec pola. Pola mogą być zagnieżdżone, zawierać bogatą zawartość i obejmować wiele akapitów lub sekcji w dokumencie.

Klasa `FieldHyperlink` implementuje pole `HYPERLINK`.

Poniższy przykład kodu pokazuje, jak znaleźć wszystkie hiperłącza w dokumencie Word I zmienić ich `URL` i nazwę wyświetlaną:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cpp" >}}
