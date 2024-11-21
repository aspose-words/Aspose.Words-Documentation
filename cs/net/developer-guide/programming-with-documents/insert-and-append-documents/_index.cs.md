---
title: Vložit a přidat dokumenty do C#
second_title: Aspose.Words místo .NET
articleTitle: Vložit a doplnit dokumenty
linktitle: Vložit a doplnit dokumenty
description: "Kombinovat dokumenty do jednoho: vložit nebo připojit dokument do nového nebo existujícího dokumentu pomocí najít a nahradit, sloučit pole, záložka, nebo prostě na konci dokumentu C#."
type: docs
weight: 80
url: /cs/net/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Někdy je třeba kombinovat několik dokumentů do jednoho. Můžete to udělat ručně nebo můžete použít Aspose.Words vložit nebo přidat funkci.

Operace vložení umožňuje vložení obsahu dříve vytvořených dokumentů do nového nebo stávajícího dokumentu.

Funkce Append vám pak umožní přidat dokument pouze na konci jiného dokumentu.

Tento článek vysvětluje, jak vložit nebo přidat dokument k jinému jiným způsobem a popisuje společné vlastnosti, které můžete použít při vkládání nebo přidávání dokumentů.

## Vložit dokument {#insert-a-document}

Jak bylo uvedeno výše, Aspose.Words dokument je reprezentován jako strom uzlů a operace vložení jednoho dokumentu do druhého je kopírování uzlů od prvního stromu dokumentu do druhého.

Dokumenty můžete vkládat do různých míst různými způsoby. Například můžete dokument vložit prostřednictvím náhradní operace, pole sloučení během operace sloučení nebo prostřednictvím záložky.

Můžete také použít [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/#insertdocument/) nebo [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/) metoda, která je podobná vložení dokumentu do Microsoft Word, vložit celý dokument do aktuální polohy kurzoru bez předchozího importu.

Následující příklad kódu ukazuje, jak vložit dokument pomocí **InsertDocument** metoda:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-with-builder.cs" >}}

Následující příklad kódu ukazuje, jak vložit dokument pomocí **InsertDocumentInline** metoda:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-inline-with-builder.cs" >}}

Následující pododdíly popisují možnosti, během kterých můžete vložit jeden dokument do druhého.

### Vložit dokument během hledání a nahrazení operace {#insert-a-document-during-find-and-replace-operation}

Můžete vložit dokumenty při provádění hledání a nahrazení operací. Například dokument může obsahovat odstavce s textem [PRODUKCE] a [CONCLUZE]. Ale v závěrečném dokumentu musíte tyto odstavce nahradit obsahem získaným z jiného vnějšího dokumentu. Abyste toho dosáhli, budete muset vytvořit spojku pro výměnu událostí.

Následující příklad kódu ukazuje, jak vytvořit manipulátor pro výměnu události použít později v procesu vložení:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace-handler.cs" >}}

Následující příklad kódu ukazuje, jak při hledání a nahrazení operace vložit obsah jednoho dokumentu do druhého:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace.cs" >}}

### Vložit dokument během Mail Merge Činnost {#insert-a-document-during-mail-merge-operation}

Můžete vložit dokument do pole sloučení během mail merge operace. Například: mail merge šablona může obsahovat pole sloučení jako např. [Summary]. Ale do konečného dokumentu musíte vložit obsah získaný z jiného externího dokumentu do tohoto pole sloučení. K dosažení tohoto cíle budete muset vytvořit spojku pro událost sloučení.

Následující příklad kódu ukazuje, jak vytvořit manipulátor pro fúzující událost k použití později v procesu vložení:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge-handler.cs" >}}

Následující příklad kódu ukazuje, jak vložit dokument do pole sloučení pomocí vytvořeného manipulátoru:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge.cs" >}}

### Vložit dokument do záložky {#insert-a-document-at-bookmark}

Můžete importovat textový soubor do dokumentu a vložit jej hned po záložce, kterou jste definovali v dokumentu. Chcete-li to udělat, vytvořte záložek odstavec, kde chcete dokument vložit.

Následující kódovací příklad ukazuje, jak vložit obsah jednoho dokumentu do záložky do jiného dokumentu:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-bookmark.cs" >}}

{{% alert color="primary" %}}

Všimněte si, že záložka by neměla obsahovat více odstavců nebo textu, který chcete, aby se objevily ve vašem konečném výsledném dokumentu.

{{% /alert %}}

## Přidání dokumentu {#append-a-document}

Můžete mít případ použití, kde potřebujete zahrnout další stránky z dokumentu do konce stávajícího dokumentu. K tomuhle stačí zavolat [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) způsob přidání dokumentu na konec jiného.

{{% alert color="primary" %}}

Všimněte si, že [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) je metoda úrovně uzel v dokumentu. Například, můžete vytvořit odstavec, nastavit formátování vlastnosti, a pak jej jako dítě k tělu pomocí **AppendChild** metoda.

{{% /alert %}}

Následující příklad kódu ukazuje, jak připojit dokument ke konci jiného dokumentu:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "keep-source-formatting.cs" >}}

## Importovat a vložit uzly ručně {#import-and-insert-nodes-manually}

Aspose.Words umožňuje automaticky vkládat a přidávat dokumenty bez předchozích dovozních požadavků. Pokud však potřebujete vložit nebo přidat konkrétní uzel vašeho dokumentu, jako je sekce nebo odstavec, pak nejprve musíte importovat tento uzel ručně.

Pokud potřebujete vložit nebo připojit jeden oddíl nebo odstavec k druhému, musíte v podstatě importovat uzly prvního uzel dokumentu do druhého stromu pomocí [ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/) metoda. Po importu uzlů, musíte použít [InsertAfter](https://reference.aspose.com/words/net/aspose.words/compositenode/insertafter/) / [InsertBefore](https://reference.aspose.com/words/net/aspose.words/compositenode/insertbefore/) metoda pro vložení nového uzlu po/před referenčním uzlem. To vám umožní přizpůsobit proces vkládání importem uzlů z dokumentu a vložením na dané pozice.

Můžete také použít [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) způsob, jak přidat nový zadaný uzel na konec seznamu dětských uzlů, například, pokud chcete přidat obsah na úrovni odstavce místo na úrovni sekce.

Následující příklad kódu ukazuje, jak ručně importovat uzly a vložit je po konkrétním uzlu pomocí **InsertAfter** metoda:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-as-nodes.cs" >}}

{{% alert color="primary" %}}

Import vytvoří nový uzel, který je kopií původního uzlu a vhodný pro vložení do cílového dokumentu.

{{% /alert %}}

Obsah je importován do sekce cílového dokumentu podle oddílu, což znamená, že nastavení, jako je nastavení stránek a hlavičky nebo zápatí, jsou zachována během importu. Je také užitečné poznamenat, že můžete definovat nastavení formátování, když vložíte nebo připojíte dokument, abyste určili, jak jsou dva dokumenty spojeny dohromady.

## Společné vlastnosti pro vložení a doplnění dokumentů {#common-properties-for-insert-and-append-documents}

Oba [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/) a [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) metody přijatelné [ImportFormatMode](https://reference.aspose.com/words/net/aspose.words/importformatmode/) a [ImportFormatOptions](https://reference.aspose.com/words/net/aspose.words/importformatoptions/) jako vstupní parametry. • **ImportFormatMode** umožňuje kontrolovat, jak je formátování dokumentů sloučeno při importu obsahu z jednoho dokumentu do jiného výběrem různých režimů formátu, jako je [UseDestinationStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/net/aspose.words/importformatmode/), a [KeepDifferentStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/). • **ImportFormatOptions** umožňuje vybrat různé možnosti importu, jako je [IgnoreHeaderFooter](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/net/aspose.words/importformatoptions/keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/net/aspose.words/importformatoptions/mergepastedlists/), a [SmartStyleBehavior](https://reference.aspose.com/words/net/aspose.words/importformatoptions/smartstylebehavior/).

Aspose.Words umožňuje nastavit vizualizaci výsledného dokumentu, když jsou dva dokumenty přidány dohromady v insertu nebo aplikaci pomocí [Section](https://reference.aspose.com/words/net/aspose.words/section/) a [PageSetup](https://reference.aspose.com/words/net/aspose.words/documentbuilder/pagesetup/) vlastnosti. • **PageSetup** vlastnost obsahuje všechny atributy sekce, jako je [SectionStart](https://reference.aspose.com/words/net/aspose.words/pagesetup/sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/net/aspose.words/pagesetup/restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/net/aspose.words/pagesetup/pagestartingnumber/), [Orientation](https://reference.aspose.com/words/net/aspose.words/pagesetup/orientation/), a další. Nejčastějším případem použití je nastavení **SectionStart** vlastnost definovat, zda se přidaný obsah objeví na stejné stránce nebo se rozdělí na nový.

{{% alert color="primary" %}}

Všimněte si, že **Section** a **PageSetup** vlastnosti nekontrolují, jak jsou dva dokumenty vloženy/přidány společně. Umožňují vám pouze změnit vzhled vašeho výsledného dokumentu.

{{% /alert %}}

Následující příklad kódu ukazuje, jak připojit jeden dokument k druhému a zároveň udržet obsah od rozdělení na dvě strany:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "different-page-setup.cs" >}}
