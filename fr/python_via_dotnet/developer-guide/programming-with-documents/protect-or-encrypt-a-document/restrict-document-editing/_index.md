---
title: Restreindre l'édition de documents dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Restreindre l'édition de documents
linktitle: Restreindre l'édition de documents
description: "Restreindre la modification d'un document en définissant un type de restriction à l'aide de Python. Vous pouvez également supprimer la protection et créer des régions modifiables sans restriction."
type: docs
weight: 30
url: /fr/python-net/restrict-document-editing/
---

Parfois, vous devrez peut-être limiter la possibilité de modifier un document et autoriser uniquement certaines actions. Cela peut être utile pour empêcher d'autres personnes de modifier des informations sensibles et confidentielles dans votre document.

Aspose.Words vous permet de restreindre la modification d'un document en définissant un type de restriction. De plus, Aspose.Words vous permet également de spécifier les paramètres de protection en écriture pour un document.

Cet article explique comment utiliser Aspose.Words pour sélectionner un type de restriction, comment ajouter ou supprimer une protection et comment créer des régions modifiables sans restriction.

## Sélectionnez le type de restriction de modification

Aspose.Words vous permet de contrôler la manière dont vous restreignez le contenu à l'aide du paramètre d'énumération [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/). Cela vous permettra de sélectionner un type exact de protection tel que le suivant:

* [ALLOW_ONLY_COMMENTS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_comments)
* [ALLOW_ONLY_FORM_FIELDS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_form_fields)
* [ALLOW_ONLY_REVISIONS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_revisions)
* [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only)
* [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection)

Tous les types sont sécurisés par mot de passe, et si ce mot de passe n'est pas saisi correctement, un utilisateur ne pourra pas légalement modifier le contenu de votre document. Ainsi, si votre document vous est renvoyé sans qu’il soit nécessaire de fournir le mot de passe nécessaire, c’est le signe que quelque chose ne va pas.

Si vous n'avez pas défini de mot de passe lors du choix du type de sécurité, les autres utilisateurs peuvent simplement ignorer la protection de votre document.

{{% alert color="primary" %}}

Notez que le mot de passe défini n'est qu'une propriété d'un document qui peut être supprimée en cas d'accès aux propriétés du document. Par conséquent, un tel mot de passe ne constitue pas une garantie de la sécurité du document. La méthode [Document.unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/) montre exactement cela.

{{% /alert %}}

## Ajouter une protection de document

L'ajout d'une protection à votre document est un processus simple, car il vous suffit d'appliquer l'une des méthodes de protection détaillées dans cette section.

Aspose.Words vous permet de protéger vos documents des modifications en utilisant la méthode [Document.protect](https://reference.aspose.com/words/python-net/aspose.words/document/protect/). Cette méthode n'est pas une fonctionnalité de sécurité et ne crypte pas un document.

{{% alert color="primary" %}}

Dans Microsoft Word, vous pouvez restreindre l'édition de la même manière en utilisant les deux:

* Restreindre l'édition (Fichier → Informations → Protéger le document)
* Fonctionnalité alternative – "Restreindre l'édition" (Révision → Protéger → Restreindre l'édition)

{{% /alert %}}

L'exemple de code suivant montre comment ajouter une protection par mot de passe à votre document:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()

# Apply document protection.
doc.protect(aw.ProtectionType.NO_PROTECTION, "password")

doc.save(docs_base.artifacts_dir + "DocumentProtection.PasswordProtection.docx");
{{< /highlight >}}

L'exemple de code suivant montre comment restreindre la modification dans un document afin que seule la modification dans les champs de formulaire soit possible:

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

## Supprimer la protection des documents

Aspose.Words vous permet de supprimer la protection d'un document avec une modification simple et directe du document. Vous pouvez soit supprimer la protection du document sans connaître le mot de passe réel, soit fournir le mot de passe correct pour déverrouiller le document en utilisant la méthode [unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/). Les deux méthodes de suppression n'ont aucune différence.

L'exemple de code suivant montre comment supprimer la protection de votre document:

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

## Spécifier des régions modifiables sans restriction

Vous pouvez restreindre la modification de votre document et en même temps autoriser la modification de parties sélectionnées de celui-ci. Ainsi, toute personne ouvrant votre document pourra accéder à ces parties sans restriction et apporter des modifications au contenu.

Aspose.Words vous permet de marquer les parties qui peuvent être modifiées dans votre document à l'aide des méthodes [start_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_editable_range/) et [end_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_editable_range/).

L'exemple de code suivant montre comment marquer l'intégralité du document en lecture seule et y spécifier des zones modifiables:

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

Vous pouvez également choisir différentes restrictions d'édition de documents pour différentes sections.

L'exemple de code suivant montre comment ajouter une restriction pour l'ensemble du document, puis supprimer la restriction pour l'une des sections:

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
