---
title: Omezit dokument Úprava C#
second_title: Aspose.Words místo .NET
articleTitle: Omezit editaci dokumentů
linktitle: Omezit editaci dokumentů
description: "Omezit úpravu dokumentu nastavením typu omezení pomocí C#. Můžete také odstranit ochranu a vytvořit neomezené editovatelné regiony."
type: docs
weight: 30
url: /cs/net/restrict-document-editing/
---

Někdy budete muset omezit schopnost editovat dokument a povolit pouze určité akce s ním. To může být užitečné, aby se zabránilo ostatním lidem v editaci citlivých a důvěrných informací ve vašem dokumentu.

Aspose.Words umožňuje omezit editaci dokumentu nastavením typu omezení. Kromě toho Aspose.Words umožňuje také zadat nastavení ochrany zápisu pro dokument.

Tento článek vysvětluje, jak se používá Aspose.Words zvolit typ omezení, jak přidat nebo odstranit ochranu a jak vytvořit neomezené editovatelné regiony.

## Vybrat typ omezení úpravy

Aspose.Words umožňuje ovládat způsob, jakým omezujete obsah pomocí [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/) parametr výpočtu. To vám umožní zvolit přesný typ ochrany, například:

* PovolenopouzeKomentáře
* PovolenopouzeFormFields
* PovolenopouzeRevize
* ReadOnly
* NoProtection

Všechny typy jsou zabezpečeny heslem a pokud toto heslo není zadáno správně, uživatel nebude schopen obsah vašeho dokumentu právně změnit. Pokud vám tedy bude váš dokument vrácen bez požadavku na poskytnutí potřebného hesla, je to znamení, že je něco špatně.

Pokud jste při výběru bezpečnostního typu nenastavili heslo, ostatní uživatelé mohou jednoduše ignorovat ochranu vašeho dokumentu.

{{% alert color="primary" %}}

Všimněte si, že nastavené heslo je pouze vlastnost v dokumentu, kterou lze odstranit, pokud jsou přístupné vlastnosti dokumentu. Toto heslo tedy není zárukou bezpečnosti dokumentů. • [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) metoda to ukazuje.

{{% /alert %}}

## Přidat ochranu dokumentů

Přidání ochrany do dokumentu je jednoduchý proces, protože vše, co musíte udělat, je použít jednu z ochranných metod uvedených v této sekci.

Aspose.Words umožňuje chránit vaše dokumenty před změnami pomocí [Protect](https://reference.aspose.com/words/net/aspose.words/document/protect/#protect/) metoda. Tato metoda není bezpečnostní funkcí a nezašifruje dokument.

{{% alert color="primary" %}}

In Microsoft Word, editaci můžete omezit podobným způsobem pomocí obou:

* Omezit editaci (File → Info → Chránit dokument)
* Alternativní funkce

{{% /alert %}}

Následující příklad kódu ukazuje, jak přidat ochranu hesla do vašeho dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.cs" >}}

Následující příklad kódu ukazuje, jak omezit editaci v dokumentu, takže je možné pouze editovat ve formě polí:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.cs" >}}

## Odstranit ochranu dokumentu

Aspose.Words umožňuje odstranit ochranu z dokumentu s jednoduchou a přímou modifikací dokumentu. Můžete buď odstranit ochranu dokumentu, aniž byste znali aktuální heslo, nebo poskytnout správné heslo pro odemknutí dokumentu pomocí [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) metoda. Oba způsoby odstraňování nejsou žádný rozdíl.

Následující příklad kódu ukazuje, jak odstranit ochranu z vašeho dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.cs" >}}

## Upřesnit neomezené upravitelné oblasti

Můžete omezit editaci dokumentu a zároveň povolit změny vybraných částí. Takže každý, kdo otevře váš dokument, bude mít přístup k těmto neomezeným částem a provede změny v obsahu.

Aspose.Words umožňuje označit části, které mohou být ve vašem dokumentu změněny pomocí [StartEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starteditablerange/) a [EndEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endeditablerange/#endeditablerange/) metody.

Následující příklad kódu ukazuje, jak označit celý dokument pouze pro čtení a určit v něm editovatelné regiony:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.cs" >}}

Můžete také zvolit různá omezení editace dokumentů pro různé sekce.

Následující příklad kódu ukazuje, jak přidat omezení pro celý dokument, a pak odstranit omezení pro jeden z oddílů:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.cs" >}}
