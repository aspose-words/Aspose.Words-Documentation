---
title: Spolupráce s hlavičkami a zápatkami C#
second_title: Aspose.Words místo .NET
articleTitle: Práce s hlavičkami a patkami
linktitle: Práce s hlavičkami a patkami
description: "Jak manipulovat hlavičkami a zápatí pomocí C#. Vytvořit hlavičky a patky C#. Odstranit hlavičky nebo zápatí C#."
type: docs
weight: 150
url: /cs/net/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words umožňuje uživatelům pracovat s hlavičkami a zápatí v dokumentu. Hlavička je text, který je umístěn v horní části stránky, a zápatí je text v dolní části stránky. Typicky se tyto oblasti používají k vložení informací, které by měly být opakovány na všech nebo některých stránkách dokumentu, jako jsou čísla stránek, datum vytvoření, informace o společnosti atd.

## Vytvořit hlavičky nebo zápatí pomocí DocumentBuilder

Pokud chcete přidat hlavičku dokumentu nebo zápatí programově, nejjednodušší způsob je použít [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) třída to udělat.

Následující příklad kódu ukazuje, jak přidat hlavičku a zápatí pro stránky dokumentů:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "create-header-footer.cs" >}}

## Upřesnit možnosti záhlaví nebo zápatí

Když přidáte hlavičku nebo zápatí do dokumentu, můžete nastavit některé pokročilé vlastnosti. Aspose.Words poskytuje uživatelům [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) a [HeaderFooterCollection](https://reference.aspose.com/words/net/aspose.words/headerfootercollection/) třídy, jakož i [HeaderFooterType](https://reference.aspose.com/words/net/aspose.words/headerfootertype/) počet, který vám dává větší kontrolu nad hlavičkou a zápatí procesu přizpůsobení.

### Upřesnit typ záhlaví nebo zápatí

Můžete zadat tři různé typy hlaviček a tři různé typy zápatí pro jeden dokument:
1. Záhlaví a/nebo zápatí pro první stránku
2. Záhlaví a/nebo zápatí pro sudé stránky
3. Záhlaví a/nebo zápatí pro podivné stránky

Následující příklad kódu ukazuje, jak přidat hlavičku pro liché stránky dokumentů:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "header-footer-type.cs" >}}

### Upřesněte, zda zobrazit různé hlavičky nebo zápatí pro první stránku

Jak bylo uvedeno výše, můžete také nastavit jinou hlavičku nebo zápatí pro první stránku. K tomu je třeba nastavit [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/net/aspose.words/pagesetup/differentfirstpageheaderfooter/) vlajka `true` a pak specyfy **HeaderFirst** nebo **FooterFirst** hodnota.

Následující příklad kódu ukazuje, jak nastavit hlavičku pouze pro první stránku:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "different-first-page.cs" >}}

### Upřesněte, zda zobrazit různé hlavičky nebo zápatí pro liché nebo sudé stránky

 Dále budete chtít nastavit různé hlavičky nebo zápatí pro podivné a dokonce i stránky v dokumentu. K tomu je třeba nastavit [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/net/aspose.words/pagesetup/oddandevenpagesheaderfooter/) vlajka `true` a pak specyfy hodnoty **HeaderPrimary** a **HeaderEven**, nebo **FooterPrimary** a **FooterEven**.

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "odd-even-pages.cs" >}}

### Vložit absolutní polohu Obrázek do hlavičky

Pro umístění obrázku do hlavičky nebo zápatí použijte **HeaderPrimary** typ záhlaví nebo **FooterPrimary** typ zápatí a [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) metoda.

Následující příklad kódu ukazuje, jak přidat obrázek do hlavičky:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "insert-image.cs" >}}

### Nastavit vlastnosti písma a odstavce pro text záhlaví nebo zápatí

S Aspose.Words můžete nastavit vlastnosti písma a odstavce, použít **HeaderPrimary** typ záhlaví nebo **FooterPrimary** typ zápatí, stejně jako metody a vlastnosti pro práci s písmy a odstavce, které používáte pro těleso dokumentu.

Následující příklad kódu ukazuje, jak nastavit text v hlavičce na Arial, tučné, velikost 14, a střed nastavení:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "font-props.cs" >}}

### Vložit čísla stránky do záhlaví nebo zápatí

V případě potřeby můžete přidat čísla stránek do hlavičky nebo zápatí. K tomu použijte **HeaderPrimary** typ záhlaví nebo **FooterPrimary** typ zápatí a [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) způsob přidání požadovaného pole.

Následující příklad kódu ukazuje, jak přidat čísla stránek na zápatí vpravo:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "page-numbers.cs" >}}

### Použít hlavičky nebo zápatí definované v předchozí části

Pokud potřebujete zkopírovat hlavičku nebo zápatí z předchozí sekce, můžete to udělat také.

Následující příklad kódu ukazuje, jak zkopírovat hlavičku nebo zápatí z předchozí sekce:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "copy-headers-footers-from-previous-section.cs" >}}

### Zajistit vzhled hlavičky nebo zápatí při použití různých orientace stránky a velikosti stránky

Aspose.Words umožňuje poskytnout vzhled hlavičky nebo zápatí při použití různých směrů a velikostí stránek.

Následující příklad ukazuje, jak to udělat:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "link-to-previous-header-footer.cs" >}}

## Jak odstranit pouze hlavičky nebo pouze zápatí

Každá sekce v dokumentu může mít až tři hlavičky a až tři patky (pro první, dokonce, a liché stránky). Chcete-li odstranit všechny hlavičky nebo všechny zápatí v dokumentu, musíte smyčka přes všechny sekce a odstranit každý odpovídající hlavičkový uzel nebo zápatí uzel.

Následující příklad kódu ukazuje, jak odstranit všechny zápatí ze všech sekcí, ale ponechat hlavičky neporušené. Můžete odstranit pouze hlavičky podobným způsobem:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "remove-footers.cs" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Header%20and%20footer%20types.docx).

{{% /alert %}}
