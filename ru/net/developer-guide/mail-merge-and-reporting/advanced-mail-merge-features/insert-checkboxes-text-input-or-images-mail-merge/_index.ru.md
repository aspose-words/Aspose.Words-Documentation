---
title: Вставляйте Checkbox файлы, вводите текст или изображения во время Mail Merge
second_title: Aspose.Words для .NET
articleTitle: Вставка Checkbox файлов, ввод текста или изображений
linktitle: Вставка Checkbox файлов, ввод текста или изображений
description: "Вставьте checkbox строки или текстовые поля ввода во время Mail Merge, используя C#. Также вставьте изображения из базы данных во время Mail Merge в C#."
type: docs
weight: 40
url: /ru/net/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-07-11-08-07-06
---

Механизм слияния принимает документ в качестве входных данных, ищет в нем поля `MERGEFIELD` и заменяет их данными, полученными из источника данных. Обычно вставляется обычный текст и HTML, но пользователи Aspose.Words также могут создать документ, который обрабатывает более необычные сценарии для полей Mail Merge.

Мощная функциональность Aspose.Words позволяет расширить процесс Mail Merge:

- вставьте checkboxes и поля формы ввода текста в документ во время mail merge
- вставляйте изображения из любого пользовательского хранилища (файлы, поля BLOB и т.д.)

## Вставка Checkbox строк и ввод текста во время Mail Merge

Иногда необходимо выполнить операцию Mail Merge, чтобы в поле слияния был заменен не текст, а поле checkbox или поле ввода текста. Хотя это и не самый распространенный сценарий, он очень удобен для некоторых задач.

На следующем снимке экрана документа Word показан шаблон с полями слияния:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

На этом скриншоте документа Word, приведенном ниже, показан уже созданный документ:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

Обратите внимание, что некоторые поля были заменены обычным текстом, некоторые поля были заменены полями формы checkbox, а поле `Subject` было заменено полем текстового ввода.

{{% /alert %}}

В следующем примере кода показано, как вставлять checkbox строки и вводить текстовые поля в документ во время mail merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-field.cs" >}}

## Вставлять изображения во время Mail Merge

При выполнении операции Mail Merge вы можете вставлять изображения из базы данных в документ, используя специальные поля image Mail Merge. Поле image Mail Merge является полем объединения с именем Image:MyFieldName.

### Вставка изображений из базы данных

Во время mail merge, когда в документе встречается поле Mail Merge с изображением, запускается событие [FieldMergingCallback](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/fieldmergingcallback/). Вы можете отреагировать на это событие, чтобы вернуть имя файла, поток или объект изображения в механизм Mail Merge, чтобы его можно было вставить в документ.

В следующем примере кода показано, как вставить изображения, хранящиеся в поле базы данных BLOB, в отчет:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-from-blob.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-image-field-from-blob.cs" >}}

### Установите свойства изображения во время Mail Merge

При объединении поля объединения изображений иногда может потребоваться управлять различными свойствами изображения, такими как [WrapType](https://reference.aspose.com/words/net/aspose.words.drawing/wraptype/).

В настоящее время, используя [ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/), вы можете задать только свойства ширины или высоты изображения соответственно. Чтобы решить эту проблему, Aspose.Words предоставляет свойство [Shape](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/shape/), которое позволяет получить полный контроль над вставляемым изображением или любой другой формой.

В следующем примере кода показано, как задать различные свойства изображения:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-field.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "image-field-merging-handler.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "data-source-root.cs" >}}
