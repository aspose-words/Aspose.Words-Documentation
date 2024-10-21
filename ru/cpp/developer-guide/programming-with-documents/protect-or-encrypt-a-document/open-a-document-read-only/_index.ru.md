﻿---
title: Откройте документ, доступный только для чтения, на C++
second_title: Aspose.Words для C++
articleTitle: Открыть документ, доступный только для чтения
linktitle: Открыть документ, доступный только для чтения
description: "Сделайте ваш документ доступным только для чтения, чтобы его содержимое можно было копировать или читать, но не изменять."
type: docs
weight: 10
url: /ru/cpp/open-a-document-read-only/
---

Иногда у вас может быть документ, который нуждается в проверке, но вы не хотите, чтобы рецензенты произвольно изменяли ваше содержимое. Aspose.Words позволяет настроить разрешение вашего документа только для чтения, чтобы содержимое можно было копировать или читать, но не изменять. Это предотвратит удаление или добавление содержимого в ваш документ.

{{% alert color="primary" %}}

Применение опции "Только для чтения" к вашему документу не мешает кому-либо создать его новую копию и сохранить ее под другим именем.

{{% /alert %}}

В этой статье объясняется, как сделать документ доступным только для чтения.

## Сделайте документ доступным только для чтения

Aspose.Words имеет открытый класс [WriteProtection](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/), который определяет параметры защиты документа от записи. Экземпляры этого класса не создаются напрямую.

Защита от записи показывает, рекомендовал ли автор открыть документ только для чтения и/или требуется ли пароль для изменения документа.

Aspose.Words позволяет сделать документ доступным только для чтения, чтобы ограничить редактирование, используя свойство [ReadOnlyRecommended](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_readonlyrecommended/) и метод [SetPassword](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/setpassword/).

{{% alert color="primary" %}}

В Microsoft Word вы можете создать документ, доступный только для чтения, аналогичным образом, используя оба:

* "Всегда открывать только для чтения" (Файл → Информация → Защитить документ)
* "Пароль для изменения" (Сохранить как → Инструменты → Общие параметры → Пароль)

{{% /alert %}}

{{% alert color="primary" %}}

Пользователи также могут ограничить редактирование документа, выбрав [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/) в качестве **ReadOnly**, но это еще одна функция, предоставляющая более расширенные возможности защиты. Такая функция есть в Microsoft Word, соответственно, она реализована в Aspose.Words.

**Тип защиты**

{{% /alert %}}

Свойство **ReadOnlyRecommended** защищено паролем, поэтому, если вы не зададите пароль перед применением свойства **ReadOnlyRecommended**, другие пользователи смогут просто открыть документ, как если бы он был незащищенным. Вы получаете доступ к настройкам защиты документа и устанавливаете пароль для защиты от записи с помощью метода **SetPassword**.

{{% alert color="primary" %}}

Обратите внимание, что устанавливаемый пароль - это всего лишь свойство документа, которое может быть удалено при обращении к свойствам документа. Соответственно, такой пароль не является гарантией безопасности документа.

{{% /alert %}}

Если вам нужно проверить, установлен ли в документе пароль для защиты от записи, который запрещает его редактирование, вы можете использовать свойство [IsWriteProtected](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_iswriteprotected/).

В следующем примере кода показано, как сделать документ доступным только для чтения:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.h" >}}

## Снять ограничение только для чтения

Если вы не хотите, чтобы пользователь открывал ваш документ только для чтения, вы можете просто задать свойству **ReadOnlyRecommened** значение *false* или выбрать **ProtectionType** как **NoProtection**.

В следующем примере кода показано, как отключить доступ к документу только для чтения:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.h" >}}