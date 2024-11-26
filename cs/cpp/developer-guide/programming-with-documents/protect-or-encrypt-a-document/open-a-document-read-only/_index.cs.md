---
title: Otevření dokumentu pouze pro čtení v C++
second_title: Aspose.Words pro C++
articleTitle: Otevření dokumentu jen pro čtení
linktitle: Otevření dokumentu jen pro čtení
description: "Zajistěte, aby byl dokument pouze pro čtení, aby bylo možné obsah kopírovat nebo číst, ale nikoli upravovat."
type: docs
weight: 10
url: /cs/cpp/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

Někdy můžete mít dokument, který potřebuje recenzi, ale nechcete, aby recenzenti náhodně upravovali váš obsah. Aspose.Words umožňuje nastavit oprávnění vašeho dokumentu pouze pro čtení, aby bylo možné obsah kopírovat nebo číst, ale ne upravovat. Tím zabráníte odebrání nebo přidání obsahu do dokumentu.

{{% alert color="primary" %}}

Použití možnosti jen pro čtení na váš dokument nebrání tomu, aby někdo vytvořil novou kopii a uložil ji pod jiným názvem.

{{% /alert %}}

Tento článek vysvětluje, jak vytvořit dokument pouze pro čtení.

## Vytvořte dokument pouze pro čtení

Aspose.Words má veřejnou třídu [WriteProtection](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/), která určuje nastavení ochrany proti zápisu pro dokument. Instance této třídy nevytváříte přímo.

Ochrana proti zápisu ukazuje, zda autor doporučil otevřít dokument pouze pro čtení a / nebo vyžadovat heslo k úpravě dokumentu.

Aspose.Words umožňuje vytvořit dokument jen pro čtení a omezit úpravy pomocí vlastnosti [ReadOnlyRecommended](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_readonlyrecommended/) a metody [SetPassword](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/setpassword/).

{{% alert color="primary" %}}

V Microsoft Word můžete vytvořit dokument jen pro čtení podobným způsobem pomocí obou:

* "Vždy Otevřít Pouze Pro Čtení" (Soubor → Informace → Chránit Dokument)
* "Heslo k úpravě" (uložit jako → nástroje → Obecné možnosti → heslo)

{{% /alert %}}

{{% alert color="primary" %}}

Uživatelé mohou také omezit úpravy dokumentů výběrem [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/) jako **ReadOnly**, ale toto je další funkce, která poskytuje pokročilejší možnosti ochrany. Taková funkce existuje v Microsoft Word, respektive je implementována v Aspose.Words.

**ProtectionType**

{{% /alert %}}

Vlastnost **ReadOnlyRecommended** je zabezpečena heslem, takže pokud před použitím vlastnosti **ReadOnlyRecommended** nenastavíte heslo, mohou ostatní uživatelé dokument jednoduše otevřít, jako by nebyl nechráněný. Přístup k nastavení ochrany dokumentů a nastavení hesla pro ochranu proti zápisu pomocí metody **SetPassword**.

{{% alert color="primary" %}}

Všimněte si, že nastavované heslo je pouze vlastnost v dokumentu, kterou lze odebrat, pokud jsou přístupné Vlastnosti dokumentu. Takové heslo tedy není zárukou zabezpečení dokumentu.

{{% /alert %}}

Pokud potřebujete zkontrolovat, zda má dokument heslo pro ochranu proti zápisu, které jej omezuje v úpravách, můžete použít vlastnost [IsWriteProtected](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_iswriteprotected/).

Následující příklad kódu ukazuje, jak vytvořit dokument pouze pro čtení:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.h" >}}

## Odebrat Omezení Pouze Pro Čtení

Pokud nechcete, aby uživatel otevíral váš dokument pouze pro čtení, můžete jednoduše nastavit vlastnost **ReadOnlyRecommened** na *false* nebo vybrat **ProtectionType** jako **NoProtection**.

Následující příklad kódu ukazuje, jak odebrat přístup pouze pro čtení dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.h" >}}
