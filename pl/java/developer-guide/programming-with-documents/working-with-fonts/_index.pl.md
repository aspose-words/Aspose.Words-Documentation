---
title: Praca z Fonts w Java
second_title: Aspose.Words zamiast Java
articleTitle: Praca z Fontami
linktitle: Praca z Fontami
description: "Formatowanie czcionek w szczegółach przy użyciu Java."
type: docs
weight: 230
url: /pl/java/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Czcionka jest zestawem znaków o określonym rozmiarze, kolorze i konstrukcji. Aspose.Words pozwala na pracę z czcionkami przy użyciu różnych klas związanych z fontami, w tym [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) Klasa.

## Formatowanie czcionki

Obecne formatowanie czcionki jest reprezentowane przez **Font** obiekt zwrócony przez [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) nieruchomości. W **Font** klasa zawiera szeroką gamę właściwości czcionki możliwe w Microsoft Word.

Poniższy przykład kodu pokazuje jak ustawić formatowanie czcionki:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontFormatting.java" >}}

Właściwości wypełnienia są teraz dostępne również dla czcionek do ustawienia wypełnienia formatowania tekstu. Daje możliwość zmiany na przykład koloru pierwszoplanowego lub przejrzystości wypełnienia tekstu.

## Pobieranie odstępów między czcionkami

Odstęp między wierszami czcionki jest pionową odległością między liniami bazowymi dwóch kolejnych linii tekstu. Tak więc, odległość linii zawiera pustą przestrzeń między liniami wraz z wysokością samego znaku.

W [LineSpacing](https://reference.aspose.com/words/java/com.aspose.words/font/#getLineSpacing) nieruchomości został wprowadzony w **Font** klasa do uzyskania tej wartości, jak pokazano w poniższym przykładzie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetFontLineSpacing-GetFontLineSpacing.java" >}}

## Nacisk czcionki

W **Font** klasa zapewnia [EmphasisMark](https://reference.aspose.com/words/java/com.aspose.words/font/#getEmphasisMark) właściwość do uzyskiwania lub ustawiania wartości liczbowych z podkreślenia, które mają być zastosowane w formatowaniu.

Poniższy przykład kodu pokazuje jak ustawić **EphasisMark** nieruchomość:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontEmphasisMark.java" >}}
