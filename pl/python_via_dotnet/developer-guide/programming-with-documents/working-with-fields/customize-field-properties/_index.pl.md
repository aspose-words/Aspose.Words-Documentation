---
title: Dostosuj właściwości pola w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Dostosuj właściwości pola
linktitle: Dostosuj właściwości pola
description: "Dowiedz się, jak dostosować właściwości pól w Python. Zmień nazwy pól scalających lub uzyskaj wyniki dla pól bez węzła oddzielającego w formacie Python via .NET."
type: docs
weight: 27
url: /pl/python-net/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words zapewnia możliwość programowej interakcji z różnymi właściwościami pól. W tym artykule przyjrzymy się kilku przykładom, abyś mógł zrozumieć podstawową zasadę pracy z właściwościami pól. Pełną listę właściwości każdego typu pola w odpowiedniej klasie możesz zobaczyć w pliku [Moduł Pola](https://reference.aspose.com/words/python-net/aspose.words.fields/).

## Aktualizacja właściwości pola

Czasami użytkownicy muszą zmienić wartość właściwości pola. Na przykład zaktualizuj właściwość [author_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/author_name/) pola `AUTHOR` lub zmień właściwość [field_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/field_name/) pola `MERGEFIELD`.

Poniższy przykład kodu pokazuje, jak zmienić nazwę pól scalania w dokumencie programu Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}

## Wynik wyświetlania pola

Aspose.Words udostępnia właściwość umożliwiającą uzyskanie wyniku pola dla pól, które nie mają węzła separatora pól. Nazywamy to "fałszywym wynikiem" lub wynikiem wyświetlania; MS Word wyświetla to w dokumencie, obliczając na bieżąco wartość pola, ale w modelu dokumentu nie ma takiej wartości.

Poniższy przykład kodu ilustruje użycie właściwości [display_result](https://reference.aspose.com/words/python-net/aspose.words.fields/field/display_result/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-FieldDisplayResults.py" >}}
