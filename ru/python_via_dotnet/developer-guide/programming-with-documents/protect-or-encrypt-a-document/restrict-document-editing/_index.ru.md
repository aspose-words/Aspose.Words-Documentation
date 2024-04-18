---
title: Ограничительный документ Редактировать в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Ограничение редактирования документов
linktitle: Ограничение редактирования документов
description: "Ограничьте редактирование документа, установив тип ограничения с помощью Python. Вы также можете удалить защиту и сделать неограниченные редактируемые области."
type: docs
weight: 30
url: /ru/python-net/restrict-document-editing/
---

Иногда вам может потребоваться ограничить возможность редактирования документа и разрешить только определенные действия с ним. Это может быть полезно, чтобы другие люди не редактировали конфиденциальную информацию в вашем документе.

Aspose.Words позволяет ограничить редактирование документа, установив тип ограничения. Кроме того, Aspose.Words Также позволяет указать настройки защиты записи для документа.

В этой статье объясняется, как использовать Aspose.Words Выберите тип ограничения, как добавить или удалить защиту и как сделать неограниченные редактируемые области.

## Выберите тип ограничения редактирования

Aspose.Words позволяет вам контролировать то, как вы ограничиваете контент, используя [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) параметр перечисления. Это позволит вам выбрать точный тип защиты, такой как:

* [ALLOW_ONLY_COMMENTS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_comments)
* [ALLOW_ONLY_FORM_FIELDS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_form_fields)
* [ALLOW_ONLY_REVISIONS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_revisions)
* [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only)
* [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection)

Все типы защищены паролем, и если этот пароль введен неправильно, пользователь не сможет юридически изменить содержание вашего документа. Таким образом, если ваш документ возвращен вам без требования предоставить необходимый пароль, это признак того, что что-то не так.

Если при выборе типа безопасности вы не установили пароль, другие пользователи могут просто проигнорировать защиту вашего документа.

{{% alert color="primary" %}}

Обратите внимание, что устанавливаемый пароль - это просто свойство в документе, которое может быть удалено при доступе к свойствам документа. Соответственно, такой пароль не является гарантией безопасности документа. The [Document.unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/) Метод показывает именно это.

{{% /alert %}}

## Добавить защиту документов

Добавление защиты в ваш документ является простым процессом, так как все, что вам нужно сделать, это применить один из методов защиты, описанных в этом разделе.

Aspose.Words позволяет защитить документы от изменений с помощью [Document.protect](https://reference.aspose.com/words/python-net/aspose.words/document/protect/) метод. Этот метод не является функцией безопасности и не шифрует документ.

{{% alert color="primary" %}}

В Microsoft Word, Вы можете ограничить редактирование аналогичным образом, используя оба:

* Ограничить редактирование (файл → информация → Защитный документ)
* Альтернативная функция - "Ограниченное редактирование" (Review → Protect → Restrict Editing)

{{% /alert %}}

Следующий пример кода показывает, как добавить защиту паролем к вашему документу:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()

# Apply document protection.
doc.protect(aw.ProtectionType.NO_PROTECTION, "password")

doc.save(docs_base.artifacts_dir + "DocumentProtection.PasswordProtection.docx");
{{< /highlight >}}

Следующий пример кода показывает, как ограничить редактирование в документе, поэтому возможно только редактирование в полях форм:

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

## Удалить защиту документов

Aspose.Words Позволяет снять защиту с документа с простой и прямой модификацией документа. Вы можете либо удалить защиту документа, не зная фактического пароля, либо предоставить правильный пароль для разблокировки документа. [unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/) метод. Оба способа удаления не имеют никакой разницы.

Следующий пример кода показывает, как удалить защиту из документа:

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

## Неограниченные редактируемые регионы

Вы можете ограничить редактирование своего документа и в то же время разрешить внесение изменений в выбранные его части. Таким образом, любой, кто откроет ваш документ, сможет получить доступ к этим неограниченным частям и внести изменения в контент.

Aspose.Words позволяет пометить части, которые могут быть изменены в вашем документе, используя [start_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_editable_range/) и [end_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_editable_range/) методы.

Следующий пример кода показывает, как пометить весь документ только для чтения и указать редактируемые области в нем:

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

Вы также можете выбрать различные ограничения для редактирования документов для разных разделов.

Следующий пример кода показывает, как добавить ограничение для всего документа, а затем снять ограничение для одного из разделов:

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
