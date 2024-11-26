---
title: Вставляйте Checkbox файлы, вводите текст или изображения во время Mail Merge
second_title: Aspose.Words для Java
articleTitle: Вставка Checkbox файлов, ввод текста или изображений
linktitle: Вставка Checkbox файлов, ввод текста или изображений
description: "Вставьте checkbox строки или текстовые поля ввода во время Mail Merge, используя Java. Также вставьте изображения из базы данных во время Mail Merge в Java."
type: docs
weight: 20
url: /ru/java/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-01-27-14-07-04
---

Механизм слияния принимает документ в качестве входных данных, ищет в нем поля `MERGEFIELD` и заменяет их данными, полученными из источника данных. Обычно вставляется обычный текст и HTML, но пользователи Aspose.Words также могут создать документ, который обрабатывает более необычные сценарии для полей Mail Merge.

Мощная функциональность Aspose.Words позволяет расширить процесс Mail Merge:

- вставьте checkboxes и поля формы ввода текста в документ во время mail merge
- вставляйте изображения из любого пользовательского хранилища (файлы, поля BLOB и т.д.)

## Вставка Checkbox строк и ввод текста во время Mail Merge

Иногда необходимо выполнить операцию Mail Merge, чтобы в поле слияния был заменен не текст, а поле checkbox или поле ввода текста. Хотя это и не самый распространенный сценарий, он очень удобен для некоторых задач.

На следующем снимке экрана документа Word показан шаблон с полями для объединения:

![insert-checkboxes-html-or-images-during-mail-merge-aspose-words-java-1](/words/java/insert-checkboxes-text-input-or-images-mail-merge/insert-checkboxes-html-or-images-during-mail-merge_1.jpeg)

На этом скриншоте документа Word, приведенном ниже, показан уже созданный документ:

![insert-checkboxes-html-or-images-during-mail-merge-aspose-words-java-2](/words/java/insert-checkboxes-text-input-or-images-mail-merge/insert-checkboxes-html-or-images-during-mail-merge-2.png)

{{% alert color="primary" %}}

Обратите внимание, что некоторые поля были заменены обычным текстом, некоторые поля были заменены полями формы checkbox, а поле `Subject` было заменено полем текстового ввода.

{{% /alert %}}

В следующем примере кода показано, как вставлять checkbox строки и вводить текстовые поля в документ во время mail merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-MailMergeFormFields.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-HandleMergeField.java" >}}

## Вставлять изображения во время Mail Merge

При выполнении операции Mail Merge вы можете вставлять изображения из базы данных в документ, используя специальные поля image Mail Merge. Поле image Mail Merge является полем объединения с именем Image:MyFieldName.

### Вставка изображений из базы данных

Во время mail merge, когда в документе встречается поле Mail Merge с изображением, запускается событие [FieldMergingCallback](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldMergingCallback). Вы можете отреагировать на это событие, чтобы вернуть имя файла, поток или объект изображения в механизм Mail Merge, чтобы его можно было вставить в документ.

В следующем примере кода показано, как вставить изображения, хранящиеся в поле базы данных BLOB, в отчет:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeImageFromBlob.java" >}}

### Установите свойства изображения во время Mail Merge

При объединении поля объединения изображений иногда может потребоваться управлять различными свойствами изображения, такими как [WrapType](https://reference.aspose.com/words/java/com.aspose.words/wraptype/).

В настоящее время, используя [ImageFieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/imagefieldmergingargs/), вы можете задать только параметры ширины или высоты изображения соответственно. Чтобы решить эту проблему, Aspose.Words предоставляет свойство [Shape](https://reference.aspose.com/words/java/com.aspose.words/imagefieldmergingargs/#getShape), которое позволяет получить полный контроль над вставляемым изображением или любой другой формой.

В следующем примере кода показано, как задать различные свойства изображения:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeImageField-MailMergeImageField.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeImageField-FieldMergingHandler.java" >}}

