---
title: Rozdělit dokument C#
second_title: Aspose.Words místo .NET
articleTitle: Rozdělit dokument
linktitle: Rozdělit dokument
description: "Rozdělit dokument do několika souborů pomocí C#. Pomocí split funkce efektivně rozdělit dokument o nadpisy nebo oddíly, stejně jako na stránkách nebo podle rozsahů stránek."
type: docs
weight: 90
url: /cs/net/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* nebo *split dokument* je proces rozbití velkého dokumentu do většího počtu menších souborů. Existují různé důvody, proč rozdělit složku. Například, potřebujete jen některé stránky z konkrétního dokumentu a ne celý. Nebo z důvodu soukromí, chcete sdílet pouze některé části dokumentu s ostatními. S funkcí rozdělení můžete získat pouze požadované části dokumentu a provádět s nimi potřebné kroky, například k opsání, uložení nebo odeslání.

Aspose.Words poskytuje vám efektivní způsob, jak rozdělit jeden dokument do více dokumentů podle hlav nebo oddílů. Dokument můžete také rozdělit na stránky nebo na rozsahy stránek. Obě možnosti rozdělení budou popsány v tomto článku.

Rozdělit dokument na menší soubory pomocí Aspose.Words, musíte postupovat těmito kroky:

1. Načíst dokument v jakémkoliv podporovaném formátu.
1. Rozdělte ten dokument.
1. Uložte výstupní dokumenty.

Po rozdělení dokumentu budete moci otevřít všechny výstupní dokumenty, které začnou požadovanými stránkami, textem atd.

{{% alert color="primary" %}}

**Zkuste online**

Tuto funkci můžete zkusit s naší [Free online dokument splitter](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Rozdělit dokument na základě různých kritérií {#split-a-document-using-different-criteria}

Aspose.Words umožňuje rozdělit EPUB nebo HTML dokumenty do kapitol podle různých kritérií. V procesu je zachován styl a uspořádání zdrojového dokumentu pro výstupní dokumenty.

Kritéria můžete zadat pomocí [DocumentSplitCriteria](https://reference.aspose.com/words/net/aspose.words.saving/documentsplitcriteria/) vyjmenování. Takže můžete dokument rozdělit do kapitol pomocí jednoho z následujících kritérií nebo kombinovat více než jedno kritérium dohromady:

- nadpis odstavce,
- přestávka sekce,
- zlom ve sloupci,
- Page break.

Při ukládání výstupu do HTML, Aspose.Words uložit každou jednotlivé kapitoly jako samostatný HTML soubor. V důsledku toho bude dokument rozdělen do několika HTML souborů. Při ukládání výstupu do EPUB, Aspose.Words uložit výsledek v jednom EPUB souboru bez ohledu na `DocumentSplitCriteria` Použil jsi hodnotu. Takže, pomocí dokumentu DocumentSplitCriteria pro dokumenty EPUB ovlivňuje pouze vzhled jejich obsahu v aplikacích čtenáře: obsah bude rozdělen do kapitol a dokument se již nebude objevovat nepřetržitě.

{{% alert color="primary" %}}

Nelze rozdělit dokument pomocí [DocumentSplitCriteria](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/documentsplitcriteria/) vlastnost při ukládání do formátu MHTML.

{{% /alert %}}

V této části bereme v úvahu pouze některá možná kritéria rozdělení.

### Rozdělit dokument podle hlav {#split-a-document-by-headings}

Pro rozdělení dokumentu do kapitol podle kapitol použijte **HeadingParagraph** hodnota **DocumentSplitCriteria** majetek.

Potřebujete-li rozdělit dokument o konkrétní úroveň čísel odstavců, například čísel 1, 2 a 3, použijte také [DocumentSplitHeadingLevel](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/documentsplitheadinglevel/) majetek. Výstup se vydělí body, které jsou formátovány se stanovenou úrovní záhlaví.

Následující příklad kódu ukazuje, jak rozdělit dokument na menší části záhlavím:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtml-SplitDocumentByHeadingsHtml.cs" >}}

Upozorňujeme, že pro tato kritéria, Aspose.Words pouze podporuje ukládání do HTML formátu při dělení.

Při ukládání do EPUB není dokument rozdělen do několika souborů a bude zde pouze jeden výstupní soubor.

### Rozdělit dokument podle oddílů {#split-a-document-by-sections}

Aspose.Words Také vám umožní použít sekční přestávky k rozdělení dokumentů a jejich uložení na HTML. Pro tento účel použijte **SectionBreak** jako **DocumentSplitCriteria**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtml-SplitDocumentBySectionsHtml.cs" >}}

Existuje jiný způsob, jak rozdělit zdrojový dokument do více výstupních dokumentů a můžete si vybrat jakýkoliv výstupní formát podporovaný Aspose.Words.

Následující příklad kódu ukazuje, jak rozdělit dokument na menší části zlomy sekce (bez použití `DocumentSplitCriteria` vlastnost:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SplitDocument-SplitDocumentBySections.cs" >}}

## Rozdělit po stranách {#splitting-by-pages}

Můžete si také rozdělit stránku dokumentu na stránku, rozsahy stránek, nebo začít s uvedenými čísly stránek. V takovém případě [ExtractPages](https://reference.aspose.com/words/net/aspose.words/document/extractpages/) metoda může dělat svou práci.

Tento oddíl popisuje několik případů použití dělicích dokumentů pomocí stránky [Document](https://reference.aspose.com/words/net/aspose.words/document/) třída a **ExtractPages** metoda.

{{% alert color="primary" %}}

Můžeš použít cokoliv. [Podporované formáty dokumentů](/words/cs/net/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Vzhledem k mnoha nuance objevují při snižování počtu stránek, plný zápas s Microsoft Word uspořádání je docela složitý úkol. V závislosti na složitosti dokumentu proto mohou existovat mírné rozdíly ve výsledném rozložení dokumentu z původního dokumentu.

{{% /alert %}}

### Rozdělit stránku dokumentu na stránku {#split-a-document-page-by-page}

Aspose.Words umožňuje rozdělit vícestránkovou stránku dokumentu na stránku.

Následující příklad kódu ukazuje, jak rozdělit dokument a uložit každou stránku jako samostatný dokument:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-Split document-SplitDocumentPageByPage.cs" >}}

### Rozdělit dokument podle rozsahu stránek {#split-a-document-by-page-ranges}

Aspose.Words umožňuje rozdělení vícestránkového dokumentu podle rozsahů stránek. Můžete rozdělit jeden soubor do více souborů s různými rozsahy stránek nebo jen vybrat jeden rozsah a uložit pouze tuto část zdrojového dokumentu. Všimněte si, že si můžete vybrat rozsah stránek podle maximálního a minimálního čísla stránky dokumentu.

Následující příklad kódu ukazuje, jak rozdělit dokument na menší části podle rozsahu stránek se specifickými počátečními a konečnými indexy:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-Split document-SplitDocumentByPageRange.cs" >}}

## Možnost zpětného volání pro uložení dokumentu {#callback-option-for-saving-a-document}

Můžete použít [DocumentPartSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/documentpartsavingcallback/) Vlastnost pro kontrolu jak Aspose.Words Uloží části dokumentu, když je tento dokument exportován do HTML formátu. Tato vlastnost umožňuje přejmenovat výstupní soubory nebo dokonce přesměrovat do vlastních proudů.

Vezměte prosím na vědomí, že tato zpětná vazba není užitečná při ukládání do EPUBu, protože všechny výstupní části musí být uloženy do jednoho kontejneru. Takže přesměrování proudu není podporováno a efekt přejmenování není viditelný, protože soubory jsou přejmenovány uvnitř kontejneru.

## Sloučit rozdělený dokument s jiným dokumentem {#merge-the-split-document-with-another-file}

Aspose.Words umožňuje sloučit výstupní split dokument s jiným dokumentem pro vytvoření nového dokumentu. Tomu se dá říkat sloučení dokumentů.

Následující příklad kódu ukazuje, jak sloučit rozdělený dokument s jiným dokumentem:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SplitDocument-MergeSplitDocuments.cs" >}}
