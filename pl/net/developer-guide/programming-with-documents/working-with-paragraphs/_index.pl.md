---
title: Praca z akapitami w C#
second_title: Aspose.Words dla .NET
articleTitle: Praca z akapitami
linktitle: Praca z akapitami
description: "Wstaw akapit do dokumentu C#. Ustaw style akapitów w C#. Pracuj z separatorem stylu akapitu C#. Manipuluj węzłem akapitu za pomocą C#."
type: docs
weight: 210
url: /pl/net/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

Akapit to zbiór znaków połączonych w logiczny blok i zakończony znakiem specjalnym – *podziałem akapitu*. W Aspose.Words akapit jest reprezentowany przez klasę [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/).

## Wstaw akapit

Aby wstawić nowy akapit do dokumentu, musisz wstawić do niego znak podziału akapitu. [DocumentBuilder.Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/) wstawia do dokumentu nie tylko ciąg tekstowy, ale także dodaje podział akapitu.

Bieżące formatowanie czcionki jest również określone przez właściwość [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/), a bieżące formatowanie akapitu jest określane przez właściwość [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/). W następnej sekcji omówimy bardziej szczegółowo formatowanie akapitu.

Poniższy przykład kodu pokazuje, jak wstawić akapit do dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

## Formatuj akapit

Bieżące formatowanie akapitu jest reprezentowane przez obiekt [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) zwracany przez właściwość [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/). Obiekt ten zawiera różne właściwości formatowania akapitów dostępne w formacie Microsoft Word. Możesz łatwo przywrócić domyślne formatowanie akapitu – styl normalny, wyrównanie do lewej, bez wcięć, bez odstępów, bez obramowań i bez cieniowania – wywołując [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/paragraphformat/clearformatting/).

Poniższy przykład kodu pokazuje, jak ustawić formatowanie akapitu:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cs" >}}

## Zastosuj styl akapitu

Niektóre obiekty formatujące, takie jak **Font** lub **ParagraphFormat**, obsługują style. Jeden styl wbudowany lub zdefiniowany przez użytkownika jest reprezentowany przez obiekt [Style](https://reference.aspose.com/words/net/aspose.words/style/), który zawiera odpowiednie właściwości stylu, takie jak nazwa, styl podstawowy, czcionka, formatowanie akapitu stylu i tak dalej.

Ponadto obiekt **Style** udostępnia właściwość [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/style/styleidentifier/), która zwraca niezależny od ustawień regionalnych identyfikator stylu reprezentowany przez wartość wyliczenia [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/styleidentifier/). Faktem jest, że nazwy wbudowanych stylów w Microsoft Word są zlokalizowane dla różnych języków. Używając identyfikatora stylu, możesz znaleźć właściwy styl niezależnie od języka dokumentu. Wartości wyliczenia odpowiadają wbudowanym stylom Microsoft Word, takim jak *Normal*, *Nagłówek 1*, *Nagłówek 2* i tak dalej. Wszystkie style zdefiniowane przez użytkownika mają ustawioną wartość wyliczenia **StyleIdentifier.User**.

Poniższy przykład kodu pokazuje, jak zastosować styl akapitu:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cs" >}}

### Wstaw separator stylów, aby umieścić różne style akapitów

Separator stylu można dodać na końcu akapitu za pomocą skrótu klawiaturowego Ctrl+Alt+Enter w formacie Microsoft Word. Ta funkcja umożliwia użycie dwóch różnych stylów akapitu w tym samym logicznie drukowanym akapicie. Jeśli chcesz, aby w spisie treści pojawił się tekst z początku danego nagłówka, ale nie chcesz, aby w spisie treści był pokazywany cały nagłówek, możesz skorzystać z tej funkcji.

Poniższy przykład kodu pokazuje, jak wstawić separator stylów, aby uwzględnić różne style akapitów:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cs" >}}

### Zidentyfikuj separator stylu akapitu

Aspose.Words udostępnia publiczną właściwość [BreakIsStyleSeparator](https://reference.aspose.com/words/net/aspose.words/paragraph/breakisstyleseparator/) klasy `Paragraph` w celu identyfikacji akapitu za pomocą separatora stylu, jak pokazano w poniższym przykładzie:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cs" >}}

## Zastosuj obramowanie i cieniowanie do akapitu

Granice w Aspose.Words są reprezentowane przez klasę [BorderCollection](https://reference.aspose.com/words/net/aspose.words/bordercollection/) – jest to zbiór obiektów [Border](https://reference.aspose.com/words/net/aspose.words/border/), do których dostęp można uzyskać poprzez indeks lub typ obramowania. Typ obramowania jest z kolei reprezentowany przez wyliczenie [BorderType](https://reference.aspose.com/words/net/aspose.words/bordertype/). Niektóre wartości wyliczenia dotyczą wielu lub tylko jednego elementu dokumentu. Na przykład **BorderType.Bottom** dotyczy akapitu lub komórki tabeli, podczas gdy **BorderType.DiagonalDown** określa ukośne obramowanie tylko w komórce tabeli.

Zarówno kolekcja obramowań, jak i każda oddzielna ramka mają podobne atrybuty, takie jak kolor, styl linii, szerokość linii, odległość od tekstu i opcjonalny cień. Są one reprezentowane przez właściwości o tej samej nazwie. Łącząc wartości właściwości, można uzyskać różne typy obramowań. Dodatkowo obiekty **BorderCollection** i **Border** umożliwiają przywrócenie tych wartości do wartości domyślnych poprzez wywołanie metody [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/border/clearformatting/).

{{% alert color="primary" %}}

Należy pamiętać, że gdy właściwości obramowania zostaną zresetowane do wartości domyślnych, obramowanie stanie się niewidoczne.

{{% /alert %}}

Aspose.Words ma również klasę [Shading](https://reference.aspose.com/words/net/aspose.words/shading/), która zawiera atrybuty cieniowania dla elementów dokumentu. Można ustawić żądaną teksturę cieniowania i kolory stosowane do tła i pierwszego planu elementu, korzystając z wartości wyliczenia [TextureIndex](https://reference.aspose.com/words/net/aspose.words/textureindex/). **TextureIndex** umożliwia także zastosowanie różnych wzorców do obiektu **Shading**. Na przykład, aby ustawić kolor tła elementu dokumentu, użyj wartości **TextureIndex.TextureSolid** i ustaw odpowiedni kolor cieniowania pierwszego planu.

Poniższy przykład kodu pokazuje, jak zastosować obramowanie i cieniowanie do akapitu:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cs" >}}

## Policz wiersze akapitu

Jeśli chcesz policzyć liczbę wierszy w akapicie dowolnego dokumentu programu Word, można użyć następującego przykładowego kodu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CountLinesInParagraphs-CountLinesInParagraph.cs" >}}
