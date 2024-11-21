---
title: Обмеження документів Редагування в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Редагування документів обмеження
linktitle: Редагування документів обмеження
description: "Обмеження редагування документа шляхом встановлення типу обмеження Pythonй Ви також можете видалити захист і зробити обмежені редаговані регіони."
type: docs
weight: 30
url: /uk/python-net/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

Іноді необхідно обмежити можливість редагування документа і тільки дозволити йому певні дії. Це може бути корисним для запобігання іншим людям з редагування конфіденційної інформації у вашому документі.

Aspose.Words дозволяє обмежити редагування документа шляхом встановлення типу обмеження. Додатково Aspose.Words також дозволяє вказати налаштування захисту запису для документа.

Ця стаття пояснює, як використовувати Aspose.Words вибрати тип обмеження, як додати або видалити захист, і як зробити обмежені редаговані регіони.

## Виберіть тип редагування обмеження

Aspose.Words дозволяє контролювати спосіб, який ви обмежите вміст, використовуючи [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) параметр занурення. Це дозволить вам вибрати точний тип захисту, такі як:

* [ALLOW_ONLY_COMMENTS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_comments)
* [ALLOW_ONLY_FORM_FIELDS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_form_fields)
* [ALLOW_ONLY_REVISIONS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_revisions)
* [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only)
* [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection)

Всі типи є паролем, і якщо цей пароль не вводиться правильно, користувач не зможе легально змінити вміст вашого документа. Таким чином, якщо Ваш документ повернеться до Вас без вимог, щоб забезпечити необхідний пароль, це означає, що щось неправильно.

Якщо ви не встановили пароль при виборі типу безпеки, інші користувачі можуть просто ігнорувати захист вашого документа.

{{% alert color="primary" %}}

Зауважте, що набір пароля є просто майно в документі, який можна видалити, якщо доступні властивості документа. Відповідно, такий пароль не гарантує безпеку документів. Про нас [Document.unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/) метод показує просто це.

{{% /alert %}}

## Додати захист документів

Додавання захисту вашого документа є простим процесом, оскільки все, що потрібно зробити, це застосувати один з методів захисту, докладних в цьому розділі.

Aspose.Words дозволяє захистити ваші документи від змін [Document.protect](https://reference.aspose.com/words/python-net/aspose.words/document/protect/) метод. Цей метод не є функцією безпеки і не шифрує документ.

{{% alert color="primary" %}}

У Microsoft Word, Ви можете обмежити редагування аналогічним чином за допомогою:

* Обмеження редагування (File → Info → Захист документів)
* Альтернативна особливість – "Редагування обмежень" (Review → Захист → Обмеження редагування)

{{% /alert %}}

Приклад коду показує, як додати захист пароля до вашого документа:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()

# Apply document protection.
doc.protect(aw.ProtectionType.NO_PROTECTION, "password")

doc.save(docs_base.artifacts_dir + "DocumentProtection.PasswordProtection.docx");
{{< /highlight >}}

Наприклад, наступний код показує, як обмежити редагування в документі, щоб тільки редагування у вигляді полів можливо:

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

## Видалити захист документів

Aspose.Words дозволяє видалити захист з документа простим і прямим документом. Ви можете видалити захист документа, не знаючи фактичного пароля або забезпечити правильний пароль для розблокування документа, використовуючи [unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/) метод. Обидва способи видалення не мають різниці.

Приклад коду показує, як видалити захист від вашого документа:

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

## Вказати необґрунтовані редаговані регіони

Ви можете обмежити редагування вашого документа і одночасно дозволити змінити вибрані частини його. Отже, будь-який, хто відкриває ваш документ, зможе отримати доступ до цих необмежених частин і внести зміни до вмісту.

Aspose.Words дозволяє відмітити деталі, які можна змінити у вашому документі за допомогою [start_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_editable_range/) і [end_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_editable_range/) методи.

Наприклад, наступний код показує, як відмітити весь документ, як прочитано, і вказати редаговані регіони в ньому:

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

Ви також можете вибрати різні обмеження редагування документів для різних розділів.

Приклад коду показує, як додати обмеження на весь документ, а потім видалити обмеження для одного з розділів:

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
