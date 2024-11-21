---
title: Откройте документ Read-Only in Java
second_title: Aspose.Words для Java
articleTitle: Откройте документ только для чтения
linktitle: Откройте документ только для чтения
description: "Сделайте ваш документ только для чтения, чтобы контент мог быть скопирован или прочитан, но не изменен с помощью Java."
type: docs
weight: 10
url: /ru/java/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

Иногда у вас может быть документ, который нуждается в обзоре, но вы не хотите, чтобы рецензенты случайным образом модифицировали ваш контент. Aspose.Words Позволяет сделать разрешение вашего документа только для чтения, чтобы контент мог быть скопирован или прочитан, но не изменен. Это предотвратит удаление или добавление контента в ваш документ.

{{% alert color="primary" %}}

Использование только для чтения вашего документа не мешает кому-то создать новую копию и сохранить ее с другим именем.

{{% /alert %}}

Эта статья объясняет, как сделать документ только для чтения.

## Сделайте документ только для чтения

Aspose.Words имеет публичный класс [WriteProtection](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/) Это указывает настройки защиты записи для документа. Вы не создаете экземпляры этого класса напрямую.

Защита записи показывает, рекомендовал ли автор открывать документ только для чтения и / или требовал ли пароль для изменения документа.

Aspose.Words позволяет сделать документ только для чтения, чтобы ограничить редактирование с помощью [ReadOnlyRecommended](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#getReadOnlyRecommended) собственности и [SetPassword](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#setPassword-java.lang.String) метод.

{{% alert color="primary" %}}

В Microsoft Word, Вы можете создать документ только для чтения аналогичным образом, используя оба:

* "Всегда открыт только для чтения" (файл → информация → Защитный документ)
* "Пароль для изменения" (Сохранить как → Инструменты → Общие параметры → Пароль)

{{% /alert %}}

{{% alert color="primary" %}}

Пользователи также могут ограничить редактирование документов, выбрав [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) как **ReadOnly**, Но это еще одна особенность, которая обеспечивает более продвинутые возможности защиты. Существует такая функция в Microsoft Word, Соответственно, он реализуется в Aspose.Words.

**ProtectionType** Подробно будет описано в одной из следующих статей – "Редактирование строгих документов".

{{% /alert %}}

The **ReadOnlyRecommended** свойство защищено паролем, поэтому, если вы не установили пароль перед применением **ReadOnlyRecommended** Тогда другие пользователи могут просто открыть документ, как если бы он был незащищенным. Вы получаете доступ к настройкам защиты документа и устанавливаете пароль защиты записи через **SetPassword** метод.

{{% alert color="primary" %}}

Обратите внимание, что устанавливаемый пароль - это просто свойство в документе, которое может быть удалено, если к свойствам документа обращаются. Соответственно, такой пароль не является гарантией безопасности документа.

{{% /alert %}}

Если вам нужно проверить, есть ли в документе пароль защиты от записи, который ограничивает его редактирование, вы можете использовать [IsWriteProtected](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#isWriteProtected) собственность.

Следующий пример кода показывает, как сделать документ только для чтения:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-ReadOnlyProtection.java" >}}

## Удалить ограничение только для чтения

Если вы не хотите, чтобы пользователь открывал ваш документ только для чтения, вы можете просто установить **ReadOnlyRecommened** имущество *false* выбрать **ProtectionType** как **NoProtection**.

Следующий пример кода показывает, как удалить доступ только для чтения для документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveReadOnlyRestriction.java" >}}
