---
title: Praca z komentarzami w C++
second_title: Aspose.Words dla C++
articleTitle: Praca z komentarzami
linktitle: Praca z komentarzami
description: "Praca z komentarzami przy użyciu C++."
type: docs
weight: 260
url: /pl/cpp/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Spróbuj online**

Możesz wypróbować tę funkcjonalność z naszym [Darmowe online Usuń adnotacje](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words umożliwia użytkownikom pracę z komentarzami-komentarze w dokumencie w Aspose.Words są reprezentowane przez klasę [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/). Użyj również klas [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/) i [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/), aby określić region tekstu, który powinien być powiązany z komentarzem.

## Dodaj komentarz

Aspose.Words umożliwia dodawanie komentarzy na kilka sposobów:

1. Używanie klasy [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/)
2. Korzystanie z klas [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/) i [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/)

Poniższy przykład kodu pokazuje, jak dodać komentarz do akapitu za pomocą klasy **Comment**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-AddComments-AddComments.cpp" >}}

Poniższy przykład kodu pokazuje, jak dodać komentarz do akapitu przy użyciu regionu tekstu oraz klas **CommentRangeStart** i **CommentRangeEnd**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-AnchorComment-AnchorComment.cpp" >}}

## Wyodrębnij lub Usuń Komentarze

Używanie komentarzy w dokumencie Word (oprócz śledzenia zmian) jest powszechną praktyką podczas przeglądania dokumentów, szczególnie gdy jest wielu recenzentów. Mogą wystąpić sytuacje, w których jedyne, czego potrzebujesz z dokumentu, to Komentarze. Załóżmy, że chcesz wygenerować listę wyników przeglądu, a może zebrałeś wszystkie przydatne informacje z dokumentu i po prostu chcesz usunąć niepotrzebne komentarze. Możesz chcieć wyświetlić lub usunąć komentarze konkretnego recenzenta.

W tym przykładzie przyjrzymy się kilku prostym metodom zarówno zbierania informacji z komentarzy w dokumencie, jak i usuwania komentarzy z dokumentu. W szczególności omówimy, jak:

- Wyodrębnij wszystkie komentarze z dokumentu lub tylko te zgłoszone przez konkretnego autora.
- Usuń wszystkie komentarze z dokumentu lub tylko od konkretnego autora.

### Jak wyodrębnić lub usunąć komentarze

Kod w tej próbce jest w rzeczywistości dość prosty i wszystkie metody opierają się na tym samym podejściu. Komentarz w dokumencie Word jest reprezentowany przez obiekt [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) w modelu obiektowym dokumentu Aspose.Words. Aby zebrać wszystkie komentarze w dokumencie, użyj metody [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/) z pierwszym parametrem ustawionym na [NodeType.Comment](https://reference.aspose.com/words/cpp/aspose.words/nodetype/). Upewnij się, że drugi parametr metody **GetChildNodes** jest ustawiony na true: zmusza to **GetChildNodes** do rekurencyjnego wybierania spośród wszystkich węzłów potomnych, a nie tylko zbierania bezpośrednich elementów potomnych.

Aby zilustrować, jak wyodrębnić i usunąć komentarze z dokumentu, wykonamy następujące kroki:

1. Otwórz dokument Word przy użyciu klasy [Document](https://reference.aspose.com/words/cpp/aspose.words/document/)
1. Pobierz wszystkie komentarze z dokumentu do kolekcji
1. Aby wyodrębnić komentarze:
   1. Przejrzyj kolekcję za pomocą operatora foreach
   1. Wyodrębnij i wymień nazwisko autora, datę i godzinę oraz tekst wszystkich komentarzy
   1. Wyodrębnij i wymień nazwisko autora, datę i godzinę oraz tekst komentarzy napisanych przez konkretnego autora, w tym przypadku autora `ks`
1. Aby usunąć komentarze:
   1. Przejdź wstecz przez kolekcję za pomocą dla operatora
   1. Usuń komentarze
1. Zapisz zmiany

### Jak wyodrębnić wszystkie komentarze

Metoda **GetChildNodes** jest bardzo przydatna i można jej używać za każdym razem, gdy trzeba uzyskać listę węzłów dokumentów dowolnego typu. Wynikowa kolekcja nie tworzy natychmiastowego narzutu, ponieważ węzły są wybierane do tej kolekcji tylko wtedy, gdy wyliczysz lub uzyskasz dostęp do elementów w niej.

Poniższy przykład kodu pokazuje, jak wyodrębnić nazwisko autora, datę i godzinę oraz tekst wszystkich komentarzy w dokumencie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ExtractComments.cpp" >}}

### Jak wyodrębnić Komentarze określonego autora

Po wybraniu węzłów komentarzy do kolekcji wystarczy wyodrębnić potrzebne informacje. W tym przykładzie Inicjały autora, data, godzina i zwykły tekst komentarza są łączone w jeden ciąg; zamiast tego możesz zapisać go na inne sposoby.

Przeciążona metoda, która wyodrębnia komentarze od konkretnego autora, jest prawie taka sama, po prostu sprawdza nazwisko autora przed dodaniem informacji do tablicy.

Poniższy przykład kodu pokazuje, jak wyodrębnić nazwisko autora, datę i godzinę oraz tekst komentarzy określonego autora:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cpp" >}}

### Jak usunąć komentarze

Jeśli usuwasz wszystkie komentarze, nie ma potrzeby poruszania się po kolekcji, usuwając komentarze jeden po drugim; możesz je usunąć, dzwoniąc do `NodeCollection.Clear` w kolekcji komentarzy.

Poniższy przykład kodu pokazuje, jak usunąć wszystkie komentarze w dokumencie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-RemoveComments.cpp" >}}

Kiedy trzeba selektywnie usuwać komentarze, proces staje się bardziej podobny do kodu, którego użyliśmy do wyodrębnienia komentarzy.

Poniższy przykład kodu pokazuje, jak usunąć komentarze określonego autora:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cpp" >}}

Głównym punktem, który należy tutaj podkreślić, jest użycie operatora for. W przeciwieństwie do prostej ekstrakcji, tutaj chcesz usunąć komentarz. Odpowiednią sztuczką jest iteracja kolekcji wstecz od ostatniego komentarza do pierwszego. Powód tego, jeśli zaczniesz od końca i cofniesz się, indeks poprzednich pozycji pozostanie niezmieniony i możesz wrócić do pierwszego elementu w kolekcji.

Poniższy przykład kodu pokazuje metody wyodrębniania i usuwania komentarzy:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ProcessComments.cpp" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Jak usunąć komentarz między CommentRangeStart a CommentRangeEnd

Za pomocą Aspose.Words możesz także usuwać komentarze między węzłami **CommentRangeStart** i **CommentRangeEnd**.

Poniższy przykład kodu pokazuje, jak usunąć tekst między **CommentRangeStart** a **CommentRangeEnd**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cpp" >}}

## Dodaj i usuń odpowiedź komentarza

Metoda [AddReply](https://reference.aspose.com/words/cpp/aspose.words/comment/addreply/) dodaje odpowiedź do tego komentarza. Należy pamiętać, że ze względu na istniejące ograniczenia Microsoft Office tylko 1 poziom odpowiedzi jest dozwolony w dokumencie. Wyjątek typu *InvalidOperationException* zostanie podniesiony, jeśli ta metoda zostanie wywołana w istniejącym komentarzu odpowiedzi.

Możesz użyć metody [RemoveReply](https://reference.aspose.com/words/cpp/aspose.words/comment/removereply/), aby usunąć określoną odpowiedź na ten komentarz.

Poniższy przykład kodu pokazuje, jak dodać odpowiedź do komentarza i usunąć odpowiedź komentarza:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cpp" >}}

## Przeczytaj odpowiedź komentarza

Właściwość [Replies](https://reference.aspose.com/words/cpp/aspose.words/comment/get_replies/) zwraca zbiór obiektów **Comment**, które są bezpośrednimi dziećmi określonego komentarza.

Poniższy przykład kodu pokazuje, jak iterować odpowiedzi komentarza i rozwiązywać je:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cpp" >}}
