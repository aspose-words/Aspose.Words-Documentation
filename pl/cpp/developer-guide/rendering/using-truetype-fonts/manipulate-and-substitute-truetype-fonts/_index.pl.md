---
title: Manipulowanie i zastępowanie czcionek TrueType w C++
second_title: Aspose.Words dla C++
articleTitle: Manipulowanie i zastępowanie czcionek TrueType
linktitle: Manipulowanie i zastępowanie czcionek TrueType
description: "Aspose.Words dla C++ może osadzić poprawne czcionki TrueType w wynikowym dokumencie, aby upewnić się, że wyświetla się dokładnie. Jeśli czcionka lub określony znak nie jest dostępny, Aspose.Words wyszukuje odpowiedni zamiennik czcionki lub używa mechanizmu rezerwowego czcionki."
type: docs
weight: 10
url: /pl/cpp/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words wymaga czcionek TrueType do różnych zadań, w tym do renderowania dokumentów do formatów stron stałych, na przykład PDF lub XPS. Kiedy Aspose.Words renderuje dokument, musi wykonać osadzanie i osadzanie podzbiorów czcionek TrueType w wynikowym dokumencie, co jest normalną praktyką podczas generowania dokumentu, w tym popularnych formatów PDF lub XPS. Gwarantuje to, że dokument będzie wyglądał tak samo dla każdej przeglądarki. Ponadto specyfikacja XPS wymaga, aby czcionki były zawsze osadzane w dokumencie.

Aby upewnić się, że Aspose.Words dokładnie mierzy znaki i pomyślnie osadza odpowiednie czcionki, muszą być spełnione następujące warunki:

1. Aspose.Words powinien być w stanie znaleźć i uzyskać dostęp do plików czcionek TrueType w systemie.
1. Musi być wystarczająca ilość czcionek TrueType dostępnych dla Aspose.Words, najlepiej z tymi samymi nazwami rodzin czcionek, które zostały użyte w dokumencie.

Należy zauważyć, że czcionka w dokumencie reprezentuje jednostkę, taką jak nazwa rodziny, styl, rozmiar, kolor, która różni się od jednostki czcionki `TrueType` (czcionki fizycznej). Aspose.Words rozwiązuje czcionkę w dokumencie na czcionkę fizyczną na pewnym etapie przetwarzania. Umożliwia to pewne zadania, najczęściej zadanie obliczania rozmiaru tekstu podczas budowy układu i osadzania / podsadzania do formatów stałych stron. Wiele innych mniej popularnych zadań, takich jak rozwiązywanie i zastępowanie czcionek podczas ładowania HTML lub osadzanie/podsadzanie do niektórych formatów przepływu, jest również włączonych.

## Gdzie Aspose.Words Szuka czcionek

Aspose.Words automatycznie próbuje znaleźć TrueType czcionki w systemie plików. Zwykle możesz polegać na domyślnym zachowaniu Aspose.Words, aby znaleźć `TrueType` czcionki, ale czasami musisz określić własne foldery zawierające TrueType czcionki. The [Określ Lokalizację Czcionek TrueType ](/words/cpp/specify-truetype-fonts-location/) temat opisuje, jak i gdzie Aspose.Words szuka czcionek, a także Jak określić własne lokalizacje czcionek.

## Różnice w przetwarzaniu formatów czcionek w Aspose.Words i Microsoft Word

Istnieją pewne różnice w przetwarzaniu formatów czcionek w Aspose.Words i Microsoft Word, Jak pokazano w poniższej tabeli:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| TrueType czcionki i OpenType czcionki z TrueType kontury | Obsługiwane. | Obsługiwane. |
| OpenType czcionki z konturami PostScript | Obsługiwane dla większości scenariuszy. Osadzanie w formatach o stałej stronie, takich jak PDF i XPS, nie jest obsługiwane. Tekst jest zastępowany obrazami bitmapowymi. | Obsługiwane dla większości scenariuszy, w tym osadzanie do formatów stałych stron. |
| OpenType Odmiany Czcionek | Obsługiwane są tylko nazwane instancje. Ciągłe zmiany nie są obsługiwane. | Obsługiwane dla jedynej domyślnej instancji. Nazwane instancje i ciągłe zmiany nie są obsługiwane. |
| Czcionki Type1 | Obsługiwane w wersjach Windows wcześniejszych niż 2013 i w wersjach MacOS. Wsparcie jest odrzucane w wersjach Windows począwszy od 2013 roku. | Nie są obsługiwane. |


