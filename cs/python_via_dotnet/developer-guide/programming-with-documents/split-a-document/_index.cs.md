---
title: Rozdělit dokument Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Rozdělit dokument
linktitle: Rozdělit dokument
description: "Rozdělit dokument do několika souborů pomocí Python. Pomocí split funkce efektivně rozdělit dokument o nadpisy nebo oddíly, stejně jako na stránkách nebo podle rozsahů stránek."
type: docs
weight: 90
url: /cs/python-net/split-a-document/
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

Kritéria můžete zadat pomocí [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) vyjmenování. Takže můžete dokument rozdělit do kapitol pomocí jednoho z následujících kritérií nebo kombinovat více než jedno kritérium dohromady:

- nadpis odstavce,
- přestávka sekce,
- zlom ve sloupci,
- Page break.

Při ukládání výstupu do HTML, Aspose.Words uložit každou jednotlivé kapitoly jako samostatný HTML soubor. V důsledku toho bude dokument rozdělen do několika HTML souborů. Při ukládání výstupu do EPUB, Aspose.Words uložit výsledek v jednom EPUB souboru bez ohledu na [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) hodnotu, kterou jsi použil. Takže... [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) pro dokumenty EPUB se týká pouze vzhledu jejich obsahu v aplikacích pro čtenáře: obsah bude rozdělen do kapitol a dokument se již nebude objevovat nepřetržitě.

{{% alert color="primary" %}}

Nelze rozdělit dokument pomocí [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) vlastnost při ukládání do formátu MHTML.

{{% /alert %}}

V této části bereme v úvahu pouze některá možná kritéria rozdělení.

### Rozdělit dokument podle hlav {#split-a-document-by-headings}

Pro rozdělení dokumentu do kapitol podle kapitol použijte [HEADING_PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/#HEADING_PARAGRAPH) hodnota [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) majetek.

Potřebujete-li rozdělit dokument o konkrétní úroveň čísel odstavců, například čísel 1, 2 a 3, použijte také [document_split_heading_level](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_heading_level/) majetek. Výstup se vydělí body, které jsou formátovány se stanovenou úrovní záhlaví.

Následující příklad kódu ukazuje, jak rozdělit dokument na menší části záhlavím:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentByHeadingsHtml.py" >}}

Upozorňujeme, že pro tato kritéria, Aspose.Words pouze podporuje ukládání do HTML formátu při dělení.

Při ukládání do EPUB není dokument rozdělen do několika souborů a bude zde pouze jeden výstupní soubor.

### Rozdělit dokument podle oddílů {#split-a-document-by-sections}

Aspose.Words Také vám umožní použít sekční přestávky k rozdělení dokumentů a jejich uložení na HTML. Pro tento účel použijte [SECTION_BREAK](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/#section_break) jako [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentBySectionsHtml.py" >}}

Existuje jiný způsob, jak rozdělit zdrojový dokument do více výstupních dokumentů a můžete si vybrat jakýkoliv výstupní formát podporovaný Aspose.Words.

Následující příklad kódu ukazuje, jak rozdělit dokument na menší části zlomy sekce (bez použití [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) vlastnost:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentBySections.py" >}}

## Rozdělování podle stránek {#splitting-by-pages}

Můžete si také rozdělit stránku dokumentu na stránku, rozsahy stránek, nebo začít s uvedenými čísly stránek. V takovém případě [extract_pages](https://reference.aspose.com/words/python-net/aspose.words/document/extract_pages/) metoda může dělat svou práci.

Tento oddíl popisuje několik případů použití dělicích dokumentů pomocí stránky [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) třída a [extract_pages](https://reference.aspose.com/words/python-net/aspose.words/document/extract_pages/) metoda.

{{% alert color="primary" %}}

Můžeš použít cokoliv. [Podporované formáty dokumentů](/words/cs/python-net/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Vzhledem k mnoha nuance objevují při snižování počtu stránek, plný zápas s Microsoft Word uspořádání je docela složitý úkol. V závislosti na složitosti dokumentu proto mohou existovat mírné rozdíly ve výsledném rozložení dokumentu z původního dokumentu.

{{% /alert %}}

### Rozdělit stránku dokumentu na stránku {#split-a-document-page-by-page}

Aspose.Words umožňuje rozdělit vícestránkovou stránku dokumentu na stránku.

Následující příklad kódu ukazuje, jak rozdělit dokument a uložit každou stránku jako samostatný dokument:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentPageByPage.py" >}}

### Rozdělit dokument podle rozsahu stránek {#split-a-document-by-page-ranges}

Aspose.Words umožňuje rozdělení vícestránkového dokumentu podle rozsahů stránek. Můžete rozdělit jeden soubor do více souborů s různými rozsahy stránek nebo jen vybrat jeden rozsah a uložit pouze tuto část zdrojového dokumentu. Všimněte si, že si můžete vybrat rozsah stránek podle maximálního a minimálního čísla stránky dokumentu.

Následující příklad kódu ukazuje, jak rozdělit dokument na menší části podle rozsahu stránek se specifickými počátečními a konečnými indexy:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentByPageRange.py" >}}

## Sloučit split dokument s jiným souborem {#merge-the-split-document-with-another-file}

Aspose.Words umožňuje sloučit výstupní split dokument s jiným dokumentem pro vytvoření nového dokumentu. Tomu se dá říkat sloučení dokumentů.

Následující příklad kódu ukazuje, jak sloučit rozdělený dokument s jiným dokumentem:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-MergeSplitDocuments.py" >}}
