---
title: Śledzenie zmian w dokumencie w C++
second_title: Aspose.Words dla C++
articleTitle: Śledzenie zmian w dokumencie
linktitle: Śledzenie zmian w dokumencie
description: "Śledź zmiany w treści i formatowaniu wprowadzone przez Ciebie lub inne osoby za pomocą C++. Uzyskaj dostęp do poszczególnych wersji dokumentu i zastosuj do nich różne właściwości."
type: docs
weight: 270
url: /pl/cpp/track-changes-in-a-document/
timestamp: 2024-01-30-16-22-34
---

Funkcja śledzenia zmian, znana również jako przeglądanie, umożliwia śledzenie zmian w treści i formatowaniu wprowadzonych przez Ciebie lub innych użytkowników. Ta funkcja zmiany ścieżki z Aspose.Words obsługuje zmiany ścieżki w Microsoft Word. Dzięki tej funkcji możesz uzyskać dostęp do poszczególnych wersji dokumentu i zastosować do nich różne właściwości.

Po włączeniu funkcji Śledź zmiany wszystkie wstawione, usunięte i zmodyfikowane elementy dokumentu zostaną wizualnie wyróżnione informacjami o tym, kto, kiedy i co zostało zmienione. Obiekty, które przenoszą informacje o tym, co zostało zmienione, nazywane są "śledzeniem zmian". Załóżmy na przykład, że chcesz przejrzeć dokument i wprowadzić ważne zmiany – może to oznaczać, że musisz wprowadzić poprawki. Może być również konieczne wstawienie komentarzy, aby omówić niektóre zmiany. W tym miejscu pojawia się śledzenie zmian w dokumentach.

W tym artykule wyjaśniono, jak zarządzać i śledzić zmiany utworzone przez wielu recenzentów w tym samym dokumencie, a także właściwości śledzenia zmian.

{{% alert color="primary" %}}

Zauważ, że funkcja komentowania w Aspose.Words, a także w Microsoft Word, może być powiązana ze śledzeniem zmian. Pamiętaj jednak, że komentarze są całkowicie niezależne od śledzenia zmian.

{{% /alert %}}

## Co to jest rewizja

Zanim przejdziemy do wersji, wyjaśnijmy znaczenie wersji. Za [revision](https://reference.aspose.com/words/cpp/aspose.words/revision/) to zmiana, która występuje w jednym węźle dokumentu, podczas gdy grupa rewizji, reprezentowana przez klasę [RevisionGroup](https://reference.aspose.com/words/cpp/aspose.words/revisiongroup/), to grupa kolejnych rewizji, które występują w wielu węzłach dokumentu. Zasadniczo wersja jest narzędziem do śledzenia zmian.

Zmiany są używane w funkcji śledzenia zmian oraz w funkcji porównywania dokumentów, gdzie zmiany pojawiają się w wyniku porównania. Tak więc zmiany w funkcji śledzenia zmian pokazują, przez kogo i co zostało zmienione.

{{% alert color="primary" %}}

Zauważ, że Microsoft Word nie pozwala na przeglądanie pojedynczych wersji, pozwala tylko na przeglądanie kolejnych wersji jako pojedynczej jednostki. Ale Aspose.Words rozwiązuje to ograniczenie za pomocą klasy **RevisionGroup**.

{{% /alert %}}

Aspose.Words obsługuje różne typy wersji, a także w Microsoft Word, takie jak wstawianie, usuwanie, FormatChange, StyleDefinitionChange i przenoszenie. Wszystkie typy wersji są reprezentowane za pomocą wyliczenia [RevisionType](https://reference.aspose.com/words/cpp/aspose.words/revisiontype/).

{{% alert color="primary" %}}

Zauważ, że zmiany mają wynik podobny do Microsoft Word, ale Aspose.Words nie wykrywa formatowania podczas śledzenia zmian.

{{% /alert %}}

## Rozpocznij i Zatrzymaj śledzenie zmian

Edycja dokumentu zwykle nie liczy się jako wersja, dopóki nie zaczniesz go śledzić. Aspose.Words umożliwia automatyczne śledzenie wszystkich zmian w dokumencie za pomocą prostych kroków. Możesz łatwo rozpocząć proces śledzenia zmian za pomocą metody [StartTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/starttrackrevisions/). Jeśli chcesz zatrzymać proces śledzenia zmian, aby wszelkie przyszłe zmiany nie były uważane za zmiany, musisz użyć metody [StopTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/stoptrackrevisions/).

{{% alert color="primary" %}}

Zauważ, że metoda `StartTrackingRevisions` nie zmienia statusu właściwości [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/set_trackrevisions/) i nie wykorzystuje jej wartości do śledzenia wersji. Ponadto, jeśli węzeł został przeniesiony z jednej lokalizacji do drugiej wewnątrz śledzonego dokumentu, zostaną utworzone wersje Przenieś, w tym Przenieś z I przenieś do zakresu.

{{% /alert %}}

Po zakończeniu procesu śledzenia zmian w dokumencie będziesz mógł nawet zaakceptować wszystkie poprawki lub odrzucić je, aby przywrócić dokument do pierwotnej formy. Można to osiągnąć za pomocą metody [AcceptAllRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/acceptallrevisions/) lub [RejectAll](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/rejectall/). Ponadto możesz zaakceptować lub odrzucić każdą wersję osobno, używając metody [Accept](https://reference.aspose.com/words/cpp/aspose.words/revision/accept/) lub [Reject](https://reference.aspose.com/words/cpp/aspose.words/revision/reject/).

Wszystkie zmiany będą śledzone przez jedną iterację od momentu rozpoczęcia procesu do momentu jego zatrzymania. Połączenie między różnymi iteracjami jest przedstawione w następującym scenariuszu: Zakończ proces śledzenia, następnie wprowadź pewne zmiany i ponownie rozpocznij śledzenie zmian. W tym scenariuszu wszystkie zmiany, których nie zaakceptowałeś lub odrzuciłeś, zostaną ponownie wyświetlone.

{{% alert color="primary" %}}

Zauważ, że metoda `AcceptAllRevisions` jest podobna do "Zaakceptuj wszystkie zmiany" w Microsoft Word.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak pracować ze śledzeniem zmian:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-AcceptAllRevisions.cpp" >}}

Poniższy przykład kodu pokazuje, jak generowane są wersje, gdy węzeł jest przenoszony w śledzonym dokumencie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-MoveNodeInTrackedDocument.cpp" >}}

## Zarządzaj i przechowuj zmiany jako wersje

Dzięki poprzedniej funkcji śledzenia zmian możesz zrozumieć, które zmiany zostały wprowadzone w dokumencie i kto je wprowadził. Korzystając z funkcji [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/get_trackrevisions/), wymuszasz, aby wszelkie zmiany w dokumencie były przechowywane jako wersje.

Aspose.Words umożliwia sprawdzenie, czy dokument ma wersję, czy nie, za pomocą właściwości [HasRevision](https://reference.aspose.com/words/cpp/aspose.words/document/get_hasrevisions/). Jeśli nie musisz automatycznie śledzić zmian w dokumencie za pomocą metod StartTrackRevisions i StopTrackRevisions, możesz użyć właściwości `TrackRevisions`, aby sprawdzić, czy zmiany są śledzone podczas edycji dokumentu w Microsoft Word i przechowywane jako wersje.

Funkcja `TrackRevisions` wprowadza poprawki zamiast rzeczywistych zmian DOM. Ale same poprawki są oddzielne. Na przykład, jeśli usuniesz dowolny akapit, Aspose.Words utwórz go jako wersję, oznaczając go jako usunięcie, zamiast usuwać.

Ponadto Aspose.Words pozwala sprawdzić, czy obiekt został wstawiony, usunięty lub zmieniony formatowanie za pomocą [IsDeleteRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isdeleterevision/), [IsFormatRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), [IsInsertRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isinsertrevision/), [IsMoveFromRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), i [IsMoveToRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_ismovetorevision/) właściwości.

{{% alert color="primary" %}}

Zauważ, że nie ma związku między samymi wersjami a właściwością `TrackRevisions`. Ponadto możesz akceptować/odrzucać wersje niezależnie od funkcji śledzenia zmian.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak zastosować różne właściwości z wersjami:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-ShapeRevision.cpp" >}}
