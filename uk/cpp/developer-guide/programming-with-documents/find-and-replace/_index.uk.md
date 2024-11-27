---
title: Знайти та замінити в C++
second_title: Aspose.Words для C++
articleTitle: Знайти і замінити
linktitle: Знайти і замінити
type: docs
description: "Знайдіть у своєму документі рядок або шаблон регулярного виразу та замініть його потрібним текстом, використовуючи C++."
weight: 100
url: /uk/cpp/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

Ви можете легко переміщатися по документу за допомогою клавіатури та миші, але якщо вам потрібно прокрутити багато сторінок, Пошук певного тексту в довгому документі займе досить багато часу. Якщо ви хочете замінити певні символи або слова, які ви використовували в документі, це займе більше часу. Функція "Знайти та замінити" дозволяє знайти послідовність символів у документі та замінити її іншою послідовністю символів.

Aspose.Words дозволяє знайти в документі певний рядок або шаблон регулярного виразу і замінити його альтернативним варіантом без установки і використання додаткових додатків, таких як Microsoft Word. Це пришвидшить виконання багатьох завдань набору тексту та форматування, що потенційно заощадить вам години роботи.

У цій статті пояснюється, як застосовувати заміну рядків та регулярні вирази з підтримкою метасимволів.

## Способи пошуку і заміни {#ways-to-find-and-replace}

Aspose.Words надає два способи застосувати операцію пошуку та заміни, використовуючи наступне:

1. *Simple string replacement* – щоб знайти та замінити певний рядок на інший, вам потрібно вказати рядок пошуку (буквено-цифрові символи), який буде замінено відповідно до всіх появ іншим зазначеним рядком заміни. Обидва рядки не повинні містити символів. Візьміть до уваги, що порівняння рядків може бути чутливим до регістру, або ви можете бути не впевнені в правильності написання, або у вас може бути кілька подібних варіантів написання.
2. *Regular expressions* – щоб задати регулярний вираз для пошуку точних збігів рядків і заміни їх відповідно до вашим регулярним виразом. Зверніть увагу, що слово визначається як таке, що складається лише з буквено-цифрових символів. Якщо при заміні збігаються тільки цілі слова, а вхідний рядок містить Символи, то фрази знайдені не будуть.

Крім того, ви можете використовувати спеціальні метасимволи з простою заміною рядків і регулярні вирази для вказівки розривів в рамках операції пошуку і заміни.

Aspose.Words представляє функціональність пошуку та заміни в просторі імен [Aspose.Words.Replacing](https://reference.aspose.com/words/cpp/namespace/aspose.words.replacing). У процесі пошуку та заміни ви можете працювати з багатьма параметрами, використовуючи клас [FindReplaceOptions](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/).

### Знайдіть і замініть текст за допомогою простої заміни рядка {#find-and-replace-text-using-simple-string-replacement}

Ви можете використовувати один із методів [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/), щоб знайти або замінити певний рядок і повернути кількість виконаних замін. У цьому випадку ви можете вказати рядок, який потрібно замінити, рядок, який замінить усі його випадки, чи буде Заміна чутливою до регістру та чи будуть порушені лише окремі слова.

Наступний приклад коду показує, як знайти рядок "_CustomerName_ " і замінити його рядком *"James Bond"*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cpp" >}}

Ви можете помітити різницю між документами, перш ніж застосовувати просту заміну рядків:

<img src="before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-cpp" style="width:600px"/>

І після застосування простої заміни рядка:

<img src="after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-cpp" style="width:600px"/>

### Пошук і заміна тексту за допомогою регулярних виразів {#find-and-replace-text-using-regular-expressions}

Регулярний вираз (regex) - це шаблон, який описує певну послідовність тексту. Припустимо, ви хочете замінити всі подвійні входження слова одним входженням слова. Потім ви можете застосувати наступний регулярний вираз, щоб вказати шаблон із двох слів: `([a-zA-Z]+) \1`.

Використовуйте інший метод [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) для пошуку та заміни певних комбінацій символів, встановивши параметр `Regex` Як шаблон регулярного виразу для пошуку збігів.

Наступний приклад коду показує, як замінити рядки, що відповідають шаблону регулярного виразу, вказаному рядком заміни:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cpp" >}}

Ви можете помітити різницю між документами, перш ніж застосовувати заміну рядків регулярними виразами:

<img src="before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-cpp" style="width:600px"/>

І після застосування заміни рядків регулярними виразами:

<img src="after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-cpp" style="width:600px"/>

### Знайдіть і замініть рядок за допомогою метасимволів {#find-and-replace-text-using-metacharacters}

Ви можете використовувати метасимволи в рядку пошуку або в рядку заміни, якщо певний текст або фраза складається з декількох абзаців, розділів або сторінок. Деякі з метасимволів включають **&p** для позначення розриву абзацу, **&b** для позначення розриву розділу, **&m** для позначення розриву сторінки та **&l** для позначення розриву рядка.

{{% alert color="primary" %}}

Зверніть увагу, що метасимвол **&&** дорівнює **&**. Наприклад, якщо вам потрібно знайти текст для **&p**, який не є розривом абзацу, тоді ви можете використовувати **&&p**.

{{% /alert %}}

Наступний приклад коду показує, як замінити текст абзацом та розривом сторінки:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cpp" >}}

## Знайти та замінити рядок у верхньому / нижньому колонтитулі документа {#find-and-replace-string-in-header-or-footer-of-a-document}

Ви можете знайти та замінити текст у верхньому/нижньому колонтитулі документа Word за допомогою класу [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/).

Наступний зразок коду показує, як замінити текст розділу заголовка у вашому документі:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cpp" >}}

Ви можете помітити різницю між документами до застосування заміни рядка заголовка:

<img src="before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-cpp" style="width:600px"/>

І після застосування заміни рядка заголовка:

<img src="after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-cpp" style="width:600px"/>

Приклад коду для заміни тексту нижнього колонтитула у вашому документі дуже схожий на попередній приклад коду верхнього колонтитула. Все, що вам потрібно зробити, це замінити наступні два рядки:

{{< highlight csharp >}}
auto header = headersFooters->idx_get(HeaderFooterType::HeaderPrimary);
header->get_Range()->Replace(u"Aspose.Words", u"Remove", options);
{{< /highlight >}}

З наступним:

{{< highlight csharp >}}
auto footer = headersFooters->idx_get(HeaderFooterType::FooterPrimary);
footer->get_Range()->Replace(u"(C) 2006 Aspose Pty Ltd.", u"Copyright (C) Aspose Pty Ltd.", options);
{{< /highlight >}}

Ви можете помітити різницю між документами, перш ніж застосувати заміну рядка нижнього колонтитула:

<img src="before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-cpp" style="width:600px"/>

І після застосування заміни рядка нижнього колонтитула:

<img src="after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-cpp" style="width:600px"/>

## Ігнорувати текст під час пошуку та заміни {#ignore-text-during-find-and-replace}

Застосовуючи операцію пошуку та заміни, ви можете ігнорувати певні фрагменти тексту. Таким чином, певні частини тексту можуть бути виключені з пошуку, а пошук та заміна можуть бути застосовані лише до решти частин.

Aspose.Words надає багато властивостей пошуку та заміни для ігнорування тексту, таких як [IgnoreDeleted](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions), [IgnoreFieldCodes](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefieldcodes/), [IgnoreFields](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefields/), [IgnoreFootnotes](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefootnotes/), і [IgnoreInserted](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignoreinserted/).

Наступний приклад коду показує, як ігнорувати текст всередині змін видалення:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cpp" >}}

## Налаштування операції пошуку та заміни {#customize-find-and-replace-operation}

Aspose.Words надає безліч різних [properties](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) способів пошуку та заміни тексту, таких як застосування певного формату з властивостями [ApplyFont](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyfont/) та [ApplyParagraphFormats](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/), використання підстановок у шаблонах заміни з властивістю [UseSubstitutions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/) та інші.

Наступний приклад коду показує, як виділити певне слово у вашому документі:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cpp" >}}

Aspose.Words дозволяє використовувати інтерфейс [IReplacingCallback](https://reference.aspose.com/words/cpp/aspose.words.replacing/ireplacingcallback/) для створення та виклику користувацького методу під час операції заміни. У вас можуть бути деякі випадки використання, коли Вам потрібно налаштувати операцію пошуку та заміни, наприклад, замінити текст, вказаний у регулярному виразі, тегами HTML, тому в основному ви будете застосовувати заміну за допомогою вставки HTML.

Якщо вам потрібно замінити рядок тегом HTML, застосуйте інтерфейс **IReplacingCallback**, щоб налаштувати операцію пошуку та заміни таким чином, щоб зіставлення починалося на початку виконання з вузла зіставлення вашого документа. Наведемо кілька прикладів використання **IReplacingCallback**.

Наступний приклад коду показує, як замінити текст, вказаний на HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cpp" >}}

У наступному прикладі коду показано, як виділити позитивні числа зеленим кольором, а негативні-червоним:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cpp" >}}

Наступний приклад коду показує, як додати номер рядка перед кожним рядком:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cpp" >}}
