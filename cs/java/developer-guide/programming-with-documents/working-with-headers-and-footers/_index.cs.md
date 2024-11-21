---
title: Práce s hlavičkami a patkami Java
second_title: Aspose.Words místo Java
articleTitle: Práce s hlavičkami a zápatkami
linktitle: Práce s hlavičkami a zápatkami
description: "Jak manipulovat hlavičkami a zápatí pomocí Java."
type: docs
weight: 150
url: /cs/java/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words umožňuje uživatelům pracovat s hlavičkami a zápatí v dokumentu. Hlavička je text, který je umístěn v horní části stránky, a zápatí je text v dolní části stránky. Typicky se tyto oblasti používají k vložení informací, které by se měly opakovat na všech nebo některých stránkách dokumentu, jako jsou čísla stránek, datum vytvoření, informace o společnosti atd.

## Vytvořit hlavičky nebo zápatí pomocí nástroje DocumentBuilder

Pokud chcete přidat hlavičku dokumentu nebo zápatí programově, nejjednodušší způsob je použít [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) třída to udělat.

Následující příklad kódu ukazuje, jak přidat hlavičku a zápatí pro stránky dokumentů:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "create-header-footer.java" >}}

## Upřesnit možnosti záhlaví nebo zápatí

Když přidáte hlavičku nebo zápatí do dokumentu, můžete nastavit některé pokročilé vlastnosti. Aspose.Words poskytuje uživatelům [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) a [HeaderFooterCollection](https://reference.aspose.com/words/java/com.aspose.words/headerfootercollection/) třídy, jakož i [HeaderFooterType](https://reference.aspose.com/words/java/com.aspose.words/headerfootertype/) počet, který vám dává větší kontrolu nad hlavičkou a zápatí procesu přizpůsobení.

### Upřesnit typ záhlaví nebo zápatí

Pro jeden dokument můžete zadat tři různé typy hlaviček a tři různé typy zápatí:

1. Záhlaví a/nebo zápatí pro první stránku
2. Hlavička a/nebo zápatí pro sudé stránky
3. Záhlaví a/nebo zápatí pro podivné stránky

Následující příklad kódu ukazuje, jak přidat hlavičku pro liché stránky dokumentů:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "header-footer-type.java" >}}

### Upřesněte, zda zobrazit různé hlavičky nebo zápatí pro první stránku

Jak bylo uvedeno výše, můžete také nastavit jinou hlavičku nebo zápatí pro první stránku. K tomu je třeba nastavit [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) vlajka `true` a pak specyfy **HeaderFirst** nebo **FooterFirst** hodnota.

Následující příklad kódu ukazuje, jak nastavit hlavičku pouze pro první stránku:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "different-first-page.java" >}}

### Upřesnit, zda zobrazit různé hlavičky nebo zápatí pro liché nebo sudé stránky

 Dále budete chtít nastavit různé hlavičky nebo zápatí pro podivné a dokonce i stránky v dokumentu. K tomu je třeba nastavit [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) vlajka `true` a pak specyfy hodnoty **HeaderPrimary** a **HeaderEven**, nebo **FooterPrimary** a **FooterEven**.

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "odd-even-pages.java" >}}

### Vložit absolutní polohu Obrázek do hlavičky

Pro umístění obrázku do hlavičky nebo zápatí použijte **HeaderPrimary** typ hlavičky nebo **FooterPrimary** typ zápatí a [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) metoda.

Následující příklad kódu ukazuje, jak přidat obrázek do hlavičky:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "insert-image.java" >}}

### Nastavit vlastnosti písma a odstavce pro text záhlaví nebo zápatí

S Aspose.Words můžete nastavit vlastnosti písma a odstavce, pomocí **HeaderPrimary** typ hlavičky nebo **FooterPrimary** typ zápatí, stejně jako metody a vlastnosti pro práci s písmy a odstavce používáte pro těleso dokumentu.

Následující příklad kódu ukazuje, jak nastavit text v záhlaví na Arial, tučné, velikost 14, a střed nastavení:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "font-props.java" >}}

### Vložit čísla stránky do záhlaví nebo zápatí

V případě potřeby můžete přidat čísla stránek do hlavičky nebo zápatí. K tomu použijte **HeaderPrimary** typ hlavičky nebo **FooterPrimary** typ zápatí a [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) způsob přidání požadovaného pole.

Následující příklad kódu ukazuje, jak přidat čísla stránky na zápatí vpravo:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "page-numbers.java" >}}

### Použít hlavičky nebo zápatí definované v předchozí části

Pokud potřebujete zkopírovat hlavičku nebo zápatí z předchozí sekce, můžete to udělat také.

Následující příklad kódu ukazuje, jak zkopírovat hlavičku nebo zápatí z předchozí sekce:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "copy-headers-footers-from-previous-section.java" >}}

### Zajistit vzhled hlavičky nebo zápatí při použití různých orientace stránky a velikosti stránky

Aspose.Words umožňuje poskytnout vzhled hlavičky nebo zápatí při použití různých směrů a velikostí stránek.

Následující příklad ukazuje, jak to udělat:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

## Jak odstranit pouze hlavičky nebo pouze zápatky

Každá část dokumentu může mít až tři hlavičky a až tři patky (za prvé, dokonce, a liché stránky). Chcete-li odstranit všechny hlavičky nebo všechny zápatí v dokumentu, musíte smyčka přes všechny sekce a odstranit každý odpovídající uzel hlavičky nebo zápatí uzel.

Následující příklad kódu ukazuje, jak odstranit všechny zápatí ze všech sekcí, ale ponechat hlavičky neporušené. Můžete odstranit pouze hlavičky podobným způsobem:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "remove-footers.java" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Footer.docx).

{{% /alert %}}
