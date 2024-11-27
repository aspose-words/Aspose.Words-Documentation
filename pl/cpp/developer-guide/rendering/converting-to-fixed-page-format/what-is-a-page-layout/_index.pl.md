---
title: Co to jest układ strony w C++
second_title: Aspose.Words dla C++
articleTitle: Co to jest układ strony
linktitle: Co to jest układ strony
description: "Zastanówmy się, czym jest układ strony. Układ strony opisuje geometrię treści zawartej w dokumencie."
type: docs
weight: 5
url: /pl/cpp/what-is-a-page-layout/
timestamp: 2024-09-24-14-35-44
---

A **document page layout** to struktura danych opisująca, gdzie dany obiekt znajduje się na stronach dla wszystkich obiektów dokumentu. Ponadto, ponieważ obiekty mają właściwości wpływające na ich wygląd, takie jak rozmiar czcionki, efekty cieniowania lub rysowania, musisz nie tylko wiedzieć, gdzie znajduje się obiekt, ale także jaki obszar (y) strony zajmuje i czy będzie miał zastosowanie do wielu stron, aby inne obiekty nie nakładały się na ten sam obszar (y).

## Do czego służy układ strony?

Aspose.Words implementuje funkcjonalność układu strony wewnętrznie, umożliwiając jej tworzenie wszystkich stałych formatów stron, takich jak PDF, XPS i różne formaty obrazów. Bez układu strony informacje przechowywane w pliku dokumentu stałej strony nie byłyby dostępne, a wszystkie te formaty nie byłyby obsługiwane.

Relacja między dokumentem a układem strony jest dość prosta. Podczas gdy dokument opisuje treść, odpowiedni układ strony opisuje geometrię tej treści. Zauważ, że układ strony nie może istnieć bez dokumentu, ponieważ nie byłoby treści do obliczania geometrii, ale dokument może istnieć bez układu strony. Na przykład, gdy dokument DOCX jest konwertowany na dokument RTF, zazwyczaj nie jest konieczne poznanie geometrii, ponieważ żaden format go nie przechowuje.

## Zobacz także

* [Tworzenie układu strony](/words/cpp/creating-a-page-layout/)
* [Zapisywanie dokumentu w formacie stałej strony](/words/cpp/saving-a-document-to-fixed-page-format/)
* [Określ Opcje Układu](/words/cpp/specify-layout-options/)
