---
title: Vložit a přidat dokumenty do Java
second_title: Aspose.Words místo Java
articleTitle: Vložit a doplnit dokumenty
linktitle: Vložit a doplnit dokumenty
description: "Kombinovat dokumenty do jednoho: vložit nebo připojit dokument do nového nebo existujícího dokumentu pomocí najít a nahradit, sloučit pole, záložka, nebo prostě na konci dokumentu Java."
type: docs
weight: 80
url: /cs/java/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Někdy je nutné kombinovat několik dokumentů do jednoho. Můžete to udělat ručně nebo můžete použít Aspose.Words vložit nebo připojit funkci.

Operace vložení umožňuje vložit obsah dříve vytvořených dokumentů do nového nebo stávajícího dokumentu.

Funkce Append vám pak umožní přidat dokument pouze na konci jiného dokumentu.

Tento článek vysvětluje, jak vložit nebo přidat dokument do jiného dokumentu různými způsoby a popisuje společné vlastnosti, které můžete použít při vkládání nebo zadávání dokumentů.

## Vložit dokument

Jak bylo uvedeno výše, Aspose.Words dokument je reprezentován jako strom uzlů a operace vložení jednoho dokumentu do druhého je kopírování uzlů od prvního stromu dokumentu do druhého.

Dokumenty můžete vkládat do různých míst různými způsoby. Můžete například vložit dokument prostřednictvím náhradní operace, pole sloučení během operace sloučení nebo prostřednictvím záložky.

Můžete také použít [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) nebo [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) metoda, která je podobná vložení dokumentu do Microsoft Word, vložit celý dokument do aktuální polohy kurzoru bez předchozího dovozu.

Následující příklad kódu ukazuje, jak vložit dokument pomocí **InsertDocument** metoda:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

Následující příklad kódu ukazuje, jak vložit dokument pomocí **InsertDocumentInline** metoda:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

Následující pododdíly popisují možnosti, během kterých můžete vložit jeden dokument do druhého.

### Vložit dokument během hledání a nahrazení operace {#insert-a-document-during-find-and-replace-operation}

Můžete vložit dokumenty při provádění hledání a nahrazení operací. Například dokument může obsahovat odstavce s textem [PRODUKCE] a [CONCLUZE]. Ale v závěrečném dokumentu musíte tyto odstavce nahradit obsahem získaným z jiného vnějšího dokumentu. Abyste toho dosáhli, budete muset vytvořit spojku pro výměnu událostí.

Následující příklad kódu ukazuje, jak vytvořit manipulátor pro výměnu události použít později v procesu vložení:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

Následující příklad kódu ukazuje, jak při hledání a nahrazení operace vložit obsah jednoho dokumentu do druhého:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### Vložit dokument během Mail Merge Činnost {#insert-a-document-during-mail-merge-operation}

Můžete vložit dokument do pole sloučení během Mail Merge operace. Například: Mail Merge šablona může obsahovat pole sloučení jako např. [Summary]. Ale v konečném dokumentu musíte vložit obsah získaný z jiného externího dokumentu do tohoto pole sloučení. K dosažení tohoto cíle budete muset vytvořit spojku pro událost sloučení.

Následující příklad kódu ukazuje, jak vytvořit manipulátor pro fúzující událost k jeho použití později v procesu vložení:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

Následující příklad kódu ukazuje, jak vložit dokument do pole sloučení pomocí vytvořeného správce:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### Vložit dokument do záložky

Můžete importovat textový soubor do dokumentu a vložit jej hned po záložce, kterou jste definovali v dokumentu. Chcete-li to udělat, vytvořte záložek odstavec, kde chcete dokument vložit.

Následující kódovací příklad ukazuje, jak vložit obsah jednoho dokumentu do záložky do jiného dokumentu:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

Všimněte si, že záložka by neměla obsahovat více odstavců nebo textu, které chcete, aby se objevily ve vašem konečném výsledném dokumentu.

{{% /alert %}}

## Přidání dokumentu

Můžete mít případ použití, kde potřebujete zahrnout další stránky z dokumentu do konce stávajícího dokumentu. K tomuhle stačí zavolat [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) způsob přidání dokumentu na konec jiného.

{{% alert color="primary" %}}

Všimněte si, že [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) je metoda úrovně uzel v dokumentu. Například můžete vytvořit odstavec, nastavit vlastnosti formátování a pak jej přidat jako dítě k tělu pomocí **AppendChild** metoda.

{{% /alert %}}

Následující příklad kódu ukazuje, jak připojit dokument na konec jiného dokumentu:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## Importovat a vložit uzly ručně {#import-and-insert-nodes-manually}

Aspose.Words umožňuje automaticky vkládat a přidávat dokumenty bez předchozích dovozních požadavků. Pokud však potřebujete vložit nebo přidat konkrétní uzel vašeho dokumentu, jako je sekce nebo odstavec, pak nejprve musíte importovat tento uzel ručně.

Pokud potřebujete vložit nebo připojit jeden oddíl nebo odstavec k druhému, musíte v podstatě importovat uzly prvního uzel dokumentu do druhého stromu pomocí [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean) metoda. Po importu uzlů musíte použít [InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node) metoda vložení nového uzlu po / před referenčním uzlem. To vám umožní přizpůsobit proces vkládání importem uzlů z dokumentu a vložením na dané pozice.

Můžete také použít [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) způsob, jak přidat nový zadaný uzel na konec seznamu dětských uzlů, například, pokud chcete přidat obsah na úrovni odstavce místo na úrovni sekce.

Následující příklad kódu ukazuje, jak ručně importovat uzly a vložit je po konkrétním uzlu pomocí **InsertAfter** metoda:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

Import vytvoří nový uzel, který je kopií původního uzlu a vhodný pro vložení do cílového dokumentu.

{{% /alert %}}

Obsah se do sekce cílového dokumentu importuje podle oddílu, což znamená, že nastavení, jako je nastavení stránek a hlavičky nebo zápatí, jsou zachována během importu. Je také užitečné poznamenat, že můžete definovat nastavení formátování, když vložíte nebo připojíte dokument pro upřesnění, jak jsou dva dokumenty spojeny dohromady.

## Společné vlastnosti pro vložení a doplnění dokumentů {#common-properties-for-insert-and-append-documents}

Oba [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) a [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) metody akceptují [ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/) a [ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/) jako vstupní parametry. The **ImportFormatMode** umožňuje ovládat, jak je formátování dokumentů sloučeno, když importujete obsah z jednoho dokumentu do druhého výběrem různých formátů, jako jsou [UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES), [KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING), a [KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES). The **ImportFormatOptions** umožňuje vybrat různé možnosti importu, jako je [IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists), a [SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior).

Aspose.Words umožňuje upravit vizualizaci výsledného dokumentu, pokud jsou dva dokumenty přidány společně v insertu nebo do přílohy operací pomocí [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) a [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) vlastnosti. The **PageSetup** vlastnost obsahuje všechny atributy oddílu jako např. [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation), a další. Nejčastějším případem použití je nastavení **SectionStart** vlastnost definovat, zda se přidaný obsah objeví na stejné stránce nebo se rozdělí na nový.

{{% alert color="primary" %}}

Všimněte si, že **Section** a **PageSetup** vlastnosti nekontrolují, jak jsou dva dokumenty vloženy/přidány společně. Umožňují vám pouze změnit vzhled vašeho výsledného dokumentu.

{{% /alert %}}

Následující příklad kódu ukazuje, jak připojit jeden dokument k druhému a zároveň udržet obsah od rozdělení na dvě stránky:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
