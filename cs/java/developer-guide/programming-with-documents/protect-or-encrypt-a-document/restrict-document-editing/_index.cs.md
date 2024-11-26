---
title: Omezit dokument Úprava Java
second_title: Aspose.Words místo Java
articleTitle: Omezit editaci dokumentů
linktitle: Omezit editaci dokumentů
description: "Omezit editaci dokumentu nastavením typu omezení. Můžete také odstranit ochranu a vytvořit neomezené editovatelné regiony pomocí Java."
type: docs
weight: 30
url: /cs/java/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

Někdy budete muset omezit schopnost editovat dokument a povolit pouze určité akce s ním. To může být užitečné, aby se zabránilo ostatním lidem v editaci citlivých a důvěrných informací ve vašem dokumentu.

Aspose.Words umožňuje omezit editaci dokumentu nastavením typu omezení. Kromě toho Aspose.Words umožňuje také zadat nastavení ochrany zápisu pro dokument.

Tento článek vysvětluje, jak se používá Aspose.Words zvolit typ omezení, jak přidat nebo odstranit ochranu a jak vytvořit neomezené editovatelné regiony.

## Vybrat typ omezení úpravy

Aspose.Words umožňuje ovládat způsob, jakým omezujete obsah pomocí [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) parametr výpočtu. To vám umožní zvolit přesný typ ochrany, například:

* PovolenkyKomentáře
* PovolenopouzeFormFields
* PovolenopouzeRevize
* ReadOnly
* NoProtection

Všechny typy jsou zabezpečeny heslem a pokud toto heslo není zadáno správně, uživatel nebude schopen obsah vašeho dokumentu právně změnit. Pokud vám tedy bude váš dokument vrácen bez požadavku na poskytnutí potřebného hesla, je to znamení, že je něco špatně.

Pokud jste při výběru typu zabezpečení nenastavili heslo, ostatní uživatelé mohou jednoduše ignorovat ochranu vašeho dokumentu.

{{% alert color="primary" %}}

Všimněte si, že nastavené heslo je pouze vlastnost v dokumentu, kterou lze odstranit, pokud jsou přístupné vlastnosti dokumentu. Toto heslo tedy není zárukou bezpečnosti dokumentů. The [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) metoda to ukazuje.

{{% /alert %}}

## Přidat ochranu dokumentu

Přidání ochrany do dokumentu je jednoduchý proces, protože vše, co musíte udělat, je použít jednu z ochranných metod uvedených v této části.

Aspose.Words umožňuje chránit své dokumenty před změnami pomocí [Protect](https://reference.aspose.com/words/java/com.aspose.words/document/#protect-int) metoda. Tato metoda není bezpečnostní funkcí a nezašifruje dokument.

{{% alert color="primary" %}}

In Microsoft Word, editaci můžete omezit podobným způsobem pomocí:

* Omezit editaci (File → Info → Chránit dokument)
* Alternativní funkce

{{% /alert %}}

Následující příklad kódu ukazuje, jak přidat ochranu hesla do dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-PasswordProtection.java" >}}

Následující příklad kódu ukazuje, jak omezit editaci v dokumentu, takže je možné pouze editovat ve formulářích:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-AllowOnlyFormFieldsProtect.java" >}}

## Odstranit ochranu dokumentu

Aspose.Words umožňuje odstranit ochranu z dokumentu s jednoduchou a přímou modifikací dokumentu. Můžete buď odstranit ochranu dokumentu, aniž byste znali skutečné heslo, nebo poskytnout správné heslo pro odemknutí dokumentu pomocí [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) metoda. Oba způsoby odstraňování nejsou žádný rozdíl.

Následující příklad kódu ukazuje, jak odstranit ochranu z vašeho dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveDocumentProtection.java" >}}

## Upřesnit neomezené upravitelné oblasti

Můžete omezit editaci dokumentu a zároveň povolit změny vybraných částí. Takže každý, kdo otevře váš dokument, bude mít přístup k těmto neomezeným částem a provede změny v obsahu.

Aspose.Words umožňuje označit části, které mohou být změněny ve vašem dokumentu pomocí [StartEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startEditableRange) a [EndEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endEditableRange) metody.

Následující příklad kódu ukazuje, jak označit celý dokument pouze pro čtení a určit v něm editovatelné regiony:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedEditableRegions.java" >}}

Můžete také zvolit různá omezení editace dokumentů pro různé sekce.

Následující příklad kódu ukazuje, jak přidat omezení pro celý dokument, a pak odstranit omezení pro jeden z oddílů:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedSection.java" >}}
