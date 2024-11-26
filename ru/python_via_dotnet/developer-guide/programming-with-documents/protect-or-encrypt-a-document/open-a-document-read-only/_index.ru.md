---
title: Откройте документ, доступный только для чтения, в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Открыть документ, доступный только для чтения
linktitle: Открыть документ, доступный только для чтения
description: "Сделайте ваш документ доступным только для чтения, чтобы его содержимое можно было скопировать или прочитать, но не изменять с помощью Python."
type: docs
weight: 10
url: /ru/python-net/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

Иногда у вас может быть документ, который нуждается в проверке, но вы не хотите, чтобы рецензенты произвольно изменяли ваше содержимое. Aspose.Words позволяет настроить разрешение вашего документа только для чтения, чтобы содержимое можно было копировать или читать, но не изменять. Это предотвратит удаление или добавление содержимого в ваш документ.

{{% alert color="primary" %}}

Применение опции "Только для чтения" к вашему документу не мешает кому-либо создать его новую копию и сохранить ее под другим именем.

{{% /alert %}}

В этой статье объясняется, как сделать документ доступным только для чтения.

## Сделайте документ доступным только для чтения

Aspose.Words имеет открытый класс [WriteProtection](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/), который определяет параметры защиты документа от записи. Экземпляры этого класса не создаются напрямую.

Защита от записи показывает, рекомендовал ли автор открыть документ только для чтения и/или требуется ли пароль для изменения документа.

Aspose.Words позволяет сделать документ доступным только для чтения, чтобы ограничить редактирование, используя свойство [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) и метод [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/).

{{% alert color="primary" %}}

В Microsoft Word вы можете создать документ, доступный только для чтения, аналогичным образом, используя оба:

* "Всегда открывать только для чтения" (Файл → Информация → Защитить документ)
* "Пароль для изменения" (Сохранить как → Инструменты → Общие параметры → Пароль)

{{% /alert %}}

{{% alert color="primary" %}}

Пользователи также могут ограничить редактирование документа, выбрав [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) в качестве [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only), но это еще одна функция, предоставляющая более расширенные возможности защиты. Такая функция есть в Microsoft Word, соответственно, она реализована в Aspose.Words.

[ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) будет подробно описано в одной из следующих статей – "Ограничение редактирования документа".

{{% /alert %}}

Свойство [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) защищено паролем, поэтому, если вы не зададите пароль перед применением свойства [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/), другие пользователи смогут просто открыть документ, как если бы он был незащищенным. Вы получаете доступ к настройкам защиты документа и устанавливаете пароль для защиты от записи с помощью метода [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/).

{{% alert color="primary" %}}

Обратите внимание, что устанавливаемый пароль - это всего лишь свойство документа, которое может быть удалено при обращении к свойствам документа. Соответственно, такой пароль не является гарантией безопасности документа.

{{% /alert %}}

Если вам нужно проверить, установлен ли в документе пароль для защиты от записи, который запрещает его редактирование, вы можете использовать свойство [is_write_protected](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/is_write_protected/).

В следующем примере кода показано, как сделать документ доступным только для чтения:

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

## Снять ограничение только для чтения

Если вы не хотите, чтобы пользователь открывал ваш документ только для чтения, вы можете просто задать свойству [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) значение `False` или выбрать [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/document/protection_type/) как [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection).

В следующем примере кода показано, как отключить доступ к документу только для чтения:

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
