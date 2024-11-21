---
title: Praca z akapitami w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Praca z akapitami
linktitle: Praca z akapitami
description: "Wstaw akapit i określ jego formatowanie w dokumencie za pomocą Python."
type: docs
weight: 210
url: /pl/python-net/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

Akapit to zbiór znaków połączonych w logiczny blok i zakończony znakiem specjalnym – *podziałem akapitu*. W Aspose.Words akapit jest reprezentowany przez klasę [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).

## Wstaw akapit

Aby wstawić nowy akapit do dokumentu, musisz wstawić do niego znak podziału akapitu. [DocumentBuilder.writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/) również wstawia ciąg tekstowy do dokumentu, ale dodatkowo dodaje podział akapitu.

Bieżące formatowanie czcionki jest również określone przez właściwość [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/), a bieżące formatowanie akapitu jest określane przez właściwość [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/).

Poniższy przykład kodu pokazuje, jak wstawić akapit do dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

## Formatuj akapit

Bieżące formatowanie akapitu jest reprezentowane przez obiekt [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) zwracany przez właściwość [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/). Obiekt ten zawiera różne właściwości formatowania akapitów dostępne w formacie Microsoft Word. Możesz łatwo zresetować formatowanie akapitu do domyślnego stylu Normalnego, z wyrównaniem do lewej, bez wcięć, bez odstępów, bez obramowań i bez cieniowania, wywołując [clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/clear_formatting/).

Poniższy przykład kodu pokazuje, jak ustawić formatowanie akapitu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ParagraphFormatting.py" >}}

## Zastosuj styl akapitowy

Niektóre obiekty formatujące, takie jak style [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) lub [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/), obsługują. Pojedynczy styl wbudowany lub zdefiniowany przez użytkownika jest reprezentowany przez obiekt [Style](https://reference.aspose.com/words/python-net/aspose.words/style/), który zawiera odpowiednie właściwości stylu, takie jak nazwa, styl podstawowy, czcionka i formatowanie akapitu stylu itd.

Ponadto obiekt [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) udostępnia właściwość [Style.style_identifier](https://reference.aspose.com/words/python-net/aspose.words/style/style_identifier/), która zwraca niezależny od ustawień regionalnych identyfikator stylu reprezentowany przez wartość wyliczeniową [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/). Chodzi o to, że nazwy wbudowanych stylów w Microsoft Word są zlokalizowane dla różnych języków. Używając identyfikatora stylu, możesz znaleźć właściwy styl niezależnie od języka dokumentu. Wartości wyliczenia odpowiadają wbudowanym stylom Microsoft Word, takim jak Normal, Heading 1, Heading 2 itd. Wszystkim stylom zdefiniowanym przez użytkownika przypisana jest wartość [StyleIdentifier.USER](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#user)

Poniższy przykład kodu pokazuje, jak zastosować styl akapitu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyParagraphStyle.py" >}}

## Wstaw separator stylów, aby umieścić różne style akapitów

Separator stylu można dodać na końcu akapitu za pomocą skrótu klawiaturowego Ctrl + Alt + Enter w programie MS Word. Ta funkcja umożliwia użycie dwóch różnych stylów akapitu w jednym logicznie drukowanym akapicie. Jeśli chcesz, aby w spisie treści pojawił się tekst z początku określonego nagłówka, ale nie chcesz, aby cały nagłówek był w spisie treści, możesz skorzystać z tej funkcji

Poniższy przykład kodu pokazuje, jak wstawić separator stylów, aby uwzględnić różne style akapitów:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-InsertStyleSeparator.py" >}}

## Zidentyfikuj separator stylu akapitu

Aspose.Words udostępnia publiczną właściwość [break_is_style_separator](https://reference.aspose.com/words/python-net/aspose.words/paragraph/break_is_style_separator/) w klasie [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), która umożliwia identyfikację akapitu oddzielającego styl, jak pokazano w przykładzie podanym poniżej:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-GetParagraphStyleSeparator.py" >}}

## Zastosuj obramowanie i cieniowanie do akapitu

Granice są reprezentowane przez [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/). Jest to zbiór obiektów [Border](https://reference.aspose.com/words/python-net/aspose.words/border/), do których dostęp można uzyskać za pomocą indeksu lub typu obramowania. Typ obramowania jest reprezentowany przez wyliczenie [BorderType](https://reference.aspose.com/words/python-net/aspose.words/bordertype/). Niektóre wartości wyliczenia mają zastosowanie do kilku lub tylko jednego elementu dokumentu. Na przykład [BorderType.BOTTOM](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#bottom) ma zastosowanie do akapitu lub komórki tabeli, podczas gdy [BorderType.DIAGONALDOWN](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#diagonaldown) określa ukośne obramowanie tylko w komórce tabeli.

Zarówno kolekcja obramowań, jak i każda oddzielna ramka mają podobne atrybuty, takie jak kolor, styl linii, szerokość linii, odległość od tekstu i opcjonalny cień. Są one reprezentowane przez właściwości o tej samej nazwie. Łącząc wartości właściwości, można uzyskać różne typy obramowań. Ponadto zarówno obiekty [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/), jak i [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) umożliwiają przywrócenie tych wartości do wartości domyślnych poprzez wywołanie metody [Border.clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/border/clear_formatting/).

{{% alert color="primary" %}}

Należy pamiętać, że gdy właściwości obramowania zostaną zresetowane do wartości domyślnych, obramowanie stanie się niewidoczne.

{{% /alert %}}

Aspose.Words ma również klasę [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) zawierającą atrybuty cieniowania dla elementów dokumentu. Można ustawić żądaną teksturę cieniowania oraz kolory stosowane do tła i pierwszego planu elementu.

Tekstura cieniowania jest ustawiana za pomocą wartości wyliczenia [TextureIndex](https://reference.aspose.com/words/python-net/aspose.words/textureindex/), która umożliwia zastosowanie różnych wzorców do obiektu [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/). Na przykład, aby ustawić kolor tła elementu dokumentu, użyj wartości [TextureIndex.TEXTURE_SOLID](https://reference.aspose.com/words/python-net/aspose.words/textureindex/#texture_solid) i ustaw odpowiednio kolor cieniowania pierwszego planu. Poniższy przykład pokazuje, jak zastosować obramowanie i cieniowanie do akapitu.

Poniższy przykład kodu pokazuje, jak zastosować obramowanie i cieniowanie do akapitu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyBordersAndShadingToParagraph.py" >}}
