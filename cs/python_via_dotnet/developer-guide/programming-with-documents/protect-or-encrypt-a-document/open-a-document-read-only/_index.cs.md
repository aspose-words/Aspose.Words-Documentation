---
title: Otevřít pouze dokument Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Otevřít pouze pro čtení dokumentu
linktitle: Otevřít pouze pro čtení dokumentu
description: "Udělejte si dokument pouze pro čtení tak, aby obsah mohl být kopírován nebo čten, ale nebyl upraven pomocí Python."
type: docs
weight: 10
url: /cs/python-net/open-a-document-read-only/
---

Někdy můžete mít dokument, který potřebuje recenzi, ale nechcete, aby recenzenti náhodně upravit svůj obsah. Aspose.Words umožňuje vám povolit pouze čtení vašeho dokumentu tak, aby obsah mohl být kopírován nebo čten, ale nebyl upraven. To zabrání odstranění nebo přidání obsahu do Vašeho dokumentu.

{{% alert color="primary" %}}

Použití volby pouze pro čtení na váš dokument nebrání tomu, aby někdo vytvořil novou kopii a uložil ji s jiným názvem.

{{% /alert %}}

Tento článek vysvětluje, jak vytvořit dokument pouze pro čtení.

## Udělat dokument pouze pro čtení

Aspose.Words má veřejnou třídu [WriteProtection](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/) který určuje nastavení ochrany zápisu pro dokument. Nevytváříte případy této třídy přímo.

Ochrana zápisu ukazuje, zda autor doporučil otevřít dokument pouze pro čtení a/nebo požadovat heslo pro úpravu dokumentu.

Aspose.Words umožňuje vytvořit dokument pouze pro čtení omezit editaci pomocí [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) majetek a [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/) metoda.

{{% alert color="primary" %}}

In Microsoft Word, lze vytvořit dokument Pouze pro čtení podobným způsobem pomocí obou:

* "Always Open Read-Only" (File → Info → Protect Document)
* "Password to modification" (Uložit jako → Nástroje → Obecné možnosti → Heslo)

{{% /alert %}}

{{% alert color="primary" %}}

Uživatelé mohou také omezit editaci dokumentů výběrem [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) jako [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only), ale to je další vlastnost, která poskytuje pokročilejší ochranné schopnosti. Existuje taková funkce v Microsoft Word, Provádí se v Aspose.Words.

[ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) budou podrobně popsány v jednom z následujících článků?

{{% /alert %}}

• [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) vlastnost je hesla zabezpečena, takže pokud nenastavíte heslo před použitím [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) vlastnost, pak ostatní uživatelé mohou jednoduše otevřít dokument, jako by byl nechráněn. Přístup k nastavení ochrany dokumentů a nastavení hesla ochrany zápisu pomocí [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/) metoda.

{{% alert color="primary" %}}

Všimněte si, že nastavené heslo je pouze vlastnost v dokumentu, kterou lze odstranit, pokud jsou přístupné vlastnosti dokumentu. Toto heslo tedy není zárukou bezpečnosti dokumentů.

{{% /alert %}}

Pokud potřebujete zkontrolovat, zda dokument má heslo ochrany zápisu, které jej omezuje od editace, můžete použít [is_write_protected](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/is_write_protected/) majetek.

Následující příklad kódu ukazuje, jak vytvořit dokument pouze pro čtení:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.write("Open document as read-only")

# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Make the document as read-only.
doc.write_protection.read_only_recommended = True

# Apply write protection as read-only.
doc.protect(aw.ProtectionType.READ_ONLY)
doc.save(docs_base.artifacts_dir + "DocumentProtection.ReadOnlyProtection.docx")
{{< /highlight >}}

## Odstranit omezení pouze pro čtení

Pokud nechcete, aby uživatel otevřel váš dokument pouze pro čtení, můžete jednoduše nastavit [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) majetek `False` nebo vybrat [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/document/protection_type/) jako [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection).

Následující příklad kódu ukazuje, jak odstranit přístup pouze ke čtení pro dokument:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
            
# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Remove the read-only option.
doc.write_protection.read_only_recommended = False

# Apply write protection without any protection.
doc.protect(aw.ProtectionType.NO_PROTECTION)
doc.save(docs_base.artifacts_dir + "DocumentProtection.RemoveReadOnlyRestriction.docx")
{{< /highlight >}}
