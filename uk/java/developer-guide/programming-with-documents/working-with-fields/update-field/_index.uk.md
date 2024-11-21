---
title: Оновлення поля в Java
second_title: Aspose.Words для Java
articleTitle: Оновити поля
linktitle: Оновити поля
description: "Дізнайтеся, як оновити поля в Javaй Оновити поля программатично або використовувати автоматичне оновлення поля за допомогою Java API"
type: docs
weight: 30
url: /uk/java/update-field/
timestamp: 2024-01-27-14-07-04
---

Зазвичай поле вставляється в Microsoft Word вже містить значення дати. Наприклад, якщо поле є формулою або номером сторінки, вона міститиме правильне розрахункове значення для даної версії документа. Але якщо у вас є програма, яка генерує або модіфікує документ з полями, такими як злиття двох документів або поширення його з даними, то ідеально всі поля повинні оновлюватися для документа, щоб бути корисними.

## Як оновити поля

Коли документ завантажується, Aspose.Words імітує поведінку Microsoft Word з можливістю автоматичного оновлення поля вимкнено. Поведінка може бути узагальнена наступним чином:

- при відкритті/Зберегти документ поля залишаються неактуальними
- Ви можете явно оновити всі поля в документі, наприклад, перебудувати `TOC` коли потрібно
- при друку/відправленні до PDF або XPS Оновлено поля, пов'язані з сторінками-обчисленням в заголовках/футах
- при виконанні mail merge всі поля автоматично оновлюються

### Програма оновлень поля

Щоб явно оновити поля у всьому документі, просто зателефонуйте [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) метод. Щоб оновити поля, що містяться в частині документа, отримуйте [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) об'єкт і виклик [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields) метод. У Aspose.Words, Ви можете отримати **Range** для будь-якого вузла в дереві документа, такі як [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), і т.д. за допомогою [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange) майно. Ви можете оновити результат одного поля за допомогою виклику [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update) метод.

### Автоматичне оновлення полісних полів під час рендерингу

Коли ви виконуєте перетворення документа на фіксований формат сторінки, наприклад, в PDF або XPS, потім Aspose.Words автоматично оновлювати поля макета сторінок `PAGE`, `PAGEREF` знайдені в заголовках / футерах документа. Ця поведінка імітує поведінку Microsoft Word при друку документа.

Якщо ви хочете оновити всі інші поля в документі, то вам потрібно викликати [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) перед отриманням документа.

Наступний приклад показує, як оновити всі поля перед отриманням документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### Автоматичне оновлення поля під час Mail Merge

Коли ви виконуєте <span notrans="<span notrans=" mail merge"=""></span>, > всі поля в документі будуть автоматично оновлені. Це тому, що mail merge є випадок оновлення поля. Програма зустрічає mail merge поле і потрібно оновити її результат, який передбачає захоплення значення з джерела даних і вставку його в поле. Логіка, звичайно, більш складна, наприклад, в кінці документа/mail merge Регіон досягається, але є ще подальші дані, які повинні бути об'єднані, тоді регіон повинен бути дублікований і новий набір полів оновлено.

## Update Fields Having Брудна Атрибут

W:dirty є атрибутом рівня поля, який освіжає тільки поле, яку ви вказали при відкритті документа. Розповсюджує MS Word лише освіжаючи цей поле наступного разу, коли відкривається документ. Ви можете використовувати LoadOptions.setUpdateDirtyFields() майно, щоб вказати, чи оновити поля з атрибутом брудної маси. Коли значення LoadOptions.setUpdateDirtyFields() встановлюється для <span notrans="<span notrans=" *true*"=""></span>, > всі поля, які мають *true* значення для `Field.IsDirty` або `FieldChar.IsDirty` майно оновлено на документі навантаження

Приклад наступного коду показує, як оновити поля, що мають атрибут брудних речовин:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## Оновити LastSavedTime нерухомість до заощадження

Ви можете використовувати [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) майно, чи оновити відповідну вбудовану власність документа [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) при збереженні документа.

Приклад коду показує, як оновити цю властивість:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
