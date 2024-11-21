---
title: Rozdělit dokument Java
second_title: Aspose.Words místo Java
articleTitle: Rozdělit dokument
linktitle: Rozdělit dokument
description: "Aspose.Words místo Java poskytuje vám efektivní způsob, jak rozdělit jeden dokument do více dokumentů podle hlav nebo oddílů, stejně jako stránky nebo rozsahy stránek."
type: docs
weight: 90
url: /cs/java/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* nebo *split dokument* je proces rozbití velkého dokumentu do většího počtu menších souborů. Existují různé důvody, proč rozdělit složku. Například potřebujete jen některé stránky z konkrétního dokumentu, a ne celý. Nebo z důvodu soukromí, chcete sdílet pouze některé části dokumentu s ostatními. S funkcí rozdělení můžete získat pouze požadované části dokumentu a provádět s nimi potřebné kroky, například k opsání, uložení nebo odeslání.

Aspose.Words poskytuje vám efektivní způsob, jak rozdělit jeden dokument do více dokumentů podle hlav nebo oddílů. Dokument můžete také rozdělit na stránky nebo na rozsahy stránek. Obě možnosti rozdělení budou popsány v tomto článku.

Rozdělit dokument na menší soubory pomocí Aspose.Words, musíte postupovat podle těchto kroků:

1. Načíst dokument v jakémkoliv podporovaném formátu.
1. Rozdělte ten dokument.
1. Uložit výstupní dokumenty.

Poté, co rozdělíte dokument, budete moci otevřít všechny výstupní dokumenty, které začnou požadovanými stránkami, textem, atd.

{{% alert color="primary" %}}

**Zkuste online**

Tuto funkci můžete zkusit s naší [Free online dokument splitter](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Rozdělit dokument na základě různých kritérií {#split-a-document-using-different-criteria}

Aspose.Words umožňuje rozdělit EPUB nebo HTML dokumenty do kapitol podle různých kritérií. V procesu je zachován styl a uspořádání zdrojového dokumentu pro výstupní dokumenty.

Můžete určit kritéria pomocí [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) výčtu. Takže můžete dokument rozdělit do kapitol pomocí jednoho z následujících kritérií nebo kombinovat více než jedno kritérium dohromady:

- nadpis odstavce,
- přestávka sekce,
- zlomek sloupce,
- Page break.

Při ukládání výstupu do HTML, Aspose.Words uložit každou jednotlivou kapitolu jako samostatný HTML soubor. V důsledku toho bude dokument rozdělen do více HTML souborů. Při ukládání výstupu do EPUB, Aspose.Words uložit výsledek v jednom EPUB souboru bez ohledu na `DocumentSplitCriteria` Použil jsi hodnotu. Takže, pomocí dokumentu DocumentSplitCriteria pro dokumenty EPUB ovlivňuje pouze vzhled jejich obsahu v aplikacích pro čtenáře: obsah bude rozdělen do kapitol a dokument se již nebude objevovat nepřetržitě.

{{% alert color="primary" %}}

Nelze rozdělit dokument pomocí [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) vlastnost při ukládání do formátu MHTML.

{{% /alert %}}

V této části bereme v úvahu pouze některá možná kritéria rozdělení.

### Rozdělit dokument podle čísel {#split-a-document-by-headings}

Pro rozdělení dokumentu do kapitol podle kapitol použijte **HeadingParagraph** hodnota **DocumentSplitCriteria** majetek.

Je-li třeba rozdělit dokument o konkrétní úroveň položek, jako jsou čísla 1, 2 a 3, použijte také [DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel) majetek. Výstup se vydělí body, které jsou formátovány se stanovenou úrovní záhlaví.

Následující příklad kódu ukazuje, jak rozdělit dokument na menší části záhlavím:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

Upozorňujeme, že pro tato kritéria, Aspose.Words pouze podporuje ukládání do HTML formátu při dělení.

Při ukládání do EPUB není dokument rozdělen do několika souborů a bude zde pouze jeden výstupní soubor.

### Rozdělit dokument podle oddílů {#split-a-document-by-sections}

Aspose.Words Také vám umožní použít sekční přestávky k rozdělení dokumentů a jejich uložení na HTML. Pro tento účel použijte **SectionBreak** jako **DocumentSplitCriteria**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

Existuje jiný způsob, jak rozdělit zdrojový dokument do více výstupních dokumentů, a můžete si vybrat jakýkoli výstupní formát podporovaný Aspose.Words.

Následující příklad kódu ukazuje, jak rozdělit dokument na menší části zlomy sekce (bez použití `DocumentSplitCriteria` vlastnost:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## Rozdělit podle stránek {#splitting-by-pages}

Můžete si také rozdělit stránku dokumentu na stránku, na rozsahy stránek, nebo začít s uvedenými čísly stránek. V takovém případě [ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int) metoda může dělat svou práci.

Tento oddíl popisuje několik případů použití rozdělení dokumentů prostřednictvím stránek [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) třída a **ExtractPages** metoda.

{{% alert color="primary" %}}

Můžeš použít cokoliv. [Podporované formuláře dokumentů](/words/cs/java/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Vzhledem k mnoha nuance objevují při snižování počtu stránek, plný zápas s Microsoft Word uspořádání je docela složitý úkol. V závislosti na složitosti dokumentu proto mohou existovat mírné rozdíly v výsledném rozložení dokumentu z původního dokumentu.

{{% /alert %}}

### Rozdělit stránku dokumentu na stránku {#split-a-document-page-by-page}

Aspose.Words umožňuje rozdělit vícestránkovou stránku dokumentu na stránku.

Následující příklad kódu ukazuje, jak rozdělit dokument a uložit každou stránku jako samostatný dokument:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### Rozdělit dokument podle rozsahu stránek {#split-a-document-by-page-ranges}

Aspose.Words umožňuje rozdělení vícestránkového dokumentu podle rozsahů stránek. Můžete rozdělit jeden soubor do více souborů s různými rozsahy stránek nebo jen vybrat jeden rozsah a uložit pouze tuto část zdrojového dokumentu. Všimněte si, že si můžete vybrat rozsah stránek podle maximálního a minimálního počtu stránek dokumentu.

Následující příklad kódu ukazuje, jak rozdělit dokument na menší části podle rozsahu stránek se specifickými počátečními a konečnými indexy:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## Možnost zpětného volání pro uložení dokumentu {#callback-option-for-saving-a-document}

Můžete použít [DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback) vlastnictví k ovládání Aspose.Words Uloží části dokumentu, když je tento dokument exportován do HTML formátu. Tato vlastnost umožňuje přejmenovat výstupní soubory nebo dokonce přesměrovat do vlastních proudů.

Vezměte prosím na vědomí, že při ukládání do EPUB není tato zpětná vazba užitečná, protože všechny výstupní části musí být uloženy do jednoho kontejneru. Takže přesměrování proudu není podporováno a efekt přejmenování není viditelný, protože soubory jsou přejmenovány uvnitř kontejneru.

## Sloučit rozdělený dokument s jiným dokumentem {#merge-the-split-document-with-another-file}

Aspose.Words umožňuje sloučit výstupní split dokument s jiným dokumentem pro vytvoření nového dokumentu. Tomu se dá říkat sloučení dokumentů.

Následující příklad kódu ukazuje, jak sloučit rozdělený dokument s jiným dokumentem:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
