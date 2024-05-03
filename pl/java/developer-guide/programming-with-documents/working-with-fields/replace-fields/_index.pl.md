---
title: Zastąp pola tekstem Java
second_title: Aspose.Words zamiast Java
articleTitle: Zastąp pola tekstem statycznym
linktitle: Zastąp pola tekstem statycznym
description: "Dowiedz się, jak zastąpić pola tekstem w Java. Zastąp pola danymi statycznymi za pomocą Java API."
type: docs
weight: 37
url: /pl/java/replace-fields/
---

Zastąpienie pól jest często wymagane, gdy chcesz zapisać swój dokument jako kopię statyczną. Na przykład, wysyłając jako załącznik w e- mailu. Konwersja pól, takich jak `DATE` lub `TIME` tekst statyczny pozwoli dokumentowi na wyświetlenie tej samej daty co w momencie wysłania dokumentu. Ponadto, w niektórych sytuacjach, może wymagać usunięcia warunkowego `IF` pola z dokumentu i zastąpić je najnowszym wynikiem tekstu zamiast. Na przykład, konwersji wyniku `IF` pole do tekstu statycznego, więc nie będzie już dynamicznie zmieniać jego wartości podczas aktualizacji pól w dokumencie.

Poniższy schemat pokazuje jak `IF` pole jest przechowywane w dokumencie:

* tekst jest otoczony przez specjalne węzły pola - [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) oraz [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/)
* [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) węzeł oddziela tekst w polu od kodu pola i wyniku pola
* kod pola definiuje ogólne zachowanie pola, podczas gdy wynik pola zachowuje ostatni wynik, gdy pole jest aktualizowane przy użyciu Microsoft Word lub Aspose.Words
* wynik pola jest zapisany w polu i wyświetlany w dokumencie po obejrzeniu

![update-remove-a-field-aspose-words](/words/java/replace-fields/updating-and-removing-a-field-1.png)

Struktura można również zobaczyć poniżej w formie hierarchicznej za pomocą projektu demo **“DocumentExplorer”**, które statki z **Aspose.Words** Instalator.

![update-remove-a-field-aspose-words-2](/words/java/replace-fields/updating-and-removing-a-field-2.png)

## Pola, których nie można zastąpić tekstem

Zastąpienie pola tekstem statycznym nie działa prawidłowo dla niektórych pól nagłówkiem lub stopką.

Na przykład, próbuje przekonwertować `PAGE` pole w nagłówku lub stopce do tekstu statycznego spowoduje wyświetlenie tej samej wartości na wszystkich stronach. Dzieje się tak dlatego, że nagłówki i stopki są powtarzane na wielu stronach, a kiedy pozostają jako pola, są obsługiwane szczególnie tak, że wyświetlają prawidłowy wynik dla każdej strony.

Jednak w nagłówku, `PAGE` pole przekłada się dobrze na statyczny bieg tekstu. Ten bieg tekstu będzie oceniony tak, jakby to była ostatnia strona w sekcji, która spowoduje jakiekolwiek `PAGE` pole w nagłówku, aby wyświetlić ostatnią stronę na wszystkich stronach.

Poniższy przykład kodu pokazuje, jak zastąpić pole najnowszym wynikiem:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UnlinkFields-UnlinkFields.java" >}}

## Przelicz niektóre typy pól w poszczególnych częściach dokumentu

Od czasu **ConvertFieldsToStaticText** metoda akceptuje dwa parametry - [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) właściwości i [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) wyliczenie, możliwe jest przekazanie dowolnego złożonego węzła do tej metody. Pozwala to na konwersję pól na tekst statyczny tylko w określonych częściach dokumentu.

Na przykład, można przejść [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) obiekt i konwertować pola określonego typu z całego dokumentu do tekstu statycznego, lub można przekazać [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) obiekt sekcji i tylko konwertować pola znalezione w tym ciele.

{{% alert color="primary" %}}

Podczas mijania węzła poziomu blokady, takich jak [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), być świadome, że w niektórych przypadkach pola mogą obejmować wiele akapitów. Jeśli tak się stanie, zaleca się przekazać rodzica kompozytu zamiast uniknąć tego.

{{% /alert %}}

W [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) liczba przekazana do **ConvertFieldsToStaticText** metoda określa rodzaj pól, które należy przekonwertować na tekst statyczny. Każdy inny typ pola znaleziony w dokumencie pozostanie niezmieniony.

Poniższy przykład kodu pokazuje jak wybrać pola określonego typu - *targetFieldType* w określonym węźle - *compositeNode* a następnie przekonwertować je na tekst statyczny:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldHelper-FieldsHelper.java" >}}

Poniższy przykład kodu pokazuje jak przekonwertować wszystkie `IF` pola w dokumencie do tekstu statycznego:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInDocument-ConvertFieldsInDocument.java" >}}

Poniższy przykład kodu pokazuje jak przekonwertować wszystkie `PAGE` pola w części dokumentu do tekstu statycznego:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInBody-ConvertFieldsInBody.java" >}}

Poniższy przykład kodu pokazuje jak przekonwertować wszystkie `IF` pola w ostatnim akapicie do tekstu statycznego:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.java" >}}
