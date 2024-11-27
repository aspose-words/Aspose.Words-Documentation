---
title: Mail Merge Mustache Синтаксис
second_title: Aspose.Words для Python via .NET
articleTitle: Mail Merge Шаблон із синтаксису Mustache
linktitle: Mail Merge Шаблон із синтаксису Mustache
type: docs
description: "Створіть шаблони із синтаксисом Mustache, використовуючи Python. Синтаксис Mustache - це єдиний варіант, який можна використовувати з шаблонами, що не містять полів (HTML або TXT). З шаблонами Word у вас є два варіанти: поля або синтаксис Mustache."
keywords: "mail merge template mustache syntax python"
weight: 40
url: /uk/python-net/mail-merge-template-from-mustache-syntax/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words дозволяє створювати шаблони з синтаксисом mustache на додаток до знайомих шаблонів. A Mustache - це альтернативний варіант синтаксису шаблону, який складається з Імен тегів, укладених у `{{ }}`, і підтримується об'єктом model, який містить дані для шаблону.

Синтаксис Mustache - це єдиний варіант, який можна використовувати з шаблонами без полів, такими як шаблони HTML та TXT. З шаблонами Word у вас є два варіанти: або використовувати поля, або синтаксис Mustache.

Синтаксис Mustache підтримує тег *foreach*, який є альтернативою використанню Mail Merge з регіонами. Отже, перевага полягає в тому, що ви можете використовувати синтаксис mustache, якщо з якихось причин ви не можете або просто не хочете використовувати поля злиття та області об'єднання.

Ви також можете об'єднати поля Mail Merge з деякими додатковими полями, використовуючи тег *foreach*, Як показано на малюнку нижче.

<img src="mustache-syntax.png" alt="mustache_syntax" style="width:800px"/>

## Створіть шаблон Mustache

Перший важливий момент, який слід пояснити, полягає в тому, що Mustache не є механізмом створення шаблонів. Mustache - це інший варіант синтаксису, який доступний для будь-якого шаблону в [load format](https://reference.aspose.com/words/python-net/aspose.words/loadformat/), який підтримується Aspose.Words. Таким чином, ви можете створити такий шаблон як програмно, так і через інтерфейс, вам просто потрібно включити певний синтаксис і відповідати специфікації Mustache.

Припустимо, вам потрібно надіслати той самий електронний лист 50 одержувачам, щоб персоналізувати привітання з відповідними іменами. Ви можете замінити ім'я одержувача якимось заповнювачем наступним чином:

> Dear {{FirstName}}
>
> I hereby...

Питання тут: як ви можете створити 50 електронних листів з одного шаблону Mustache? Щоб відповісти на це запитання, вам потрібно виконати Mail Merge з регіонами, щоб заповнити фігурні дужки для заповнювачів у шаблоні фактичними даними та створити вихідний документ.

<img src="mustache-template.png" alt="mustache_template" style="width:650px"/>

{{% alert color="primary" %}}

Як ви помітили з наведеного вище прикладу, у Mustache вам потрібно використовувати фігурні дужки для заповнювачів, які виглядають як mustache, Коли ви повертаєте фігурні дужки на 90 градусів за годинниковою стрілкою.

{{% /alert %}}

## Робота з синтаксисом Mustache

Mustache представлений як логічний порядок, оскільки йому не вистачає будь-яких конкретних інструкцій потоку управління, таких як цикли *for* та умови *if* та *else*. Але ви можете використовувати списки обробки тегів розділів та лямбда-виразів для виконання умовної оцінки та циклу. Отже, щоб включити синтаксис Mustache в операцію Mail Merge, вам потрібно буде використовувати властивість [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/) і встановити його значення *True*.

## Використовуйте поля `IF`, щоб зробити Mail Merge розумним

Aspose.Words дозволяє використовувати поля Mail Merge і теги Mustache з інструкцією `IF`. Поля `IF` можна використовувати в будь-якому документі Mail Merge для усунення небажаних пробілів і Ком, якщо поле порожнє.

Формула поля `IF` наведена нижче:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

Тут умовою може бути або поле злиття, або тег Mustache.

Наприклад, ви можете використовувати поля `IF`, якщо вам потрібно вставити "його", "її", " він "або" вона " залежно від статі наступним чином:

**{ IF { MERGEFIELD Gender } = "MALE" " істинний текст" "помилковий текст"}**

**{ IF "{{ GENDER }}" = "MALE" " істинний текст" "помилковий текст"}**

Наступний приклад коду показує, як виконати операцію Mail Merge з тегами Mustache та полями `IF`:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Mail Merge and Reporting-base_operations-UseOfifelseMustacheSyntax.py" >}}

Ви можете помітити різницю між документами до застосування властивості [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/):

<img src="mustache-if-field-1.png" alt="mustache_if_field" style="width:800px"/>

І після застосування властивості [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/):

<img src="mustache-if-field-2.png" alt="mustache-if-field-2.png" style="width:800px"/>
