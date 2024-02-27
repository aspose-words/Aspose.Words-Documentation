---
title: Zastosuj niestandardowe formatowanie do pól w C#
second_title: Aspose.Words dla .NET
articleTitle: Zastosuj niestandardowe formatowanie do pól
linktitle: Zastosuj niestandardowe formatowanie do pól
description: "Formatuj i oceniaj wyniki pól za pomocą C#."
type: docs
weight: 40
url: /pl/net/applying-custom-formatting-to-fields/
---

Czasami użytkownicy muszą zastosować niestandardowe formatowanie do pól. W tym artykule przyjrzymy się kilku przykładom, jak można to zrobić.

Aby dowiedzieć się więcej opcji, zobacz pełną listę właściwości dla każdego typu pola w odpowiedniej klasie w [Przestrzeń nazw pól](https://reference.aspose.com/words/net/aspose.words.fields/).

## Jak zastosować niestandardowe formatowanie do wyniku w polu

Aspose.Words udostępnia API do niestandardowego formatowania wyniku pola. Możesz zaimplementować interfejs [IFieldResultFormatter](https://reference.aspose.com/words/net/aspose.words.fields/ifieldresultformatter/), aby kontrolować sposób formatowania wyniku w polu. Można zastosować przełącznik formatu liczb, tj. \# "#.##", przełącznik formatu daty/godziny, tj. \@ "dd.MM.rrrr" oraz przełącznik formatu liczb, tj. \* Ordinal.

Poniższy przykład kodu pokazuje, jak zastosować niestandardowe formatowanie wyniku pola:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FieldResultFormatter.cs" >}}

## Jak ocenić stan `IF`

Jeśli chcesz ocenić warunek `IF` po mail merge, możesz użyć metody [EvaluateCondition](https://reference.aspose.com/words/net/aspose.words.fields/fieldif/evaluatecondition/), która natychmiast zwraca wynik oceny wyrażenia.

Poniższy przykład kodu pokazuje, jak używać tej metody:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cs" >}}

## Jak zastosować niestandardowe formatowanie do pola czasu

Domyślnie Aspose.Words aktualizuje pole `TIME` przy użyciu bieżącego formatu krótkiego czasu kultury. Odkryliśmy, że istnieje różnica między formatowaniem Microsoft Word a formatowaniem .NET/Windows, a także między różnymi wersjami .NET Framework. Jeśli chcesz sformatować pole `TIME` zgodnie ze swoimi wymaganiami, możesz to osiągnąć poprzez wdrożenie interfejsu [IFieldUpdateCultureProvider](https://reference.aspose.com/words/net/aspose.words.fields/ifieldupdatecultureprovider/).

Poniższy przykład kodu pokazuje, jak zastosować niestandardowe formatowanie do pola `TIME`:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCultureProvider-FieldUpdateCultureProviderGetCulture.cs" >}}
