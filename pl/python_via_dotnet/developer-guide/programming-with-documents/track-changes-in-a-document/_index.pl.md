---
title: Śledź zmiany w dokumencie
second_title: Aspose.Words dla Python via .NET
articleTitle: Śledź zmiany w dokumencie
linktitle: Śledź zmiany w dokumencie
description: "Śledź zmiany w treści i formatowaniu wprowadzone przez Ciebie lub inne osoby za pomocą Python. Uzyskaj dostęp do poszczególnych wersji dokumentu i zastosuj do nich różne właściwości."
type: docs
weight: 270
url: /pl/python-net/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Funkcja śledzenia zmian, zwana także przeglądaniem, umożliwia śledzenie zmian w treści i formatowaniu wprowadzonych przez Ciebie lub innych użytkowników. Ta funkcja zmiany ścieżki w formacie Aspose.Words obsługuje zmiany ścieżki w formacie Microsoft Word. Dzięki tej funkcji możesz uzyskać dostęp do poszczególnych wersji dokumentu i zastosować do nich różne właściwości.

Po włączeniu funkcji śledzenia zmian wszystkie wstawione, usunięte i zmodyfikowane elementy dokumentu zostaną wizualnie wyróżnione z informacją o tym, kto, kiedy i co zostały zmienione. Obiekty niosące informację o tym, co zostało zmienione, nazywane są "zmianami śledzącymi". Załóżmy na przykład, że chcesz przejrzeć dokument i wprowadzić ważne zmiany – może to oznaczać konieczność wprowadzenia poprawek. Może być również konieczne wstawienie komentarzy w celu omówienia niektórych zmian. Tutaj właśnie pojawia się śledzenie zmian w dokumentach.

W tym artykule wyjaśniono, jak zarządzać zmianami wprowadzonymi przez wielu recenzentów w tym samym dokumencie i je śledzić, a także właściwości śledzenia zmian.

{{% alert color="primary" %}}

Należy pamiętać, że funkcję komentowania w formacie Aspose.Words, a także Microsoft Word można powiązać ze śledzeniem zmian. Pamiętaj jednak, że komentarze są całkowicie niezależne od śledzenia zmian.

{{% /alert %}}

## Co to jest rewizja

Zanim zagłębimy się w wersje, wyjaśnijmy znaczenie wersji. [Revision](https://reference.aspose.com/words/python-net/aspose.words/revision/) to zmiana zachodząca w jednym węźle dokumentu, natomiast grupa wersji reprezentowana przez klasę [RevisionGroup](https://reference.aspose.com/words/python-net/aspose.words/revisiongroup/) to grupa kolejnych wersji, które występują w wielu węzłach dokumentu. Zasadniczo wersja jest narzędziem do śledzenia zmian.

Wersje są wykorzystywane w funkcji śledzenia zmian oraz w funkcji porównywania dokumentów, gdzie poprawki pojawiają się w wyniku porównania. Zatem poprawki w ramach funkcji śledzenia zmian pokazują, kto i co zostało zmienione.

{{% alert color="primary" %}}

Należy pamiętać, że Microsoft Word nie pozwala na przeglądanie pojedynczych wersji, pozwala jedynie na przeglądanie kolejnych wersji jako pojedynczej całości. Ale Aspose.Words rozwiązuje to ograniczenie za pomocą klasy [RevisionGroup](https://reference.aspose.com/words/python-net/aspose.words/revisiongroup/).

{{% /alert %}}

Aspose.Words obsługuje różne typy wersji, a także Microsoft Word, takie jak Wstawianie, Usuwanie, FormatChange, StyleDefinitionChange i Przenoszenie. Wszystkie typy wersji są reprezentowane za pomocą wyliczenia [RevisionType](https://reference.aspose.com/words/python-net/aspose.words/revisiontype/).

{{% alert color="primary" %}}

Należy pamiętać, że poprawki dają wynik podobny do Microsoft Word, ale Aspose.Words nie wykrywa formatowania podczas śledzenia zmian.

{{% /alert %}}

## Rozpocznij i zatrzymaj śledzenie zmian

Edytowanie dokumentu zwykle nie liczy się jako wersja, dopóki nie zaczniesz go śledzić. Aspose.Words umożliwia automatyczne śledzenie wszystkich zmian w dokumencie za pomocą prostych kroków. Proces śledzenia zmian możesz łatwo rozpocząć wykorzystując metodę [start_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/start_track_revisions/). Jeśli chcesz zatrzymać proces śledzenia zmian, aby przyszłe zmiany nie były traktowane jako poprawki, będziesz musiał użyć metody [stop_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/stop_track_revisions/).

{{% alert color="primary" %}}

Należy pamiętać, że metoda [start_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/start_track_revisions/) nie zmienia statusu właściwości [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) i nie wykorzystuje jej wartości w celu śledzenia wersji. Ponadto, jeśli węzeł został przeniesiony z jednej lokalizacji do drugiej w śledzonym dokumencie, zostaną utworzone wersje przeniesienia, obejmujące przesunięcie z i przesunięcie do zakresu.

{{% /alert %}}

Pod koniec procesu śledzenia zmian w dokumencie będziesz mieć możliwość zaakceptowania wszystkich poprawek lub odrzucenia ich, aby przywrócić dokument do pierwotnej formy. Można to osiągnąć za pomocą metody [accept_all_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/accept_all_revisions/) lub [reject_all](https://reference.aspose.com/words/python-net/aspose.words/revisioncollection/reject_all/). Ponadto możesz zaakceptować lub odrzucić każdą wersję z osobna, korzystając z metody [accept](https://reference.aspose.com/words/python-net/aspose.words/revision/accept/) lub [reject](https://reference.aspose.com/words/python-net/aspose.words/revision/reject/).

Wszystkie zmiany będą śledzone przez jedną iterację od momentu rozpoczęcia procesu do momentu jego zatrzymania. Połączenie między różnymi iteracjami przedstawiono w następującym scenariuszu: kończysz proces śledzenia, następnie wprowadzasz pewne zmiany i ponownie rozpoczynasz śledzenie zmian. W tym scenariuszu wszystkie zmiany, których nie zaakceptowałeś lub odrzuciłeś, zostaną wyświetlone ponownie.

{{% alert color="primary" %}}

Należy pamiętać, że metoda [accept_all_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/accept_all_revisions/) jest podobna do metody "Zaakceptuj wszystkie zmiany" w formacie Microsoft Word.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak pracować ze śledzeniem zmian:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-AcceptAllRevisions.py" >}}

Poniższy przykład kodu pokazuje, w jaki sposób generowane są poprawki, gdy węzeł jest przenoszony w śledzonym dokumencie:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-MoveNodeInTrackedDocument.py" >}}

## Zarządzaj zmianami i przechowuj je jako wersje

Dzięki poprzedniej funkcji śledzenia zmian możesz dowiedzieć się, jakie zmiany zostały wprowadzone w dokumencie i kto je wprowadził. Korzystając z funkcji [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/), wymuszasz zapisanie wszelkich zmian w dokumencie jako wersji.

Aspose.Words pozwala sprawdzić, czy dokument ma wersję, czy nie, za pomocą właściwości [has_revision](https://reference.aspose.com/words/python-net/aspose.words/document/has_revisions/). Jeśli nie musisz automatycznie śledzić zmian w dokumencie za pomocą metod start_track_revisions i stop_track_revisions, możesz użyć właściwości [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/), aby sprawdzić, czy zmiany są śledzone podczas edycji dokumentu w Microsoft Word i przechowywane jako wersje.

Funkcja [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) wprowadza poprawki zamiast rzeczywistych zmian DOM. Ale same poprawki są odrębne. Na przykład, jeśli usuniesz dowolny akapit, plik Aspose.Words uczyni go poprawką, zaznaczając go jako usunięty, zamiast go usuwać.

Ponadto Aspose.Words umożliwia sprawdzenie, czy obiekt został wstawiony, usunięty lub zmienione formatowanie przy użyciu właściwości [is_delete_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_delete_revision/), [is_format_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_format_revision/), [is_insert_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_insert_revision/), [is_move_from_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_move_from_revision/) i [is_move_to_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_move_to_revision/).

{{% alert color="primary" %}}

Należy pamiętać, że nie ma żadnego połączenia pomiędzy samymi wersjami a właściwością [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/). Ponadto możesz akceptować/odrzucać poprawki niezależnie od funkcji śledzenia zmian.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak zastosować różne właściwości w wersjach:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShapeRevision.py" >}}
