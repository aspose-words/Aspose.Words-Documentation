---
title: Використовуйте DocumentBuilder для вставки елементів документа
second_title: Aspose.Words для C++
articleTitle: Використовуйте DocumentBuilder для вставки елементів документа
linktitle: Використовуйте DocumentBuilder для вставки елементів документа
type: docs
description: "Вставте елементи документа за допомогою конструктора документів у C++."
weight: 80
url: /uk/cpp/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

`DocumentBuilder` використовується для зміни документів. У цій статті пояснюється та описується, як виконувати ряд завдань:

## Вставка текстового рядка

Просто передайте рядок тексту, який потрібно вставити в документ, методу `DocumentBuilder.Write`. Форматування тексту визначається властивістю `Font`. Цей об'єкт містить різні атрибути шрифту (назва шрифту, розмір шрифту, колір і т.д.). Деякі важливі атрибути шрифту також представлені властивостями DocumentBuilder, що дозволяють отримати до них прямий доступ. Це логічні властивості `Font.Bold`, `Font.Italic` і `Font.Underline`.

Зверніть увагу, що задане вами форматування символів буде застосовуватися до всього тексту, вставленому починаючи з поточної позиції в документі.

У наведеному нижче прикладі відформатований текст вставляється за допомогою DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WriteAndFont-WriteAndFont.cpp" >}}

## Вставка абзацу

 `DocumentBuilder.Writeln` також вставляє рядок тексту в документ, але, крім того, додає розрив абзацу. Поточне форматування шрифту також визначається властивістю `DocumentBuilder.Font`, а поточне форматування абзацу визначається властивістю `DocumentBuilder.ParagraphFormat`. У наведеному нижче прикладі показано, як вставити абзац у документ.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Вставка таблиці

Базовий алгоритм створення таблиці за допомогою DocumentBuilder простий:

1. Запустіть таблицю за допомогою `DocumentBuilder.StartTable`.
1. Вставте клітинку за допомогою `DocumentBuilder.InsertCell`. При цьому автоматично почнеться новий рядок. При необхідності використовуйте властивість `DocumentBuilder.CellFormat`, щоб задати форматування комірки.
1. Вставте вміст комірки, використовуючи методи `DocumentBuilder`.
1. Повторюйте кроки 2 і 3, поки рядок не буде завершено.
1. Викличте `DocumentBuilder.EndRow`, щоб завершити поточний рядок. При необхідності використовуйте властивість `DocumentBuilder.RowFormat`, щоб задати форматування рядка.
1. Повторюйте кроки 2-5, поки таблиця не буде заповнена повністю.
1. Зателефонуйте `DocumentBuilder.EndTable`, щоб завершити створення таблиці. Нижче описані відповідні методи створення таблиці DocumentBuilder.

### Запуск таблиці

Виклик `DocumentBuilder.StartTable` є першим кроком у побудові таблиці. Він також може бути викликаний всередині комірки, і в цьому випадку запускається вкладена таблиця. Наступний викликаний метод - `DocumentBuilder.InsertCell`.

### Вставка комірки

Після виклику `DocumentBuilder->InsertCell` буде створена нова комірка, і будь-який вміст, доданий за допомогою інших методів класу `DocumentBuilder`, буде додано до поточної комірки. Щоб створити нову клітинку в тому ж рядку, знову зателефонуйте `DocumentBuilder->InsertCell`. Використовуйте властивість `DocumentBuilder.CellFormat`, щоб задати форматування комірки. Воно повертає об'єкт `CellFormat`, який представляє все форматування комірки таблиці.

### Завершення рядка

Викличте `DocumentBuilder.EndRow`, щоб завершити поточний рядок. Якщо ви зателефонуєте `DocumentBuilder->InsertCell` відразу після цього, таблиця буде продовжена з нового рядка.

Використовуйте властивість `DocumentBuilder.RowFormat`, щоб вказати форматування рядків. Воно повертає об'єкт `RowFormat`, який представляє все форматування для рядка таблиці.

### Завершення таблиці

Зателефонуйте `DocumentBuilder.EndTable`, щоб завершити роботу з поточною таблицею. Цей метод слід викликати лише один раз після виклику `DocumentBuilder->EndRow`. При виклику `DocumentBuilder.EndTable` курсор переміщується з поточної комірки в позицію відразу за таблицею. Наступний приклад показує, як створити відформатовану таблицю, що містить 2 рядки та 2 стовпці.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.cpp" >}}

## Вставка розриву

Якщо ви хочете явно розпочати новий рядок, абзац, стовпець, розділ або сторінку, зателефонуйте `DocumentBuilder.InsertBreak`. Передайте цьому методу тип розриву, який потрібно вставити, який представлений перерахуванням `BreakType`. У наведеному нижче прикладі показано, як вставляти розриви сторінок у документ.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.cpp" >}}

## Вставка зображення

DocumentBuilder містить кілька доповнень до методу `DocumentBuilder->InsertImage`, який дозволяє вставляти вбудоване або плаваюче зображення. Якщо зображення є метафайлом EMF або WMF, воно буде вставлено в документ у форматі метафайлу. Усі інші зображення будуть збережені у форматі PNG. Метод `DocumentBuilder->InsertImage` може використовувати зображення з різних джерел:

- З файлу або `URL`, передавши рядковий параметр `DocumentBuilder->InsertImage`.
- З потоку шляхом передачі параметра `Stream` `DocumentBuilder->InsertImage`.
- З Об'єкта Image шляхом передачі параметра Image `DocumentBuilder->InsertImage`.
- З масиву байтів шляхом передачі параметра масиву байтів `DocumentBuilder.InsertImage`.Для кожного з методів `DocumentBuilder->InsertImage` існують додаткові перевантаження, які дозволяють вставляти зображення з наступними параметрами:
- Вбудований або плаваючий у певному положенні, наприклад, `DocumentBuilder->InsertImage`.
- Відсотковий масштаб або розмір користувача, наприклад, `DocumentBuilder.InsertImage`. Крім того, метод `DocumentBuilder->InsertImage` повертає об'єкт `Shape`, який був щойно створений та вставлений, щоб ви могли додатково змінювати властивості фігури.

### Вставка вбудованого зображення

Передайте один рядок, що представляє файл, що містить зображення, до `DocumentBuilder->InsertImage`, щоб вставити зображення в документ як вбудовану графіку. У наведеному нижче прикладі показано, як вставити вбудоване зображення в положення курсору в документі.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cpp" >}}

### Вставка плаваючого (абсолютно розташованого) зображення

У цьому прикладі вставляється плаваюче зображення з файлу або `URL` у вказаному положенні та розмірі.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cpp" >}}

## Вставка закладки

Щоб вставити закладку в документ, вам необхідно виконати наступні дії:

1. Викличте `DocumentBuilder->StartBookmark`, передавши йому бажану назву закладки.
1. Вставте текст закладки, використовуючи методи DocumentBuilder.
1. Зателефонуйте `DocumentBuilder.EndBookmark`, передавши йому те саме ім'я, яке ви використовували з **DocumentBuilder->StartBookmark**.
1. Закладки можуть перекриватися і охоплювати будь-який діапазон. Щоб створити дійсну закладку, вам потрібно викликати обидва параметри `DocumentBuilder->StartBookmark` та `DocumentBuilder->EndBookmark` з однаковою назвою закладки.

{{% alert color="primary" %}}

Неправильно оформлені закладки або закладки з повторюваними назвами будуть проігноровані при збереженні документа.

{{% /alert %}}

У наведеному нижче прикладі показано, як вставити закладку в документ за допомогою конструктора документів.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.cpp" >}}

## Вставка поля `Form`

Поля форми-це окремий випадок Word полів, які дозволяють "взаємодіяти" з користувачем. Поля форми в Microsoft Word включають текстове поле, поле зі списком та checkbox.DocumentBuilder надає спеціальні методи для вставки кожного типу полів форми в документ: `DocumentBuilder.InsertTextInput`, `DocumentBuilder->InsertCheckBox` та `DocumentBuilder.InsertComboBox`. Зверніть увагу, що якщо ви вкажете ім'я для поля форми, то автоматично буде створена закладка з таким же ім'ям.

### Вставка тексту для введення

 `DocumentBuilder.InsertTextInput` щоб вставити текстове поле в документ. У наведеному нижче прикладі показано, як вставити поле форми введення тексту в документ.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cpp" >}}

### Установка прапорця

Зателефонуйте `DocumentBuilder.InsertCheckBox`, щоб вставити checkbox у документ. У наведеному нижче прикладі показано, як вставити поле форми checkbox у документ.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cpp" >}}

### Вставка поля зі списком

Зателефонуйте `DocumentBuilder.InsertComboBox`, щоб вставити поле зі списком у документ. У наведеному нижче прикладі показано, як вставити поле форми зі списком у документ.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cpp" >}}

## Вставка мовного стандарту на рівні поля

Тепер клієнти можуть вказувати мовний стандарт на рівні поля і можуть краще контролювати ситуацію. Ідентифікатори мовних стандартів можуть бути прив'язані до кожного поля всередині DocumentBuilder. Наведені нижче приклади ілюструють, як використовувати цю опцію.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

## Вставка гіперпосилання

Використовуйте `DocumentBuilder.InsertHyperlink`, щоб вставити гіперпосилання в документ. Цей метод приймає три параметри: текст посилання, який відображатиметься в документі, пункт призначення посилання (URL або назва закладки всередині документа) та логічний параметр, який повинен мати значення true, якщо `URL` - це назва закладки всередині документа. DocumentBuilder.InsertHyperlink виконує внутрішні виклики `DocumentBuilder.InsertField`.Метод завжди додає апострофи на початку та в кінці URL. Зверніть увагу, що вам потрібно чітко вказати форматування шрифту для тексту, що відображається гіперпосиланням, використовуючи властивість `Font`. Наведений нижче приклад вставляє гіперпосилання в документ за допомогою DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Вставка об'єкта Ole

Якщо вам потрібен об'єкт Ole, зателефонуйте `DocumentBuilder.InsertOleObject`. Передайте цьому методу `ProgId` явно з іншими параметрами. У наведеному нижче прикладі показано, як вставити об'єкт Ole у документ.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cpp" >}}

## Встановіть ім'я та розширення файлу під час вставки об'єкта Ole

OLE пакет-це застарілий і" недокументований " спосіб зберігання вбудованого об'єкта, якщо обробник OLE невідомий. Ранні версії Windows, такі як Windows 3.1, 95 та 98, мали додаток Packager.exe, який можна було використовувати для вбудовування будь-якого типу даних у документ. Тепер ця програма виключена з Windows, але MS Word та інші програми все ще використовують її для вбудовування даних, якщо обробник OLE відсутній або невідомий. OlePackage клас дозволяє отримати доступ до OLE Package властивостей. У наведеному нижче прикладі показано, як встановити ім'я файлу, розширення та відображуване ім'я для OLE Package.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cpp" >}}

## Вставка HTML

Ви можете легко вставити рядок HTML, що містить фрагмент HTML або весь документ HTML, у документ Word. Просто передайте цей рядок методу `DocumentBuilder->InsertHtml`. Однією з корисних реалізацій методу є збереження рядка HTML у базі даних та вставлення його в документ під час Mail Merge для додавання відформатованого вмісту замість того, щоб створювати його за допомогою різних методів конструктора документів. У наведеному нижче прикладі показано, як вставити HTML у документ за допомогою DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHtml.cpp" >}}

## Вставити горизонтальну лінійку в документ

У прикладі low code показано, як вставити форму горизонтальної лінійки в документ, використовуючи метод `DocumentBuilder->InsertHorizontalRule`.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cpp" >}}
