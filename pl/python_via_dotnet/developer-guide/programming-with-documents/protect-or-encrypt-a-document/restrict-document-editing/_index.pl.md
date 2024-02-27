---
title: Ogranicz edycję dokumentów w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Ogranicz edycję dokumentu
linktitle: Ogranicz edycję dokumentu
description: "Ogranicz edycję dokumentu, ustawiając typ ograniczenia za pomocą Python. Możesz także usunąć ochronę i utworzyć nieograniczone edytowalne regiony."
type: docs
weight: 30
url: /pl/python-net/restrict-document-editing/
---

Czasami może zaistnieć potrzeba ograniczenia możliwości edycji dokumentu i zezwolenia tylko na określone działania. Może to być przydatne, aby uniemożliwić innym osobom edytowanie wrażliwych i poufnych informacji w dokumencie.

Aspose.Words umożliwia ograniczenie edycji dokumentu poprzez ustawienie typu ograniczenia. Ponadto Aspose.Words umożliwia także określenie ustawień ochrony dokumentu przed zapisem.

W tym artykule wyjaśniono, jak używać Aspose.Words do wybierania typu ograniczenia, jak dodawać lub usuwać ochronę oraz jak tworzyć nieograniczone edytowalne regiony.

## Wybierz typ ograniczenia edycji

Aspose.Words pozwala kontrolować sposób ograniczania treści za pomocą parametru wyliczeniowego [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/). Umożliwi to wybranie dokładnego rodzaju ochrony, np. następującego:

* [ALLOW_ONLY_COMMENTS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_comments)
* [ALLOW_ONLY_FORM_FIELDS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_form_fields)
* [ALLOW_ONLY_REVISIONS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_revisions)
* [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only)
* [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection)

Wszystkie typy są zabezpieczone hasłem i jeśli hasło to nie zostanie wprowadzone poprawnie, użytkownik nie będzie mógł legalnie zmienić treści Twojego dokumentu. Jeśli więc Twój dokument zostanie do Ciebie zwrócony bez konieczności podawania niezbędnego hasła, jest to znak, że coś jest nie tak.

Jeśli przy wyborze typu zabezpieczeń nie ustawiłeś hasła, inni użytkownicy mogą po prostu zignorować ochronę Twojego dokumentu.

{{% alert color="primary" %}}

Należy pamiętać, że ustawiane hasło to tylko właściwość dokumentu, którą można usunąć w przypadku uzyskania dostępu do właściwości dokumentu. W związku z tym takie hasło nie stanowi gwarancji bezpieczeństwa dokumentu. Metoda [Document.unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/) właśnie to pokazuje.

{{% /alert %}}

## Dodaj ochronę dokumentów

Dodanie ochrony do dokumentu jest prostym procesem, ponieważ wystarczy zastosować jedną z metod ochrony opisanych szczegółowo w tej sekcji.

Aspose.Words pozwala na zabezpieczenie dokumentów przed zmianami metodą [Document.protect](https://reference.aspose.com/words/python-net/aspose.words/document/protect/). Ta metoda nie stanowi zabezpieczenia i nie szyfruje dokumentu.

{{% alert color="primary" %}}

W Microsoft Word możesz ograniczyć edycję w podobny sposób, używając obu:

* Ogranicz edycję (Plik → Informacje → Chroń dokument)
* Alternatywna funkcja – "Ogranicz edycję" (Przejrzyj → Chroń → Ogranicz edycję)

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak dodać ochronę hasłem do dokumentu:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()

# Apply document protection.
doc.protect(aw.ProtectionType.NO_PROTECTION, "password")

doc.save(docs_base.artifacts_dir + "DocumentProtection.PasswordProtection.docx");
{{< /highlight >}}

Poniższy przykład kodu pokazuje, jak ograniczyć edycję w dokumencie, tak aby możliwa była tylko edycja w polach formularza:

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

## Usuń ochronę dokumentów

Aspose.Words umożliwia usunięcie ochrony z dokumentu poprzez prostą i bezpośrednią modyfikację dokumentu. Możesz albo usunąć ochronę dokumentu, nie znając rzeczywistego hasła, albo podać prawidłowe hasło, aby odblokować dokument, korzystając z metody [unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/). Obydwa sposoby usuwania nie mają żadnej różnicy.

Poniższy przykład kodu pokazuje, jak usunąć ochronę z dokumentu:

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

## Określ nieograniczone edytowalne regiony

Możesz ograniczyć edycję swojego dokumentu i jednocześnie pozwolić na zmiany w wybranych jego fragmentach. Zatem każdy, kto otworzy Twój dokument, będzie mógł uzyskać dostęp do tych nieograniczonych części i wprowadzić zmiany w treści.

Aspose.Words umożliwia oznaczenie części dokumentu, które można zmienić, przy użyciu metod [start_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_editable_range/) i [end_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_editable_range/).

Poniższy przykład kodu pokazuje, jak oznaczyć cały dokument jako tylko do odczytu i określić w nim edytowalne regiony:

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

Możesz także wybrać różne ograniczenia edycji dokumentu dla różnych sekcji.

Poniższy przykład kodu pokazuje, jak dodać ograniczenie dla całego dokumentu, a następnie usunąć ograniczenie dla jednej z sekcji:

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
