---
title: Dostosuj właściwości pola w C#
second_title: Aspose.Words dla .NET
articleTitle: Dostosuj właściwości pola
linktitle: Dostosuj właściwości pola
description: "Dowiedz się, jak dostosować właściwości pól w C#. Zmień nazwy pól scalających lub uzyskaj wyniki dla pól bez węzła oddzielającego w formacie .NET."
type: docs
weight: 27
url: /pl/net/customize-field-properties/
---

Aspose.Words zapewnia możliwość programowej interakcji z różnymi właściwościami pól. W tym artykule przyjrzymy się kilku przykładom, abyś mógł zrozumieć podstawową zasadę pracy z właściwościami pól. Pełną listę właściwości każdego typu pola w odpowiedniej klasie możesz zobaczyć w pliku [Przestrzeń nazw pól](https://reference.aspose.com/words/net/aspose.words.fields/).

## Aktualizacja właściwości pola

Czasami użytkownicy muszą zmienić wartość właściwości pola. Na przykład zaktualizuj właściwość [AuthorName](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/authorname/) pola `AUTHOR` lub zmień właściwość [FieldName](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/fieldname/) pola `MERGEFIELD`.

Poniższy przykład kodu pokazuje, jak zmienić nazwę pól scalania w dokumencie programu Word:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cs" >}}

## Wynik wyświetlania pola

Aspose.Words udostępnia właściwość umożliwiającą uzyskanie wyniku pola dla pól, które nie mają węzła separatora pól. Nazywamy to "fałszywym wynikiem" lub wynikiem wyświetlania; MS Word wyświetla to w dokumencie, obliczając na bieżąco wartość pola, ale w modelu dokumentu nie ma takiej wartości.

Poniższy przykład kodu ilustruje użycie właściwości [DisplayResult](https://reference.aspose.com/words/net/aspose.words.fields/field/displayresult/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cs" >}}
