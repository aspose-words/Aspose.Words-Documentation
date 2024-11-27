---
title: Praca z akapitami w C++
second_title: Aspose.Words dla C++
articleTitle: Praca z akapitami
linktitle: Praca z akapitami
description: "Praktyki manipulacji węzłem akapitu przy użyciu C++."
type: docs
weight: 210
url: /pl/cpp/working-with-paragraphs/
timestamp: 2024-01-30-16-22-34
---

Akapit to zestaw znaków połączonych w blok logiczny i kończących się znakiem specjalnym-a *paragraph break*. W Aspose.Words akapit jest reprezentowany przez klasę [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/).

## Wstaw akapit

Aby wstawić nowy akapit do dokumentu, musisz wstawić do niego znak podziału akapitu. [DocumentBuilder.Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/) wstawia do dokumentu nie tylko ciąg tekstu, ale także dodaje podział akapitu.

Bieżące formatowanie czcionki jest również określone przez właściwość [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/), A bieżące formatowanie akapitu jest określone przez właściwość [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_paragraphformat/). W następnej sekcji omówimy bardziej szczegółowo formatowanie akapitów.

Poniższy przykład kodu pokazuje, jak wstawić akapit do dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Formatuj Akapit

Bieżące formatowanie akapitu jest reprezentowane przez obiekt **ParagraphFormat**, który jest zwracany przez właściwość **ParagraphFormat**. Ten obiekt zawiera różne właściwości formatowania akapitów dostępne w Microsoft Word. Możesz łatwo zresetować formatowanie akapitu do domyślnego do normalnego stylu, wyrównane do lewej bez wcięć, bez odstępów, bez obramowań i bez cieniowania, wywołując [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/clearformatting/).

Poniższy przykład kodu pokazuje, jak ustawić formatowanie akapitu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

## Zastosuj Styl Akapitu

Niektóre obiekty formatujące, takie jak czcionka lub ParagraphFormat, obsługują style. Pojedynczy styl wbudowany lub zdefiniowany przez użytkownika jest reprezentowany przez obiekt `Style`, który zawiera odpowiednie właściwości stylu, takie jak nazwa, styl podstawowy, formatowanie czcionki i akapitu stylu i tak dalej.

Ponadto obiekt **Style** udostępnia Właściwość [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words/style/get_styleidentifier/), która zwraca niezależny od ustawień regionalnych identyfikator stylu reprezentowany przez wartość wyliczenia **StyleIdentifier**. Chodzi o to, że nazwy wbudowanych stylów w Microsoft Word są zlokalizowane dla różnych języków. Za pomocą identyfikatora stylu można znaleźć właściwy styl niezależnie od języka dokumentu. Wartości wyliczenia odpowiadają wbudowanym stylom Microsoft Word, takim jak *Normal*, *Heading 1*, *Heading 2* itp. Wszystkie style zdefiniowane przez Użytkownika mają przypisaną wartość **StyleIdentifier.User**.

Poniższy przykład kodu pokazuje, jak zastosować styl akapitu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

## Wstaw Separator stylów, aby umieścić różne style akapitów

Separator stylów można dodać na końcu akapitu za pomocą skrótu klawiaturowego Ctrl + Alt + Enter do MS Word. Ta funkcja pozwala na dwa różne style akapitów używane w jednym logicznym drukowanym akapicie. Jeśli chcesz, aby jakiś tekst z początku określonego nagłówka pojawił się w spisie treści, ale nie chcesz, aby cały nagłówek znajdował się w spisie treści, możesz użyć tej funkcji.

Poniższy przykład kodu pokazuje, jak wstawić separator stylów, aby uwzględnić różne style akapitów:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Zidentyfikuj Separator Stylu Akapitu

` `Aspose.Words zapewnia własność publiczną [BreakIsStyleSeparator](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_breakisstyleseparator/) do klasy `Paragraph` umożliwia identyfikację akapitu separatora stylów, jak pokazano w poniższym przykładzie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cpp" >}}

## Zastosuj obramowania i cieniowanie do akapitu

Obramowania w Aspose.Words są reprezentowane przez klasę [BorderCollection](https://reference.aspose.com/words/cpp/aspose.words/bordercollection/) – jest to zbiór [Border](https://reference.aspose.com/words/cpp/aspose.words/border/) obiektów, do których dostęp uzyskuje się za pomocą indeksu lub typu obramowania. Typ obramowania jest reprezentowany przez wyliczenie `BorderType`. Niektóre wartości wyliczenia mają zastosowanie do kilku lub tylko jednego elementu dokumentu. Na przykład **BorderType.Bottom** ma zastosowanie do akapitu lub komórki tabeli, podczas gdy **BorderType.DiagonalDown** określa przekątną obramowanie tylko w komórce tabeli.

Zarówno kolekcja obramowań, jak i każda oddzielna ramka mają podobne atrybuty, takie jak kolor, styl linii, szerokość linii, odległość od tekstu i opcjonalny Cień. Są one reprezentowane przez właściwości o tej samej nazwie. Możesz osiągnąć różne typy obramowań, łącząc wartości właściwości. Ponadto zarówno obiekty **BorderCollection**, jak i **Border** umożliwiają zresetowanie tych wartości do wartości domyślnych poprzez wywołanie metody [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/border/clearformatting/).

{{% alert color="primary" %}}

Zwróć uwagę, że po zresetowaniu właściwości obramowania do wartości domyślnych obramowanie staje się niewidoczne.

{{% /alert %}}

Aspose.Words ma również [Shading](https://reference.aspose.com/words/cpp/aspose.words/shading/) klasa zawiera atrybuty cieniowania dla elementów dokumentu. Możesz ustawić żądaną teksturę cieniowania i kolory, które są stosowane do tła i pierwszego planu elementu.

Tekstura cieniowania jest ustawiana za pomocą wartości wyliczenia [TextureIndex](https://reference.aspose.com/words/cpp/aspose.words/textureindex/), która umożliwia zastosowanie różnych wzorów do obiektu **Shading**. Na przykład, aby ustawić kolor tła dla elementu dokumentu, użyj wartości [TextureIndex.TextureSolid](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) i odpowiednio ustaw kolor CIENIOWANIA pierwszego planu.

Poniższy przykład kodu pokazuje, jak zastosować obramowanie i cieniowanie do akapitu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}
