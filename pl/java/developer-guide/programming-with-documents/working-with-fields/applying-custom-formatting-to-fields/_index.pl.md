---
title: Zastosuj niestandardowe formatowanie pól
second_title: Aspose.Words zamiast Java
articleTitle: Zastosuj niestandardowe formatowanie pól
linktitle: Zastosuj niestandardowe formatowanie pól
description: "Format i ocena wyników pól za pomocą Java."
type: docs
weight: 40
url: /pl/java/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

Czasami użytkownicy muszą stosować niestandardowe formatowanie do pól. W tym artykule przyjrzymy się kilku przykładom, jak można to zrobić.

Aby dowiedzieć się więcej opcji, zobacz pełną listę właściwości dla każdego typu pola w odpowiedniej klasie.

## Jak stosować niestandardowe formatowanie do wyniku pola

Aspose.Words zapewnia API za niestandardowe formatowanie wyników pola. Możesz wdrożyć [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/) interfejs do sterowania sposobem formatowania wyniku pola. Możesz zastosować numeryczny przełącznik formatu, tj.\ # "#. # #", przełącznik formatu daty / czasu, tj.\ @ "dd.MM.yyyy", oraz przełącznik formatu cyfr, tj.\ * conseminal.

Poniższy przykład kodu pokazuje, jak stosować niestandardowe formatowanie dla wyniku pola.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## Jak ocenić `IF` stan

Jeśli chcesz ocenić `IF` stan po mail merge, można użyć [EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition) metoda, która natychmiast zwraca wynik oceny wyrażenia.

Poniższy przykład kodu pokazuje, jak stosować tę metodę:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## Jak stosować własne formatowanie do pola czasu

Domyślnie Aspose.Words aktualizacje `TIME` pole z obecną kulturą krótki format czasu. Jeśli chcesz formatować `TIME` pole zgodnie z wymaganiami, można to osiągnąć poprzez wdrożenie [IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/) interfejs.

Poniższe przykłady kodu pokazują, jak stosować niestandardowe formatowanie do `TIME` pole:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}
