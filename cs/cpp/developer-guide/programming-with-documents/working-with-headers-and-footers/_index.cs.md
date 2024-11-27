---
title: Práce s záhlaví a zápatí v C++
second_title: Aspose.Words pro C++
articleTitle: Práce s záhlaví a zápatí
linktitle: Práce s záhlaví a zápatí
description: "Jak manipulovat záhlaví a zápatí pomocí C++."
type: docs
weight: 150
url: /cs/cpp/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words umožňuje uživatelům pracovat s záhlaví a zápatí v dokumentu. Záhlaví je text, který je umístěn v horní části stránky, a zápatí je text v dolní části stránky. Tyto oblasti se obvykle používají k vkládání informací, které by se měly opakovat na všech nebo některých stránkách dokumentu, jako jsou čísla stránek, datum vytvoření, informace o společnosti atd.

## Vytvořte záhlaví nebo zápatí pomocí DocumentBuilder

Pokud chcete programově přidat záhlaví nebo zápatí dokumentu, nejjednodušší je použít k tomu třídu [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/).

Následující příklad kódu ukazuje, jak přidat záhlaví a zápatí pro stránky dokumentu:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "create-header-footer.h" >}}

## Určete možnosti záhlaví nebo zápatí

Když do dokumentu přidáte záhlaví nebo zápatí, můžete nastavit některé pokročilé vlastnosti. Aspose.Words poskytuje uživatelům třídy [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) a [HeaderFooterCollection](https://reference.aspose.com/words/cpp/aspose.words/headerfootercollection/) a také výčet [HeaderFooterType](https://reference.aspose.com/words/cpp/aspose.words/headerfootertype/), který vám dává větší kontrolu nad procesem přizpůsobení záhlaví a zápatí.

### Zadejte typ záhlaví nebo zápatí

Pro jeden dokument můžete zadat tři různé typy záhlaví a tři různé typy zápatí:

1. Záhlaví a / nebo zápatí pro první stránku
2. Záhlaví a / nebo zápatí pro sudé stránky
3. Záhlaví a / nebo zápatí pro liché stránky

Následující příklad kódu ukazuje, jak přidat záhlaví pro liché stránky dokumentu:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "header-footer-type.h" >}}

### Určete, zda chcete pro první stránku zobrazit různá záhlaví nebo zápatí

Jak bylo uvedeno výše, můžete také nastavit jinou záhlaví nebo zápatí pro první stránku. Chcete-li to provést, musíte nastavit příznak [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_differentfirstpageheaderfooter/) na `true` a poté specifikovat hodnotu **HeaderFirst** nebo **FooterFirst**.

Následující příklad kódu ukazuje, jak nastavit záhlaví pouze pro první stránku:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "different-first-page.h" >}}

### Určete, zda chcete zobrazit různá záhlaví nebo zápatí pro liché nebo sudé stránky

 Dále budete chtít nastavit různá záhlaví nebo zápatí pro liché a sudé stránky v dokumentu. Chcete-li to provést, musíte nastavit příznak [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_oddandevenpagesheaderfooter/) na `true` a poté specifikovat hodnoty **HeaderPrimary** a **HeaderEven** nebo **FooterPrimary** a **FooterEven**.

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "odd-even-pages.h" >}}

### Vložte do záhlaví absolutně umístěný obrázek

Chcete-li umístit obrázek do záhlaví nebo zápatí, Použijte typ záhlaví **HeaderPrimary** nebo typ zápatí **FooterPrimary** a metodu `InsertImage`.

Následující příklad kódu ukazuje, jak přidat obrázek do záhlaví:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "insert-image.h" >}}

### Nastavení vlastností písma a odstavce pro text záhlaví nebo zápatí

Pomocí Aspose.Words můžete nastavit vlastnosti písma a odstavce, použít typ záhlaví **HeaderPrimary** nebo typ zápatí **FooterPrimary**, stejně jako metody a vlastnosti pro práci s písmy a odstavci, které používáte pro tělo dokumentu.

Následující příklad kódu ukazuje, jak nastavit text v záhlaví na Arial, bold, velikost 14 a zarovnání na střed:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "font-props.h" >}}

### Vložte čísla stránek do záhlaví nebo zápatí

V případě potřeby můžete do záhlaví nebo zápatí přidat čísla stránek. Chcete-li to provést, použijte typ záhlaví **HeaderPrimary** nebo typ zápatí **FooterPrimary** a metodu [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) k přidání požadovaného pole.

Následující příklad kódu ukazuje, jak přidat čísla stránek do zápatí vpravo:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "page-numbers.h" >}}

### Použijte záhlaví nebo zápatí definované v předchozí části

Pokud potřebujete zkopírovat záhlaví nebo zápatí z předchozí části, můžete to udělat také.

Následující příklad kódu ukazuje, jak zkopírovat záhlaví nebo zápatí z předchozí části:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "copy-headers-footers-from-previous-section.h" >}}

### Zajistěte vzhled záhlaví nebo zápatí při použití různých orientací stránky a velikosti stránky

Aspose.Words umožňuje poskytnout vzhled záhlaví nebo zápatí při použití různých orientací a velikostí stránek.

Následující příklad ukazuje, jak to udělat:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

## Jak odstranit pouze záhlaví nebo pouze zápatí

Každá sekce v dokumentu může mít až tři záhlaví a až tři zápatí (pro první, sudé a liché stránky). Pokud chcete odebrat všechna záhlaví nebo všechna zápatí v dokumentu, musíte procházet všemi sekcemi a odstranit každý odpovídající uzel záhlaví nebo uzel zápatí.

Následující příklad kódu ukazuje, jak odstranit všechny zápatí ze všech oddílů, ale ponechat záhlaví neporušená. Podobným způsobem můžete odebrat pouze záhlaví:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "remove-footers.h" >}}

{{% alert color="primary" %}}

Ukázkový soubor tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
