---
title: Робота з діапазонами в C++
second_title: Aspose.Words для C++
articleTitle: Робота з діапазонами
linktitle: Робота з діапазонами
description: "Вступ до функції діапазону в Aspose.Words для C++."
type: docs
weight: 130
url: /uk/cpp/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

Aspose.Words діапазон-це "плоске вікно" у деревоподібній моделі документа.

{{% /alert %}}

Якщо ви працювали з системою автоматизації Microsoft Word, то, напевно, знаєте, що одним з основних інструментів для вивчення та зміни вмісту документа є об'єкт **Range**. **Range** - це своєрідне "вікно" у вміст та форматування документа.

Aspose.Words також має клас [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) і розроблений таким чином, щоб виглядати і діяти аналогічно **Range** у Microsoft Word. Хоча **Range** не може охоплювати довільну частину документа і не містить **Start** та **End**, ви можете отримати доступ до діапазону, охопленого будь-яким вузлом документа, включаючи сам [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Іншими словами, кожен вузол має свій власний діапазон. Об'єкт **Range** дозволяє отримувати доступ до тексту, закладок та полів форми в межах діапазону та змінювати їх.

## Витяг звичайного тексту

Використовуйте властивість [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/) для вилучення простого неформатованого тексту з діапазону.

Наступний приклад коду показує, як отримати простий неформатований текст із діапазону:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cpp" >}}

{{% alert color="primary" %}}

Ви можете завантажити приклад файлу цього прикладу з сайту [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Видалення тексту

Range дозволяє видалити всі символи з діапазону, викликавши команду [Delete](https://reference.aspose.com/words/cpp/aspose.words/range/delete/).

Наступний приклад коду показує, як видалити всі символи з діапазону:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cpp" >}}

{{% alert color="primary" %}}

Ви можете завантажити приклад файлу цього прикладу з сайту [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
