---
title: Посада таблиці в Python
second_title: Aspose.Words для Python
articleTitle: Посада столу
linktitle: Посада столу
description: "Вказати позицію столу в Pythonй Отримати вирівнювання столу, отримати і встановити плаваючу позицію столу за допомогою Pythonй"
type: docs
weight: 50
url: /uk/python-net/position-a-table/
---

Розсувні таблиці та вбудовані таблиці:

* Ім'я * **Вхідні таблиці** розміщуються на одному шарі, як і текст, і розміщуються в потоці тексту, що тільки оточує таблицю вище і нижче. Вхідні таблиці завжди з'являються між пунктами, де ви їх розміщуєте.
* Ім'я * **Флоатні столи** прошаровуються над текстом, а положення таблиці відносно абзацу визначається за допомогою таблиці, якір. Через це положення плаваючого столу в документі впливає на вертикальні та горизонтальні налаштування позиціонування.

Часом необхідно розмістити таблицю в документі певним чином. Для цього потрібно використовувати інструменти вирівнювання і встановити відступи між столом і навколишнім текстом.

У статті ми обговорюємо які варіанти Aspose.Words забезпечує позиціонування.

## Вказати внутрішню позицію таблиці

Ви можете встановити позицію в режимі онлайн таблиці за допомогою Aspose.Words API і [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/) майно. Таким чином, можна регулювати вирівнювання таблиці відносно сторінки документа.

Наприклад, наступний код показує, як встановити положення таблиці в рядку:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "inline-table-position.py" >}}

## Отримувати вирівнювання столу

Якщо на столі встановлюється текстове обгортання **Around**, Ви можете отримати горизонтальне та вертикальне вирівнювання столу за допомогою [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) і [RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/) властивості.

З **інші види текстового обгортання**, Ви можете отримати вбудоване вирівнювання таблиці за допомогою [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/) майно.

Приклад наступного коду показує, як отримати вирівнювання таблиці:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-table-position.py" >}}

## Отримати Floating Таблиця Посади

 Положення плаваючого столу визначається за допомогою наступних властивостей:

* Ім'я * [HorizontalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/horizontal_anchor/) – об’єкт обчислення горизонтального позиціонування плаваючого столу
* Ім'я * [VerticalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/vertical_anchor/) – об’єкт обчислення вертикального положення плаваючого столу
* Ім'я * [AbsoluteHorizontalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_horizontal_distance/) – абсолютна горизонтальна плаваюча позиція таблиці
* Ім'я * [AbsoluteVerticalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_vertical_distance/) – абсолютна вертикальна плаваюча позиція таблиці
* Ім'я * [AllowOverlap](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_overlap/) – можливість увімкнути/розмкнути перекриття з іншими плаваючі об’єкти
* Ім'я * [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) – плаваючий стіл відносно горизонтального вирівнювання.
* Ім'я * [RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/) – плаваючий стіл відносно вертикального вирівнювання.

Приклад коду показує, як отримати позицію плаваючого столу:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-floating-table-position.py" >}}

## Встановити Floating Таблиця Положення

Так само, як отримати, ви можете встановити позицію плаваючого столу за допомогою того ж Aspose.Words APIй

Важливо знати, що вирівнювання і горизонтальна і вертикальна відстань поєднують властивості і можна скидати інші. Наприклад, налаштування **RelativeHorizontalAlignment** скинути **AbsoluteHorizontalDistance** до його значення за замовчуванням і навпаки. Те ж саме true для вертикального розташування.

Приклад коду показує, як встановити позицію плаваючого столу:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "floating-table-position.py" >}}

## Отримати Відстань між Table і Surrounding Text

Aspose.Words також надає можливість дізнатися відстані між таблицями та навколишніми текстами:

- до [DistanceTop](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/) – значення відстані від вище
- до [DistanceBottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/) – значення відстані сприйняття
- до [DistanceRight](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/) – значення відстані на правому
- до [DistanceLeft](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/) – значення відстані зліва

Приклад коду показує, як отримати відстань між таблицями та його навколишнім текстом:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "distance-between-table-surrounding-text.py" >}}