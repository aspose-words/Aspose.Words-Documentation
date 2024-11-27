---
title: Čištění před nebo během Mail Merge
second_title: Aspose.Words pro .NET
articleTitle: Vyčistěte před nebo během operace Mail Merge
linktitle: Vyčistěte před nebo během operace Mail Merge
type: docs
description: "Použijte různé možnosti čištění a odebrání, jako je odstranění polí sloučení před provedením operace Mail Merge nebo odstranění nepoužívaných oblastí během operace Mail Merge pomocí C#."
keywords: "cleanup options Mail Merge c#"
weight: 10
url: /cs/net/clean-up-before-or-during-mail-merge/
timestamp: 2024-07-11-08-07-06
---

Aspose.Words umožňuje použít různé možnosti čištění a odebrání, jako je odstranění polí sloučení před provedením operace Mail Merge nebo odstranění nepoužívaných oblastí během operace Mail Merge. Tato část vysvětlí, jak odstranit sloučená pole a jak nastavit možnost odebrání.

## Smazat Sloučená Pole

Pokud používáte nějakou dlouhou šablonu vytvořenou někým jiným, možná budete chtít před provedením operace Mail Merge Odstranit všechna slučovací pole, která již v této šabloně existují. Metodu [DeleteFields](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/deletefields/) můžete použít, pokud chcete odstranit všechna slučovací pole z dokumentu bez provedení operace Mail Merge. Tato metoda není ovlivněna žádnými možnostmi odebrání vlastnosti [CleanupOptions](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/cleanupoptions/) a jejím provedením se odstraní pouze sloučená pole, nikoli žádná obsahující pole nebo prázdné odstavce.

Následující příklad kódu ukazuje, jak odstranit všechna slučovací pole ze šablony bez provedení operace Mail Merge:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "delete-fields.cs" >}}

## Nastavení možnosti `Removing`

Aspose.Words umožňuje odstranit nespojená pole, oblasti a odstavce ze šablony během operace Mail Merge pomocí možností odebrání.

Pomocí vlastnosti **CleanupOptions** spolu s výčtem [MailMergeCleanupOptions](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergecleanupoptions/) nastavte možnost odebrání. Určete, které položky chcete odstranit výběrem následujících možností (můžete kombinovat více než jednu):

* Odstranit prázdné odstavce
* Odstraňte nepoužívané oblasti
* Odstraňte nepoužívaná pole
* Odebrat obsahující pole
* Odebrat statická pole
* Odstranit prázdné řádky tabulky

Pole sloučení můžete považovat za nespojené v jedné z následujících podmínek:

1. Pokud pole sloučení ve zdroji dat nemá sloupec nebo pole mapování.
2. Pokud pole sloučení ve zdroji dat obsahuje pole mapování, ale data jsou null.

{{% alert color="primary" %}}

Pokud slučujete data pomocí samostatných zdrojů dat,budou tyto možnosti odebrání povoleny pouze při posledním volání metody Mail Merge execute.

{{% /alert %}}

### Odstranit Prázdné Odstavce

Odstavec, který obsahuje pouze slučovací pole, bude prázdný, když proces Mail Merge odstraní všechna slučovací pole jako nespojená. Tyto prázdné odstavce mohou přidat nechtěné místo a změnit, jak bude generovaná zpráva vypadat. Během operace Mail Merge můžete čelit dvěma situacím s odstavci:

1. Pole Mail Merge bude sloučeno s prázdnými daty.
2. Pole sloučit se nepoužívá a bude odstraněno.

V obou situacích **RemoveEmptyParagraphs** volba automaticky odstraní prázdné odstavce z dokumentu. Také odstraní pole sloučení `TableStart` a TableEnd, pokud je zbytek odstavce prázdný.

Následující příklad kódu ukazuje, jak odstranit prázdné odstavce:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-empty-paragraphs.cs" >}}

{{% alert color="primary" %}}

Ukázkový soubor tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20fields.docx).

{{% /alert %}}

### Odstraňte Nepoužívané Oblasti

V předchozích verzích Aspose.Words byly prázdné oblasti Mail Merge z dokumentu automaticky odstraněny během operace Mail Merge. S nejnovější verzí Aspose.slova, prázdné oblasti Mail Merge zůstávají po operaci Mail Merge ve výchozím nastavení. Můžete však použít možnost **RemoveUnusedRegions** k odstranění nepoužívaných oblastí Mail Merge během operace Mail Merge. Můžete například Sloučit dokument s prázdným zdrojem dat, který neobsahuje žádné datové tabulky, které vedou k nepoužívaným oblastem v dokumentu.

Následující příklad kódu ukazuje, jak odstranit nepoužívané oblasti sloučení:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-unmerged-regions.cs" >}}

{{% alert color="primary" %}}

Ukázkový soubor tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destination%20-%20Northwind%20suppliers.docx).

{{% /alert %}}

**Poznámka**

### Odstraňte Nepoužívaná Pole

Aspose.Words umožňuje odstranit všechna nepoužitá pole Mail Merge přiřazením příznaku **RemoveUnusedFields** **CleanupOptions**. Tato možnost odstraní slučovací pole, která nemají odpovídající data ve zdroji dat.

Následující příklad kódu ukazuje, jak automaticky odstranit všechna nepoužitá slučovací pole z dokumentu během operace Mail Merge:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-unused-fields.cs" >}}

### Odstranění Polí Obsahujících

Slučovací pole může být obsaženo v jiném poli, jako je pole **IF** nebo pole Vzorce. Toto vnější pole odeberte, když je sloučené pole sloučeno nebo odebráno z dokumentu.

Následující příklad kódu ukazuje, jak odebrat pole obsahující slučovací pole z dokumentu:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-containing-fields.cs" >}}

**Poznámka**

### Odstranit Prázdné Řádky Tabulky

Aspose.Words umožňuje odstranit prázdné řádky tabulky přiřazením příznaku **RemoveEmptyTableRows** **CleanupOptions**. Tato možnost odstraní řádky tabulky, které obsahují prázdná pole sloučení.

Následující příklad kódu ukazuje, jak z dokumentu odebrat prázdné řádky tabulky obsahující oblasti Mail Merge:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-empty-table-rows.cs" >}}
