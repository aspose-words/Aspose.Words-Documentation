---
title: Откройте документ Read-Only in Python
second_title: Aspose.Words для Python via .NET
articleTitle: Откройте документ только для чтения
linktitle: Откройте документ только для чтения
description: "Сделайте ваш документ только для чтения, чтобы контент мог быть скопирован или прочитан, но не изменен с помощью Python."
type: docs
weight: 10
url: /ru/python-net/open-a-document-read-only/
---

Иногда у вас может быть документ, который нуждается в обзоре, но вы не хотите, чтобы рецензенты случайным образом изменяли ваш контент. Aspose.Words Позволяет сделать разрешение вашего документа только для чтения, чтобы контент мог быть скопирован или прочитан, но не изменен. Это предотвратит удаление или добавление контента в ваш документ.

{{% alert color="primary" %}}

Использование только для чтения вашего документа не мешает кому-то создать новую копию и сохранить ее с другим именем.

{{% /alert %}}

Эта статья объясняет, как сделать документ только для чтения.

## Сделайте документ только для чтения

Aspose.Words имеет публичный класс [WriteProtection](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/) Это указывает настройки защиты записи для документа. Вы не создаете экземпляры этого класса напрямую.

Защита записи показывает, рекомендовал ли автор открывать документ только для чтения и / или требовал ли пароль для изменения документа.

Aspose.Words позволяет сделать документ только для чтения, чтобы ограничить редактирование с помощью [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) собственности и [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/) метод.

{{% alert color="primary" %}}

В Microsoft Word, Вы можете создать документ только для чтения аналогичным образом, используя оба:

* "Всегда открыт только для чтения" (файл → информация → Защитный документ)
* "Пароль для изменения" (Сохранить как → Инструменты → Общие параметры → Пароль)

{{% /alert %}}

{{% alert color="primary" %}}

Пользователи также могут ограничить редактирование документов, выбрав [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) как [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only), Но это еще одна особенность, которая обеспечивает более продвинутые возможности защиты. Такая функция существует в Microsoft Word, Соответственно, он реализуется в Aspose.Words.

[ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) Подробно будет описано в одной из следующих статей – "Редактирование строгих документов".

{{% /alert %}}

The [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) свойство защищено паролем, поэтому, если вы не установили пароль перед применением [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) Тогда другие пользователи могут просто открыть документ, как если бы он был незащищенным. Вы получаете доступ к настройкам защиты документа и устанавливаете пароль защиты записи через [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/) метод.

{{% alert color="primary" %}}

Обратите внимание, что устанавливаемый пароль - это просто свойство в документе, которое может быть удалено при доступе к свойствам документа. Соответственно, такой пароль не является гарантией безопасности документа.

{{% /alert %}}

Если вам нужно проверить, есть ли в документе пароль защиты от записи, который ограничивает его редактирование, вы можете использовать [is_write_protected](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/is_write_protected/) собственность.

Следующий пример кода показывает, как сделать документ только для чтения:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.write("Open document as read-only")

# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Make the document as read-only.
doc.write_protection.read_only_recommended = True

# Apply write protection as read-only.
doc.protect(aw.ProtectionType.READ_ONLY)
doc.save(docs_base.artifacts_dir + "DocumentProtection.ReadOnlyProtection.docx")
{{< /highlight >}}

## Удалить ограничение только для чтения

Если вы не хотите, чтобы пользователь открывал ваш документ только для чтения, вы можете просто установить [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) имущество `False` выбрать [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/document/protection_type/) как [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection).

Следующий пример кода показывает, как удалить доступ только для чтения для документа:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
            
# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Remove the read-only option.
doc.write_protection.read_only_recommended = False

# Apply write protection without any protection.
doc.protect(aw.ProtectionType.NO_PROTECTION)
doc.save(docs_base.artifacts_dir + "DocumentProtection.RemoveReadOnlyRestriction.docx")
{{< /highlight >}}
