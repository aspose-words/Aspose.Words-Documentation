---
title: Оновити поля C#
second_title: Aspose.Words для .NET
articleTitle: Оновити поля
linktitle: Оновити поля
description: "Дізнайтеся, як оновити поля в C#й Оновити поля программатично або використовувати автоматичне оновлення поля за допомогою .NET APIй"
type: docs
weight: 30
url: /uk/net/update-fields/
timestamp: 2024-01-27-14-07-04
---

Зазвичай поле вставляється в Microsoft Word вже містить значення дати. Наприклад, якщо поле є формулою або номером сторінки, вона міститиме правильне розрахункове значення для даної версії документа. Але якщо у вас є програма, яка генерує або модіфікує документ з полями, такими як злиття двох документів або поширення його з даними, то ідеально всі поля повинні оновлюватися для документа, щоб бути корисними.

## Як оновити поля

Коли документ завантажується, Aspose.Words імітує поведінку Microsoft Word з можливістю автоматичного оновлення поля вимкнено. Поведінка може бути узагальнена наступним чином:

- при відкритті/Зберегти документ поля залишаються неактуальними
- Ви можете явно оновити всі поля в документі, наприклад, перебудувати `TOC`, коли потрібно
- при друку/відправленні до PDF або XPS Оновлено поля, пов'язані з сторінками-обчисленням в заголовках/футах
- при виконанні mail merge всі поля автоматично оновлюються

### Програма оновлень поля

Щоб явно оновити поля у всьому документі, просто зателефонуйте [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) метод. Щоб оновити поля, що містяться в частині документа, отримуйте [Range](https://reference.aspose.com/words/net/aspose.words/range/) об'єкт і виклик [UpdateFields](https://reference.aspose.com/words/net/aspose.words/range/updatefields/) метод. У Aspose.Words, Ви можете отримати **Range** для будь-якого вузла в дереві документа, такі як [Section](https://reference.aspose.com/words/net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) й [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), і т.д. за допомогою [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/) майно. Ви можете оновити результат одного поля за допомогою виклику [Update](https://reference.aspose.com/words/net/aspose.words.fields/field/update/) метод.

### Автоматичне оновлення полірованих полів під час торгівлі

Коли ви виконуєте перетворення документа на фіксований формат сторінки, наприклад, в PDF або XPS, потім Aspose.Words автоматично оновлювати поля макета сторінок `PAGE`, `PAGEREF` знайдені в заголовках / футерах документа. Ця поведінка імітує поведінку Microsoft Word при друку документа.

Якщо ви хочете оновити всі інші поля в документі, то вам потрібно викликати [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) перед отриманням документа.

Приклад коду показує, як оновити всі поля перед отриманням документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cs" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)й

{{% /alert %}}

### Автоматичне оновлення поля під час Mail Merge

Коли ви виконуєте <span notrans="<span notrans=" mail merge"=""></span>, > всі поля в документі будуть автоматично оновлені. Це тому, що mail merge є випадок оновлення поля. Програма зустрічає mail merge поле і потрібно оновити результат, який передбачає захоплення значення з джерела даних і вставку його в поле. Логіка звичайно складна, наприклад, при закінчення документа/mail merge Регіон досягається, але є ще подальші дані, які повинні бути об'єднані, тоді регіон повинен бути дублікований і новий набір полів оновлено.

## Update Fields Having Брудна Атрибут

W:dirty є атрибутом рівня поля, який освіжає тільки поле, яку ви вказали при відкритті документа. Він розповідає про MS Word лише освіжаючи цей поле наступного разу, коли відкривається документ. Ви можете використовувати [UpdateDirtyFields](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/updatedirtyfields/) властивість вказати, чи оновлювати поля з атрибутом брудної. Коли значення значення **UpdateDirtyFields** Увійти <span notrans="<span notrans=" *true*"=""></span>, > всі поля, які мають *true* значення для [Field.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/field/isdirty/) або [FieldChar.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/isdirty/) майно оновлено на документі навантаження.

Приклад наступного коду показує, як оновити поля, які мають атрибут брудних речовин:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadOptionsUpdateDirtyFields.cs" >}}

## Оновити LastSavedTime нерухомість до заощадження

Ви можете використовувати [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) майно, чи оновити відповідну вбудовану власність документа [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) при збереженні документа.

Приклад коду показує, як оновити цю властивість:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cs" >}}
