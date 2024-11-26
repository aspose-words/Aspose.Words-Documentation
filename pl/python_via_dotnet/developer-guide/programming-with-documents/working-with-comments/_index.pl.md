---
title: Praca z komentarzami w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Praca z komentarzami
linktitle: Praca z komentarzami
description: "Jak dodawać, usuwać i manipulować komentarzami w dokumencie za pomocą Python."
type: docs
weight: 260
url: /pl/python-net/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Spróbuj online**

Możesz wypróbować tę funkcjonalność w naszym [Bezpłatne usuwanie adnotacji online](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words umożliwia użytkownikom pracę z komentarzami – komentarze w dokumencie w Aspose.Words są reprezentowane przez klasę [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/). Użyj także klas [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) i [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/), aby określić region tekstu, który powinien być powiązany z komentarzem.

## Dodaj komentarz

Aspose.Words umożliwia dodawanie komentarzy na kilka sposobów:

1. Korzystanie z klasy [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
2. Wykorzystanie klas [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) i [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/)

Poniższy przykład kodu pokazuje, jak dodać komentarz do akapitu przy użyciu klasy **Comment**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddComments.py" >}}

Poniższy przykład kodu pokazuje, jak dodać komentarz do akapitu przy użyciu obszaru tekstu oraz klas **CommentRangeStart** i **CommentRangeEnd**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AnchorComment.py" >}}

## Wyodrębnij lub usuń komentarze

Używanie komentarzy w dokumencie programu Word (oprócz funkcji śledzenia zmian) jest powszechną praktyką podczas przeglądania dokumentów, zwłaszcza gdy jest wielu recenzentów. Mogą zaistnieć sytuacje, w których jedyne, czego potrzebujesz z dokumentu, to komentarze. Załóżmy, że chcesz wygenerować listę wyników przeglądu, a może zebrałeś wszystkie przydatne informacje z dokumentu i po prostu chcesz usunąć niepotrzebne komentarze. Możesz wyświetlić lub usunąć komentarze konkretnego recenzenta.

W tym przykładzie przyjrzymy się prostym metodom gromadzenia informacji z komentarzy w dokumencie i usuwania komentarzy z dokumentu. W szczególności omówimy, jak:

- Wyodrębnij wszystkie komentarze z dokumentu lub tylko te, które dodał konkretny autor.
- Usuń wszystkie komentarze z dokumentu lub tylko od konkretnego autora.

### Jak wyodrębnić lub usunąć komentarze

Kod w tym przykładzie jest w rzeczywistości dość prosty i wszystkie metody opierają się na tym samym podejściu. Komentarz w dokumencie Word jest reprezentowany przez obiekt [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) w modelu obiektowym dokumentu Aspose.Words. Aby zebrać wszystkie komentarze w dokumencie, użyj metody [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) z pierwszym parametrem ustawionym na [NodeType.COMMENT](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#comment). Upewnij się, że drugi parametr metody **get_child_nodes** jest ustawiony na true: zmusza to **get_child_nodes** do rekurencyjnego wybierania wszystkich węzłów podrzędnych, a nie tylko zbierania bezpośrednich węzłów podrzędnych.

Aby zilustrować, jak wyodrębnić i usunąć komentarze z dokumentu, wykonamy następujące kroki:

1. Otwórz dokument Word, korzystając z klasy [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)
1. Pobierz wszystkie komentarze z dokumentu do kolekcji
1. Aby wyodrębnić komentarze:
   1. Przejrzyj kolekcję za pomocą operatora fore
   1. Wyodrębnij i podaj nazwisko autora, datę i godzinę oraz treść wszystkich komentarzy
   1. Wyodrębnij i wypisz nazwisko autora, datę i godzinę oraz treść komentarzy napisanych przez konkretnego autora, w tym przypadku autora "ks"
1. Aby usunąć komentarze:
   1. Przejdź wstecz przez kolekcję, używając operatora for
   1. Usuń komentarze
1. Zapisz zmiany

### Jak wyodrębnić wszystkie komentarze

Metoda [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) jest bardzo przydatna i można z niej skorzystać za każdym razem, gdy trzeba uzyskać listę węzłów dokumentu dowolnego typu. Powstała kolekcja nie powoduje natychmiastowego narzutu, ponieważ węzły są wybierane do tej kolekcji tylko wtedy, gdy wyliczasz zawarte w niej elementy lub uzyskujesz do nich dostęp.

Poniższy przykład kodu pokazuje, jak wyodrębnić nazwisko autora, datę i godzinę oraz tekst wszystkich komentarzy w dokumencie:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractComments.py" >}}

### Jak wyodrębnić komentarze określonego autora

Po wybraniu węzłów [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) do kolekcji wystarczy wyodrębnić potrzebne informacje. W tym przykładzie inicjały autora, data, godzina i zwykły tekst komentarza są połączone w jeden ciąg; zamiast tego możesz zapisać go w inny sposób.

Przeciążona metoda, która wyodrębnia komentarze konkretnego autora, jest prawie taka sama, po prostu sprawdza nazwisko autora przed dodaniem informacji do tablicy.

Poniższy przykład kodu pokazuje, jak wyodrębnić nazwisko autora, datę i godzinę oraz tekst komentarzy określonego autora:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractCommentsByAuthor.py" >}}

### Jak usunąć komentarze

Jeśli usuwasz wszystkie komentarze, nie ma potrzeby przeglądania kolekcji, usuwając komentarze jeden po drugim; możesz je usunąć, wywołując [clear](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/clear/) w kolekcji komentarzy.

Poniższy przykład kodu pokazuje, jak usunąć wszystkie komentarze z dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveComments.py" >}}

Kiedy musisz selektywnie usuwać komentarze, proces staje się bardziej podobny do kodu, którego używaliśmy do wyodrębniania komentarzy.

Poniższy przykład kodu pokazuje, jak usunąć komentarze określonego autora:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveCommentsByAuthor.py" >}}

Najważniejszą kwestią, którą należy tutaj podkreślić, jest użycie operatora for. W przeciwieństwie do prostego wyodrębniania, tutaj chcesz usunąć komentarz. Odpowiednią sztuczką jest iteracja kolekcji wstecz od ostatniego [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) do pierwszego. Dzieje się tak dlatego, że jeśli zaczniesz od końca i będziesz się cofać, indeks poprzednich pozycji pozostanie niezmieniony i będziesz mógł wrócić do pierwszej pozycji w kolekcji.

Poniższy przykład kodu pokazuje metody wyodrębniania i usuwania komentarzy:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ProcessComments.py" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Comments.docx).

{{% /alert %}}

### Jak usunąć komentarz pomiędzy CommentRangeStart i CommentRangeEnd

Za pomocą Aspose.Words możesz także usuwać komentarze pomiędzy węzłami **CommentRangeStart** i **CommentRangeEnd**.

Poniższy przykład kodu pokazuje, jak usunąć tekst między **CommentRangeStart** i **CommentRangeEnd**:

{{< highlight python >}}
# Open the document.
doc = aw.Document(docs_base.my_dir + "Comments.docx")

commentStart = doc.get_child(aw.NodeType.COMMENT_RANGE_START, 0, True).as_comment_range_start()
commentEnd = doc.get_child(aw.NodeType.COMMENT_RANGE_END, 0, True).as_comment_range_end()

currentNode = commentStart
isRemoving = True
while (currentNode != None and isRemoving) :
    if (currentNode.node_type == aw.NodeType.COMMENT_RANGE_END) :
        isRemoving = False

    nextNode = currentNode.next_pre_order(doc)
    currentNode.remove()
    currentNode = nextNode

# Save the document.
doc.save(docs_base.artifacts_dir + "WorkingWithComments.remove_region_text.docx")
{{< /highlight >}}

## Dodaj lub usuń odpowiedź na komentarz

Metoda [add_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/add_reply/) dodaje odpowiedź na ten komentarz. Należy pamiętać, że ze względu na istniejące ograniczenia Microsoft Office w dokumencie dozwolony jest tylko 1 poziom odpowiedzi. Jeśli ta metoda zostanie wywołana w istniejącym komentarzu odpowiedzi, zostanie zgłoszony wyjątek typu **InvalidOperationException**.

Możesz użyć metody [remove_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/remove_reply/), aby usunąć określoną odpowiedź na ten komentarz.

Poniższy przykład kodu pokazuje, jak dodać odpowiedź do komentarza i usunąć odpowiedź komentarza:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddRemoveCommentReply.py" >}}

## Przeczytaj odpowiedź na komentarz

Właściwość [replies](https://reference.aspose.com/words/python-net/aspose.words/comment/replies/) zwraca kolekcję obiektów [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/), które są bezpośrednimi dziećmi określonego komentarza.

Poniższy przykład kodu pokazuje, jak przeglądać odpowiedzi na komentarze i je rozwiązywać:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-CommentResolvedandReplies.py" >}}
