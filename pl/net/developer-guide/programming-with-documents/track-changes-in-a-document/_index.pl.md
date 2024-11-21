---
title: Śledź zmiany w dokumencie w C#
second_title: Aspose.Words dla .NET
articleTitle: Śledź zmiany w dokumencie
linktitle: Śledź zmiany w dokumencie
description: "Śledź zmiany w treści i formatowaniu wprowadzone przez Ciebie lub inne osoby za pomocą C#. Uzyskaj dostęp do poszczególnych wersji dokumentu i zastosuj do nich różne właściwości."
type: docs
weight: 270
url: /pl/net/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Funkcja śledzenia zmian, zwana także przeglądaniem, umożliwia śledzenie zmian w treści i formatowaniu wprowadzonych przez Ciebie lub innych użytkowników. Ta funkcja zmiany ścieżki w formacie Aspose.Words obsługuje zmiany ścieżki w formacie Microsoft Word. Dzięki tej funkcji możesz uzyskać dostęp do poszczególnych wersji dokumentu i zastosować do nich różne właściwości.

Po włączeniu funkcji śledzenia zmian wszystkie wstawione, usunięte i zmodyfikowane elementy dokumentu zostaną wizualnie wyróżnione z informacją o tym, kto, kiedy i co zostały zmienione. Obiekty niosące informację o tym, co zostało zmienione, nazywane są "zmianami śledzącymi". Załóżmy na przykład, że chcesz przejrzeć dokument i wprowadzić ważne zmiany – może to oznaczać konieczność wprowadzenia poprawek. Może być również konieczne wstawienie komentarzy w celu omówienia niektórych zmian. Tutaj właśnie pojawia się śledzenie zmian w dokumentach.

W tym artykule wyjaśniono, jak zarządzać zmianami wprowadzonymi przez wielu recenzentów w tym samym dokumencie i je śledzić, a także właściwości śledzenia zmian.

{{% alert color="primary" %}}

Należy pamiętać, że funkcję komentowania w formacie Aspose.Words, a także Microsoft Word można powiązać ze śledzeniem zmian. Pamiętaj jednak, że komentarze są całkowicie niezależne od śledzenia zmian.

{{% /alert %}}

## Co to jest rewizja

Zanim zagłębimy się w wersje, wyjaśnijmy znaczenie wersji. [revision](https://reference.aspose.com/words/net/aspose.words/revision/) to zmiana zachodząca w jednym węźle dokumentu, natomiast grupa wersji reprezentowana przez klasę [RevisionGroup](https://reference.aspose.com/words/net/aspose.words/revision/group/) to grupa kolejnych wersji, które występują w wielu węzłach dokumentu. Zasadniczo wersja jest narzędziem do śledzenia zmian.

Wersje są wykorzystywane w funkcji śledzenia zmian oraz w funkcji porównywania dokumentów, gdzie poprawki pojawiają się w wyniku porównania. Zatem poprawki w ramach funkcji śledzenia zmian pokazują, kto i co zostało zmienione.

{{% alert color="primary" %}}

Należy pamiętać, że Microsoft Word nie pozwala na przeglądanie pojedynczych wersji, pozwala jedynie na przeglądanie kolejnych wersji jako pojedynczej całości. Ale Aspose.Words rozwiązuje to ograniczenie za pomocą klasy **RevisionGroup**.

{{% /alert %}}

Aspose.Words obsługuje różne typy wersji, a także Microsoft Word, takie jak Wstawianie, Usuwanie, FormatChange, StyleDefinitionChange i Przenoszenie. Wszystkie typy wersji są reprezentowane za pomocą wyliczenia [RevisionType](https://reference.aspose.com/words/net/aspose.words/revisiontype/).

{{% alert color="primary" %}}

Należy pamiętać, że poprawki dają wynik podobny do Microsoft Word, ale Aspose.Words nie wykrywa formatowania podczas śledzenia zmian.

{{% /alert %}}

## Rozpocznij i zatrzymaj śledzenie zmian

Edytowanie dokumentu zwykle nie liczy się jako wersja, dopóki nie zaczniesz go śledzić. Aspose.Words umożliwia automatyczne śledzenie wszystkich zmian w dokumencie za pomocą prostych kroków. Proces śledzenia zmian możesz łatwo rozpocząć wykorzystując metodę [StartTrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/starttrackrevisions/#starttrackrevisions/). Jeśli chcesz zatrzymać proces śledzenia zmian, aby przyszłe zmiany nie były traktowane jako poprawki, będziesz musiał użyć metody [StopTrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/stoptrackrevisions/).

{{% alert color="primary" %}}

Należy pamiętać, że metoda `StartTrackingRevisions` nie zmienia statusu właściwości [TrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/trackrevisions/) i nie wykorzystuje jej wartości w celu śledzenia wersji. Ponadto, jeśli węzeł został przeniesiony z jednej lokalizacji do drugiej w śledzonym dokumencie, zostaną utworzone wersje przeniesienia, obejmujące przesunięcie z i przesunięcie do zakresu.

{{% /alert %}}

Pod koniec procesu śledzenia zmian w dokumencie będziesz mieć możliwość zaakceptowania wszystkich poprawek lub odrzucenia ich, aby przywrócić dokument do pierwotnej formy. Można to osiągnąć za pomocą metody [AcceptAllRevisions](https://reference.aspose.com/words/net/aspose.words/document/acceptallrevisions/) lub [RejectAll](https://reference.aspose.com/words/net/aspose.words/revisioncollection/rejectall/). Ponadto możesz zaakceptować lub odrzucić każdą wersję z osobna, korzystając z metody [Accept](https://reference.aspose.com/words/net/aspose.words/revision/accept/) lub [Reject](https://reference.aspose.com/words/net/aspose.words/revision/reject/).

Wszystkie zmiany będą śledzone przez jedną iterację od momentu rozpoczęcia procesu do momentu jego zatrzymania. Połączenie między różnymi iteracjami przedstawiono w następującym scenariuszu: kończysz proces śledzenia, następnie wprowadzasz pewne zmiany i ponownie rozpoczynasz śledzenie zmian. W tym scenariuszu wszystkie zmiany, których nie zaakceptowałeś lub odrzuciłeś, zostaną wyświetlone ponownie.

{{% alert color="primary" %}}

Należy pamiętać, że metoda `AcceptAllRevisions` jest podobna do metody "Zaakceptuj wszystkie zmiany" w formacie Microsoft Word.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak pracować ze śledzeniem zmian:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-AcceptAllRevisions.cs" >}}

Poniższy przykład kodu pokazuje, w jaki sposób generowane są poprawki, gdy węzeł jest przenoszony w śledzonym dokumencie:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-MoveNodeInTrackedDocument.cs" >}}

## Zarządzaj zmianami i przechowuj je jako wersje

Dzięki poprzedniej funkcji śledzenia zmian możesz dowiedzieć się, jakie zmiany zostały wprowadzone w dokumencie i kto je wprowadził. Korzystając z funkcji [TrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/trackrevisions/), wymuszasz zapisanie wszelkich zmian w dokumencie jako wersji.

Aspose.Words pozwala sprawdzić, czy dokument ma wersję, czy nie, za pomocą właściwości [HasRevision](https://reference.aspose.com/words/net/aspose.words/document/hasrevisions/). Jeśli nie musisz automatycznie śledzić zmian w dokumencie za pomocą metod StartTrackRevisions i StopTrackRevisions, możesz użyć właściwości `TrackRevisions`, aby sprawdzić, czy zmiany są śledzone podczas edycji dokumentu w Microsoft Word i przechowywane jako wersje.

Funkcja `TrackRevisions` wprowadza poprawki zamiast rzeczywistych zmian DOM. Ale same poprawki są odrębne. Na przykład, jeśli usuniesz dowolny akapit, plik Aspose.Words uczyni go poprawką, zaznaczając go jako usunięty, zamiast go usuwać.

Ponadto Aspose.Words umożliwia sprawdzenie, czy obiekt został wstawiony, usunięty lub zmienione formatowanie przy użyciu właściwości [IsDeleteRevision](https://reference.aspose.com/words/net/aspose.words/inline/isdeleterevision/), [IsFormatRevision](https://reference.aspose.com/words/net/aspose.words/inline/isformatrevision/), [IsInsertRevision](https://reference.aspose.com/words/net/aspose.words/inline/isinsertrevision/), [IsMoveFromRevision](https://reference.aspose.com/words/net/aspose.words/inline/ismovefromrevision/) i [IsMoveToRevision](https://reference.aspose.com/words/net/aspose.words/inline/ismovetorevision/).

{{% alert color="primary" %}}

Należy pamiętać, że nie ma żadnego połączenia pomiędzy samymi wersjami a właściwością `TrackRevisions`. Ponadto możesz akceptować/odrzucać poprawki niezależnie od funkcji śledzenia zmian.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak zastosować różne właściwości w wersjach:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShapeRevision.cs" >}}
