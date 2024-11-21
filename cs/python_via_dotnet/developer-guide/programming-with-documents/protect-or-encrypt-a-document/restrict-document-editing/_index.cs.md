---
title: Omezit dokument Úprava Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Omezit editaci dokumentů
linktitle: Omezit editaci dokumentů
description: "Omezit úpravu dokumentu nastavením typu omezení pomocí Python. Můžete také odstranit ochranu a vytvořit neomezené editovatelné regiony."
type: docs
weight: 30
url: /cs/python-net/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

Někdy budete muset omezit schopnost editovat dokument a povolit pouze určité akce s ním. To může být užitečné, aby se zabránilo ostatním lidem v editaci citlivých a důvěrných informací ve vašem dokumentu.

Aspose.Words umožňuje omezit editaci dokumentu nastavením typu omezení. Kromě toho Aspose.Words umožňuje také zadat nastavení ochrany zápisu pro dokument.

Tento článek vysvětluje, jak se používá Aspose.Words zvolit typ omezení, jak přidat nebo odstranit ochranu a jak vytvořit neomezené editovatelné regiony.

## Vybrat typ omezení úpravy

Aspose.Words umožňuje ovládat způsob, jakým omezujete obsah pomocí [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) parametr výpočtu. To vám umožní zvolit přesný typ ochrany, například:

* [ALLOW_ONLY_COMMENTS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_comments)
* [ALLOW_ONLY_FORM_FIELDS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_form_fields)
* [ALLOW_ONLY_REVISIONS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_revisions)
* [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only)
* [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection)

Všechny typy jsou zabezpečeny heslem a pokud toto heslo není zadáno správně, uživatel nebude schopen obsah vašeho dokumentu právně změnit. Pokud vám tedy bude váš dokument vrácen bez požadavku na poskytnutí potřebného hesla, je to znamení, že je něco špatně.

Pokud jste při výběru bezpečnostního typu nenastavili heslo, ostatní uživatelé mohou jednoduše ignorovat ochranu vašeho dokumentu.

{{% alert color="primary" %}}

Všimněte si, že nastavené heslo je pouze vlastnost v dokumentu, kterou lze odstranit, pokud jsou přístupné vlastnosti dokumentu. Toto heslo tedy není zárukou bezpečnosti dokumentů. • [Document.unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/) metoda to ukazuje.

{{% /alert %}}

## Přidat ochranu dokumentů

Přidání ochrany do dokumentu je jednoduchý proces, protože vše, co musíte udělat, je použít jednu z ochranných metod uvedených v této sekci.

Aspose.Words umožňuje chránit vaše dokumenty před změnami pomocí [Document.protect](https://reference.aspose.com/words/python-net/aspose.words/document/protect/) metoda. Tato metoda není bezpečnostní funkcí a nezašifruje dokument.

{{% alert color="primary" %}}

In Microsoft Word, editaci můžete omezit podobným způsobem pomocí obou:

* Omezit editaci (File → Info → Chránit dokument)
* Alternativní funkce

{{% /alert %}}

Následující příklad kódu ukazuje, jak přidat ochranu hesla do vašeho dokumentu:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()

# Apply document protection.
doc.protect(aw.ProtectionType.NO_PROTECTION, "password")

doc.save(docs_base.artifacts_dir + "DocumentProtection.PasswordProtection.docx");
{{< /highlight >}}

Následující příklad kódu ukazuje, jak omezit editaci v dokumentu, takže je možné pouze editovat ve formě polí:

{{< highlight python >}}
import aspose.words as aw

# Insert two sections with some text.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Text added to a document.")

# A document protection only works when document protection is turned and only editing in form fields is allowed.
doc.protect(aw.ProtectionType.ALLOW_ONLY_FORM_FIELDS, "password")

# Save the protected document.
doc.save(docs_base.artifacts_dir + "DocumentProtection.AllowOnlyFormFieldsProtect.docx");
{{< /highlight >}}

## Odstranit ochranu dokumentu

Aspose.Words umožňuje odstranit ochranu z dokumentu s jednoduchou a přímou modifikací dokumentu. Můžete buď odstranit ochranu dokumentu, aniž byste znali aktuální heslo, nebo poskytnout správné heslo pro odemknutí dokumentu pomocí [unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/) metoda. Oba způsoby odstraňování nejsou žádný rozdíl.

Následující příklad kódu ukazuje, jak odstranit ochranu z vašeho dokumentu:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Text added to a document.")

# Documents can have protection removed either with no password, or with the correct password.
doc.unprotect()
doc.protect(aw.ProtectionType.READ_ONLY, "newPassword")
doc.unprotect("newPassword")

doc.save(docs_base.artifacts_dir + "DocumentProtection.RemoveDocumentProtection.docx");
{{< /highlight >}}

## Upřesnit neomezené upravitelné oblasti

Můžete omezit editaci dokumentu a zároveň povolit změny vybraných částí. Takže každý, kdo otevře váš dokument, bude mít přístup k těmto neomezeným částem a provede změny v obsahu.

Aspose.Words umožňuje označit části, které mohou být ve vašem dokumentu změněny pomocí [start_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_editable_range/) a [end_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_editable_range/) metody.

Následující příklad kódu ukazuje, jak označit celý dokument pouze pro čtení a určit v něm editovatelné regiony:

{{< highlight python >}}
import aspose.words as aw

# Upload a document and make it as read-only.
doc = aw.Document(docs_base.my_dir + "Document.docx")
builder = aw.DocumentBuilder(doc)

doc.protect(aw.ProtectionType.READ_ONLY, "MyPassword")

builder.writeln("Hello world! Since we have set the document's protection level to read-only, we cannot edit this paragraph without the password.")

# Start an editable range.
edRangeStart = builder.start_editable_range()
# An EditableRange object is created for the EditableRangeStart that we just made.
editableRange = edRangeStart.editable_range

# Put something inside the editable range.
builder.writeln("Paragraph inside first editable range")

# An editable range is well-formed if it has a start and an end.
edRangeEnd = builder.end_editable_range()

builder.writeln("This paragraph is outside any editable ranges, and cannot be edited.");

doc.save(docs_base.artifacts_dir + "DocumentProtection.UnrestrictedEditableRegions.docx");
{{< /highlight >}}

Můžete také zvolit různá omezení editace dokumentů pro různé sekce.

Následující příklad kódu ukazuje, jak přidat omezení pro celý dokument, a pak odstranit omezení pro jeden z oddílů:

{{< highlight python >}}
import aspose.words as aw

# Insert two sections with some text.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Section 1. Unprotected.")
builder.insert_break(aw.BreakType.SECTION_BREAK_CONTINUOUS)
builder.writeln("Section 2. Protected.")

# Section protection only works when document protection is turned and only editing in form fields is allowed.
doc.protect(aw.ProtectionType.ALLOW_ONLY_FORM_FIELDS, "password")

# By default, all sections are protected, but we can selectively turn protection off.
doc.sections[0].protected_for_forms = False
doc.save(docs_base.artifacts_dir + "DocumentProtection.UnrestrictedSection.docx");

doc = aw.Document(docs_base.artifacts_dir + "DocumentProtection.UnrestrictedSection.docx");
self.assertFalse(doc.sections[0].protected_for_forms)
self.assertTrue(doc.sections[1].protected_for_forms);
{{< /highlight >}}
