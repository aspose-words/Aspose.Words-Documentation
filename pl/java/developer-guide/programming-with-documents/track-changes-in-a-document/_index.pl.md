---
title: Zmiany ścieżki w dokumencie w Java
second_title: Aspose.Words zamiast Java
articleTitle: Zmiany ścieżki w dokumencie
linktitle: Zmiany ścieżki w dokumencie
description: "Ścieżka zmiany treści i formatowania dokonane przez Ciebie lub innych. Dostęp do indywidualnych zmian w dokumencie i stosować różne właściwości do nich za pomocą Java."
type: docs
weight: 270
url: /pl/java/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Funkcjonalność zmian toru, znany również jako przegląd, pozwala śledzić zmiany treści i formatowania dokonane przez użytkownika lub innych użytkowników. Ta funkcja zmiany toru Aspose.Words obsługuje zmiany toru w Microsoft Word. Dzięki tej funkcjonalności można uzyskać dostęp do indywidualnych zmian w dokumencie i zastosować do nich różne właściwości.

Kiedy włączysz funkcję zmiany toru, wszystkie dodane, usunięte i zmodyfikowane elementy dokumentu zostaną uwidocznione z informacjami o tym, kto, kiedy i co zostało zmienione. Obiekty zawierające informacje o tym, co zostało zmienione, nazywane są "zmianami śledzenia". Na przykład, zakładaj, że chcesz przejrzeć dokument i dokonać ważnych zmian - może to oznaczać, że musisz dokonać zmian. W celu omówienia niektórych zmian należy również dodać komentarze. W tym miejscu pojawiają się zmiany w dokumentach.

Ten artykuł wyjaśnia, jak zarządzać i śledzić zmiany stworzone przez wielu recenzentów na tym samym dokumencie, jak również właściwości do śledzenia zmian.

{{% alert color="primary" %}}

Zauważ, że funkcja komentarza w Aspose.Words, oraz Microsoft Word, może być związane ze zmianami śledzenia. Należy jednak pamiętać, że uwagi są całkowicie niezależne od zmian śledzenia.

{{% /alert %}}

## Czym jest rewizja?

Przed nurkowaniem w poprawkach wyjaśnijmy znaczenie poprawek. A [revision](https://reference.aspose.com/words/java/com.aspose.words/revision/) jest zmianą, która występuje w jednym węźle dokumentu, podczas gdy grupa zmian, reprezentowana przez [RevisionGroup](https://reference.aspose.com/words/java/com.aspose.words/revisiongroup/) klasa, jest grupą korekt sekwencyjnych, które występują w wielu węzłach dokumentu. Przegląd jest narzędziem do śledzenia zmian.

Rewizje są używane w funkcji śledzenia zmian i w funkcji porównywania dokumentów, gdzie korekty pojawiają się w wyniku porównania. Tak więc, zmiany w funkcji śledzenia zmian pokazuje przez kogo i co zostało zmienione.

{{% alert color="primary" %}}

Zauważ, że Microsoft Word nie pozwala na wyświetlanie indywidualnych poprawek, pozwala tylko na wyświetlanie korekt sekwencyjnych jako jednej jednostki. Ale... Aspose.Words rozwiązuje to ograniczenie z **RevisionGroup** Klasa.

{{% /alert %}}

Aspose.Words obsługuje różne typy przeglądów, jak również w Microsoft Word, takie jak wstawianie, Usuwanie, Format Zmiana, StyleDefinition Zmiana i Przeprowadzka. Wszystkie typy weryfikacji są reprezentowane z [RevisionType](https://reference.aspose.com/words/java/com.aspose.words/revisiontype/) wyliczenie.

{{% alert color="primary" %}}

Należy zauważyć, że korekty mają wynik podobny do Microsoft Word ale Aspose.Words nie wykrywa formatowania podczas śledzenia zmian.

{{% /alert %}}

## Rozpocznij i przestań śledzić zmiany

Edycja dokumentu zwykle nie liczy się jako zmiana, dopóki nie zaczniesz jej śledzić. Aspose.Words pozwala automatycznie śledzić wszystkie zmiany w dokumencie za pomocą prostych kroków. Można łatwo rozpocząć proces śledzenia zmian za pomocą [StartTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#startTrackRevisions-java.lang.String) Metoda. Jeśli musisz zatrzymać proces śledzenia zmian tak, aby jakiekolwiek przyszłe edycje nie są uważane za poprawki, trzeba będzie użyć [StopTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#stopTrackRevisions) Metoda.

{{% alert color="primary" %}}

Należy pamiętać, że `StartTrackingRevisions` metoda nie zmienia statusu [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) właściwość i nie wykorzystuje jej wartości w celu śledzenia zmian. Ponadto, jeśli węzeł został przeniesiony z jednej lokalizacji do drugiej wewnątrz dokumentu śledzonego, zostaną utworzone zmiany ruchu, w tym przesunięcie z i przesunięcie do zakresu.

{{% /alert %}}

Po zakończeniu procesu śledzenia zmian w dokumencie, będziesz miał możliwość nawet zaakceptować wszystkie poprawki lub odrzucić je, aby przywrócić dokument do pierwotnej formy. Można to osiągnąć za pomocą [AcceptAllRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#acceptAllRevisions) lub [RejectAll](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#rejectAll) Metoda. Ponadto, można zaakceptować lub odrzucić każdą zmianę oddzielnie za pomocą [Accept](https://reference.aspose.com/words/java/com.aspose.words/revision/#accept) lub [Reject](https://reference.aspose.com/words/java/com.aspose.words/revision/#reject) Metoda.

Wszystkie zmiany będą śledzone dla jednej iteracji od momentu rozpoczęcia procesu do momentu jego zatrzymania. Połączenie pomiędzy różnymi iteracjami jest reprezentowane jako następujący scenariusz: ukończysz proces śledzenia, a następnie wprowadzisz pewne zmiany i zaczniesz śledzić zmiany ponownie. W tym scenariuszu wszystkie zmiany, których nie zaakceptowałeś lub nie odrzuciłeś, zostaną ponownie wyświetlone.

{{% alert color="primary" %}}

Należy pamiętać, że `AcceptAllRevisions` metoda jest podobna do "Akceptuj wszystkie zmiany" w Microsoft Word.

{{% /alert %}}

Poniższy przykład kodu pokazuje jak pracować ze zmianami śledzenia:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-WorkWithTrackChanges.java" >}}

Poniższy przykład kodu pokazuje, w jaki sposób generowane są korekty, gdy węzeł jest przenoszony w dokumencie śledzonym:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-GenerateRevisionsWhenMovingNode.java" >}}

## Zarządzanie zmianami i przechowywanie jako zmiany

Z poprzedniej funkcji śledzenia zmian, można zrozumieć, które zmiany zostały dokonane w dokumencie i kto dokonał tych zmian. Podczas gdy z [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) funkcja, wymuszasz wszelkie zmiany w dokumencie, które zostaną zapisane jako poprawki.

Aspose.Words pozwala na sprawdzenie, czy dokument posiada korektę, czy nie [HasRevision](https://reference.aspose.com/words/java/com.aspose.words/document/#hasRevisions) nieruchomości. Jeśli nie trzeba automatycznie śledzić zmian w dokumencie za pomocą metod StartTrackRevisions i StopTrackRevisions, to można użyć `TrackRevisions` właściwość do sprawdzenia, czy zmiany są śledzone podczas edycji dokumentu w Microsoft Word i przechowywane jako poprawki.

W `TrackRevisions` funkcja wprowadza korekty zamiast realnych DOM zmiany. Ale same poprawki są oddzielne. Na przykład: Jeśli usuniesz jakiś paragraf, Aspose.Words zrobić z tego korektę, oznaczając ją jako usunięcie, zamiast ją usunąć.

Ponadto, Aspose.Words pozwala sprawdzić, czy obiekt został wstawiony, usunięty lub zmieniony formatowanie za pomocą [IsDeleteRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isDeleteRevision), [IsFormatRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isFormatRevision), [IsInsertRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isInsertRevision), [IsMoveFromRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveFromRevision), oraz [IsMoveToRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveToRevision) nieruchomości.

{{% alert color="primary" %}}

Zauważ, że nie ma żadnego związku między same korekty i `TrackRevisions` nieruchomości. Dodatkowo można zaakceptować / odrzucić poprawki niezależnie od funkcji śledzenia zmian.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak stosować różne właściwości z korektami:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-ApplyDifferentPropertiesWithRevisions.java" >}}
