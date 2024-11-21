---
title: Praca z zakładkami w C#
second_title: Aspose.Words dla .NET
articleTitle: Praca z zakładkami
linktitle: Praca z zakładkami
description: "Zrozumienie koncepcji zakładek i sposobu użycia zakładek w programie przy użyciu C#."
type: docs
weight: 180
url: /pl/net/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Zakładki identyfikują w dokumencie Microsoft Word lokalizacje lub fragmenty, które nadajesz i identyfikujesz do wykorzystania w przyszłości. Możesz na przykład użyć zakładki, aby zidentyfikować tekst, który chcesz później sprawdzić. Zamiast przewijać dokument w celu zlokalizowania tekstu, możesz przejść do niego, korzystając z okna dialogowego Zakładka.

Działania, które można wykonać na zakładkach przy użyciu Aspose.Words, są takie same, jak te, które można wykonać przy użyciu Microsoft Word. Możesz wstawić nową zakładkę, usunąć, przejść do zakładki, uzyskać lub ustawić nazwę zakładki, uzyskać lub ustawić zawarty w niej tekst.

## Wstaw zakładkę

Użyj [StartBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/startbookmark/) i [EndBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endbookmark/), aby utworzyć zakładkę, zaznaczając odpowiednio jej początek i koniec. Nie zapomnij przekazać tej samej nazwy zakładki do obu metod. Zakładki w dokumencie mogą nakładać się na siebie i obejmować dowolny zakres. Źle utworzone zakładki lub zakładki ze zduplikowanymi nazwami zostaną zignorowane podczas zapisywania dokumentu.

{{% alert color="primary" %}}

Wszystkie białe spacje w zakładkach zostały zastąpione podkreśleniami. To ograniczenie wynika z formatów Microsoft Word, ponieważ zakładki w formatach Word, takich jak DOCX lub DOC, nie mogą zawierać białych spacji. Jednak PDF pozwala na takie zakładki. Jeśli więc chcesz używać zakładek w konturach plików PDF lub XPS, możesz używać ich ze spacjami.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak utworzyć nową zakładkę:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cs" >}}

## Zdobądź zakładki

Czasami konieczne jest uzyskanie kolekcji zakładek w celu przeglądania zakładek lub w innych celach. Użyj właściwości [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/) dostępnej w dowolnym węźle dokumentu, który zwraca obiekt [Range](https://reference.aspose.com/words/net/aspose.words/range/) reprezentujący część dokumentu zawartą w tym węźle. Użyj tego obiektu, aby pobrać plik [BookmarkCollection](https://reference.aspose.com/words/net/aspose.words/bookmarkcollection/), a następnie użyj indeksatora kolekcji, aby uzyskać określoną zakładkę.

Poniższy przykład kodu pokazuje, jak uzyskać zakładki z kolekcji zakładek:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}


Poniższy przykład kodu pokazuje, jak uzyskać lub ustawić nazwę i tekst zakładki:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak dodać tabelę do zakładek:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cs" >}}

Jeśli zmienisz nazwę zakładki na nazwę, która już istnieje w dokumencie, nie zostanie wygenerowany żaden błąd i podczas zapisywania dokumentu zostanie zapisana tylko pierwsza zakładka.

Należy pamiętać, że niektóre zakładki w dokumencie są przypisane do pól formularzy. Przejście do takiej zakładki i wstawienie tam tekstu powoduje wstawienie tekstu do kodu pola formularza. Chociaż nie spowoduje to unieważnienia pola formularza, wstawiony tekst nie będzie widoczny, ponieważ stanie się częścią kodu pola.

Poniższy przykład kodu pokazuje, jak uzyskać dostęp do kolumn tabeli z zakładkami:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTableColumns.cs" >}}

## Przejdź do zakładki

Jeśli chcesz wstawić bogatą zawartość (nie tylko zwykły tekst) do zakładki, powinieneś użyć [MoveToBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetobookmark/), aby przesunąć kursor do zakładki, a następnie użyć metod i właściwości [DocumentBuilder's](https://reference.aspose.com/words/net/aspose.words/documentbuilder/), aby wstawić treść.

## Pokaż Ukryj zawartość zakładek

Całą zakładkę (*łącznie z zawartością zakładek*) można umieścić w części True pola `IF` przy użyciu formatu Aspose.Words. Może być tak, że pole `IF` zawiera zagnieżdżone w wyrażeniu pole scalania (*na lewo od operatora*) i w zależności od wartości pola scalania pole `IF` pokazuje lub ukrywa zawartość Zakładki w dokumencie Word.

Poniższy przykład kodu pokazuje, jak pokazać/ukryć zakładki:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cs" >}}
