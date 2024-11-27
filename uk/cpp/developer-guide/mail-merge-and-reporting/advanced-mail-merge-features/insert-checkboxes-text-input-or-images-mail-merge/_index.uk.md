---
title: Вставте Checkbox файли, введіть текст або зображення під час Mail Merge
second_title: Aspose.Words для C++
articleTitle: Вставка Checkbox файлів, введення тексту або зображень
linktitle: Вставка Checkbox файлів, введення тексту або зображень
description: "Вставте checkbox рядки або текстові поля введення під час Mail Merge, використовуючи C++. Також вставте зображення з бази даних під час Mail Merge в C++."
type: docs
weight: 40
url: /uk/cpp/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-01-27-14-07-04
---

Механізм злиття приймає документ як вхідні дані, шукає в ньому поля `MERGEFIELD` і замінює їх даними, отриманими з джерела даних. Зазвичай вставляється звичайний текст і HTML, але користувачі Aspose.Words також можуть створити документ, який обробляє більш незвичні сценарії для полів Mail Merge.

Потужна функціональність Aspose.Words дозволяє розширити процес Mail Merge:

- вставте checkboxes та поля форми введення тексту в документ під час mail merge
- вставляйте зображення з будь-якого призначеного для користувача сховища (файли, поля BLOB і т.д.)

## Вставка Checkbox рядків і введення тексту під час Mail Merge

Іноді необхідно виконати операцію Mail Merge, щоб в поле злиття був замінений не текст, А поле checkbox або поле введення тексту. Хоча це не найпоширеніший сценарій, він дуже зручний для деяких завдань.

Наступний знімок екрана документа Word показує шаблон із полями злиття:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

На цьому скріншоті документа Word, наведеному нижче, показаний вже створений документ:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

Зверніть увагу, що деякі поля були замінені звичайним текстом, деякі поля були замінені полями форми checkbox, а поле `Subject` замінено полем введення тексту.

{{% /alert %}}

Наступний приклад коду показує, як вставити checkbox рядки та ввести текстові поля в документ під час mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-HandleMergeField.cpp" >}}

## Вставити зображення під час Mail Merge

Виконуючи операцію Mail Merge, ви можете вставляти зображення з бази даних у документ, використовуючи спеціальні поля image Mail Merge. Поле image Mail Merge є полем об'єднання з ім'ям Image:MyFieldName.

### Вставка зображень з бази даних

Під час mail merge, коли в документі зустрічається поле Mail Merge із зображенням, запускається подія [FieldMergingCallback](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_fieldmergingcallback/). Ви можете відповісти на цю подію, щоб повернути ім'я файлу, потік або об'єкт зображення до механізму Mail Merge, щоб його можна було вставити в документ.

Наступний приклад коду показує, як вставити зображення, що зберігаються у полі бази даних BLOB, у звіт:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageInsert.cpp" >}}

### Встановіть Властивості зображення під час Mail Merge

При об'єднанні поля об'єднання зображень іноді може знадобитися керувати різними властивостями зображення, такими як [WrapType](https://reference.aspose.com/words/cpp/aspose.words.drawing/wraptype/).

В даний час, використовуючи [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/class/aspose.words.mail_merging.image_field_merging_args), ви можете задати тільки властивості ширини або висоти зображення відповідно. Щоб вирішити цю проблему, Aspose.Words надає властивість [Shape](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/get_shape/), яка дозволяє отримати повний контроль над вставленим зображенням або будь-якою іншою формою.

У наступному прикладі коду показано, як задати різні властивості зображення:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageField.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-ImageFieldMergingHandler.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-DataSourceRoot.cpp" >}}
