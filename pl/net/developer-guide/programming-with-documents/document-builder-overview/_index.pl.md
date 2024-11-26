---
title: Omówienie Konstruktora Dokumentów w C#
second_title: Aspose.Words dla .NET
articleTitle: Przegląd narzędzia do tworzenia dokumentów
linktitle: Przegląd narzędzia do tworzenia dokumentów
type: docs
description: "DocumentBuilder umożliwia budowanie dynamicznych dokumentów od podstaw lub dodawanie nowych elementów do istniejących za pomocą C#. DocumentBuilder udostępnia metody wstawiania tekstu, pól wyboru, tabel, obrazów i innych elementów treści w formacie .NET."
weight: 30
url: /pl/net/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) to potężna klasa, która kojarzy się z [Document](https://reference.aspose.com/words/net/aspose.words/document/) i umożliwia budowanie dynamicznych dokumentów od podstaw lub dodawanie nowych elementów do już istniejącego.

**DocumentBuilder** udostępnia metody wstawiania tekstu, pól wyboru, obiektów ole, akapitów, list, tabel, obrazów i innych elementów treści. Umożliwia określenie czcionek, formatowanie akapitu lub sekcji oraz wykonywanie innych operacji.

## Konstruktor dokumentów lub Aspose.Words DOM

**DocumentBuilder** uzupełnia klasy i metody dostępne w formacie Aspose.Words Document Object Model (DOM), aby uprościć najczęstsze zadania związane z tworzeniem dokumentów. Oznacza to, że możesz tworzyć i modyfikować treść dokumentów zarówno poprzez Aspose.Words DOM, co wymaga dobrego zrozumienia struktury drzewa, jak i przy użyciu narzędzia DocumentBuilder. `DocumentBuilder` to "fasada" złożonej struktury **Document**, która pozwala szybko i łatwo wstawiać treść i formatowanie.

Operacje możliwe w **DocumentBuilder** są również możliwe przy bezpośrednim użyciu klas Aspose.Words DOM. Jednak bezpośrednie użycie klas Aspose.Words DOM zwykle wymaga więcej linii kodu niż użycie **DocumentBuilder**.

## Nawigacja w dokumencie

Nawigacja w dokumencie opiera się na koncepcji wirtualnego kursora, za pomocą którego można przemieszczać się w inne miejsce w dokumencie za pomocą różnych metod **DocumentBuilder.MoveToXXX**, takich jak [MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/) i [MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/). Ten wirtualny kursor wskazuje, gdzie tekst zostanie wstawiony podczas wywoływania metod [Write](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/ln/index), [InsertBreak](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertbreak/) i innych. Więcej informacji na temat wirtualnego kursora można znaleźć w artykule "Nawigacja za pomocą kursora".

Poniższy przykład kodu pokazuje, jak przejść do zakładki:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cs" >}}

## Tworzenie i modyfikowanie dokumentów

Aspose.Words API udostępnia kilka klas odpowiedzialnych za formatowanie różnych elementów dokumentu. Każda z klas zawiera właściwości formatujące powiązane z konkretnym elementem dokumentu, takim jak tekst, akapit, sekcja i inne. Na przykład klasa [Font](https://reference.aspose.com/words/net/aspose.words/font/) reprezentuje właściwości formatowania znaków, klasa [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) reprezentuje właściwości formatowania akapitów i tak dalej. Obiekty tych klas są zwracane przez odpowiednie właściwości **DocumentBuilder**, które mają takie same nazwy jak klasy. Dzięki temu możesz uzyskać do nich dostęp i ustawić żądane formatowanie podczas tworzenia dokumentu.

Możesz także wstawić tekst, pole wyboru, obiekt ole, obrazy, zakładki, pola formularzy i inne elementy dokumentu w pozycji kursora, korzystając z metody `Write` lub dowolnej metody **DocumentBuilder.InsertXXX**, takiej jak [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/#insertfield/), [InsertHtml](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthtml/#inserthtml/) i podobnych metod.

Zobaczmy, jak utworzyć prosty dokument za pomocą **DocumentBuilder**.

### Utwórz dokument za pomocą narzędzia DocumentBuilder

Aby rozpocząć, musisz utworzyć plik **DocumentBuilder** i powiązać go z obiektem **Document**. Tworzysz nową instancję **DocumentBuilder**, wywołując jej konstruktor i przekazując ją do obiektu **Document** w celu dołączenia do konstruktora.

Aby wstawić tekst, przekaż ciąg tekstowy, który chcesz wstawić do dokumentu, do metody **Write**.

Poniższy przykład kodu pokazuje, jak utworzyć prosty dokument przy użyciu narzędzia do tworzenia dokumentów.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Quick-Start-HelloWorld-HelloWorld.cs" >}}

### Określ formatowanie dokumentu

Właściwość [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) definiuje formatowanie tekstu. Obiekt ten zawiera różne atrybuty czcionki (nazwę czcionki, rozmiar czcionki, kolor itd.). Niektóre ważne atrybuty czcionek są również reprezentowane przez właściwości **DocumentBuilder**, aby umożliwić bezpośredni dostęp do nich. Są to właściwości logiczne [Font.Bold](https://reference.aspose.com/words/net/aspose.words/font/bold/), [Font.Italic](https://reference.aspose.com/words/net/aspose.words/font/italic/) i [Font.Underline](https://reference.aspose.com/words/net/aspose.words/font/underline/).

Poniższy przykład kodu pokazuje, jak wstawić sformatowany tekst za pomocą **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) określa formatowanie znaków, które zostanie zastosowane do całego tekstu wstawianego od bieżącej pozycji w dokumencie.
- [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) określa formatowanie akapitu bieżącego i wszystkich akapitów, które mają zostać wstawione.
- [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) określa właściwości strony i sekcji dla bieżącej sekcji oraz całej sekcji, która zostanie wstawiona.
- [CellFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/cellformat/) i [RowFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/rowformat/) określają właściwości formatowania, które zostaną zastosowane do komórek i wierszy tabeli, począwszy od bieżącej pozycji w dokumencie.

W tej sytuacji "bieżący" oznacza pozycję, akapit, sekcję, komórkę lub wiersz, w którym znajduje się kursor.

{{% /alert %}}

{{% alert color="primary" %}}

Należy pamiętać, że właściwości **Font**, **ParagraphFormat** i **PageSetup** są aktualizowane za każdym razem, gdy przechodzisz do innej lokalizacji w dokumencie, aby odzwierciedlić właściwości formatowania tej lokalizacji.

{{% /alert %}}
