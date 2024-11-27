---
title: Робота з текстовим документом в C++
second_title: Aspose.Words для C++
articleTitle: Робота з текстовим документом
linktitle: Робота з текстовим документом
description: "Розширена обробка документів TXT, списки, BiDi, колонтитули та колонтитули за допомогою C++."
type: docs
weight: 430
url: /uk/cpp/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

У цій статті ми дізнаємось, які варіанти можуть бути корисними для роботи з текстовим документом через Aspose.Words. Будь ласка, зверніть увагу, що це не повний список доступних опцій, а лише приклад роботи з деякими з них.

## Додавання двонаправлених міток

Ви можете використовувати властивість [AddBidiMarks](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_addbidimarks/), щоб вказати, чи слід додавати двонаправлені мітки перед кожним запуском BiDi під час експорту у звичайному текстовому форматі. Aspose.Words вставляє символ Unicode 'RIGHT-TO-LEFT MARK' (U+200F) перед кожним двонаправленим введенням у тексті. Ця опція відповідає опції "Додати двонаправлені мітки" в діалозі перетворення файлів MS Word при експорті в звичайний текстовий формат. Зверніть увагу, що вона відображається в діалозі тільки в тому випадку, якщо в MS Word доданий будь-якої з мов редагування - арабська або іврит.

Наступний приклад коду показує, як використовувати властивість **AddBidiMarks**. Значення цієї властивості за замовчуванням дорівнює *false*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-AddBidiMarks.cpp" >}}

## Розпізнавати елементи списку під час завантаження TXT

Aspose.Words може імпортувати елементи списку з текстового файлу як номери списків або звичайний текст у свою об'єктну модель документа. Властивість [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detectnumberingwithwhitespaces/) дозволяє вказати, як розпізнаються елементи нумерованого списку при імпорті документа зі звичайного текстового формату:

* Якщо для цього параметра встановлено значення *true*, пробіли також використовуються як роздільники номерів списків: алгоритм розпізнавання списків для нумерації в арабському стилі (1., 1.1.2.) використовує як пробіли, так і точки (".").
* Якщо для цієї опції встановлено значення *false*, алгоритм розпізнавання списків розпізнає абзаци списку, коли номери списку закінчуються крапкою, правою дужкою або маркером (наприклад, "•", "*", "-" або "o").

Наступний приклад коду показує, як використовувати цю властивість:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DetectNumberingWithWhitespaces.cpp" >}}

## Як обробляти початкові та кінцеві пробіли при завантаженні TXT

Ви можете керувати способом обробки початкових та кінцевих пробілів під час завантаження файлу TXT. Початкові пробіли можуть бути обрізані, збережені або перетворені у відступ, а кінцеві пробіли можуть бути обрізані або збережені.

Наступний приклад коду показує, як обрізати пробіли початку та кінця під час імпорту файлу TXT:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-HandleSpacesOptions.cpp" >}}

## Експортуйте верхній і нижній колонтитули у вихідні дані TXT

Якщо ви хочете експортувати верхній і нижній колонтитули у вихідний документ TXT, ви можете використовувати властивість [ExportHeadersFootersMode](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptionsbase/get_exportheadersfootersmode/). Ця властивість визначає спосіб експорту верхнього та нижнього колонтитулів у звичайний текстовий формат.

Наступний приклад коду показує, як експортувати колонтитули та колонтитули у звичайний текстовий формат:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-ExportHeadersFootersMode.cpp" >}}

## Відступ для списку експорту у вихідних даних TXT

Aspose.Words введений клас [TxtListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtlistindentation/), який дозволяє вказувати відступи для рівнів списку при експорті в звичайний текстовий формат. При роботі з [TxtSaveOption](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/) властивість [ListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_listindentation/) використовується для вказівки символу, який буде використовуватися для відступів на рівнях списку, та для визначення кількості символів, які будуть використовуватися як відступи на одному рівні списку.

Значення за замовчуванням для властивості character дорівнює '\0', що вказує на відсутність відступу. Для властивості count значення за замовчуванням дорівнює 0, Що означає відсутність відступу.

### Використання символу табуляції

Наступний приклад коду показує, як експортувати рівні списку за допомогою символів табуляції:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseTabCharacterPerLevelForListIndentation.cpp" >}}

### Використання символу пробілу

Наступний приклад коду показує, як експортувати рівні списку за допомогою пробілів:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseSpaceCharacterPerLevelForListIndentation.cpp" >}}

### Використання відступів за замовчуванням

Наступний приклад коду показує, як експортувати рівні списку за допомогою відступів за замовчуванням:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DefaultLevelForListIndentation.cpp" >}}
