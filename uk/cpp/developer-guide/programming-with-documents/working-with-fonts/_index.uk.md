---
title: Робота зі шрифтами в C++
second_title: Aspose.Words для C++
articleTitle: Робота зі шрифтами
linktitle: Робота зі шрифтами
description: "Детальне форматування шрифту за допомогою C++."
type: docs
weight: 230
url: /uk/cpp/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Шрифт-це набір символів певного розміру, кольору і оформлення. Aspose.Words дозволяє працювати зі шрифтами, використовуючи простір імен [Fonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/) і клас [Font](https://reference.aspose.com/words/cpp/aspose.words/font/).

## Форматування шрифту

Поточне форматування шрифту представлено об'єктом **Font**, що повертається властивістю [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/). Клас **Font** містить широкий спектр властивостей шрифту, що повторюють ті, що доступні в Microsoft Word.

У наступному прикладі коду показано, як задати форматування шрифту:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

Властивості заливки тепер доступні і для шрифтів, щоб задати форматування заливки тексту. Це дає можливість змінювати, наприклад, колір переднього плану або прозорість заливки тексту.

## Отримання міжрядкового інтервалу між шрифтами

Міжрядковий інтервал шрифту - це вертикальна відстань між базовими лініями двох послідовних рядків тексту. Таким чином, міжрядковий інтервал включає пробіл між рядками, а також висоту самого символу.

Властивість [LineSpacing](https://reference.aspose.com/words/cpp/aspose.words/font/get_linespacing/) було введено в клас **Font** для отримання цього значення, як показано в прикладі нижче:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cpp" >}}

## Шрифт EmphasisMark

У деяких східноазіатських мовах для позначення наголосу використовується спеціальний знак. Клас **Font** надає властивість [EmphasisMark](https://reference.aspose.com/words/cpp/aspose.words/font/get_emphasismark/), що дозволяє отримати або задати значення перерахування `EmphasisMark`, які будуть застосовуватися при форматуванні.

Наступний приклад коду показує, як встановити властивість **EphasisMark**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cpp" >}}
