---
title: Práce s písmy v Java
second_title: Aspose.Words místo Java
articleTitle: Práce s písmy
linktitle: Práce s písmy
description: "Formátování písma v detailech pomocí Java."
type: docs
weight: 230
url: /cs/java/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Písmo je soubor znaků s určitou velikostí, barvou a designem. Aspose.Words umožňuje pracovat s písmy pomocí různých tříd souvisejících s písmem, včetně [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) třída.

## Formátování písma

Současné formátování písma představuje a **Font** objekt vrácený [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) majetek. The **Font** třída obsahuje širokou škálu vlastností písma možné v Microsoft Word.

Následující příklad kódu ukazuje, jak nastavit formátování písma:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontFormatting.java" >}}

Vyplňte vlastnosti nyní jsou k dispozici také pro písma nastavit formátování textu. To dává schopnost změnit, například barvu popředí nebo transparentnost vyplnění textu.

## Získat odstup písma

Rozteč řádků písma je vertikální vzdálenost mezi základními směry dvou po sobě jdoucích řádků textu. Rozteč čáry tedy zahrnuje prázdný prostor mezi řádky a výšku samotného znaku.

The [LineSpacing](https://reference.aspose.com/words/java/com.aspose.words/font/#getLineSpacing) majetek byl zaveden v **Font** třída pro získání této hodnoty, jak je uvedeno v následujícím příkladu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetFontLineSpacing-GetFontLineSpacing.java" >}}

## Písmo DůrazMark

The **Font** třída poskytuje [EmphasisMark](https://reference.aspose.com/words/java/com.aspose.words/font/#getEmphasisMark) vlastnost získat nebo nastavit důrazMark hodnoty výčtu, které mají být použity ve formátování.

Následující příklad kódu ukazuje, jak nastavit **EphasisMark** vlastnost:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontEmphasisMark.java" >}}
