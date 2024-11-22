---
title: Оновлення поля Python
second_title: Aspose.Words для Python via .NET
articleTitle: Оновити поля
linktitle: Оновити поля
description: "Оновити поля в документі різними способами і за допомогою різних варіантів Pythonй"
type: docs
weight: 30
url: /uk/python-net/update-fields/
timestamp: 2024-01-27-14-07-04
---

Зазвичай поле вставляється в Microsoft Word вже містить значення дати. Наприклад, якщо поле є формулою або номером сторінки, вона міститиме правильне розрахункове значення для даної версії документа. Але якщо у вас є програма, яка генерує або модіфікує документ з полями, такими як злиття двох документів або поширення його з даними, то ідеально всі поля повинні оновлюватися для документа, щоб бути корисними.

## Як оновити поля

Коли документ завантажується, Aspose.Words імітує поведінку Microsoft Word з можливістю автоматичного оновлення поля вимкнено. Поведінка може бути узагальнена наступним чином:

- при відкритті/Зберегти документ поля залишаються неактуальними
- Ви можете явно оновити всі поля в документі (наприклад, перебудувати TOC) коли вам потрібно
- при друку/відправленні до PDF або XPS Оновлено поля, пов'язані з сторінками-обчисленням в заголовках/футах
- при виконанні Mail Merge всі поля автоматично оновлюються

### Програма оновлень поля

Щоб явно оновити поля у всьому документі, просто зателефонуйте [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/)й Щоб оновити поля, що містяться в частині документа, отримуйте [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) об'єкт і виклик [update_fields](https://reference.aspose.com/words/python-net/aspose.words/range/update_fields/) метод. У Aspose.Words, Ви можете отримати **Range** для будь-якого вузла в дереві документа, такі як [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), і т.д. за допомогою [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/) майно. Ви можете оновити результат одного поля за допомогою виклику [update](https://reference.aspose.com/words/python-net/aspose.words.fields/field/update/) метод.

### Автоматичне оновлення полірованих полів під час торгівлі

Коли ви виконуєте перетворення документа на фіксований формат сторінки, наприклад, в PDF або XPS, потім Aspose.Words автоматично оновлювати поля макета сторінок `PAGE`, `PAGEREF` знайдені в заголовках / футерах документа. Ця поведінка імітує поведінку Microsoft Word при друку документа.

Якщо ви хочете оновити всі інші поля в документі, то вам потрібно викликати [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/) перед отриманням документа.

Приклад коду показує, як оновити всі поля перед отриманням документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-UpdateDocFields.py" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)й

{{% /alert %}}

### Автоматичне оновлення поля під час Mail Merge

Коли ви виконуєте mail merge, > всі поля в документі будуть автоматично оновлені. Це тому, що Mail Merge є випадок оновлення поля. Програма зустрічає Mail Merge поле і потрібно оновити результат, який передбачає захоплення значення з джерела даних і вставку його в поле. Логіка звичайно складна, наприклад, при закінчення документа/mail merge Регіон досягається, але є ще подальші дані, які повинні бути об'єднані, тоді регіон повинен бути дублікований і новий набір полів оновлено.

## Update Fields Having Брудна Атрибут

W:dirty є атрибутом рівня поля, який освіжає тільки поле, яку ви вказали при відкритті документа. Він розповідає про MS Word лише освіжаючи цей поле наступного разу, коли відкривається документ. Ви можете використовувати [update_dirty_fields](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/update_dirty_fields/) властивість вказати, чи оновлювати поля з атрибутом брудної. Коли значення значення **Статус на сервери** Увійти `True`, > всі поля, які мають `True` значення для [Field.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/field/is_dirty/) або [FieldChar.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/is_dirty/) майно оновлено на документі навантаження.

Приклад наступного коду показує, як оновити поля, які мають атрибут брудних речовин:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UpdateDirtyFields.py" >}}

## Оновити LastSavedTime нерухомість до заощадження

Ви можете використовувати [SaveOptions.update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) майно, чи оновити відповідну вбудовану власність документа [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) при збереженні документа.

Приклад коду показує, як оновити цю властивість:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

