---
title: Проста операція Mail Merge в C++
second_title: Aspose.Words для C++
articleTitle: Просте управління Mail Merge
linktitle: Просте управління Mail Merge
type: docs
description: "Простий Mail Merge використовується для заповнення полів Mail Merge у вашому шаблоні необхідними даними з вашого джерела даних – це аналогічно класичному Mail Merge у Microsoft Word. Додайте одне або кілька полів для об'єднання у свій шаблон, а потім виконайте просту операцію Mail Merge."
keywords: "how to execute Mail Merge c++"
weight: 10
url: /uk/cpp/simple-mail-merge-operation/
timestamp: 2024-09-24-14-35-44
---

Просте значення Mail Merge використовується для заповнення полів Mail Merge всередині вашого шаблону необхідними даними з вашого джерела даних (подання як одна таблиця). Таким чином, воно аналогічно класичному значенню Mail Merge в Microsoft Word.

Ви можете додати одне або кілька полів для об'єднання у свій шаблон, а потім виконати просту операцію Mail Merge. Рекомендується використовувати її, якщо у вашому шаблоні немає областей для об'єднання.

Основним обмеженням використання цього типу є те, що весь вміст документа буде повторюватися для кожного запису у джерелі даних.

## Як виконати просту операцію Mail Merge

Як тільки ваш шаблон буде готовий, ви можете приступити до виконання простої операції Mail Merge. Aspose.Words дозволяє виконати просту операцію Mail Merge, використовуючи різні методи [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/), які приймають різні об'єкти даних як джерело даних.

Наступний приклад коду показує, як виконати просту операцію Mail Merge, використовуючи один із методів [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "simple-mail-merge.h" >}}

Ви можете помітити різницю між документами перед виконанням простого mail merge:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template-aspose-words-cpp" style="width:300px"/>

І після виконання простого mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge-aspose-words-cpp" style="width:300px"/>

## Як створити кілька об'єднаних документів

У випадку Aspose.Words стандартна операція Mail Merge заповнює вмістом з вашого джерела даних лише один документ. Таким чином, вам потрібно буде виконати операцію Mail Merge Багато разів, щоб створити кілька об'єднаних документів як вихід.

Наступний приклад коду показує, як генерувати кілька об'єднаних документів під час операції Mail Merge з [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "multiple-documents-mail-merge.h" >}}
