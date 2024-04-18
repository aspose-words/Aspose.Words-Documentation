---
title: Посада таблиці в C#
second_title: Aspose.Words для .NET
articleTitle: Посада столу
linktitle: Посада столу
description: "Вказати позицію столу в C#й Отримати вирівнювання столу, отримати і встановити плаваючу позицію столу за допомогою C#й"
type: docs
weight: 50
url: /uk/net/position-a-table/
---

Розсувні таблиці та вбудовані таблиці:

* Ім'я * **Вхідні таблиці** розміщуються на одному шарі, як і текст, і розміщуються в потоці тексту, що тільки оточує таблицю вище і нижче. Вхідні таблиці завжди з'являються між пунктами, де ви їх розміщуєте.
* Ім'я * **Флоатні столи** прошаровуються над текстом, а положення таблиці відносно абзацу визначається за допомогою таблиці, якір. Через це положення плаваючого столу в документі впливає на вертикальні та горизонтальні налаштування позиціонування.

Часом необхідно розмістити таблицю в документі певним чином. Для цього потрібно використовувати інструменти вирівнювання і встановити відступи між столом і навколишнім текстом.

У статті ми обговорюємо які варіанти Aspose.Words забезпечує позиціонування.

## Вказати внутрішню позицію таблиці

Ви можете встановити позицію в режимі онлайн таблиці за допомогою Aspose.Words API і [Alignment](https://reference.aspose.com/words/net/aspose.words.tables/table/alignment/) майно. Таким чином, можна регулювати вирівнювання таблиці відносно сторінки документа.

Наприклад, наступний код показує, як встановити положення таблиці в рядку:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "inline-table-position.cs" >}}

## Отримувати вирівнювання столу

Якщо на столі встановлюється текстове обгортання **Around**, Ви можете отримати горизонтальне та вертикальне вирівнювання столу за допомогою [RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativehorizontalalignment/) і [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativeverticalalignment/) властивості.

З **інші види текстового обгортання**, Ви можете отримати вбудоване вирівнювання таблиці за допомогою [Alignment](https://reference.aspose.com/words/net/aspose.words.tables/table/alignment/) майно.

Приклад наступного коду показує, як отримати вирівнювання таблиці:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-table-position.cs" >}}

## Отримати Floating Таблиця Посади

 Положення плаваючого столу визначається за допомогою наступних властивостей:

* Ім'я * [HorizontalAnchor](https://reference.aspose.com/words/net/aspose.words.tables/table/horizontalanchor/) – об’єкт обчислення горизонтального позиціонування плаваючого столу
* Ім'я * [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.tables/table/verticalanchor/) – об’єкт обчислення вертикального положення плаваючого столу
* Ім'я * [AbsoluteHorizontalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/absolutehorizontaldistance/) – абсолютна горизонтальна плаваюча позиція таблиці
* Ім'я * [AbsoluteVerticalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/absoluteverticaldistance/) – абсолютна вертикальна плаваюча позиція таблиці
* Ім'я * [AllowOverlap](https://reference.aspose.com/words/net/aspose.words.tables/table/allowoverlap/) – можливість увімкнути/розмкнути перекриття з іншими плаваючі об’єкти
* Ім'я * [RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativehorizontalalignment/) – плаваючий стіл відносно горизонтального вирівнювання.
* Ім'я * [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativeverticalalignment/) – плаваючий стіл відносно вертикального вирівнювання.

Приклад коду показує, як отримати позицію плаваючого столу:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-floating-table-position.cs" >}}

## Встановити Floating Таблиця Положення

Так само, як отримати, ви можете встановити позицію плаваючого столу за допомогою того ж Aspose.Words APIй

Важливо знати, що вирівнювання і горизонтальна і вертикальна відстань поєднують властивості і можна скидати інші. Наприклад, налаштування **RelativeHorizontalAlignment** скинути **AbsoluteHorizontalDistance** до його значення за замовчуванням і навпаки. Те ж саме true для вертикального розташування.

Приклад коду показує, як встановити позицію плаваючого столу:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "floating-table-position.cs" >}}

## Отримати Відстань між Table і Surrounding Text

Aspose.Words також надає можливість дізнатися відстані між таблицями та навколишніми текстами:

- до [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/) – значення відстані від вище
- до [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/) – значення відстані сприйняття
- до [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/) – значення відстані на правому
- до [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/) – значення відстані зліва

Приклад коду показує, як отримати відстань між таблицями та його навколишнім текстом:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "distance-between-table-surrounding-text.cs" >}}
