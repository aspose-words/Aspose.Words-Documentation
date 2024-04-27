---
title: Otevřít pouze pro čtení dokumentu v Java
second_title: Aspose.Words místo Java
articleTitle: Otevřít pouze pro čtení dokumentu
linktitle: Otevřít pouze pro čtení dokumentu
description: "Udělejte si dokument pouze pro čtení tak, aby obsah mohl být kopírován nebo čten, ale nebyl upraven pomocí Java."
type: docs
weight: 10
url: /cs/java/open-a-document-read-only/
---

Někdy můžete mít dokument, který potřebuje recenzi, ale nechcete, aby recenzenti náhodně upravit svůj obsah. Aspose.Words umožňuje vám povolit pouze čtení dokumentu tak, aby obsah mohl být kopírován nebo čten, ale nebyl upraven. To zabrání odstranění nebo přidání obsahu do Vašeho dokumentu.

{{% alert color="primary" %}}

Použití volby pouze pro čtení na váš dokument nebrání tomu, aby si někdo vytvořil novou kopii a uložil ji s jiným jménem.

{{% /alert %}}

Tento článek vysvětluje, jak vytvořit dokument pouze pro čtení.

## Pouze pro čtení dokumentu

Aspose.Words má veřejnou třídu [WriteProtection](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/) který určuje nastavení ochrany zápisu pro dokument. Nevytváříte případy této třídy přímo.

Ochrana zápisu ukazuje, zda autor doporučil otevřít dokument pouze pro čtení a/nebo požadovat heslo pro úpravu dokumentu.

Aspose.Words umožňuje vytvořit dokument pouze pro čtení omezit editaci pomocí [ReadOnlyRecommended](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#getReadOnlyRecommended) majetek a [SetPassword](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#setPassword-java.lang.String) metoda.

{{% alert color="primary" %}}

In Microsoft Word, lze vytvořit dokument pouze pro čtení podobným způsobem pomocí obou:

* Vždycky otevřeno pouze pro čtení (File → Info → Chraňte dokument)
* "Password to modification" (Uložit jako → Nástroje → Obecné možnosti → Heslo)

{{% /alert %}}

{{% alert color="primary" %}}

Uživatelé mohou také omezit editaci dokumentů výběrem [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) jako **ReadOnly**, ale to je další vlastnost, která poskytuje pokročilejší ochranné schopnosti. Existuje taková funkce v Microsoft Word, V tomto případě se provádí Aspose.Words.

**ProtectionType** budou podrobně popsány v jednom z následujících článků

{{% /alert %}}

The **ReadOnlyRecommended** vlastnost je zabezpečena heslem, takže pokud nenastavíte heslo před použitím **ReadOnlyRecommended** vlastnost, pak ostatní uživatelé mohou jednoduše otevřít dokument, jako by byl nechráněn. Přístup k nastavení ochrany dokumentů a nastavení hesla ochrany zápisu prostřednictvím **SetPassword** metoda.

{{% alert color="primary" %}}

Všimněte si, že nastavené heslo je pouze vlastnost v dokumentu, kterou lze odstranit, pokud jsou přístupné vlastnosti dokumentu. Toto heslo tedy není zárukou bezpečnosti dokumentů.

{{% /alert %}}

Pokud potřebujete zkontrolovat, zda dokument má heslo ochrany zápisu, které omezuje jeho editaci, můžete použít [IsWriteProtected](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#isWriteProtected) majetek.

Následující příklad kódu ukazuje, jak vytvořit dokument pouze pro čtení:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-ReadOnlyProtection.java" >}}

## Odstranit omezení pouze pro čtení

Pokud nechcete, aby uživatel otevřel váš dokument pouze pro čtení, můžete jednoduše nastavit **ReadOnlyRecommened** majetek *false* nebo vybrat **ProtectionType** jako **NoProtection**.

Následující příklad kódu ukazuje, jak odstranit přístup pouze ke čtení pro dokument:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveReadOnlyRestriction.java" >}}
