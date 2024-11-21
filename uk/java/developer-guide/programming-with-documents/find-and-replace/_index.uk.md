---
title: Знайти і замінити Java
second_title: Aspose.Words для Java
articleTitle: Знайти і замінити
linktitle: Знайти і замінити
type: docs
description: "Знайти рядок або звичайний шаблон виразу у вашому документі і замінити його текстом, який ви хочете використовувати Javaй"
weight: 100
url: /uk/java/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

Ви можете легко орієнтуватися в документі за допомогою клавіатури і миші, але якщо у вас є багато сторінок, щоб прокрутити через, це займе досить багато часу, щоб знайти конкретний текст у довгому документі. Якщо ви хочете замінити певні символи або слова, які ви використовували в документі. Функціональність "Фінд і заміна" дозволяє знайти послідовність символів в документі і замінити його ще однією послідовністю символів.

Aspose.Words дозволяє знайти конкретний рядок або регулярний вираз у вашому документі і замінити його альтернативою без встановлення та використання додаткових додатків, таких як Microsoft Wordй Це дозволить прискорити багато завдань, які форматують, потенційно заощаджуючи час роботи.

Ця стаття пояснює, як застосувати заміну рядків та регулярні вирази за підтримки метахарактерів.

## Способи пошуку і заміни {#ways-to-find-and-replace}

Aspose.Words надає два способи застосування функції пошуку та заміни за допомогою:

1,1 км *Проста заміна рядків* – знайти і замінити певну рядок з іншим, потрібно вказати рядок пошуку (альфа-нумеричні символи), який буде замінено на всі випадки з іншим заданим рядком заміни. Обидва рядки не повинні містити символи. Враховуйте, що порівняння рядків може бути справжньою, або ви можете бути невиліковними або мати кілька подібних заклинання.
2. *Пошукові вирази* – вказати формальний вираз, щоб знайти відповідні рядки та замінити їх відповідно до формального виразу. Зауважте, що слово визначено, як проводиться тільки альфа-цифрові символи. Якщо заміна виконана тільки цілими словами, які відповідають, і вхідний рядок відбувається, щоб містити символи, то не знайдено фраз.

Також можна використовувати спеціальні метахарактери з простою заміною рядків та регулярними виразами, щоб вказати перерви в межах функції пошуку та заміни.

Aspose.Words презентує функцію пошуку та заміни [IReplacingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/)й Ви можете працювати з багатьма опціями під час пошуку та заміни процесу за допомогою [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) клас.

### Знайдіть і замініть текст за допомогою простої заміни String {#find-and-replace-text-using-simple-string-replacement}

Ви можете використовувати один з [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) методи пошуку або заміни певного рядка і повернення кількості замін, які були зроблені. У цьому випадку можна вказати рядок, який буде замінено на всі його появи, чи є заміна випадку-чутливим, і чи будуть вражені тільки самостійні слова.

Приклад коду показує, як знайти рядок "_CustomerName_" і замінити його на рядок * "James Bond"*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-SimpleStringReplacement.java" >}}

Ви можете помітити різницю між документом, перш ніж застосувати простий заміну рядків:

<img src="/words/java/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-java" style="width:600px"/>

І після застосування простий заміну рядків:

<img src="/words/java/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-java" style="width:600px"/>

### Знайти і замінити текст за допомогою регулярних виразів {#find-and-replace-text-using-regular-expressions}

Звичайний вираз (regex) є шаблоном, який описує певну послідовність тексту. Ви хочете замінити всі подвійні появи слова з однозначним словом. Потім ви можете застосувати наступний формальний вираз, щоб вказати шаблон подвійного слова: `([a-zA-Z]+) \1`й

Використовуйте інші [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.util.regex.Pattern-java.lang.String) метод пошуку та заміни окремих комбінацій символів шляхом налаштування `Regex` параметр як звичайний шаблон виразу для пошуку матчів.

Приклад наступного коду показує, як замінити рядки, які відповідають формальному виразному шаблону з вказаною заміною рядка:


{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-UsingRegularExpression.java" >}}


Ви можете помітити різницю між документом перед заміною рядків з формальними виразами:

<img src="/words/java/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

І після застосування заміни рядка з формальними виразами:

<img src="/words/java/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

### Пошук і заміна String Використання Metacharacters {#find-and-replace-text-using-metacharacters}

Ви можете використовувати метахарактери в рядок пошуку або рядок заміни, якщо конкретний текст або фраза складається з декількох абзаців, розділів або сторінок. Деякі з метахарактів включають **&p** для абзацу, **&b** для розбиття секції, **&m** для перерву сторінок і **&l** для розбиття лінії.

{{% alert color="primary" %}}

Зверніть увагу, що метахарактер **&&** дорівнює **&**й Наприклад, якщо потрібно знайти текст для **&p** що не є абзацу, то можна використовувати **&&p**й

{{% /alert %}}

Приклад наступного коду показує, як замінити текст з абзацу та перерву сторінок:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextContaingMetaCharacters.java" >}}

## Знайти і замінити Рядок в заголовку / нижній колонтитул документа {#find-and-replace-string-in-header-or-footer-of-a-document}

Ви можете знайти та замінити текст у розділі заголовок / нижній колонтитул документа Word за допомогою документа Word [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) клас.

Приклад коду показує, як замінити текст розділу заголовка у документі:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInHeader.java" >}}


Ви можете помітити різницю між документом перед заміною рядків заголовка:

<img src="/words/java/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

І після внесення заміни рядків заголовка:

<img src="/words/java/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

Приклад коду для заміни тексту розділу нижнього колонтитула в документі дуже схожий на попередній приклад коду заголовка. Все, що потрібно зробити, це замінити наступні два рядки:

{{< highlight java >}}
HeaderFooter header = headersFooters.get(HeaderFooterType.HEADER_PRIMARY);
header.getRange().replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

З наступним:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInFooter.java" >}}


Ви можете помітити різницю між документом перед заміною рядків нижнього колонтитула:

<img src="/words/java/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

І після застосування заміни рядків нижнього колонки:

<img src="/words/java/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

## Ігнорувати текст під час пошуку та заміни {#ignore-text-during-find-and-replace}

В той час як застосувати функцію пошуку та заміни, ви можете ігнорувати певні сегменти тексту. Таким чином, деякі частини тексту можна виключити з пошуку, а пошук і заміну можна застосувати тільки до інших частин.

Aspose.Words надає багато знахідок і замінних властивостей для ігнорування тексту, таких як [IgnoreDeleted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreDeleted), [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes), [IgnoreFields](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFields), [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes), і [IgnoreInserted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreInserted)й

Приклад наступного коду показує, як ігнорувати текст всередині видалення записів:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-IgnoreText-IgnoreTextInsideDeleteRevisions.java" >}}

## Налаштування пошуку та заміни операцій {#customize-find-and-replace-operation}

Aspose.Words багато різних [properties](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) щоб знайти і замінити текст, наприклад, застосування певного формату з [ApplyFont](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyFont) і [ApplyParagraphFormats](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyParagraphFormat) властивості, використовуючи заміщення в замінних візерунках з [UseSubstitutions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getUseSubstitutions) майно та інші.

Приклад коду показує, як виділити конкретне слово у вашому документі:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-CustomizeFindAndReplaceOperation.java" >}}


Aspose.Words дозволяє використовувати [IReplacingCallback](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/) інтерфейс для створення та виклику користувацького методу під час операції заміни. Ви можете мати деякі випадки використання, де вам потрібно налаштувати роботу пошуку та заміни, наприклад, заміну тексту, зазначеного з формальним виразом з тегами HTML, так що в основному ви будете застосувати заміну з вставкою HTML.

Якщо потрібно замінити рядок з тегом HTML, нанесіть **IReplacingCallback** інтерфейс для налаштування пошуку та заміни операції, так що матч починається на початку запуску з відповідною вершиною вашого документа. Ми надаємо кілька прикладів **IReplacingCallback**й

Приклад коду показує, як замінити текст, зазначений за допомогою HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceWithHtml.java" >}}


Приклад коду показує, як виділити позитивні числа з зеленим кольором і негативними числами з червоним кольором:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-NumberHighlightCallback.java" >}}

Приклад коду показує, як додати номер рядка до кожного рядка:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-TestLineCounter.java" >}}
