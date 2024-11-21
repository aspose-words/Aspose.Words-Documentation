---
title: Робота з шрифтами в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Робота з шрифтами
linktitle: Робота з шрифтами
description: "Налаштування параметрів шрифту за допомогою Pythonй"
type: docs
weight: 230
url: /uk/python-net/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Шрифт є набором символів з певним розміром, кольором та дизайном. Aspose.Words дозволяє працювати з шрифтами за допомогою [fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/) модуль і [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) клас.

## Форматування шрифтів

Поточний форматування шрифтів представлений **Font** об'єкт, що повертається [Font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) майно. Про нас **Font** клас містить широкий спектр властивостей шрифтів, що реплікують ці доступні в Microsoft Wordй

Приклад коду показує, як встановити форматування шрифтів:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-DocumentBuilderSetFontFormatting.py" >}}

Наповнювати властивості тепер можна також для шрифтів, щоб встановити форматування тексту. Це дає можливість змінити, наприклад, початковий колір або прозорість текстового наповнення.

## Отримання шпону

Шпакування лінії шрифту – вертикальна відстань між базовими рядками двох послідовних ліній тексту. Таким чином, відстань лінії включає в себе порожній простір між лініями вздовж висоти самого персонажа.

Про нас [line_spacing](https://reference.aspose.com/words/python-net/aspose.words/font/line_spacing/) введено в експлуатацію майно [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) клас для отримання цього значення, як показано на прикладі нижче:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetFontLineSpacing.py" >}}

## JavaScript licenses API Веб-сайт

Деякі східні азіатські мови використовують спеціальний акцент для позначення акценту. Про нас **Font** клас забезпечує [emphasis_mark](https://reference.aspose.com/words/python-net/aspose.words/font/emphasis_mark/) майно, щоб отримати або встановити [EmphasisMark](https://reference.aspose.com/words/python-net/aspose.words/emphasismark/) значення нумерації, які застосовуються у форматі.

Приклад коду показує, як встановити **EphasisMark** майно:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontEmphasisMark.py" >}}
