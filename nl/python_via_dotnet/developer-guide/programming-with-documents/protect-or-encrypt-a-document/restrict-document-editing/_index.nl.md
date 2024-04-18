---
title: Document beperken Bewerken Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Document bewerken beperken
linktitle: Document bewerken beperken
description: "Bewerken van een document beperken door een beperkingstype in te stellen Python. Je kunt ook bescherming verwijderen en onbeperkte bewerkbare regio's maken."
type: docs
weight: 30
url: /nl/python-net/restrict-document-editing/
---

Soms moet je de mogelijkheid om een document te bewerken beperken en alleen bepaalde acties ermee toestaan. Dit kan nuttig zijn om te voorkomen dat andere mensen gevoelige en vertrouwelijke informatie in uw document bewerken.

Aspose.Words kunt u het bewerken van een document beperken door het instellen van een beperkingstype. Bovendien, Aspose.Words kunt u ook schrijfbeveiliging instellen voor een document.

Dit artikel legt uit hoe te gebruiken Aspose.Words om een beperkingstype te selecteren, hoe bescherming toe te voegen of te verwijderen, en hoe onbeperkte bewerkbare regio's te maken.

## Selecteer type bewerkbeperking

Aspose.Words kunt u de manier waarop u de inhoud te beperken met behulp van de [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) Cumulatieparameter. Dit stelt u in staat om een exact type bescherming te selecteren, zoals het volgende:

* [ALLOW_ONLY_COMMENTS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_comments)
* [ALLOW_ONLY_FORM_FIELDS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_form_fields)
* [ALLOW_ONLY_REVISIONS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_revisions)
* [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only)
* [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection)

Alle types zijn beveiligd met een wachtwoord, en als dit wachtwoord niet correct wordt ingevoerd, zal een gebruiker niet in staat zijn om de inhoud van uw document wettelijk te wijzigen. Dus, als uw document wordt teruggegeven aan u zonder een vereiste om het nodige wachtwoord te verstrekken, dit is een teken dat er iets mis is.

Als u geen wachtwoord hebt ingesteld bij het kiezen van het beveiligingstype, kunnen andere gebruikers gewoon de bescherming van uw document negeren.

{{% alert color="primary" %}}

Merk op dat het wachtwoord dat ingesteld wordt slechts een eigenschap is in een document dat verwijderd kan worden als de documenteneigenschappen geopend worden. Een dergelijk wachtwoord is dus geen garantie voor de documentbeveiliging. De [Document.unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/) Dat blijkt uit de methode.

{{% /alert %}}

## Documentbescherming toevoegen

Het toevoegen van bescherming aan uw document is een eenvoudig proces, want alles wat u hoeft te doen is het toepassen van een van de beschermingsmethoden die zijn beschreven in deze sectie.

Aspose.Words kunt u uw documenten te beschermen tegen wijzigingen met behulp van de [Document.protect](https://reference.aspose.com/words/python-net/aspose.words/document/protect/) methode. Deze methode is geen beveiligingsfunctie en versleutelt geen document.

{{% alert color="primary" %}}

In Microsoft Word, u kunt het bewerken op een soortgelijke manier beperken met behulp van beide:

* Bewerken beperken (Bestand → Info → Document beschermen)
* Alternatieve functie

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe u wachtwoordbeveiliging toevoegt aan uw document:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()

# Apply document protection.
doc.protect(aw.ProtectionType.NO_PROTECTION, "password")

doc.save(docs_base.artifacts_dir + "DocumentProtection.PasswordProtection.docx");
{{< /highlight >}}

Het volgende voorbeeld van code laat zien hoe het bewerken in een document te beperken zodat alleen bewerken in vorm velden mogelijk is:

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

## Documentbescherming verwijderen

Aspose.Words Hiermee kunt u de bescherming van een document met eenvoudige en directe documentmodificatie verwijderen. U kunt de documentbeveiliging verwijderen zonder het eigenlijke wachtwoord te kennen of het juiste wachtwoord geven om het document te ontgrendelen met behulp van de [unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/) methode. Beide manieren verwijderen hebben geen verschil.

Het volgende voorbeeld van code laat zien hoe u bescherming uit uw document verwijdert:

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

## Onbeperkte bewerkbare regio's specificeren

U kunt het bewerken van uw document beperken en tegelijkertijd wijzigingen toestaan in geselecteerde delen ervan. Dus, iedereen die uw document opent zal in staat zijn om toegang te krijgen tot deze onbeperkte onderdelen en wijzigingen aan te brengen in de inhoud.

Aspose.Words kunt u de delen die kunnen worden gewijzigd in uw document markeren met behulp van de [start_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_editable_range/) en [end_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_editable_range/) methoden.

Het volgende voorbeeld van code laat zien hoe u het hele document als alleen-lezen markeert en bewerkbare regio's in het document specificeert:

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

U kunt ook verschillende beperkingen voor het bewerken van documenten voor verschillende secties kiezen.

Het volgende voorbeeld van code laat zien hoe je een beperking voor het hele document toevoegt, en verwijdert de beperking voor een van de secties:

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
