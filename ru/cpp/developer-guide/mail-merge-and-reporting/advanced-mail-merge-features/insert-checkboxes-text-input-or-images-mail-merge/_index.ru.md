---
title: Вставляйте Checkbox файлы, вводите текст или изображения во время Mail Merge
second_title: Aspose.Words для C++
articleTitle: Вставка Checkbox файлов, ввод текста или изображений
linktitle: Вставка Checkbox файлов, ввод текста или изображений
description: "Вставляйте флажки или текстовые поля ввода во время Mail Merge, используя C++. Также вставляйте изображения из базы данных во время Mail Merge в C++."
type: docs
weight: 40
url: /ru/cpp/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-01-27-14-07-04
---

Механизм слияния принимает документ в качестве входных данных, ищет в нем поля `MERGEFIELD` и заменяет их данными, полученными из источника данных. Обычно вставляется обычный текст и HTML, но пользователи Aspose.Words также могут создать документ, который обрабатывает более необычные сценарии для полей mail merge.

Мощная функциональность Aspose.Words позволяет расширить процесс mail merge:

- вставьте флажки и поля формы ввода текста в документ во время mail merge
- вставляйте изображения из любого пользовательского хранилища (файлы, поля BLOB и т.д.)

## Вставка Checkbox строк и ввод текста во время Mail Merge

Иногда необходимо выполнить операцию mail merge, чтобы в поле слияния был заменен не текст, а флажок или поле ввода текста. Хотя это и не самый распространенный сценарий, для некоторых задач он очень удобен.

На следующем снимке экрана документа Word показан шаблон с полями для объединения:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

На этом скриншоте документа Word, приведенном ниже, показан уже созданный документ:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

Обратите внимание, что некоторые поля были заменены обычным текстом, некоторые поля были заменены полями формы с флажками, а поле `Subject` было заменено полем ввода текста.

{{% /alert %}}

В следующем примере кода показано, как вставлять флажки и поля ввода текста в документ во время mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-HandleMergeField.cpp" >}}

## Вставлять изображения во время Mail Merge

При выполнении операции mail merge вы можете вставлять изображения из базы данных в документ, используя специальные поля image mail merge. Поле image mail merge является полем объединения с именем Image:MyFieldName.

### Вставка изображений из базы данных

Во время mail merge, когда в документе встречается поле с изображением mail merge, запускается событие [FieldMergingCallback](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_fieldmergingcallback/). Вы можете отреагировать на это событие, чтобы вернуть имя файла, поток или объект изображения в механизм mail merge, чтобы его можно было вставить в документ.

В следующем примере кода показано, как вставить изображения, хранящиеся в поле базы данных BLOB, в отчет:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageInsert.cpp" >}}

### Установите свойства изображения во время Mail Merge

При объединении поля объединения изображений иногда может потребоваться управлять различными свойствами изображения, такими как [WrapType](https://reference.aspose.com/words/cpp/aspose.words.drawing/wraptype/).

В настоящее время, используя [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/class/aspose.words.mail_merging.image_field_merging_args), вы можете задать только параметры ширины или высоты изображения соответственно. Чтобы решить эту проблему, Aspose.Words предоставляет свойство [Shape](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/get_shape/), которое позволяет получить полный контроль над вставляемым изображением или любой другой формой.

В следующем примере кода показано, как задать различные свойства изображения:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageField.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-ImageFieldMergingHandler.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-DataSourceRoot.cpp" >}}
