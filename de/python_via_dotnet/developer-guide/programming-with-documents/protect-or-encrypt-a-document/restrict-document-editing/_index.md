---
title: Beschränken Sie die Dokumentbearbeitung in Python
second_title: Aspose.Words für Python via .NET
articleTitle: Beschränken Sie die Bearbeitung von Dokumenten
linktitle: Beschränken Sie die Bearbeitung von Dokumenten
description: "Beschränken Sie die Bearbeitung eines Dokuments, indem Sie mithilfe von Python einen Einschränkungstyp festlegen. Sie können den Schutz auch entfernen und uneingeschränkt bearbeitbare Bereiche erstellen."
type: docs
weight: 30
url: /de/python-net/restrict-document-editing/
---

Manchmal müssen Sie möglicherweise die Möglichkeit zum Bearbeiten eines Dokuments einschränken und nur bestimmte Aktionen damit zulassen. Dies kann nützlich sein, um zu verhindern, dass andere Personen sensible und vertrauliche Informationen in Ihrem Dokument bearbeiten.

Mit Aspose.Words können Sie die Bearbeitung eines Dokuments einschränken, indem Sie einen Einschränkungstyp festlegen. Darüber hinaus können Sie mit Aspose.Words auch Schreibschutzeinstellungen für ein Dokument festlegen.

In diesem Artikel wird erklärt, wie Sie mit Aspose.Words einen Einschränkungstyp auswählen, wie Sie einen Schutz hinzufügen oder entfernen und wie Sie uneingeschränkt bearbeitbare Bereiche erstellen.

## Wählen Sie den Typ der Bearbeitungseinschränkung aus

Mit Aspose.Words können Sie mithilfe des [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/)-Enumerationsparameters steuern, wie Sie den Inhalt einschränken. Auf diese Weise können Sie eine genaue Schutzart auswählen, z. B. die folgende:

* [ALLOW_ONLY_COMMENTS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_comments)
* [ALLOW_ONLY_FORM_FIELDS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_form_fields)
* [ALLOW_ONLY_REVISIONS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_revisions)
* [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only)
* [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection)

Alle Typen sind passwortgeschützt. Wenn dieses Passwort nicht korrekt eingegeben wird, kann ein Benutzer den Inhalt Ihres Dokuments nicht legal ändern. Wenn Ihr Dokument also ohne Angabe des erforderlichen Passworts an Sie zurückgesandt wird, ist dies ein Zeichen dafür, dass etwas nicht stimmt.

Wenn Sie bei der Auswahl des Sicherheitstyps kein Passwort festgelegt haben, können andere Benutzer den Schutz Ihres Dokuments einfach ignorieren.

{{% alert color="primary" %}}

Beachten Sie, dass das festgelegte Passwort lediglich eine Eigenschaft in einem Dokument ist, die entfernt werden kann, wenn auf die Dokumenteigenschaften zugegriffen wird. Dementsprechend ist ein solches Passwort keine Garantie für die Dokumentensicherheit. Die [Document.unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/)-Methode zeigt genau das.

{{% /alert %}}

## Dokumentenschutz hinzufügen

Das Hinzufügen eines Schutzes zu Ihrem Dokument ist ein einfacher Vorgang, da Sie lediglich eine der in diesem Abschnitt beschriebenen Schutzmethoden anwenden müssen.

Mit Aspose.Words können Sie Ihre Dokumente mithilfe der [Document.protect](https://reference.aspose.com/words/python-net/aspose.words/document/protect/)-Methode vor Änderungen schützen. Diese Methode stellt keine Sicherheitsfunktion dar und verschlüsselt kein Dokument.

{{% alert color="primary" %}}

In Microsoft Word können Sie die Bearbeitung auf ähnliche Weise einschränken, indem Sie Folgendes verwenden:

* Bearbeitung einschränken (Datei → Info → Dokument schützen)
* Alternative Funktion – "Bearbeitung einschränken" (Überprüfen → Schützen → Bearbeiten einschränken)

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie Ihrem Dokument einen Passwortschutz hinzufügen:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()

# Apply document protection.
doc.protect(aw.ProtectionType.NO_PROTECTION, "password")

doc.save(docs_base.artifacts_dir + "DocumentProtection.PasswordProtection.docx");
{{< /highlight >}}

Das folgende Codebeispiel zeigt, wie Sie die Bearbeitung in einem Dokument einschränken können, sodass nur die Bearbeitung in Formularfeldern möglich ist:

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

## Entfernen Sie den Dokumentenschutz

Mit Aspose.Words können Sie den Schutz eines Dokuments durch einfache und direkte Dokumentänderung entfernen. Sie können entweder den Dokumentschutz entfernen, ohne das tatsächliche Passwort zu kennen, oder das richtige Passwort eingeben, um das Dokument mithilfe der [unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/)-Methode zu entsperren. Beide Entfernungsmethoden haben keinen Unterschied.

Das folgende Codebeispiel zeigt, wie Sie den Schutz aus Ihrem Dokument entfernen:

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

## Geben Sie uneingeschränkt bearbeitbare Bereiche an

Sie können die Bearbeitung Ihres Dokuments einschränken und gleichzeitig Änderungen an ausgewählten Teilen davon zulassen. Somit kann jeder, der Ihr Dokument öffnet, auf diese uneingeschränkten Teile zugreifen und Änderungen am Inhalt vornehmen.

Mit Aspose.Words können Sie die Teile in Ihrem Dokument markieren, die mithilfe der [start_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_editable_range/)- und [end_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_editable_range/)-Methoden geändert werden können.

Das folgende Codebeispiel zeigt, wie Sie das gesamte Dokument als schreibgeschützt markieren und bearbeitbare Bereiche darin angeben:

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

Sie können auch unterschiedliche Dokumentbearbeitungseinschränkungen für verschiedene Abschnitte auswählen.

Das folgende Codebeispiel zeigt, wie Sie eine Einschränkung für das gesamte Dokument hinzufügen und dann die Einschränkung für einen der Abschnitte entfernen:

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
