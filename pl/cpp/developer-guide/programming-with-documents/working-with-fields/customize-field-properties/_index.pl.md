---
title: Dostosuj Właściwości pola w C++
second_title: Aspose.Words dla C++
articleTitle: Dostosuj Właściwości Pola
linktitle: Dostosuj Właściwości Pola
description: "Dowiedz się, jak dostosować właściwości pola w C++. Zmień nazwę pól scalania lub uzyskaj wyniki dla pól bez węzła separatora w C++."
type: docs
weight: 27
url: /pl/cpp/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words zapewnia możliwość programowej interakcji z różnymi właściwościami pola. W tym artykule przyjrzymy się kilku przykładom, aby zrozumieć podstawową zasadę pracy z właściwościami pola. Możesz zobaczyć pełną listę właściwości dla każdego typu pola w odpowiedniej klasie w [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## Aktualizacja Właściwości Pola

Czasami użytkownicy muszą zmienić wartość właściwości pola. Na przykład zaktualizuj właściwość [AuthorName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/get_authorname/) Pola `AUTHOR` lub zmień właściwość [FieldName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_fieldname/) pola `MERGEFIELD`.

Poniższy przykład kodu pokazuje, jak zmienić nazwę pól scalania w dokumencie Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cpp" >}}

## Wynik Wyświetlania Pola

Aspose.Words zapewnia właściwość do uzyskania wyniku pola dla pól, które nie mają węzła separatora pól. Nazywamy to "fałszywym wynikiem" lub wynikiem wyświetlania; Microsoft Word wyświetla go w dokumencie, obliczając wartość pola w locie, ale nie ma takiej wartości w modelu dokumentu.

Poniższy przykład kodu pokazuje użycie właściwości [DisplayResult](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_displayresult/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cpp" >}}
