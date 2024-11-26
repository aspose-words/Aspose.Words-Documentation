---
title: Робота з гіфенацією в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Робота з Hyphenation
linktitle: Робота з Hyphenation
description: "Використовуйте фенацію для більш компактного розташування тексту за допомогою Pythonй Передові алгоритми для роботи з дикціями гіфенацій, використовують словники OpenOffice."
type: docs
weight: 220
url: /uk/python-net/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

Іноді необхідно використовувати фенацію для більш компактного розташування тексту в документі. У той же час важливо розуміти, що специфіка фенації слово може відрізнятися для кожної мови.

В даний час гіфенація не використовується як часто, так як вона використовується, особливо в англійських текстах. Тим не менш, використання цієї функції може мати серйозний вплив на документи користувачів – фенація впливає на макет і, в результаті поява вихідних файлів, наприклад, у форматі PDF.

Для коректного розщеплення слів використовуються мовно-специфічні дикції. Aspose.Words Використовуйте розширені алгоритми для роботи з такими словниками і дозволяє отримати однакову гіфенацію, як в Microsoft Wordй

## Гіфенаційних словників

З різних мов використовують різні норми і правила для гіфенації слово, оптимальне рішення для правильної гіфенації – використовувати спеціальні словники. Aspose.Words використовує словники OpenOffice.

Для перевірки орфографії, OpenOffice використовує [Hunspell Бібліотека](https://hunspell.github.io/), – узагальнення алгоритму гіфенації Текс. Даний алгоритм дозволяє автоматизувати нестандартну гіфенацію з використанням конкурентних стандартних та нестандартних моделей гіфенації. Hunspell використання [Хайфен](https://github.com/hunspell/hyphen) для гіфенації.

{{% alert color="primary" %}}

Витрата гіфенаційних речовин можна приймати з [LibreOffice Диспетчери GitHub](https://github.com/LibreOffice/dictionaries)й Наприклад, [Ен-США словник гіфенації](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic)й

{{% /alert %}}

{{% alert color="primary" %}}

Як Microsoft Word використовує словники, крім словників OpenOffice, щоб виконати гіфенацію, гіфенацію деяких слів, визначених словниками OpenOffice, можуть відрізнятися від Microsoft Word гіфенація. З цієї причини, іноді ми повинні консультувати клієнтів, щоб додати необхідні візерунки до своїх словників, щоб зафіксувати гіфенацію окремих слів.

{{% /alert %}}

## Алгоритм Hyphenation

Aspose.Words Реалізація [алгоритм гіфенації TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) і може повторно використовувати дикції OpenOffice.

Наступні функції Aspose.Words алгоритми слід враховувати:

* Параметри дистанції гіфенації (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMПУНЛЕФТИПЕНМІН, COMPOUNDRIGHTHYPHENMIN) зазначений у словнику гіфенації. Aspose.Words використовує власний набір параметрів відстані в залежності від режиму сумісності документа.
* Ім'я * Алгоритм фенації в Aspose.Words опори [композитна гіфенація](https://github.com/hunspell/hyphen/blob/master/README.compound)й Однак Aspose.Words Розділяє послідовність символів, що містять змішані алфавітні та неальфа-бетичні символи в алфавітно-тільки частини (слова) і фенати їх окремо.
  Примітка Microsoft Word логіка вірування слів сполук залежить від режиму сумісності документа.
* Ім'я * Алгоритм фенації в Aspose.Words не реалізовує [нестандартна гіфенація](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)й Нестандартні візерунки ігноруються.

## Навантажувачі Hyphenation

Щоб скористатися функцією гіфенації, спочатку зареєструйте словник гіфенації. Приклад коду показує, як завантажити дикції фенації для зазначених мов з файлу:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_hyphenation-HyphenateWordsOfLanguages.py" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)й

{{% /alert %}}

Приклад коду показує, як завантажити дикції фенації для вказаної мови з потоку:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_hyphenation-LoadHyphenationDictionaryForLanguage.py" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)й

{{% /alert %}}

## Вплив Hyphenation на Layout

При розірванні тексту в лінії, Aspose.Words перевіряє кожне слово, чи повністю вписується в поточну лінію. Якщо інше слово занадто довгий, щоб відповідати в кінці рядка, за замовчуванням Aspose.Words переходить до початку наступної лінії замість його гіфенування.

Однак функція гіфенації може використовуватися в Aspose.Words щоб вставити фени на слова, щоб усунути проміжки в об'єктивному тексті або підтримувати рівномірну довжину лінії в вузьких стовпчиках. Це може бути очевидно, впливає на кількість рядків і тому кількість сторінок. Іншими словами, використовуючи функцію гіфенації впливає на макет документа.

## Гіфенація та обґрунтування (H&J)

Microsoft Word має комплексну логіку вибору точки розриву, якщо ввімкнено текст і гіфенація. коротко, Microsoft Word може віддати перевагу усадженню або розтягуванню пробілів, щоб уникнути гіфенації лінії. Більшість, ймовірно, ця логіка базується на [Стаття Кнута](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf)й

Aspose.Words реалізовує власний алгоритм H&J, який дає той же результат Microsoft Word і забезпечує ідентичну розбиття рядків у вихідному документі.

## Дивитися ще

* [Русский EnglishРусскийУкраїнськаPolskiItalianoEspañol汉语Bahasa Indonesiaहिन्दीPortuguês日本語DeutschFrançaisภาษาไทยελληνικά اللغة العربية](https://github.com/hunspell/hyphen/blob/master/README)
* [Нестандартне гіфенування](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Автоматична нестандартна гіфенація в Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
