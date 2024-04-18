---
title: Знайти і замінити Python
second_title: Aspose.Words для Python via .NET
articleTitle: Знайти і замінити
linktitle: Знайти і замінити
type: docs
description: "Знайти рядок або звичайний шаблон виразу у вашому документі і замінити його текстом, який ви хочете використовувати Pythonй"
weight: 100
url: /uk/python-net/find-and-replace/
---

Ви можете легко орієнтуватися в документі за допомогою клавіатури і миші, але якщо у вас є багато сторінок, щоб прокрутити через, це займе досить багато часу, щоб знайти конкретний текст у довгостроковому документі. Якщо ви хочете замінити певні символи або слова, які ви використовували у вашому документі. Функціональність "Фінд і заміна" дозволяє знайти послідовність символів в документі і замінити його ще однією послідовністю символів.

Aspose.Words дозволяє знайти конкретний рядок або регулярний вираз у вашому документі і замінити його альтернативою без встановлення та використання додаткових додатків, таких як Microsoft Wordй Це дозволить прискорити багато завдань та форматування, потенційно економити час роботи.

Ця стаття пояснює, як застосувати заміну рядків та регулярні вирази за підтримки метахарактерів.

## Способи пошуку і заміни {#ways-to-find-and-replace}

Aspose.Words надає два способи застосування функції пошуку та заміни за допомогою:

1,1 км *Проста заміна рядків* – знайти і замінити певну рядок з іншим, потрібно вказати рядок пошуку (альфа-нумеричні символи), який буде замінено на всі випадки з іншим заданим рядком заміни. Обидва рядки не повинні містити символи. Враховуйте, що порівняння рядків може бути справжньою, або ви можете бути невиліковними, або мати кілька подібних заклинання.
2. *Пошукові вирази* – вказати формальний вираз, щоб знайти відповідні рядки та замінити їх відповідно до формального виразу. Зауважте, що слово визначено, як проводиться тільки альфа-цифрові символи. Якщо заміна виконана тільки цілими словами, які відповідають і вхідний рядок відбувається, щоб містити символи, то не знайдено фраз.

Крім того, ви можете використовувати спеціальні метахарактери з простою заміною рядків і регулярними виразами, щоб вказати перерви в межах пошуку і заміни операції.

Aspose.Words Подарує функцію пошуку та заміни [aspose.words.replacing](https://reference.aspose.com/words/python-net/aspose.words.replacing/) модуль. Ви можете працювати з багатьма опціями під час пошуку та заміни процесу за допомогою [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/) клас.

### Знайдіть і замініть текст за допомогою Simple String Заміна {#find-and-replace-text-using-simple-string-replacement}

Ви можете використовувати один з [replace](https://reference.aspose.com/words/python-net/aspose.words/range/replace/) і [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) методи пошуку або заміни певного рядка і повернення кількості замін, які були зроблені. У цьому випадку можна вказати рядок, який буде замінено на всі його появи, чи є заміна випадку-чутливим, і чи будуть порушені тільки однорядні слова.

Приклад коду показує, як знайти рядок "_CustomerName_" і замінити його на рядок * "James Bond"*:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Hello _CustomerName_,")
print("Original document text: " + doc.range.text)

doc.range.replace("_CustomerName_", "James Bond", aw.replacing.FindReplaceOptions(aw.replacing.FindReplaceDirection.FORWARD))

print("Document text after replace: " + doc.range.text)

# Save the modified document
doc.save(docs_base.artifacts_dir + "FindAndReplace.simple_find_replace.docx")
{{< /highlight >}}

Ви можете помітити різницю між документом, перш ніж застосувати простий заміну рядків:

<img src="/words/python-net/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement" style="width:600px"/>

І після застосування простий заміну рядків:

<img src="/words/python-net/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement" style="width:600px"/>

### Знайти і замінити текст за допомогою регулярних виразів {#find-and-replace-text-using-regular-expressions}

Регулярний вираз - це шаблон, який описує певну послідовність тексту. Припустимо, ви хочете замінити всі подвійні появи слова з однозначним словом. Потім ви можете застосувати наступний формальний вираз, щоб вказати шаблон подвійного слова: `([a-zA-Z]+) \1`й

Використання [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) метод пошуку та заміни окремих комбінацій символів шляхом налаштування параметра формального виразу як шаблону для пошуку матчів.

Приклад наступного коду показує, як замінити рядки, які відповідають формальному виразному шаблону з вказаним рядком заміни:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceWithRegex.py" >}}

Ви можете помітити різницю між документом перед заміною рядків з формальними виразами:

<img src="/words/python-net/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions" style="width:600px"/>

І після застосування заміни рядка з формальними виразами:

<img src="/words/python-net/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions" style="width:600px"/>

### Пошук і заміна String за допомогою Metacharacters {#find-and-replace-text-using-metacharacters}

Ви можете використовувати метахарактери в рядок пошуку або рядок заміни, якщо конкретний текст або фраза складається з декількох абзаців, розділів або сторінок. Деякі з метахарактів включають **&p** для абзацу, **&b** для розбиття секції, **&m** для перерву сторінок і **&l** для лінійної перерви.

{{% alert color="primary" %}}

Зверніть увагу, що метахарактер **&&** рівні **&**й Наприклад, якщо потрібно знайти текст для **&p** що не є абзацу, то можна використовувати **&&p**й

{{% /alert %}}

Приклад наступного коду показує, як замінити текст з абзацу та перерву сторінок:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextContainingMetaCharacters.py" >}}

## Знайти і замінити Рядок в заголовку / нижній колонтитул документа {#find-and-replace-string-in-header-or-footer-of-a-document}

Ви можете знайти та замінити текст у розділі заголовок / нижній колонтитул документа Word за допомогою документа Word [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) клас.

Приклад коду показує, як замінити текст розділу заголовка у вашому документі:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextInFooter.py" >}}

Ви можете помітити різницю між документом перед внесенням заголовка рядка:

<img src="/words/python-net/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement" style="width:600px"/>

І після внесення заміни рядків заголовка:

<img src="/words/python-net/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement" style="width:600px"/>

Приклад коду для заміни тексту розділу нижнього колонтитула в документі дуже схожий на попередній приклад коду заголовка. Все, що потрібно зробити, це замінити наступні два рядки:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.HEADER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

З наступним:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.FOOTER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

Ви можете помітити різницю між документом перед заміною рядків нижнього колонки:

<img src="/words/python-net/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement" style="width:600px"/>

І після застосування заміни рядків нижнього колонки:

<img src="/words/python-net/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement" style="width:600px"/>

## Ігнорувати текст під час пошуку та заміни {#ignore-text-during-find-and-replace}

В той час як застосувати функцію пошуку та заміни, ви можете ігнорувати певні сегменти тексту. Таким чином, деякі частини тексту можна виключити з пошуку, а пошук і заміну можна застосувати тільки до інших частин.

Aspose.Words надає багато знахідок і замінних властивостей для ігнорування тексту, таких як [ignore_deleted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_deleted/), [ignore_fields](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_fields/), і [ignore_inserted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_inserted/)й

Приклад наступного коду показує, як ігнорувати текст всередині видалення записів:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-IgnoreTextInsideDeleteRevisions.py" >}}

## Налаштування пошуку та заміни операцій {#customize-find-and-replace-operation}

Aspose.Words надає безліч різних властивостей для пошуку та заміни тексту, таких як застосування певного формату з [apply_font](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_font/) і [apply_paragraph_formats](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_paragraph_format/) властивості, використовуючи заміщення в замінних візерунках з [use_substitutions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/use_substitutions/) майно та інші.

Приклад коду показує, як виділити конкретне слово у вашому документі:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-FindAndHighlight.py" >}}
