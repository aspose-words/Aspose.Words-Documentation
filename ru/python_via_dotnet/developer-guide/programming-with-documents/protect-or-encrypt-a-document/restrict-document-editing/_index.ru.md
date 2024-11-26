---
title: Ограничить редактирование документа в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Ограничить редактирование документов
linktitle: Ограничить редактирование документов
description: "Ограничьте редактирование документа, задав тип ограничения с помощью Python. Вы также можете снять защиту и создать неограниченные области для редактирования."
type: docs
weight: 30
url: /ru/python-net/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

Иногда вам может потребоваться ограничить возможность редактирования документа и разрешить только определенные действия с ним. Это может быть полезно для предотвращения редактирования другими пользователями важной и конфиденциальной информации в вашем документе.

Aspose.Words позволяет ограничить редактирование документа, задав тип ограничения. Кроме того, Aspose.Words также позволяет задать параметры защиты документа от записи.

В этой статье объясняется, как использовать Aspose.Words для выбора типа ограничения, как добавлять или удалять защиту и как создавать неограниченные редактируемые области.

## Выберите тип ограничения редактирования

Aspose.Words позволяет вам управлять способом ограничения содержимого с помощью параметра перечисления [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/). Это позволит вам выбрать точный тип защиты, например, следующий:

* [ALLOW_ONLY_COMMENTS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_comments)
* [ALLOW_ONLY_FORM_FIELDS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_form_fields)
* [ALLOW_ONLY_REVISIONS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_revisions)
* [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only)
* [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection)

Все типы документов защищены паролем, и если этот пароль введен неправильно, пользователь не сможет законным образом изменить содержимое вашего документа. Таким образом, если ваш документ возвращается вам без требования ввести необходимый пароль, это признак того, что что-то не так.

Если вы не установили пароль при выборе типа защиты, другие пользователи могут просто проигнорировать защиту вашего документа.

{{% alert color="primary" %}}

Обратите внимание, что устанавливаемый пароль - это всего лишь свойство документа, которое может быть удалено при обращении к свойствам документа. Соответственно, такой пароль не является гарантией безопасности документа. Метод [Document.unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/) показывает именно это.

{{% /alert %}}

## Добавить защиту документов

Добавление защиты к вашему документу - это простой процесс, так как все, что вам нужно сделать, это применить один из методов защиты, описанных в этом разделе.

Aspose.Words позволяет защитить ваши документы от изменений с помощью метода [Document.protect](https://reference.aspose.com/words/python-net/aspose.words/document/protect/). Этот метод не является средством защиты и не шифрует документ.

{{% alert color="primary" %}}

В Microsoft Word вы можете ограничить редактирование аналогичным образом, используя оба:

* Ограничить редактирование (Файл → Информация → Защита документа)
* Альтернативная функция – "Ограничить редактирование" (Просмотр → Защита → Ограничение редактирования)

{{% /alert %}}

В следующем примере кода показано, как добавить защиту паролем к вашему документу:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()

# Apply document protection.
doc.protect(aw.ProtectionType.NO_PROTECTION, "password")

doc.save(docs_base.artifacts_dir + "DocumentProtection.PasswordProtection.docx");
{{< /highlight >}}

В следующем примере кода показано, как ограничить редактирование в документе, чтобы было возможно редактирование только в полях формы:

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

## Снять защиту документов

Aspose.Words позволяет снять защиту с документа простым и непосредственным изменением документа. Вы можете либо снять защиту документа, не зная действительного пароля, либо ввести правильный пароль для разблокировки документа, используя метод [unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/). Оба способа снятия не имеют различий.

В следующем примере кода показано, как снять защиту с вашего документа:

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

## Укажите Неограниченные редактируемые области

Вы можете ограничить редактирование вашего документа и в то же время разрешить вносить изменения в выбранные его части. Таким образом, любой, кто откроет ваш документ, сможет получить доступ к этим неограниченным частям и внести изменения в содержимое.

Aspose.Words позволяет вам отметить части, которые могут быть изменены в вашем документе, используя методы [start_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_editable_range/) и [end_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_editable_range/).

В следующем примере кода показано, как пометить весь документ как доступный только для чтения и указать в нем области, доступные для редактирования:

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

Вы также можете установить различные ограничения на редактирование документа для разных разделов.

В следующем примере кода показано, как добавить ограничение для всего документа, а затем удалить ограничение для одного из разделов:

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
