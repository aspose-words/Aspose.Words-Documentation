---
title: Vkládání a připojování dokumentů v C++
second_title: Aspose.Words pro C++
articleTitle: Vkládání a připojování dokumentů
linktitle: Vkládání a připojování dokumentů
description: "Zkombinujte dokumenty do jednoho: vložte nebo připojte dokument do nového nebo existujícího pomocí najít a nahradit, sloučit pole, záložku nebo jednoduše na konci dokumentu."
type: docs
weight: 80
url: /cs/cpp/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Někdy je nutné kombinovat několik dokumentů do jednoho. Můžete to udělat ručně nebo můžete použít funkci Aspose.Words vložit nebo připojit.

Operace vložení umožňuje vložit obsah dříve vytvořených dokumentů do nového nebo existujícího.

Funkce Připojit zase umožňuje přidat dokument pouze na konec jiného dokumentu.

Tento článek vysvětluje, jak vložit nebo připojit dokument k jinému dokumentu různými způsoby, a popisuje společné vlastnosti, které můžete použít při vkládání nebo připojování dokumentů.

## Vložení dokumentu

Jak bylo uvedeno výše, v Aspose.Words je dokument reprezentován jako strom uzlů a operací vkládání jednoho dokumentu do druhého je kopírování uzlů z prvního stromu dokumentů do druhého.

Dokumenty můžete vkládat na různá místa různými způsoby. Můžete například vložit dokument pomocí operace nahrazení, pole sloučení během operace sloučení nebo pomocí záložky.

Můžete také použít metodu [InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/), která je podobná vložení dokumentu do Microsoft Word, k vložení celého dokumentu na aktuální pozici kurzoru bez předchozího importu.

Následující příklad kódu ukazuje, jak vložit dokument pomocí metody `InsertDocument`:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-with-builder.h" >}}

Následující podsekce popisují možnosti, během kterých můžete vložit jeden dokument do druhého.

### Vložení dokumentu během operace najít a nahradit {#insert-a-document-during-find-and-replace-operation}

Dokumenty můžete vkládat při provádění operací najít a nahradit. Například dokument může obsahovat odstavce s textem [INTRODUCTION] a [CONCLUSION]. V konečném dokumentu však musíte tyto odstavce nahradit obsahem získaným z jiného externího dokumentu. Chcete-li toho dosáhnout, budete muset vytvořit obslužnou rutinu pro událost nahradit.

Následující příklad kódu ukazuje, jak vytvořit obslužnou rutinu pro událost nahrazující ji použít později v procesu vkládání:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace-handler.h" >}}

Následující příklad kódu ukazuje, jak vložit obsah jednoho dokumentu do druhého během operace najít a nahradit:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace.h" >}}

### Vložení dokumentu během operace Mail Merge {#insert-a-document-during-mail-merge-operation}

Dokument můžete vložit do pole sloučení během operace Mail Merge. Například šablona Mail Merge může obsahovat pole sloučení ,například [souhrn]. V konečném dokumentu však musíte do tohoto pole sloučení vložit obsah získaný z jiného externího dokumentu. Chcete-li toho dosáhnout, budete muset vytvořit obslužnou rutinu pro událost sloučení.

Následující příklad kódu ukazuje, jak vytvořit obslužnou rutinu pro událost sloučení, která ji později použije v procesu vkládání:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge-handler.h" >}}

Následující příklad kódu ukazuje, jak vložit dokument do pole sloučení pomocí vytvořené obslužné rutiny:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge.h" >}}

### Vložení dokumentu do záložky

Textový soubor můžete importovat do dokumentu a vložit jej hned za záložku, kterou jste v dokumentu definovali. Chcete-li to provést, vytvořte odstavec označený záložkou, kam chcete dokument vložit.

Následující příklad kódování ukazuje, jak vložit obsah jednoho dokumentu do záložky v jiném dokumentu:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-bookmark.h" >}}

{{% alert color="primary" %}}

Všimněte si, že záložka by neměla obsahovat více odstavců nebo textu, které chcete, aby se zobrazovaly v konečném výsledném dokumentu.

{{% /alert %}}

## Připojit dokument

Můžete mít případ použití, kdy potřebujete zahrnout další stránky z dokumentu na konec existujícího dokumentu. Chcete-li to provést, stačí zavolat metodu [AppendDocument](https://reference.aspose.com/words/cpp/aspose.words/document/appenddocument/) a přidat dokument na konec jiného.

{{% alert color="primary" %}}

Všimněte si, že [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) je metoda úrovně uzlu v dokumentu. Můžete například vytvořit odstavec, nastavit vlastnosti formátování a poté jej připojit jako podřízený k tělu pomocí metody **AppendChild**.

{{% /alert %}}

Následující příklad kódu ukazuje, jak připojit dokument na konec jiného dokumentu:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "keep-source-formatting.h" >}}

## Importovat a vkládat uzly ručně {#import-and-insert-nodes-manually}

Aspose.Words umožňuje automaticky vkládat a připojovat dokumenty bez předchozích požadavků na Import. Pokud však potřebujete vložit nebo připojit konkrétní uzel dokumentu, například oddíl nebo odstavec, musíte nejprve tento uzel importovat ručně.

Pokud potřebujete vložit nebo připojit jeden oddíl nebo odstavec k druhému, musíte v podstatě importovat uzly prvního stromu uzlů dokumentu do druhého pomocí metody [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/nodeimporter/importnode/). Po importu uzlů musíte použít metodu [InsertAfter](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertafter/) / [InsertBefore](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertbefore/) k vložení nového uzlu za / před referenční uzel. To vám umožní přizpůsobit proces vkládání importem uzlů z dokumentu a jeho vložením na dané pozice.

Metodu [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) můžete také použít k přidání nového zadaného uzlu na konec seznamu podřízených uzlů, například pokud chcete připojit obsah na úrovni odstavce místo na úrovni oddílu.

Následující příklad kódu ukazuje, jak ručně importovat uzly a vložit je za konkrétní uzel pomocí metody **InsertAfter**:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-as-nodes.h" >}}

{{% alert color="primary" %}}

Import vytvoří nový uzel, který je kopií původního uzlu a je vhodný pro vložení do cílového dokumentu.

{{% /alert %}}

Obsah se importuje do cílového dokumentu po jednotlivých částech, což znamená, že nastavení, jako je nastavení stránky a záhlaví nebo zápatí, jsou během importu zachována. Je také užitečné poznamenat, že při vkládání nebo připojování dokumentu můžete definovat nastavení formátování, abyste určili, jak jsou dva dokumenty spojeny dohromady.

## Společné vlastnosti pro vkládání a připojování dokumentů {#common-properties-for-insert-and-append-documents}

Oba [InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/) a [AppendDocument](https://apireference.codeporting.com/native/cs2cpp/namespace/system#a6b77ccd8c49df28c153be0462cdfdf49) metody přijímají [ImportFormatMode](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) a [ImportFormatOptions](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/) jako vstupní parametry. **ImportFormatMode** vám umožňuje řídit způsob sloučení formátování dokumentu při importu obsahu z jednoho dokumentu do druhého výběrem různých režimů formátu, například [UseDestinationStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) a [KeepDifferentStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/). **ImportFormatOptions** umožňuje vybrat různé možnosti importu, například [IgnoreHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_mergepastedlists/), a [SmartStyleBehavior](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_smartstylebehavior/).

Aspose.Words umožňuje upravit vizualizaci výsledného dokumentu, když jsou dva dokumenty sečteny dohromady v operaci vložení nebo připojení pomocí vlastností [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) a [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup). Vlastnost **PageSetup** obsahuje všechny atributy sekce, jako například [SectionStart](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_pagestartingnumber/), [Orientation](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_orientation/), a další. Nejběžnějším případem použití je nastavit vlastnost **SectionStart** tak, aby definovala, zda se přidaný obsah objeví na stejné stránce nebo rozdělí na novou.

{{% alert color="primary" %}}

Všimněte si, že vlastnosti **Section** a **PageSetup** nekontrolují, jak jsou dva dokumenty vloženy/připojeny dohromady. Umožňují pouze změnit vzhled výsledkového dokumentu.

{{% /alert %}}

Následující příklad kódu ukazuje, jak připojit jeden dokument k druhému a zároveň zabránit rozdělení obsahu na dvě stránky:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "different-page-setup.h" >}}
