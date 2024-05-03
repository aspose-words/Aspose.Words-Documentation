---
title: Praca z paragrafami w Java
second_title: Aspose.Words zamiast Java
articleTitle: Praca z paragrafami
linktitle: Praca z paragrafami
description: "Praktyki manipulacji węzłami paragrafowymi Java."
type: docs
weight: 210
url: /pl/java/working-with-paragraphs/
---

Akapit jest zbiorem znaków połączonych w blok logiczny i kończących się znakiem specjalnym - a * przerwa paragrafu *. W Aspose.Words, ustęp jest reprezentowany przez [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) Klasa.

## Dodanie paragrafu

Aby dodać nowy ustęp do dokumentu, należy dodać do niego znak łamania ustępu. [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln) dodaje do dokumentu nie tylko ciąg tekstu, ale także dodaje przerwę w zdaniu.

Bieżące formatowanie czcionki jest również określone przez [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) właściwość, a bieżące formatowanie paragrafu jest określone przez [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) nieruchomości. W następnej części zajmiemy się bardziej szczegółowo formatowaniem paragrafów.

Poniższy przykład kodu pokazuje, jak umieścić ustęp w dokumencie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## Paragraf formatu

Obecne formatowanie paragrafu jest reprezentowane przez [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) obiekt, który jest zwracany przez [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) nieruchomości. Obiekt ten obejmuje różne właściwości formatowania fragmentów dostępne w Microsoft Word. Można łatwo zresetować formatowanie paragrafu do jego domyślnej - Normalny styl, wyrównany lewy, brak wcięć, brak odstępów, brak granic, brak cieniowania - przez wywołanie [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting).

Poniższy przykład kodu pokazuje jak ustawić formatowanie paragrafu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## Zastosuj styl paragrafu

Niektóre formatowanie obiektów takich jak Czcionka lub ParagraphFormat style wsparcia. Pojedynczy built- in lub user- defined style jest reprezentowany przez [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) obiekt, który zawiera odpowiednie właściwości stylu, takie jak nazwa, styl bazowy, czcionka i formatowanie paragrafu stylu i tak dalej.

Ponadto **Style** obiekt zapewnia [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) właściwość, która zwraca identyfikator typu niezależnego od lokalizacji reprezentowany przez **StyleIdentifier** wartość wyliczenia. Chodzi o to, że nazwy built- w stylach w Microsoft Word są zlokalizowane dla różnych języków. Używając identyfikatora stylu, można znaleźć odpowiedni styl niezależnie od języka dokumentu. Wartości wyliczenia odpowiadają Microsoft Word built- w stylach takich jak *Normal*, * Dział 1 *, * Dział 2 *, itd. Wszystkie style zdefiniowane przez użytkownika są przypisane do **StyleIdentifier. Wartość użytkownika**.

Poniższy przykład kodu pokazuje, jak stosować styl paragrafu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## Wstaw separator stylu, aby umieścić różne style paragrafów

Separator stylu można dodać do końca paragrafu używając Ctrl + Alt + Enter Skrót klawiatury do MS Word. Funkcja ta pozwala na dwa różne style paragrafów stosowane w jednym logicznym drukowanym akapicie. Jeśli chcesz, aby tekst od początku konkretnego nagłówka pojawił się w tabeli treści, ale nie chcesz całej pozycji w tabeli treści, możesz użyć tej funkcji.

Poniższy przykład kodu pokazuje, jak umieścić separator stylów, aby pomieścić różne style paragrafów:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## Zastosuj granice i cieniowanie do paragrafu

Granice Aspose.Words są reprezentowane przez [BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/) klasa - to jest kolekcja [Border](https://reference.aspose.com/words/java/com.aspose.words/border/) obiektów, które są dostępne według indeksu lub typu granicy. W `Border` typ jest reprezentowany przez [BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/) wyliczenie. Niektóre wartości wyliczenia mają zastosowanie do kilku lub tylko jednego elementu dokumentu. Na przykład: **BorderType.Bottom** ma zastosowanie do celi paragrafu lub tabeli, podczas gdy **BorderType.DiagonalDown** określa przekątną granicy tylko w komórce tabeli.

Zarówno kolekcja granic jak i każda oddzielna granica mają podobne atrybuty jak kolor, styl linii, szerokość linii, odległość od tekstu i opcjonalny cień. Są one reprezentowane przez właściwości tej samej nazwy. Można osiągnąć różne typy granic łącząc wartości właściwości. Ponadto obie **BorderCollection** oraz **Border** obiekty pozwalają zresetować te wartości do wartości domyślnych przez wywołanie [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) Metoda.

{{% alert color="primary" %}}

Zauważ, że kiedy właściwości graniczne są resetowane do wartości domyślnych, granica jest niewidoczna.

{{% /alert %}}

Aspose.Words ma również [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) klasa zawiera atrybuty cieniowania elementów dokumentu. Można ustawić pożądaną teksturę cieniowania i kolory, które są stosowane do tła i pierwszoplanowej części.

Tektura cieniowania jest ustawiona z [TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/) wartość wyliczenia, która pozwala na zastosowanie różnych wzorów do **Shading** obiekt. Na przykład, aby ustawić kolor tła dla elementu dokumentu, należy użyć `TextureIndex.TextureSolid` wartość i ustawić kolor cieniowania pierwszoplanowego odpowiednio. Przykład kodu podany poniżej pokazuje, jak stosować granice i zacienić do akapitu.

Poniższy przykład kodu pokazuje, jak stosować granice i zacienić do akapitu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}
