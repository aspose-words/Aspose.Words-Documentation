---
title: Praca z Komentarze w Java
second_title: Aspose.Words zamiast Java
articleTitle: Praca z komentarzami
linktitle: Praca z komentarzami
description: "Praca z komentarzami przy użyciu Java."
type: docs
weight: 260
url: /pl/java/working-with-comments/
---

{{% alert color="primary" %}}

**Spróbuj online**

Możesz spróbować tej funkcjonalności z naszym [Darmowe online używać adnotacji](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words pozwala użytkownikom pracować z komentarzami - komentarze w dokumencie w Aspose.Words są reprezentowane przez [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) Klasa. Należy również [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) oraz [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) klasy określające region tekstu, który powinien być powiązany z komentarzem.

## Dodaj komentarz

Aspose.Words pozwala na dodawanie komentarzy na kilka sposobów:

1. Korzystanie z [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) klasa
2. Korzystanie z [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) oraz [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) klasy

Poniższy przykład kodu pokazuje, jak dodać komentarz do akapitu za pomocą **Comment** klasa:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

Poniższy przykład kodu pokazuje, jak dodać komentarz do akapitu przy użyciu regionu tekstu i **CommentRangeStart** oraz **CommentRangeEnd** klasy:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## Wyciąg lub usunięcie komentarzy

Korzystanie z Komentarzy w dokumencie Word (oprócz Track Changes) jest powszechną praktyką podczas przeglądania dokumentów, szczególnie gdy jest wielu recenzentów. Mogą być sytuacje, w których jedyną rzeczą, której potrzebujesz z dokumentu są komentarze. Powiedzmy, że chcesz wygenerować listę wyników przeglądu, lub być może zebrałeś wszystkie użyteczne informacje z dokumentu i po prostu chcesz usunąć niepotrzebne komentarze. Możesz chcieć zobaczyć lub usunąć komentarze danego recenzenta.

W tej próbie przyjrzymy się pewnym prostym metodom gromadzenia informacji z komentarzy w dokumencie oraz usuwania komentarzy z dokumentu. W szczególności zajmiemy się tym, jak:

- Wyciągnij wszystkie komentarze z dokumentu lub tylko te, które zostały wykonane przez konkretnego autora.
- Usuń wszystkie komentarze z dokumentu lub tylko z konkretnego autora.

### Jak wyodrębnić lub usunąć komentarze

Kod w tej próbce jest dość prosty i wszystkie metody oparte są na tym samym podejściu. Komentarz w dokumencie Word jest reprezentowany przez `Comment` obiekt w Aspose.Words model obiektu dokumentu. Aby zebrać wszystkie komentarze w dokumencie [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) metoda z pierwszym ustawionym parametrem `NodeType.Comment`. Upewnij się, że drugi parametr **GetChildNodes** Metoda jest ustawiona na true: to zmusza **GetChildNodes** do wyboru ze wszystkich węzłów dziecięcych rekursywnie, a nie tylko zbierania bezpośrednich dzieci.

Aby zilustrować, jak wydobyć i usunąć komentarze z dokumentu, przejdziemy przez następujące kroki:

1. Otwórz dokument Word używając [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) klasa
1. Pobierz wszystkie komentarze z dokumentu do kolekcji
1. Wydobywanie uwag:
   1. Przejdź przez kolekcję przy użyciu dla operatora
   1. Wyciąg i wykaz nazwy autora, daty i czasu oraz tekstu wszystkich komentarzy
   1. Wydrukuj i wypisz nazwisko autora, datę i godzinę oraz tekst komentarzy napisanych przez konkretnego autora, w tym przypadku autora 'x'
1. Aby usunąć uwagi:
   1. Przejdź do tyłu przez kolekcję za pomocą dla operatora
   1. Usuń komentarze
1. Zapisz zmiany.

Użyjemy do tego zadania następującego dokumentu Word:

![extract-remove-comments-aspose-words-java-1](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-1.png)

Jak widzicie, zawiera kilka komentarzy od dwóch autorów z inicjałami "pm" i "ks".

### Jak wyodrębnić wszystkie komentarze

W [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) metoda jest bardzo przydatna i można jej używać za każdym razem, gdy trzeba uzyskać listę węzłów dokumentów dowolnego typu. Wynikająca z tego kolekcja nie tworzy natychmiastowego napowietrznych, ponieważ węzły są wybierane do tej kolekcji tylko wtedy, gdy wymienia się lub uzyskuje dostęp do zawartych w niej elementów.

Poniższy przykład kodu pokazuje jak wyodrębnić nazwę autora, datę i godzinę oraz tekst wszystkich komentarzy w dokumencie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### Jak wydobyć komentarze określonego autora

Po wybraniu węzłów komentarza do kolekcji, wszystko co musisz zrobić to wydobyć informacje, których potrzebujesz. W tej próbce inicjały autora, data, czas i zwykły tekst komentarza są łączone w jeden ciąg znaków; zamiast tego można je zapisać w inny sposób.

Przeładowana metoda, która wyciąga komentarze od konkretnego autora jest prawie taka sama, po prostu sprawdza nazwę autora przed dodaniem informacji do tablicy.

Poniższy przykład kodu pokazuje, jak wyodrębnić nazwę autora, datę i godzinę oraz tekst komentarzy przez określonego autora:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### Jak usunąć komentarze

Jeśli usuwasz wszystkie komentarze, nie ma potrzeby przechodzenia przez kolekcję usuwające komentarze jeden po drugim; można je usunąć przez wywołanie [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear) w sprawie kolekcji komentarzy.

Poniższy przykład kodu pokazuje jak usunąć wszystkie komentarze w dokumencie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

Kiedy trzeba selektywnie usunąć komentarze, proces staje się bardziej podobny do kodu użytego do ekstrakcji komentarzy.

Poniższy przykład kodu pokazuje, jak usunąć komentarze określonego autora:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

Głównym punktem do podkreślenia tutaj jest wykorzystanie operatora. W przeciwieństwie do prostej ekstrakcji, tutaj chcesz usunąć komentarz. Odpowiednią sztuczką jest iteracja kolekcji od ostatniego komentarza do pierwszego. Powodem tego jest to, że jeśli zaczniesz od końca i przesuniesz się do tyłu, indeks poprzednich elementów pozostaje niezmieniony i możesz wrócić do pierwszego elementu kolekcji.

Poniższy przykład kodu przedstawia metody ekstrakcji i usuwania komentarzy:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc).

{{% /alert %}}

Po uruchomieniu próbka przedstawia następujące wyniki. Po pierwsze, wymienia wszystkie komentarze wszystkich autorów, a następnie wymienia komentarze tylko wybranego autora. Wreszcie, kod usuwający wszystkie uwagi.

![extract-remove-comments-aspose-words-java-2](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-2.png)

Dokument wyjściowy Word ma teraz komentarze usunięte z niego:

![extract-remove-comments-aspose-words-java-3](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-3.png)

### Jak usunąć tekst między CommentRangeStart i CommentRangeEnd

Stosowanie Aspose.Words Możesz również usunąć komentarze pomiędzy węzłami CommentRangeStart i CommentRangeEnd.

Poniższy przykład kodu pokazuje jak usunąć tekst pomiędzy CommentRangeStart i CommentRangeEnd:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## Dodaj lub usuń odpowiedź komentarza

W [addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String) metoda dodaje odpowiedź do tego komentarza. Należy pamiętać, że ze względu na istniejące ograniczenia MS Office w dokumencie dopuszcza się tylko jeden (1) poziom odpowiedzi. Wyjątek typu InvalidOperationException zostanie podniesiony, jeśli metoda ta zostanie wywołana na istniejącym komentarzu Reply.

Można użyć [removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment) metoda usunięcia określonej odpowiedzi na ten komentarz.

Poniższy przykład kodu pokazuje jak dodać odpowiedź do komentarza i usunąć odpowiedź komentarza:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## Przeczytaj odpowiedź komentarza

Aspose.Words wsparcie do czytania odpowiedzi komentarza. W [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies) właściwość zwraca kolekcję [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) obiekty, które są natychmiastowymi dziećmi określonego komentarza.

Poniższy przykład kodu pokazuje, jak iteracować za pomocą odpowiedzi komentarza i rozwiązał je:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}