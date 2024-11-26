---
title: Ограничителен документ Редактиране Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Редактиране на ограничен документ
linktitle: Редактиране на ограничен документ
description: "Ограничаване на редактиране на документ чрез задаване на тип ограничение, като се използва Python. Можете също така да премахнете защитата и да направите неограничени региони за редактиране."
type: docs
weight: 30
url: /bg/python-net/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

Понякога може да се наложи да ограничите възможността за редактиране на документ и да позволите само определени действия с него. Това може да бъде полезно за предотвратяване на други хора да редактират чувствителна и поверителна информация във вашия документ.

Aspose.Words позволява да ограничите редактирането на документ чрез поставяне на тип ограничение. Освен това, Aspose.Words Също така ви позволява да зададете настройки за защита на запис за документ.

Тази статия обяснява как да използвате Aspose.Words да изберете тип ограничение, как да добавите или премахнете защита, и как да направите неограничени редактирани региони.

## Избор на тип на ограничения за редактиране

Aspose.Words позволява да контролирате начина, по който ограничавате съдържанието чрез [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) параметър за изброяване. Това ще ви позволи да изберете точния тип защита, като например:

* [ALLOW_ONLY_COMMENTS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_comments)
* [ALLOW_ONLY_FORM_FIELDS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_form_fields)
* [ALLOW_ONLY_REVISIONS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_revisions)
* [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only)
* [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection)

Всички видове са сигурни с парола и ако тази парола не е въведена правилно, потребителят няма да може законно да промени съдържанието на вашия документ. Така че, ако документът ви бъде върнат без изискване за предоставяне на необходимата парола, това е знак, че нещо не е наред.

Ако не сте задали парола при избора на типа сигурност, други потребители могат просто да игнорират защитата на вашия документ.

{{% alert color="primary" %}}

Имайте предвид, че настройката на паролата е просто свойство в документ, който може да бъде премахнат, ако свойствата на документа са достъпни. Съответно такава парола не е гаранция за сигурността на документа. На [Document.unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/) методът показва точно това.

{{% /alert %}}

## Добавяне на защита на документа

Добавянето на защита към вашия документ е прост процес, тъй като всичко, което трябва да направите, е да приложите един от методите за защита, описани в този раздел.

Aspose.Words Ви позволява да защитите Вашите документи от промени, използващи [Document.protect](https://reference.aspose.com/words/python-net/aspose.words/document/protect/) метод. Този метод не е функция за сигурност и не криптира документ.

{{% alert color="primary" %}}

В Microsoft Word, можете да ограничите редактирането по подобен начин, като използвате и двете:

* Ограничително редактиране (Архив → Информация → Защита на документ)
* Алтернативна функция год

{{% /alert %}}

Следният пример за код показва как да добавите парола защита към вашия документ:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()

# Apply document protection.
doc.protect(aw.ProtectionType.NO_PROTECTION, "password")

doc.save(docs_base.artifacts_dir + "DocumentProtection.PasswordProtection.docx");
{{< /highlight >}}

Следният пример за код показва как да се ограничи редактирането в документ, така че е възможно само редактиране във форма на полета:

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

## Премахване на защитата на документа

Aspose.Words ви позволява да премахнете защитата от документ с проста и директна промяна на документа. Можете или да премахнете защитата на документа, без да знаете действителната парола или да предоставите правилната парола за отключване на документа чрез използване на [unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/) метод. И двата начина за премахване нямат значение.

Следният пример за код показва как да премахнете защитата от вашия документ:

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

## Посочват се неограничените редактирани региони

Можете да ограничите редактирането на вашия документ и същевременно да позволите промени в избрани части от него. Така че всеки, който отвори документа ви, ще има достъп до тези неограничени части и ще направи промени в съдържанието.

Aspose.Words позволява да маркирате частите, които могат да бъдат променени във вашия документ с помощта на [start_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_editable_range/) както и [end_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_editable_range/) методи.

Следният пример за код показва как да се маркира целият документ като само за четене и да се определят регионите, които могат да бъдат редактирани в него:

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

Можете също така да изберете различни ограничения за редактиране на документи за различни раздели.

Следният пример за код показва как да се добави ограничение за целия документ и след това да се премахне ограничението за един от разделите:

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
