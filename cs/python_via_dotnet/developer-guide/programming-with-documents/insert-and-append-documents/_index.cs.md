---
title: Vložit a doplnit dokumenty
second_title: Aspose.Words místo Python via .NET
articleTitle: Vložit a doplnit dokumenty
linktitle: Vložit a doplnit dokumenty
description: "Kombinovat dokumenty do jednoho: vložit nebo připojit dokument do nového nebo existujícího dokumentu pomocí najít a nahradit, sloučit pole, záložka, nebo prostě na konci dokumentu Python."
type: docs
weight: 80
url: /cs/python-net/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Někdy je třeba kombinovat několik dokumentů do jednoho. Můžete to udělat ručně nebo můžete použít Aspose.Words vložit nebo přidat funkci.

Operace vložení umožňuje vložení obsahu dříve vytvořených dokumentů do nového nebo stávajícího dokumentu.

Funkce Append vám pak umožní přidat dokument pouze na konci jiného dokumentu.

Tento článek vysvětluje, jak vložit nebo přidat dokument k jinému jiným způsobem a popisuje společné vlastnosti, které můžete použít při vkládání nebo přidávání dokumentů.

## Vložit dokument

Jak bylo uvedeno výše, Aspose.Words dokument je reprezentován jako strom uzlů a operace vložení jednoho dokumentu do druhého je kopírování uzlů od prvního stromu dokumentu do druhého.

Dokumenty můžete vkládat do různých míst různými způsoby. Například můžete dokument vložit prostřednictvím náhradní operace, pole sloučení během operace sloučení nebo prostřednictvím záložky.

Můžete také použít [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) nebo [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions) metoda, která je podobná vložení dokumentu do Microsoft Word, vložit celý dokument do aktuální polohy kurzoru bez předchozího importu.

Následující příklad kódu ukazuje, jak vložit dokument pomocí **vložit_dokument** metoda:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-with-builder.py" >}}

Následující příklad kódu ukazuje, jak vložit dokument pomocí **insert_document_inline** metoda:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-inline-with-builder.py" >}}

Následující pododdíly popisují možnosti, během kterých můžete vložit jeden dokument do druhého.

### Vložit dokument do záložky

Můžete importovat textový soubor do dokumentu a vložit jej hned po záložce, kterou jste definovali v dokumentu. Chcete-li to udělat, vytvořte záložek odstavec, kde chcete dokument vložit.

Následující kódovací příklad ukazuje, jak vložit obsah jednoho dokumentu do záložky do jiného dokumentu:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-at-bookmark.py" >}}

{{% alert color="primary" %}}

Všimněte si, že záložka by neměla obsahovat více odstavců nebo textu, který chcete, aby se objevily ve vašem konečném výsledném dokumentu.

{{% /alert %}}

## Přidání dokumentu

Můžete mít případ použití, kde potřebujete zahrnout další stránky z dokumentu do konce stávajícího dokumentu. K tomuhle stačí zavolat [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) způsob přidání dokumentu na konec jiného.

{{% alert color="primary" %}}

Všimněte si, že [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) je metoda úrovně uzel v dokumentu. Například, můžete vytvořit odstavec, nastavit formátování vlastnosti, a pak jej jako dítě k tělu pomocí [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) metoda.

{{% /alert %}}

Následující příklad kódu ukazuje, jak připojit dokument ke konci jiného dokumentu:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "keep-source-formatting.py" >}}

## Importovat a vložit uzly ručně

Aspose.Words umožňuje automaticky vkládat a přidávat dokumenty bez předchozích dovozních požadavků. Pokud však potřebujete vložit nebo přidat konkrétní uzel vašeho dokumentu, jako je sekce nebo odstavec, pak nejprve musíte importovat tento uzel ručně.

Pokud potřebujete vložit nebo připojit jeden oddíl nebo odstavec k druhému, musíte v podstatě importovat uzly prvního uzel dokumentu do druhého stromu pomocí [import_node](https://reference.aspose.com/words/python-net/aspose.words/documentbase/import_node/) metoda. Po importu uzlů, musíte použít [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/) / [insert_before](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_before/) metoda pro vložení nového uzlu po/před referenčním uzlem. To vám umožní přizpůsobit proces vkládání importem uzlů z dokumentu a vložením na dané pozice.

Můžete také použít [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) způsob, jak přidat nový zadaný uzel na konec seznamu dětských uzlů, například, pokud chcete přidat obsah na úrovni odstavce místo na úrovni sekce.

Následující příklad kódu ukazuje, jak ručně importovat uzly a vložit je po konkrétním uzlu pomocí [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/) metoda:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-as-nodes.py" >}}

{{% alert color="primary" %}}

Import vytvoří nový uzel, který je kopií původního uzlu a vhodný pro vložení do cílového dokumentu.

{{% /alert %}}

Obsah je importován do sekce cílového dokumentu podle oddílu, což znamená, že nastavení, jako je nastavení stránek a hlavičky nebo zápatí, jsou zachována během importu. Je také užitečné poznamenat, že můžete definovat nastavení formátování, když vložíte nebo připojíte dokument, abyste určili, jak jsou dva dokumenty spojeny dohromady.

## Společné vlastnosti pro vložení a doplnění dokumentů

Oba [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) a [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) metody přijatelné [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) a [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) jako vstupní parametry. • [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) umožňuje kontrolovat, jak je formátování dokumentů sloučeno při importu obsahu z jednoho dokumentu do jiného výběrem různých režimů formátu, jako je [USE_DESTINATION_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#use_destination_styles), [KEEP_SOURCE_FORMATTING](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_source_formatting), a [KEEP_DIFFERENT_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_different_styles). • [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) umožňuje vybrat různé možnosti importu, jako je [ignore_header_footer](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_header_footer/), [ignore_text_boxes](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_text_boxes/), [keep_source_numbering](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/keep_source_numbering/), [merge_pasted_lists](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/merge_pasted_lists/), a [smart_style_behavior](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/smart_style_behavior/).

Aspose.Words umožňuje nastavit vizualizaci výsledného dokumentu, když jsou dva dokumenty přidány dohromady v insertu nebo aplikaci pomocí [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) a [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/). • [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) vlastnost obsahuje všechny atributy sekce, jako je <span notrans="<span notrans=" [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/)"=""></span>,? [restart_page_numbering](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/restart_page_numbering/), [page_starting_number](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/page_starting_number/), [orientation](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/orientation/), a další. Nejčastějším případem použití je nastavení [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/) vlastnost definovat, zda se přidaný obsah objeví na stejné stránce nebo se rozdělí na nový.

{{% alert color="primary" %}}

Všimněte si, že [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) a [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) nekontrolují, jak jsou vloženy/prodány dva dokumenty společně. Umožňují vám pouze změnit vzhled vašeho výsledného dokumentu.

{{% /alert %}}

Následující příklad kódu ukazuje, jak připojit jeden dokument k druhému a zároveň udržet obsah od rozdělení na dvě strany:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "different-page-setup.py" >}}
