---
title: Zastosuj niestandardowe formatowanie do pól w C++
second_title: Aspose.Words dla C++
articleTitle: Zastosuj niestandardowe formatowanie do pól
linktitle: Zastosuj niestandardowe formatowanie do pól
description: "Formatuj i oceniaj wyniki pól za pomocą C++."
type: docs
weight: 40
url: /pl/cpp/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

Czasami użytkownicy muszą zastosować niestandardowe formatowanie do pól. W tym artykule przyjrzymy się kilku przykładom tego, jak można to zrobić.

Aby dowiedzieć się więcej opcji, Zobacz pełną listę właściwości dla każdego typu pola w odpowiedniej klasie w [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## Jak zastosować niestandardowe formatowanie do wyniku pola

Aspose.Words zapewnia API do niestandardowego formatowania wyniku pola. Możesz zaimplementować interfejs [IFieldResultFormatter](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldresultformatter/), aby kontrolować sposób formatowania wyniku pola. Możesz zastosować przełącznik formatu numerycznego, tj. \# "#.##", Przełącznik formatu daty/godziny, tj. \@ "dd.MM.yyyy" i przełącznik formatu liczb, tj. \* Ordinal.

Poniższy przykład kodu pokazuje, jak zastosować niestandardowe formatowanie dla wyniku pola:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldResultFormatter-FieldResultFormatter.cpp" >}}

## Jak ocenić stan `IF`

Jeśli chcesz ocenić warunek `IF` po mail merge, możesz użyć metody [EvaluateCondition](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/evaluatecondition/), która natychmiast zwraca wynik oceny wyrażenia.

Poniższy przykład kodu pokazuje, jak korzystać z tej metody:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cpp" >}}

## Jak zastosować niestandardowe formatowanie do pola czasu

Domyślnie Aspose.Words aktualizuje `TIME` pole z aktualnym formatem krótkiego czasu Kultury. Jeśli chcesz sformatować pole `TIME` zgodnie z wymaganiami, możesz to osiągnąć, implementując interfejs [IFieldUpdateCultureProvider](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldupdatecultureprovider).

Poniższe przykłady kodu pokazują, jak zastosować niestandardowe formatowanie w polu `TIME`:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProviderGetCulture.cpp" >}}
