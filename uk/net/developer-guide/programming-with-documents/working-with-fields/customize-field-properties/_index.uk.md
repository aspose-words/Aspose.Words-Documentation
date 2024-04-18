---
title: Налаштування властивостей поля в C#
second_title: Aspose.Words для .NET
articleTitle: Налаштування властивостей поля
linktitle: Налаштування властивостей поля
description: "Дізнайтеся, як налаштувати властивості поля в C#й Перейменувати поля злиття або отримати результати для полів без вузла сепаратора .NETй"
type: docs
weight: 27
url: /uk/net/customize-field-properties/
---

Aspose.Words надає можливість программатично взаємодіяти з різними властивостями поля. У цій статті ми розглянемо кілька прикладів, щоб ви зрозуміли основний принцип роботи з польовими властивостями. Ви можете переглянути повний перелік властивостей для кожного типу поля в відповідному класі [Статус на сервери](https://reference.aspose.com/words/net/aspose.words.fields/)й

## Оновлення майна

Іноді користувачі повинні змінити значення властивості поля. Наприклад, оновити [AuthorName](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/authorname/) майно майна `AUTHOR` поле або змінити [FieldName](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/fieldname/) майно майна `MERGEFIELD` поле.

Приклад коду показує, як перейменувати поля злиття в документі Word:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cs" >}}

## Результати польового відображення

Aspose.Words забезпечує майно для отримання результату поля для полів, які не мають вузла сепаратора поля. Ми називаємо це "зробити результат" або результат відображення; MS Word відображає його в документі шляхом обчислення значення поля на літа, але не існує такої цінності в моделі документа.

Приклад наступного коду показує використання [DisplayResult](https://reference.aspose.com/words/net/aspose.words.fields/field/displayresult/) майно:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cs" >}}
