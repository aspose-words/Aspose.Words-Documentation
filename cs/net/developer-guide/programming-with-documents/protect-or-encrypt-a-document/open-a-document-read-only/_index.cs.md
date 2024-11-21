---
title: Otevřít pouze dokument C#
second_title: Aspose.Words místo .NET
articleTitle: Otevřít pouze pro čtení dokumentu
linktitle: Otevřít pouze pro čtení dokumentu
description: "Udělejte si dokument pouze pro čtení tak, aby obsah mohl být kopírován nebo čten, ale nebyl upraven pomocí C#."
type: docs
weight: 10
url: /cs/net/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

Někdy můžete mít dokument, který potřebuje recenzi, ale nechcete, aby recenzenti náhodně upravit svůj obsah. Aspose.Words umožňuje vám povolit pouze čtení vašeho dokumentu tak, aby obsah mohl být kopírován nebo čten, ale nebyl upraven. To zabrání odstranění nebo přidání obsahu do Vašeho dokumentu.

{{% alert color="primary" %}}

Použití volby pouze pro čtení na váš dokument nebrání tomu, aby někdo vytvořil novou kopii a uložil ji s jiným názvem.

{{% /alert %}}

Tento článek vysvětluje, jak vytvořit dokument pouze pro čtení.

## Udělat dokument pouze pro čtení

Aspose.Words má veřejnou třídu [WriteProtection](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/) který určuje nastavení ochrany zápisu pro dokument. Nevytváříte případy této třídy přímo.

Ochrana zápisu ukazuje, zda autor doporučil otevřít dokument pouze pro čtení a/nebo požadovat heslo pro úpravu dokumentu.

Aspose.Words umožňuje vytvořit dokument pouze pro čtení omezit editaci pomocí [ReadOnlyRecommended](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/readonlyrecommended/) majetek a [SetPassword](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/setpassword/) metoda.

{{% alert color="primary" %}}

In Microsoft Word, lze vytvořit dokument Pouze pro čtení podobným způsobem pomocí obou:

* Vždycky otevřeno pouze pro čtení (File → Info → Chraňte dokument)
* "Password to modification" (Uložit jako → Nástroje → Obecné možnosti → Heslo)

{{% /alert %}}

{{% alert color="primary" %}}

Uživatelé mohou také omezit editaci dokumentů výběrem [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/) jako **ReadOnly**, ale to je další vlastnost, která poskytuje pokročilejší ochranné schopnosti. Existuje taková funkce v Microsoft Word, Provádí se v Aspose.Words.

**ProtectionType** budou podrobně popsány v jednom z následujících článků?

{{% /alert %}}

• **ReadOnlyRecommended** vlastnost je hesla zabezpečena, takže pokud nenastavíte heslo před použitím **ReadOnlyRecommended** vlastnost, pak ostatní uživatelé mohou jednoduše otevřít dokument, jako by byl nechráněn. Přístup k nastavení ochrany dokumentů a nastavení hesla ochrany zápisu pomocí **SetPassword** metoda.

{{% alert color="primary" %}}

Všimněte si, že nastavené heslo je pouze vlastnost v dokumentu, kterou lze odstranit, pokud jsou přístupné vlastnosti dokumentu. Toto heslo tedy není zárukou bezpečnosti dokumentů.

{{% /alert %}}

Pokud potřebujete zkontrolovat, zda dokument má heslo ochrany zápisu, které jej omezuje od editace, můžete použít [IsWriteProtected](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/iswriteprotected/) majetek.

Následující příklad kódu ukazuje, jak vytvořit dokument pouze pro čtení:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.cs" >}}

## Odstranit omezení pouze pro čtení

Pokud nechcete, aby uživatel otevřel váš dokument pouze pro čtení, můžete jednoduše nastavit **ReadOnlyRecommened** majetek *false* nebo vybrat **ProtectionType** jako **NoProtection**.

Následující příklad kódu ukazuje, jak odstranit přístup pouze ke čtení pro dokument:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.cs" >}}
