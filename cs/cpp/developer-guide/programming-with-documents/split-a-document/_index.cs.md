---
title: Rozdělení dokumentu v C++
second_title: Aspose.Words pro C++
articleTitle: Rozdělit dokument
linktitle: Rozdělit dokument
description: "Rozdělte dokument do několika souborů pomocí C++. Pomocí funkce Rozdělit můžete efektivně rozdělit dokument podle nadpisů nebo oddílů, stejně jako podle stránek nebo rozsahů stránek."
type: docs
weight: 90
url: /cs/cpp/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* nebo *split a document* je proces rozdělení velkého dokumentu na větší počet menších souborů. Existuje několik důvodů pro rozdělení souboru. Například potřebujete pouze některé stránky z konkrétního dokumentu a ne celý. Nebo z důvodu ochrany osobních údajů chcete s ostatními sdílet pouze některé části dokumentu. Pomocí funkce rozdělení můžete získat pouze požadované části dokumentu a provést s nimi potřebné akce, například označit, uložit nebo odeslat.

Aspose.Words vám poskytuje efektivní způsob, jak rozdělit jeden dokument do více dokumentů podle nadpisů nebo sekcí. Dokument můžete také rozdělit podle stránek nebo podle rozsahů stránek. Obě možnosti rozdělení budou popsány v tomto článku.

Chcete-li rozdělit dokument na menší soubory pomocí Aspose.Words, musíte postupovat takto:

1. Načtěte dokument v libovolném podporovaném formátu.
1. Rozdělte dokument.
1. Uložte výstupní dokumenty.

Po rozdělení dokumentu budete moci otevřít VŠECHnY výstupní dokumenty, které začnou požadovanými stránkami, textem atd.

{{% alert color="primary" %}}

**Vyzkoušejte online**

Tuto funkci můžete vyzkoušet pomocí našeho [Zdarma online rozdělovač dokumentů](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Rozdělení dokumentu pomocí různých kritérií {#split-a-document-using-different-criteria}

Aspose.Words umožňuje rozdělit EPUB nebo HTML dokumenty do kapitol podle různých kritérií. V tomto procesu je zachován styl a rozložení zdrojového dokumentu pro výstupní dokumenty.

Kritéria můžete zadat pomocí výčtu [DocumentSplitCriteria](https://reference.aspose.com/words/cpp/aspose.words.saving/documentsplitcriteria/). Můžete tedy rozdělit dokument do kapitol pomocí jednoho z následujících kritérií nebo kombinovat více než jedno kritérium dohromady:

- Nadpis odstavec,
- oddíl,
- přerušení sloupce,
- stránka.

Při ukládání výstupu do HTML Aspose.Words Uložte každou jednotlivou kapitolu jako samostatný soubor HTML. V důsledku toho bude dokument rozdělen do více souborů HTML. Při ukládání výstupu do EPUB Aspose.Words Uložte výsledek do jednoho souboru EPUB bez ohledu na hodnotu `DocumentSplitCriteria`, kterou jste použili. Použití DocumentSplitCriteria pro EPUB tedy ovlivňuje pouze vzhled jejich obsahu v aplikacích pro čtenáře: obsah bude rozdělen do kapitol a dokument již nebude vypadat spojitý.

{{% alert color="primary" %}}

Při ukládání do formátu MHTML nelze dokument rozdělit pomocí vlastnosti [DocumentSplitCriteria](https://reference.aspose.com/words/cpp/aspose.words.saving/documentsplitcriteria/).

{{% /alert %}}

V této části zvažujeme pouze některá z možných kritérií rozdělení.

### Rozdělit dokument podle oddílů {#split-a-document-by-sections}

Aspose.Words také umožňuje použít konce oddílů k rozdělení dokumentů a jejich uložení do HTML. Pro tento účel použijte **SectionBreak** jako **DocumentSplitCriteria**:

Následující příklad kódu ukazuje, jak rozdělit dokument na menší části podle konců oddílů (bez použití vlastnosti `DocumentSplitCriteria`):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SplitDocument-SplitDocumentBySections.cpp" >}}

## Rozdělit podle stránek {#splitting-by-pages}

Stránku dokumentu můžete také rozdělit podle stránek, podle rozsahů stránek nebo počínaje zadanými čísly stránek. V takovém případě může tuto práci provést metoda [ExtractPages](https://reference.aspose.com/words/cpp/aspose.words/document/extractpages/).

Tato část popisuje několik případů použití dělení dokumentů stránkováním pomocí třídy [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) a metody **ExtractPages**.

{{% alert color="primary" %}}

Můžete použít jakýkoli [výstupní formát podporovaný Aspose.Words](/words/cpp/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Vzhledem k mnoha nuancím, které se objevují při snižování počtu stránek, je úplná shoda s rozložením Microsoft Word poměrně komplikovaným úkolem. Proto v závislosti na složitosti dokumentu mohou existovat malé rozdíly ve výsledném rozložení dokumentu od původního dokumentu.

{{% /alert %}}

### Rozdělit stránku dokumentu po stránce {#split-a-document-page-by-page}

Aspose.Words umožňuje rozdělit vícestránkový dokument stránku po stránce.

Následující příklad kódu ukazuje, jak rozdělit dokument a uložit každou stránku jako samostatný dokument:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Split Documents-Split document-SplitDocumentPageByPage.h" >}}

### Rozdělit dokument podle rozsahů stránek {#split-a-document-by-page-ranges}

Aspose.Words umožňuje rozdělení vícestránkového dokumentu podle rozsahů stránek. Můžete rozdělit jeden soubor do více souborů s různými rozsahy stránek nebo jen vybrat jeden rozsah a uložit pouze tuto část zdrojového dokumentu. Všimněte si, že rozsah stránek můžete zvolit podle maximálního a minimálního čísla stránky dokumentu.

Následující příklad kódu ukazuje, jak rozdělit dokument na menší části podle rozsahu stránek se specifickými počátečními a koncovými indexy:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Split Documents-Split document-SplitDocumentByPageRange.h" >}}

## Sloučení rozděleného dokumentu s jiným dokumentem {#merge-the-split-document-with-another-file}

Aspose.Words umožňuje sloučit výstupní rozdělený dokument s jiným dokumentem a vytvořit nový dokument. To lze nazvat slučováním dokumentů.

Následující příklad kódu ukazuje, jak sloučit rozdělený dokument s jiným dokumentem:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SplitDocument-MergeSplitDocuments.cpp" >}}
