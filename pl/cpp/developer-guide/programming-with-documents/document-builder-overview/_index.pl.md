---
title: Przegląd Kreatora dokumentów w C++
second_title: Aspose.Words dla C++
articleTitle: Przegląd Narzędzia Do Tworzenia Dokumentów
linktitle: Przegląd Narzędzia Do Tworzenia Dokumentów
type: docs
description: "DocumentBuilder umożliwia tworzenie dynamicznych dokumentów od podstaw lub dodawanie nowych elementów do istniejących za pomocą C++. DocumentBuilder zapewnia Metody wstawiania tekstu, checkboxes, tabel, obrazów i innych elementów zawartości w C++."
weight: 30
url: /pl/cpp/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) to potężna klasa, która kojarzy się z [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) i umożliwia tworzenie dynamicznych dokumentów od podstaw lub dodawanie nowych elementów do istniejącego.

**DocumentBuilder**

## Kreator dokumentów lub Aspose.Words DOM

**DocumentBuilder**

Operacje, które są możliwe za pomocą **DocumentBuilder**, są również możliwe przy użyciu klas Aspose.Words DOM bezpośrednio. Jednak użycie klas Aspose.Words DOM bezpośrednio zwykle wymaga więcej wierszy kodu niż użycie **DocumentBuilder**.

## Nawigacja Po Dokumentach

Nawigacja po dokumentach opiera się na koncepcji Wirtualnego kursora, za pomocą którego można przenieść się w inne miejsce w dokumencie za pomocą różnych metod **DocumentBuilder.MoveToXXX**, takich jak [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) i [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/). Ten wirtualny kursor wskazuje, gdzie tekst zostanie wstawiony podczas wywoływania metod [Write](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/), i inni.

Poniższy przykład kodu pokazuje, jak przejść do zakładki:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

## Tworzenie i modyfikowanie dokumentów

Aspose.Words API udostępnia kilka klas, które są odpowiedzialne za formatowanie różnych elementów dokumentu. Każda z klas zawiera właściwości formatowania związane z określonym elementem dokumentu, takim jak tekst, akapit, sekcja i inne. Na przykład klasa [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) reprezentuje właściwości formatowania znaków, klasa [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) reprezentuje właściwości formatowania akapitu i tak dalej. Obiekty tych klas są zwracane przez odpowiednie właściwości **DocumentBuilder**, które mają takie same nazwy jak Klasy. Dlatego możesz uzyskać do nich dostęp i ustawić żądane formatowanie podczas kompilacji dokumentu.

Możesz także wstawić tekst, checkbox, Obiekt ole, obrazy, zakładki, pola formularzy i inne elementy dokumentu w pozycji kursora przy użyciu metody `Write` lub dowolnej metody **DocumentBuilder.InsertXXX**, takiej jak [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/), [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/) i podobnych metod.

Zobaczmy, jak utworzyć prosty dokument za pomocą **DocumentBuilder**.

### Utwórz dokument za pomocą DocumentBuilder

Aby rozpocząć, musisz utworzyć **DocumentBuilder** i powiązać go z obiektem **Document**. Tworzysz nową instancję **DocumentBuilder**, wywołując jej konstruktor i przekazując ją do obiektu **Document** w celu dołączenia do konstruktora.

Aby wstawić tekst, przekaż ciąg tekstu, który chcesz wstawić do dokumentu, do metody **Write**.

Poniższy przykład kodu pokazuje, jak utworzyć prosty dokument za pomocą narzędzia do tworzenia dokumentów.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Quick-Start-HelloWorld-HelloWorld.cpp" >}}

### Określ Formatowanie Dokumentu

Właściwość [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) definiuje formatowanie tekstu. Ten obiekt zawiera różne atrybuty czcionki (nazwa czcionki, rozmiar czcionki, kolor itd.). Niektóre ważne atrybuty czcionki są również reprezentowane przez właściwości **DocumentBuilder**, aby umożliwić bezpośredni dostęp do nich. Są to właściwości logiczne [Font.Bold](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_bold/), [Font.Italic](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_italic/) i [Font.Underline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_underline/).

Poniższy przykład kodu pokazuje, jak wstawić sformatowany tekst za pomocą **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) określa formatowanie znaków, które będzie stosowane do całego tekstu wstawionego od bieżącej pozycji w dokumencie.
- [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) określa formatowanie akapitu dla bieżącego i wszystkich akapitów do wstawienia.
- [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) określa właściwości strony i sekcji dla bieżącej sekcji i całej sekcji, która zostanie wstawiona.
- [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/) i [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/) Określ właściwości formatowania, które będą stosowane do komórek tabeli i wierszy od bieżącej pozycji w dokumencie.

W tej sytuacji "bieżący" oznacza pozycję, akapit, sekcję, komórkę lub wiersz, w którym znajduje się kursor.

{{% /alert %}}

{{% alert color="primary" %}}

Zwróć uwagę, że właściwości **Font**, **ParagraphFormat** i **PageSetup** są aktualizowane za każdym razem, gdy przechodzisz do innej lokalizacji w dokumencie, aby odzwierciedlić właściwości formatowania tej lokalizacji.

{{% /alert %}}
