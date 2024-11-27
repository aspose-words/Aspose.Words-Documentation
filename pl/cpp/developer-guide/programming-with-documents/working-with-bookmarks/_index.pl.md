---
title: Praca z zakładkami w C++
second_title: Aspose.Words dla C++
articleTitle: Praca z zakładkami
linktitle: Praca z zakładkami
description: "Zrozumienie koncepcji zakładek i sposobu wykorzystania zakładek w programie za pomocą C++."
type: docs
weight: 180
url: /pl/cpp/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Zakładki identyfikują w dokumencie Microsoft Word lokalizacje lub fragmenty, które nazywasz i identyfikujesz do wykorzystania w przyszłości. Na przykład możesz użyć zakładki do zidentyfikowania tekstu, który chcesz później zmienić. Zamiast przewijać dokument w celu zlokalizowania tekstu, możesz przejść do niego za pomocą okna dialogowego Zakładka.

Czynności, które można wykonać za pomocą zakładek za pomocą Aspose.Words, są takie same, jak te, które można wykonać za pomocą Microsoft Word. Możesz wstawić nową zakładkę, usunąć, przejść do zakładki, pobrać lub ustawić nazwę zakładki, pobrać lub ustawić tekst w niej zawarty. Za pomocą Aspose.Words możesz także użyć zakładek w raportach lub dokumentach, aby wstawić niektóre dane do zakładki lub zastosować specjalne formatowanie do jej zawartości. Możesz także użyć zakładek, aby pobrać tekst z określonej lokalizacji w dokumencie.

## Wstaw zakładkę

Użyj [StartBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/startbookmark/) i [EndBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endbookmark/), aby utworzyć zakładkę, zaznaczając odpowiednio jej początek i koniec. Nie zapomnij przekazać tej samej nazwy zakładki do obu metod. Zakładki w dokumencie mogą nakładać się i obejmować dowolny zakres. Źle utworzone zakładki lub Zakładki ze zduplikowanymi nazwami będą ignorowane po zapisaniu dokumentu.

Poniższy przykład kodu pokazuje, jak utworzyć nową zakładkę:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cpp" >}}

## Uzyskaj Zakładki

Czasami konieczne jest uzyskanie kolekcji zakładek do iteracji przez Zakładki lub do innych celów. Użyj właściwości [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/) ujawnionej przez dowolny węzeł dokumentu, który zwraca obiekt [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) reprezentujący część dokumentu zawartą w tym węźle. Użyj tego obiektu, aby pobrać [BookmarkCollection](https://reference.aspose.com/words/cpp/aspose.words/bookmarkcollection/), a następnie użyj indeksatora kolekcji, aby uzyskać określoną zakładkę.

Poniższy przykład kodu pokazuje, jak uzyskać zakładki z kolekcji zakładek:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cpp" >}}

Poniższy przykład kodu pokazuje, jak uzyskać lub ustawić nazwę zakładki i tekst:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cpp" >}}

Poniższy przykład kodu pokazuje, jak dodać tabelę do zakładek:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cpp" >}}

Jeśli zmienisz nazwę Zakładki na nazwę, która już istnieje w dokumencie, nie zostanie wygenerowany żaden błąd i tylko pierwsza zakładka zostanie zapisana podczas zapisywania dokumentu.

{{% alert color="primary" %}}

Pamiętaj, że niektóre zakładki w dokumencie są przypisane do pól formularza. Przejście do takiej zakładki i wstawienie tam tekstu wstawia tekst do kodu pola formularza. Chociaż nie spowoduje to unieważnienia pola formularza, wstawiony tekst nie będzie widoczny, ponieważ stanie się częścią kodu pola.

{{% /alert %}}

## Przejdź do zakładki

Jeśli chcesz wstawić bogatą zawartość (nie tylko zwykły tekst) do zakładki, użyj [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/), aby przesunąć kursor do zakładki, a następnie użyj metod i właściwości [DocumentBuilder's](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), aby wstawić zawartość.

## Pokaż Ukryj Zawartość Zakładek

Całą zakładkę (*including the bookmarked content*) można zamknąć w prawdziwej części pola `IF` za pomocą Aspose.Words. Może być tak, że pole `IF` zawiera zagnieżdżone pole scalania w wyrażeniu (*Left of Operator*) i w zależności od wartości pola scalania pole `IF` pokazuje lub ukrywa zawartość zakładki w dokumencie Word.

Poniższy przykład kodu pokazuje, jak wyświetlać / ukrywać zakładki:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cpp" >}}
