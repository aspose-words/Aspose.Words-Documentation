---
title: Положення таблиці в C++
second_title: Aspose.Words для C++
articleTitle: Розташуйте стіл
linktitle: Розташуйте стіл
description: "Вкажіть положення таблиці за допомогою C++. Щоб вирівняти таблицю, знайдіть і встановіть плаваюче положення таблиці за допомогою C++."
type: docs
weight: 50
url: /uk/cpp/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Існують плаваючі таблиці та вбудовані таблиці:

* **Inline tables** розташовуються на тому ж шарі, що і текст, і поміщаються в текстовому потоці, який оточує таблицю тільки зверху і знизу. Вбудовані таблиці завжди відображатимуться між абзацами, в яких ви їх розмістили.
* **Floating tables** накладаються поверх тексту, а положення таблиці щодо абзацу визначається прив'язкою таблиці. Через це положення плаваючої таблиці в документі залежить від налаштувань вертикального та горизонтального позиціонування.

Іноді вам потрібно розташувати таблицю в документі певним чином. Для цього вам потрібно скористатися інструментами вирівнювання і встановити відступи між таблицею і навколишнім текстом.

У цій статті ми обговоримо, які варіанти Aspose.Words надає для позиціонування.

## Вкажіть положення вбудованої таблиці

Ви можете задати положення вбудованої таблиці, використовуючи властивості Aspose.Words API і [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/). Таким чином, ви можете налаштувати вирівнювання таблиці щодо сторінки документа.

У наступному прикладі коду показано, як задати положення вбудованої таблиці:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "inline-table-position.h" >}}

## Отримайте плаваюче вирівнювання таблиці

Якщо для перенесення тексту таблиці встановлено значення **Around**, ви можете вирівняти таблицю по горизонталі та вертикалі, використовуючи властивості [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) та [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/).

За допомогою **other types of text wrapping** ви можете отримати вбудоване вирівнювання таблиці, використовуючи властивість [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/).

Наступний приклад коду показує, як отримати вирівнювання таблиці:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-table-position.h" >}}

## Отримати плаваюче положення столу

 Положення плаваючої таблиці визначається за допомогою наступних властивостей:

* [HorizontalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_horizontalanchor/) - об'єкт для обчислення горизонтального положення плаваючої таблиці
* [VerticalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_verticalanchor/) - об'єкт для обчислення вертикального положення плаваючої таблиці
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absolutehorizontaldistance/) - абсолютне горизонтальне положення плаваючого столу
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absoluteverticaldistance/) - абсолютне вертикальне положення плаваючого столу
* [AllowOverlap](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowoverlap/) - опція для включення / відключення перекриття з іншими плаваючими об'єктами
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) – відносне горизонтальне вирівнювання плаваючої таблиці.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/) – відносне вертикальне вирівнювання плаваючої таблиці.

Наступний приклад коду показує, як отримати положення плаваючої таблиці:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-floating-table-position.h" >}}

## Встановіть плаваюче положення столу

Точно так же, як і getting, ви можете задати положення плаваючою таблиці, використовуючи ті ж самі Aspose.Words API.

Важливо знати, що вирівнювання і відстань по горизонталі і вертикалі є комбінованими властивостями, і одне з них може змінювати значення іншого. Наприклад, встановлення значення **RelativeHorizontalAlignment** поверне значення **AbsoluteHorizontalDistance** до його значення за замовчуванням і навпаки. Те ж саме вірно для вертикального розташування.

Наступний приклад коду показує, як встановити положення плаваючої таблиці:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "floating-table-position.h" >}}

## Отримати відстань між таблицею та навколишнім текстом

Aspose.Words також надає можливість дізнатися відстані між таблицями та навколишніми текстами:

- [DistanceTop](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancetop/) - Значення відстані зверху
- [DistanceBottom](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancebottom/) - Значення відстані сприйняття
- [DistanceRight](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceright/) - Значення відстані праворуч
- [DistanceLeft](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceleft/) - Значення відстані зліва

Наступний приклад коду показує, як визначити відстань між таблицею та навколишнім текстом:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "distance-between-table-surrounding-text.h" >}}
