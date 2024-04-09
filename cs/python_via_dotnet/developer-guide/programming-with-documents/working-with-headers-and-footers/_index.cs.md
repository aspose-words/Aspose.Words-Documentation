---
title: Práce s hlavičkami a patkami
second_title: Aspose.Words místo Python via .NET
articleTitle: Práce s hlavičkami a patkami
linktitle: Práce s hlavičkami a patkami
description: "Vytvořit, spravovat a odstranit hlavičky a zápatí v dokumentu pomocí Python."
type: docs
weight: 150
url: /cs/python-net/working-with-headers-and-footers/
---

Aspose.Words umožňuje uživatelům pracovat s hlavičkami a zápatí v dokumentu. Hlavička je text, který je umístěn v horní části stránky, a zápatí je text v dolní části stránky. Typicky se tyto oblasti používají k vložení informací, které by měly být opakovány na všech nebo některých stránkách dokumentu, jako jsou čísla stránek, datum vytvoření, informace o společnosti atd.

## Vytvořit hlavičky nebo zápatí pomocí DocumentBuilder

Pokud chcete přidat hlavičku dokumentu nebo zápatí programově, nejjednodušší způsob je použít [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) třída to udělat.

Následující příklad kódu ukazuje, jak přidat hlavičku a zápatí pro stránky dokumentů:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "create-header-footer.py" >}}

## Upřesnit možnosti záhlaví nebo zápatí

Když přidáte hlavičku nebo zápatí do dokumentu, můžete nastavit některé pokročilé vlastnosti. Aspose.Words poskytuje uživatelům [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) a [HeaderFooterCollection](https://reference.aspose.com/words/python-net/aspose.words/headerfootercollection/) třídy, jakož i [HeaderFooterType](https://reference.aspose.com/words/python-net/aspose.words/headerfootertype/) počet, který vám dává větší kontrolu nad hlavičkou a zápatí procesu přizpůsobení.

### Upřesnit typ záhlaví nebo zápatí

Můžete zadat tři různé typy hlaviček a tři různé typy zápatí pro jeden dokument:

1. Záhlaví a/nebo zápatí pro první stránku
2. Záhlaví a/nebo zápatí pro sudé stránky
3. Záhlaví a/nebo zápatí pro podivné stránky

Následující příklad kódu ukazuje, jak přidat hlavičku pro liché stránky dokumentů:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "header-footer-type.py" >}}

### Upřesněte, zda zobrazit různé hlavičky nebo zápatí pro první stránku

Jak bylo uvedeno výše, můžete také nastavit jinou hlavičku nebo zápatí pro první stránku. K tomu je třeba nastavit [different_first_page_header_footer](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/different_first_page_header_footer/) vlajka `true` a pak specyfy **HeaderFirst** nebo **FooterFirst** hodnota.

Následující příklad kódu ukazuje, jak nastavit hlavičku pouze pro první stránku:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "different-first-page.py" >}}

### Upřesněte, zda zobrazit různé hlavičky nebo zápatí pro liché nebo sudé stránky

 Dále budete chtít nastavit různé hlavičky nebo zápatí pro podivné a dokonce i stránky v dokumentu. K tomu je třeba nastavit [odd_and_even_pages_header_footer](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/odd_and_even_pages_header_footer/) vlajka `true` a pak specyfy hodnoty **HeaderPrimary** a **HeaderEven**, nebo **FooterPrimary** a **FooterEven**.

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "odd-even-pages.py" >}}

### Vložit absolutní polohu Obrázek do hlavičky

Pro umístění obrázku do hlavičky nebo zápatí použijte **HeaderPrimary** typ záhlaví nebo **FooterPrimary** typ zápatí a [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) metoda.

Následující příklad kódu ukazuje, jak přidat obrázek do hlavičky:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "insert-image.py" >}}

### Nastavit vlastnosti písma a odstavce pro text záhlaví nebo zápatí

S Aspose.Words můžete nastavit vlastnosti písma a odstavce, použít **HeaderPrimary** typ záhlaví nebo **FooterPrimary** typ zápatí, stejně jako metody a vlastnosti pro práci s písmy a odstavce, které používáte pro těleso dokumentu.

Následující příklad kódu ukazuje, jak nastavit text v hlavičce na Arial, tučné, velikost 14, a střed nastavení:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "font-props.py" >}}

### Vložit čísla stránky do záhlaví nebo zápatí

V případě potřeby můžete přidat čísla stránek do hlavičky nebo zápatí. K tomu použijte **HeaderPrimary** typ záhlaví nebo **FooterPrimary** typ zápatí a [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) způsob přidání požadovaného pole.

Následující příklad kódu ukazuje, jak přidat čísla stránek na zápatí vpravo:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "page-numbers.py" >}}

### Použít hlavičky nebo zápatí definované v předchozí části

Pokud potřebujete zkopírovat hlavičku nebo zápatí z předchozí sekce, můžete to udělat také.

Následující příklad kódu ukazuje, jak zkopírovat hlavičku nebo zápatí z předchozí sekce:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "copy-headers-footers-from-previous-section.py" >}}

### Zajistit vzhled hlavičky nebo zápatí při použití různých orientace stránky a velikosti stránky

Aspose.Words umožňuje poskytnout vzhled hlavičky nebo zápatí při použití různých směrů a velikostí stránek.

Následující příklad ukazuje, jak to udělat:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "link-to-previous-header-footer.py" >}}

## Jak odstranit pouze hlavičky nebo pouze zápatí

Každá sekce v dokumentu může mít až tři hlavičky a až tři patky (pro první, dokonce, a liché stránky). Chcete-li odstranit všechny hlavičky nebo všechny zápatí v dokumentu, musíte smyčka přes všechny sekce a odstranit každý odpovídající hlavičkový uzel nebo zápatí uzel.

Následující příklad kódu ukazuje, jak odstranit všechny zápatí ze všech sekcí, ale ponechat hlavičky neporušené. Můžete odstranit pouze hlavičky podobným způsobem:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "remove-footers.py" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Header%20and%20footer%20types.docx).

{{% /alert %}}