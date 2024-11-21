---
title: Budowniczy dokumentów Przegląd w Java
second_title: Aspose.Words zamiast Java
articleTitle: Przegląd budowy dokumentów
linktitle: Przegląd budowy dokumentów
type: docs
description: "DocumentBuilder pozwala na tworzenie dynamicznych dokumentów od podstaw lub dodawanie nowych elementów do istniejących dokumentów. DocumentBuilder zapewnia metody wprowadzania tekstu, pól kontrolnych, tabel, obrazów i innych elementów treści w Java."
weight: 30
url: /pl/java/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) jest potężną klasą, która łączy się z [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) i umożliwia budowanie dynamicznych dokumentów od podstaw lub dodawanie nowych elementów do istniejącego dokumentu.

**DocumentBuilder** zawiera metody wprowadzania tekstu, pól kontrolnych, obiektów ole, akapitów, list, tabel, obrazów i innych elementów treści. Pozwala na określenie czcionek, paragrafów lub sekcji formatowania i wykonywanie innych operacji.

## Budowniczy dokumentów lub Aspose.Words DOM

**DocumentBuilder** uzupełnia klasy i metody dostępne w Aspose.Words Document Object Model (DOM) uproszczenie najpowszechniejszych zadań związanych z budowaniem dokumentów. Oznacza to, że można tworzyć i modyfikować zawartość dokumentów zarówno poprzez Aspose.Words DOM, co wymaga dobrego zrozumienia struktury drzewa i korzystania z DocumentBuilder. W `DocumentBuilder` jest "fasadą" dla kompleksu **Document** struktury, która pozwala na szybkie i łatwe wstawianie treści i formatowanie.

Operacje, które są możliwe z **DocumentBuilder** są również możliwe przy użyciu klas Aspose.Words DOM bezpośrednio. Jednak Aspose.Words DOM klasy bezpośrednio zwykle wymagają więcej linii kodu niż za pomocą **DocumentBuilder**.

## Nawigacja dokumentów

Nawigacja dokumentu opiera się na koncepcji wirtualnego kursora, z którym można przenieść się do innej lokalizacji w dokumencie za pomocą różnych **DocumentBuilder.MoveToXXX** metody takie jak [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) oraz [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean). Ten wirtualny kursor wskazuje, gdzie tekst zostanie wstawiony podczas wywoływania metod [Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int), i innych. Zobacz następujący artykuł "Nawigacja kursorem", aby dowiedzieć się więcej o wirtualnym kursorze.

Poniższy przykład kodu pokazuje jak przejść do zakładki:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## Tworzenie i modyfikowanie dokumentów

Aspose.Words API zawiera kilka klas odpowiedzialnych za formatowanie różnych elementów dokumentu. Każda z klas obejmuje właściwości formatowania związane z określonym elementem dokumentu, takim jak tekst, paragraf, sekcja i inne. Na przykład: [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) class reprezentuje właściwości formatowania znaków, [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) klasa reprezentuje właściwości formatowania paragrafów, itd. Obiekty tych klas są zwracane przez odpowiedni **DocumentBuilder** właściwości, które mają te same nazwy co klasy. Dlatego można do nich uzyskać dostęp i ustawić wymagane formatowanie podczas tworzenia dokumentu.

Można również umieścić tekst, pole wyboru, obiekt ole, obrazy, zakładki, pola formularza i inne elementy dokumentu w pozycji kursora za pomocą `Write` metoda lub jakikolwiek z **DocumentBuilder.InsertXXX** metody, takie jak [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean), [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String), i podobne metody.

Zobaczmy jak stworzyć prosty dokument używając **DocumentBuilder**.

### Utwórz dokument używając DocumentBuilder

Aby rozpocząć, trzeba utworzyć **DocumentBuilder** i połączyć go z **Document** obiekt. Tworzysz nowy przykład **DocumentBuilder** przez wywołanie jego konstruktora i przekazać go do **Document** obiekt do przywiązania do budowniczego.

Aby dodać tekst, należy przekazać ciąg tekstu, który należy umieścić w dokumencie do **Write** Metoda.

Poniższy przykład kodu pokazuje, jak stworzyć prosty dokument za pomocą buildera dokumentów.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### Określić formatowanie dokumentu

W [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) właściwość definiuje formatowanie tekstu. Obiekt ten zawiera różne atrybuty czcionki (nazwa czcionki, rozmiar czcionki, kolor itp.). Niektóre ważne atrybuty czcionek są również reprezentowane przez **DocumentBuilder** nieruchomości umożliwiające bezpośredni dostęp do nich. To są [Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), oraz [Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline) właściwości boolean.

Poniższy przykład kodu pokazuje jak wstawić sformatowany tekst używając **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) określa formatowanie znaków, które będą stosowane do całego tekstu dodanego z bieżącej pozycji w dokumencie.
- [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) określa formatowanie paragrafu dla bieżącego i wszystkich dodanych ustępów.
- [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) Określa właściwości strony i sekcji dla bieżącej sekcji i całej sekcji, która zostanie dodana.
- [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) oraz [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) określić właściwości formatowania, które będą stosowane do komórek tabeli i wierszy z bieżącej pozycji w dokumencie począwszy od.

W tej sytuacji "prąd" oznacza pozycję, paragraf, sekcję, komórkę lub wiersz, w którym znajduje się kursor.

{{% /alert %}}

{{% alert color="primary" %}}

Należy pamiętać, że **Font**, **ParagraphFormat**, oraz **PageSetup** właściwości są aktualizowane za każdym razem, gdy przejdziesz do innej lokalizacji w dokumencie w celu odzwierciedlenia właściwości formatowania tej lokalizacji.

{{% /alert %}}
