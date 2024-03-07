---
title: Omówienie Konstruktora Dokumentów w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Przegląd narzędzia do tworzenia dokumentów
linktitle: Przegląd narzędzia do tworzenia dokumentów
type: docs
description: "DocumentBuilder umożliwia budowanie dynamicznych dokumentów od podstaw lub dodawanie nowych elementów do istniejących za pomocą Python. DocumentBuilder udostępnia metody wstawiania tekstu, pól wyboru, tabel, obrazów i innych elementów treści w formacie Python."
weight: 30
url: /pl/python-net/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) to potężna klasa, która kojarzy się z [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) i umożliwia budowanie dynamicznych dokumentów od podstaw lub dodawanie nowych elementów do już istniejącego.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) udostępnia metody wstawiania tekstu, pól wyboru, obiektów ole, akapitów, list, tabel, obrazów i innych elementów treści. Umożliwia określenie czcionek, formatowanie akapitu lub sekcji oraz wykonywanie innych operacji.

## Konstruktor dokumentów lub Aspose.Words DOM

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) uzupełnia klasy i metody dostępne w formacie Aspose.Words Document Object Model (DOM), aby uprościć najczęstsze zadania związane z tworzeniem dokumentów. Oznacza to, że możesz tworzyć i modyfikować treść dokumentów zarówno poprzez Aspose.Words DOM, co wymaga dobrego zrozumienia struktury drzewa, jak i przy użyciu narzędzia DocumentBuilder. `DocumentBuilder` to "fasada" złożonej struktury **Document**, która pozwala szybko i łatwo wstawiać treść i formatowanie.

Operacje możliwe w [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) są również możliwe przy bezpośrednim użyciu klas Aspose.Words DOM. Jednak bezpośrednie użycie klas Aspose.Words DOM zwykle wymaga więcej linii kodu niż użycie [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

## Nawigacja w dokumencie

Nawigacja w dokumencie opiera się na koncepcji wirtualnego kursora, za pomocą którego można przenieść się w inne miejsce w dokumencie za pomocą różnych metod **DocumentBuilder.move_to_XXX**, takich jak [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) i [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/). Ten wirtualny kursor wskazuje, gdzie tekst zostanie wstawiony podczas wywoływania metod [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/), [writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/), [insert_break](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/) i innych. Więcej informacji na temat wirtualnego kursora można znaleźć w artykule "Nawigacja za pomocą kursora".

Poniższy przykład kodu pokazuje, jak przejść do zakładki:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmarkEnd.py" >}}

## Tworzenie i modyfikowanie dokumentów

Aspose.Words API udostępnia kilka klas odpowiedzialnych za formatowanie różnych elementów dokumentu. Każda z klas zawiera właściwości formatujące powiązane z konkretnym elementem dokumentu, takim jak tekst, akapit, sekcja i inne. Na przykład klasa [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) reprezentuje właściwości formatowania znaków, klasa [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) reprezentuje właściwości formatowania akapitów i tak dalej. Obiekty tych klas są zwracane przez odpowiednie właściwości [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), które mają takie same nazwy jak klasy. Dzięki temu możesz uzyskać do nich dostęp i ustawić żądane formatowanie podczas tworzenia dokumentu.

Możesz także wstawić tekst, pole wyboru, obiekt ole, obrazy, zakładki, pola formularzy i inne elementy dokumentu w pozycji kursora, korzystając z metody `Write` lub dowolnej metody **DocumentBuilder.insert_XXX**, takiej jak [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/), [insert_html](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/) i podobnych metod.

Zobaczmy, jak utworzyć prosty dokument za pomocą [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

### Utwórz dokument za pomocą narzędzia DocumentBuilder

Aby rozpocząć, musisz utworzyć plik [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) i powiązać go z obiektem [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Tworzysz nową instancję [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), wywołując jej konstruktor i przekazując ją do obiektu [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) w celu dołączenia do konstruktora.

Aby wstawić tekst, przekaż ciąg tekstowy, który chcesz wstawić do dokumentu, do metody [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/).

Poniższy przykład kodu pokazuje, jak utworzyć prosty dokument przy użyciu narzędzia do tworzenia dokumentów.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Określ formatowanie dokumentu

Właściwość [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) definiuje formatowanie tekstu. Obiekt ten zawiera różne atrybuty czcionki (nazwę czcionki, rozmiar czcionki, kolor itd.). Niektóre ważne atrybuty czcionek są również reprezentowane przez właściwości [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), aby umożliwić bezpośredni dostęp do nich. Są to właściwości logiczne [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/bold/), [Font.italic](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/italic/) i [Font.underline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/underline/).

Poniższy przykład kodu pokazuje, jak wstawić sformatowany tekst za pomocą [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

{{% alert color="primary" %}}

- [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) określa formatowanie znaków, które zostanie zastosowane do całego tekstu wstawianego od bieżącej pozycji w dokumencie.
- [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) określa formatowanie akapitu bieżącego i wszystkich akapitów, które mają zostać wstawione.
- [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) określa właściwości strony i sekcji dla bieżącej sekcji oraz całej sekcji, która zostanie wstawiona.
- [cell_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) i [row_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/) określają właściwości formatowania, które zostaną zastosowane do komórek i wierszy tabeli, począwszy od bieżącej pozycji w dokumencie.

W tej sytuacji "bieżący" oznacza pozycję, akapit, sekcję, komórkę lub wiersz, w którym znajduje się kursor.

{{% /alert %}}

{{% alert color="primary" %}}

Należy pamiętać, że właściwości [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/), [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) i [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) są aktualizowane za każdym razem, gdy przechodzisz do innej lokalizacji w dokumencie, aby odzwierciedlić właściwości formatowania tej lokalizacji.

{{% /alert %}}
