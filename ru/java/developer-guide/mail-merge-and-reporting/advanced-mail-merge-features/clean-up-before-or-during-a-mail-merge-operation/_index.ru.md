---
title: Выполните очистку до или во время операции Mail Merge
second_title: Aspose.Words для Java
articleTitle: Выполните очистку до или во время операции Mail Merge
linktitle: Выполните очистку до или во время операции Mail Merge
type: docs
description: "Применяйте различные параметры очистки и удаления, такие как удаление полей слияния перед выполнением операции Mail Merge или удаление неиспользуемых областей во время операции Mail Merge с помощью Java."
keywords: "cleanup options Mail Merge c#"
weight: 10
url: /ru/java/clean-up-before-or-during-mail-merge/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words позволяет применять различные параметры очистки и удаления, такие как удаление полей объединения перед выполнением операции Mail Merge или удаление неиспользуемых областей во время операции Mail Merge. В этом разделе объясняется, как удалить объединенные поля и как настроить параметр удаления.

## Удаление объединенных полей

Когда вы используете какой-либо длинный шаблон, созданный кем-то другим, вы можете захотеть удалить все поля слияния, которые уже существуют в этом шаблоне, перед выполнением операции Mail Merge. Вы можете использовать метод [DeleteFields](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#deleteFields), если хотите удалить все объединяемые поля из документа без выполнения операции Mail Merge. На этот метод не влияют никакие параметры удаления свойства [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getCleanupOptions), и при его выполнении удаляются только объединяемые поля, а не какие-либо содержащие поля или пустые абзацы.

В следующем примере кода показано, как удалить все поля слияния из вашего шаблона без выполнения операции Mail Merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-DeleteFields.java" >}}

## Установите параметр `Removing`

Aspose.Words позволяет удалять несоединенные поля, области и абзацы из шаблона во время операции Mail Merge с помощью параметров удаления.

Используйте свойство **CleanupOptions** вместе с перечислением [MailMergeCleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/mailmergecleanupoptions/), чтобы задать параметр удаления. Укажите, какие элементы вы хотите удалить, выбрав следующие параметры (вы можете комбинировать несколько).:

* Удалить пустые абзацы
* Удаление неиспользуемых областей
* Удаление неиспользуемых полей
* Удалить содержащие поля
* Удаление статических полей
* Удаление пустых строк таблицы

Поле слияния можно считать несоединенным при выполнении одного из следующих условий:

1. Если поле слияния в источнике данных не содержит столбца или поля сопоставления.
2. Если поле слияния в источнике данных содержит поле сопоставления, но данные имеют значение null.

{{% alert color="primary" %}}

Если вы объединяете данные, используя отдельные источники данных, то эти параметры удаления будут включены только при последнем вызове метода Mail Merge execute.

{{% /alert %}}

### Удалить пустые абзацы

Абзац, содержащий только поля для объединения, будет пустым, если процесс Mail Merge удалит все поля для объединения как не объединенные. Эти пустые абзацы могут добавить ненужного пространства и изменить внешний вид сгенерированного отчета. При работе с абзацами в процессе Mail Merge могут возникнуть две ситуации:

1. Поле Mail Merge будет объединено с пустыми данными.
2. Поле для объединения не используется и будет удалено.

В обоих случаях опция **RemoveEmptyParagraphs** автоматически удалит пустые абзацы из документа. Кроме того, она удалит поля `TableStart` и TableEnd для объединения, если остальная часть абзаца пуста.

В следующем примере кода показано, как удалить пустые абзацы:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveEmptyParagraphs.java" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Table%20with%20fields.docx).

{{% /alert %}}

### Удаление неиспользуемых областей

В предыдущих версиях Aspose.Words пустые Mail Merge области автоматически удалялись из документа во время операции Mail Merge. В последней версии Aspose.words пустые Mail Merge области остаются после операции Mail Merge по умолчанию. Однако вы можете использовать параметр **RemoveUnusedRegions** для удаления неиспользуемых областей Mail Merge во время операции Mail Merge. Например, вы можете объединить документ с пустым источником данных, не содержащим таблиц данных, которые приводят к неиспользуемым областям в документе.

В следующем примере кода показано, как удалить неиспользуемые области слияния:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveUnmergedRegions.java" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20destination%20-%20Northwind%20suppliers.docx).

{{% /alert %}}

**Примечание**

### Удаление неиспользуемых полей

Aspose.Words позволяет удалить все неиспользуемые Mail Merge поля, присвоив флагу **RemoveUnusedFields** значение **CleanupOptions**. Этот параметр позволяет удалить объединяемые поля, которые не содержат соответствующих данных в источнике данных.

В следующем примере кода показано, как автоматически удалить все неиспользуемые поля слияния из документа во время операции Mail Merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveUnusedFields.java" >}}

### Удаление содержащих полей

Объединяемое поле может содержаться внутри другого поля, такого как поле **IF** или поле формулы. Удалите это внешнее поле, когда объединяемое поле будет объединено или удалено из документа.

В следующем примере кода показано, как удалить поля, содержащие поля слияния, из документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveContainingFields.java" >}}

**Примечание**

### Удаление пустых строк таблицы

Aspose.Words позволяет удалять пустые строки таблицы, присвоив флагу **RemoveEmptyTableRows** значение **CleanupOptions**. Этот параметр позволяет удалять строки таблицы, содержащие пустые поля слияния.

В следующем примере кода показано, как удалить пустые строки таблицы, содержащие области Mail Merge, из документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveEmptyTableRows.java" >}}
