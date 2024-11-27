---
title: Налаштування властивостей поля в C++
second_title: Aspose.Words для C++
articleTitle: Налаштування властивостей поля
linktitle: Налаштування властивостей поля
description: "Дізнайтеся, як налаштувати властивості полів у C++. Перейменуйте Комбіновані поля або отримайте результати для полів без вузла роздільника в C++."
type: docs
weight: 27
url: /uk/cpp/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words надає можливість програмної взаємодії з різними властивостями полів. У цій статті ми розглянемо кілька прикладів, щоб ви зрозуміли основний принцип роботи з властивостями полів. Ви можете переглянути повний список властивостей для кожного типу поля у відповідному класі в [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## Оновлення властивостей поля

Іноді користувачам потрібно змінити значення властивості поля. Наприклад, оновіть властивість [AuthorName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/get_authorname/) поля `AUTHOR` або змініть властивість [FieldName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_fieldname/) поля `MERGEFIELD`.

Наступний приклад коду показує, як перейменувати Комбіновані поля в документі Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cpp" >}}

## Результат відображення поля

Aspose.Words надає властивість для отримання результату поля для полів, які не мають вузла роздільника полів. Ми називаємо це" підробленим результатом "або відображенням результату; Microsoft Word відображає його в документі, обчислюючи значення поля" на льоту", але в моделі документа такого значення немає.

У наступному прикладі коду показано використання властивості [DisplayResult](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_displayresult/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cpp" >}}
