---
title: Omezte úpravy dokumentů v C++
second_title: Aspose.Words pro C++
articleTitle: Omezit Úpravy Dokumentů
linktitle: Omezit Úpravy Dokumentů
description: "Omezte úpravy dokumentu nastavením typu omezení pomocí C++. Můžete také odstranit ochranu a vytvořit neomezené upravitelné oblasti."
type: docs
weight: 30
url: /cs/cpp/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

Někdy možná budete muset omezit možnost úpravy dokumentu a povolit s ním pouze určité akce. To může být užitečné, aby se zabránilo ostatním lidem v úpravách citlivých a důvěrných informací ve vašem dokumentu.

Aspose.Words umožňuje omezit úpravy dokumentu nastavením typu omezení. Kromě toho Aspose.Words také umožňuje zadat nastavení ochrany proti zápisu pro dokument.

Tento článek vysvětluje, jak použít Aspose.Words k výběru typu omezení, jak přidat nebo odebrat ochranu a jak vytvořit neomezené editovatelné oblasti.

## Vyberte Typ Omezení Úprav

Aspose.Words umožňuje řídit způsob omezení obsahu pomocí parametru [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/) výčtu. To vám umožní vybrat přesný typ ochrany, například následující:

* AllowOnlyComments
* AllowOnlyFormFields
* AllowOnlyRevisions
* ReadOnly
* NoProtection

Všechny typy jsou zabezpečeny heslem a pokud toto heslo není zadáno správně, uživatel nebude moci legálně změnit obsah vašeho dokumentu. Pokud je Vám tedy dokument vrácen bez požadavku na poskytnutí potřebného hesla, je to známka toho, že něco není v pořádku.

Pokud jste při výběru typu zabezpečení nenastavili heslo, ostatní uživatelé mohou ochranu vašeho dokumentu jednoduše ignorovat.

{{% alert color="primary" %}}

Všimněte si, že nastavované heslo je pouze vlastnost v dokumentu, kterou lze odebrat, pokud jsou přístupné Vlastnosti dokumentu. Takové heslo tedy není zárukou zabezpečení dokumentu. Metoda [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/) to ukazuje.

{{% /alert %}}

## Přidat Ochranu Dokumentů

Přidání ochrany do dokumentu je jednoduchý proces, protože vše, co musíte udělat, je použít jednu z metod ochrany podrobně popsaných v této části.

Aspose.Words umožňuje chránit vaše dokumenty před změnami pomocí metody [Protect](https://reference.aspose.com/words/cpp/aspose.words/document/protect/). Tato metoda není funkcí zabezpečení a nešifruje dokument.

{{% alert color="primary" %}}

V Microsoft Word můžete omezit úpravy podobným způsobem pomocí obou:

* Omezit Úpravy (Soubor → Informace → Chránit Dokument)
* Alternativní funkce - "omezit úpravy" (recenze → chránit → omezit úpravy)

{{% /alert %}}

Následující příklad kódu ukazuje, jak do dokumentu přidat ochranu heslem:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.h" >}}

Následující příklad kódu ukazuje, jak omezit úpravy v dokumentu, takže je možné pouze úpravy v polích formuláře:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.h" >}}

## Odebrat Ochranu Dokumentů

Aspose.Words umožňuje odstranit ochranu z dokumentu jednoduchou a přímou úpravou dokumentu. Ochranu dokumentu můžete buď odebrat, aniž byste znali skutečné heslo, nebo zadat správné heslo pro odemknutí dokumentu pomocí metody [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/). Oba způsoby odstraňování nemají žádný rozdíl.

Následující příklad kódu ukazuje, jak odebrat ochranu z dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.h" >}}

## Určete Neomezené Editovatelné Oblasti

Můžete omezit editaci dokumentu a zároveň povolit změny ve vybraných částech dokumentu. Takže každý, kdo otevře váš dokument, bude mít přístup k těmto neomezeným částem a provede změny v obsahu.

Aspose.Words umožňuje označit části, které lze v dokumentu změnit pomocí metod [StartEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starteditablerange/) a [EndEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endeditablerange/).

Následující příklad kódu ukazuje, jak označit celý dokument jako pouze pro čtení a určit v něm upravitelné oblasti:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.h" >}}

Můžete také zvolit různá omezení úprav dokumentů pro různé sekce.

Následující příklad kódu ukazuje, jak přidat omezení pro celý dokument a potom odebrat omezení pro jednu z oddílů:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.h" >}}
