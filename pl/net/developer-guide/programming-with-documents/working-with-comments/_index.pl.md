---
title: Praca z komentarzami w C#
second_title: Aspose.Words dla .NET
articleTitle: Praca z komentarzami
linktitle: Praca z komentarzami
description: "Praca z komentarzami przy użyciu C#."
type: docs
weight: 260
url: /pl/net/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Spróbuj online**

Możesz wypróbować tę funkcjonalność w naszym [Bezpłatne usuwanie adnotacji online](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words umożliwia użytkownikom pracę z komentarzami – komentarze w dokumencie w Aspose.Words są reprezentowane przez klasę [Comment](https://reference.aspose.com/words/net/aspose.words/comment/). Użyj także klas [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) i [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/), aby określić region tekstu, który powinien być powiązany z komentarzem.

## Dodaj komentarz

Aspose.Words umożliwia dodawanie komentarzy na kilka sposobów:

1. Korzystanie z klasy [Comment](https://reference.aspose.com/words/net/aspose.words/comment/)
2. Wykorzystanie klas [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) i [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/)

Poniższy przykład kodu pokazuje, jak dodać komentarz do akapitu przy użyciu klasy **Comment**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AddComments-AddComments.cs" >}}

Poniższy przykład kodu pokazuje, jak dodać komentarz do akapitu przy użyciu obszaru tekstu oraz klas **CommentRangeStart** i **CommentRangeEnd**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AnchorComment-AnchorComment.cs" >}}

## Wyodrębnij lub usuń komentarze

Używanie komentarzy w dokumencie programu Word (oprócz funkcji śledzenia zmian) jest powszechną praktyką podczas przeglądania dokumentów, zwłaszcza gdy jest wielu recenzentów. Mogą zaistnieć sytuacje, w których jedyne, czego potrzebujesz z dokumentu, to komentarze. Załóżmy, że chcesz wygenerować listę wyników przeglądu, a może zebrałeś wszystkie przydatne informacje z dokumentu i po prostu chcesz usunąć niepotrzebne komentarze. Możesz wyświetlić lub usunąć komentarze konkretnego recenzenta.

W tym przykładzie przyjrzymy się prostym metodom gromadzenia informacji z komentarzy w dokumencie i usuwania komentarzy z dokumentu. W szczególności omówimy, jak:

- Wyodrębnij wszystkie komentarze z dokumentu lub tylko te, które dodał konkretny autor
- Usuń wszystkie komentarze z dokumentu lub tylko od konkretnego autora

### Jak wyodrębnić lub usunąć komentarze

Kod w tym przykładzie jest w rzeczywistości dość prosty i wszystkie metody opierają się na tym samym podejściu. Komentarz w dokumencie Word jest reprezentowany przez obiekt [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) w modelu obiektowym dokumentu Aspose.Words. Aby zebrać wszystkie komentarze w dokumencie, użyj metody [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) z pierwszym parametrem ustawionym na [NodeType.Comment](https://reference.aspose.com/words/net/aspose.words/nodetype/). Upewnij się, że drugi parametr metody **GetChildNodes** jest ustawiony na true: zmusza to **GetChildNodes** do rekurencyjnego wybierania wszystkich węzłów podrzędnych, a nie tylko zbierania bezpośrednich węzłów podrzędnych.

Aby zilustrować, jak wyodrębnić i usunąć komentarze z dokumentu, wykonamy następujące kroki:

1. Otwórz dokument Word, korzystając z klasy [Document](https://reference.aspose.com/words/net/aspose.words/document/)
2. Pobierz wszystkie komentarze z dokumentu do kolekcji
3. Aby wyodrębnić komentarze:
   1. Przejrzyj kolekcję za pomocą operatora fore
   2. Wyodrębnij i wypisz nazwisko autora, datę i godzinę oraz treść wszystkich komentarzy
   3. Wyodrębnij i podaj nazwisko autora, datę i godzinę oraz treść komentarzy napisanych przez konkretnego autora, w tym przypadku autora "ks"
4. Aby usunąć komentarze:
   1. Przejdź wstecz przez kolekcję, używając operatora for
   2. Usuń komentarze
5. Zapisz zmiany

### Jak wyodrębnić wszystkie komentarze

Metoda **GetChildNodes** jest bardzo przydatna i można z niej skorzystać za każdym razem, gdy trzeba uzyskać listę węzłów dokumentu dowolnego typu. Powstała kolekcja nie powoduje natychmiastowego narzutu, ponieważ węzły są wybierane do tej kolekcji tylko wtedy, gdy wyliczasz zawarte w niej elementy lub uzyskujesz do nich dostęp.

Poniższy przykład kodu pokazuje, jak wyodrębnić nazwisko autora, datę i godzinę oraz tekst wszystkich komentarzy w dokumencie:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractComments.cs" >}}

### Jak wyodrębnić komentarze określonego autora

Po wybraniu węzłów **Comment** do kolekcji wystarczy wyodrębnić potrzebne informacje. W tym przykładzie inicjały autora, data, godzina i zwykły tekst komentarza są połączone w jeden ciąg; zamiast tego możesz zapisać go w inny sposób.

Przeciążona metoda, która wyodrębnia komentarze konkretnego autora, jest prawie taka sama, po prostu sprawdza nazwisko autora przed dodaniem informacji do tablicy.

Poniższy przykład kodu pokazuje, jak wyodrębnić nazwisko autora, datę i godzinę oraz tekst komentarzy określonego autora:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cs" >}}

### Jak usunąć komentarze

Jeśli usuwasz wszystkie komentarze, nie ma potrzeby przeglądania kolekcji, usuwając komentarze jeden po drugim. Możesz je usunąć, wywołując metodę [Clear](https://reference.aspose.com/words/net/aspose.words/nodecollection/clear/) w kolekcji komentarzy.

Poniższy przykład kodu pokazuje, jak usunąć wszystkie komentarze z dokumentu:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveComments.cs" >}}

Kiedy musisz selektywnie usuwać komentarze, proces staje się bardziej podobny do kodu, którego używaliśmy do wyodrębniania komentarzy.

Poniższy przykład kodu pokazuje, jak usunąć komentarze określonego autora:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cs" >}}

Najważniejszą kwestią, którą należy tutaj podkreślić, jest użycie operatora for. W przeciwieństwie do prostego wyodrębniania, tutaj chcesz usunąć komentarz. Odpowiednią sztuczką jest iteracja kolekcji wstecz od ostatniego komentarza do pierwszego. Dzieje się tak dlatego, że jeśli zaczniesz od końca i będziesz się cofać, indeks poprzednich pozycji pozostanie niezmieniony i będziesz mógł wrócić do pierwszej pozycji w kolekcji.

Poniższy przykład kodu pokazuje metody wyodrębniania i usuwania komentarzy:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ProcessComments.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Comments.docx).

{{% /alert %}}

### Jak usunąć komentarz pomiędzy CommentRangeStart i CommentRangeEnd

Za pomocą Aspose.Words możesz także usuwać komentarze pomiędzy węzłami **CommentRangeStart** i **CommentRangeEnd**.

Poniższy przykład kodu pokazuje, jak usunąć tekst między **CommentRangeStart** i **CommentRangeEnd**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cs" >}}

## Dodaj lub usuń odpowiedź na komentarz

Metoda [AddReply](https://reference.aspose.com/words/net/aspose.words/comment/addreply/) dodaje odpowiedź na ten komentarz. Należy pamiętać, że ze względu na istniejące ograniczenia Microsoft Office w dokumencie dozwolony jest tylko 1 poziom odpowiedzi. Jeśli ta metoda zostanie wywołana w istniejącym komentarzu odpowiedzi, zostanie zgłoszony wyjątek typu *InvalidOperationException*.

Możesz użyć metody [RemoveReply](https://reference.aspose.com/words/net/aspose.words/comment/removereply/), aby usunąć określoną odpowiedź na ten komentarz.

Poniższy przykład kodu pokazuje, jak dodać odpowiedź do komentarza i usunąć odpowiedź komentarza:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cs" >}}

## Przeczytaj odpowiedź na komentarz

Właściwość [Replies](https://reference.aspose.com/words/net/aspose.words/comment/replies/) zwraca kolekcję obiektów [Comment](https://reference.aspose.com/words/net/aspose.words/comment/), które są bezpośrednimi dziećmi określonego komentarza.

Poniższy przykład kodu pokazuje, jak przeglądać odpowiedzi na komentarze i je rozwiązywać:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cs" >}}
