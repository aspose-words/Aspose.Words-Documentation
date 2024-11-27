---
title: Оновити поля в C++
second_title: Aspose.Words для C++
articleTitle: Оновлювати поля
linktitle: Оновлювати поля
description: "Дізнайтеся, як оновити поля в C++. Оновлюйте поля програмно або використовуйте автоматичне оновлення полів за допомогою C++ API."
type: docs
weight: 30
url: /uk/cpp/update-fields/
timestamp: 2024-01-27-14-07-04
---

Як правило, поле, вставлене в Microsoft Word, вже містить актуальне значення. Наприклад, якщо поле є формулою або номером сторінки, воно буде містити правильне обчислене значення для даної версії документа. Але якщо у вас є програма, яка генерує або змінює документ з полями, наприклад, об'єднує два документи або заповнює його даними, то в ідеалі всі поля повинні бути оновлені, щоб документ був корисним.

## Як оновити поля

Коли документ завантажений, Aspose.Words імітує поведінку Microsoft Word, при цьому опція автоматичного оновлення полів відключена. Поведінку можна резюмувати наступним чином:

- коли ви відкриваєте / зберігаєте документ, поля залишаються недоторканими
- ви можете явно оновити всі поля в документі, наприклад, відновити `TOC`, коли Вам потрібно
- при відображенні в PDF або XPS поля, що відносяться до нумерації сторінок у верхніх і нижніх колонтитулах, оновлюються
- коли ви виконуєте Mail Merge, усі поля оновлюються автоматично

### Оновлювати поля програмним способом

Щоб явно оновити поля у всьому документі, просто викликайте метод [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/). Щоб оновити поля, що містяться в частині документа, отримайте об'єкт [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) і викличте метод [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/range/updatefields/). У Aspose.Words ви можете отримати значення **Range** для будь-якого вузла в дереві документа, наприклад [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), і т.д., використовуючи властивість [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/).Ви можете оновити результат для одного поля, викликавши метод [Update](https://reference.aspose.com/words/cpp/aspose.words.fields/field/update/).

### Автоматичне оновлення полів, пов'язаних зі сторінкою, під час рендеринга

Коли ви виконуєте перетворення документа у формат фіксованої сторінки, наприклад, у PDF або XPS, у Aspose.Words автоматично оновлюються поля, пов'язані з макетом сторінки `PAGE`, `PAGEREF`, які знаходяться у верхніх і нижніх колонтитулах документа. Ця поведінка імітує поведінку Microsoft Word під час друку документа.

Якщо ви хочете оновити всі інші поля в документі, вам потрібно викликати [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/) перед відображенням документа.

Наступний приклад коду показує, як оновити всі поля перед відтворенням документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cpp" >}}

### Автоматичне оновлення поля під час Mail Merge

Коли ви виконуєте mail merge, усі поля в документі будуть автоматично оновлені. Це пов'язано з тим, що Mail Merge - Це випадок оновлення поля. Програма виявляє поле Mail Merge і повинна оновити свій результат, що передбачає отримання значення з джерела даних та вставлення його в поле. Логіка, звичайно, складніша, наприклад, коли досягнуто кінця області документа/mail merge, але все ще є додаткові дані, які потрібно об'єднати, тоді область потрібно продублювати та оновити новий набір полів.

## Оновіть властивість LastSavedTime Перед збереженням

Ви можете використовувати властивість [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatelastsavedtimeproperty/) для оновлення відповідної вбудованої властивості документа [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) під час збереження документа.

Наступний приклад коду показує, як оновити цю властивість:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cpp" >}}


