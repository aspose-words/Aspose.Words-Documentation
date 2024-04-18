---
title: Робота з документообігу в C#
second_title: Aspose.Words для .NET
articleTitle: Робота з документами
linktitle: Робота з документами
description: "Розширена обробка документів TXT, списки, BiDi, заголовки / нижній колонтитул, використовуючи C#й"
type: docs
weight: 430
url: /uk/net/working-with-text-document/
---

У статті ми дізнаємось, які параметри можуть бути корисними для роботи з текстовим документом Aspose.Wordsй Будь ласка, зауважте, що це не повний список доступних варіантів, але тільки приклад роботи з деякими з них.

## Додати бі-прямий Марки

Ви можете використовувати [AddBidiMarks](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/addbidimarks/) Введіть номер мобільного, який Ви вказали при укладаннi договору з банком - для ідентифікації. Aspose.Words вставки Unicode Character 'RIGHT-TO-LEFT MARK' (U+200F) до кожного двонаправного Run в тексті. Ця опція відповідає параметру "Додати двосторонні позначки" у діалоговому вікні перетворення файлів MS Word, коли ви експортуєте у формат Plain Text. Зауважте, що мова йде про діалог тільки в тому випадку, якщо будь-які з арабських або івритових мов редагування додаються в MS Word.

Приклад наступного коду показує, як використовувати **AddBidiMarks** майно. Значення за замовчуванням цього майна *false*:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-AddBidiMarks.cs" >}}

## Визначте елементи списку під час завантаження TXT

Aspose.Words може імпортувати список елементу текстового файлу як номери списку або звичайний текст у його типовій моделі об'єкта документа. Про нас [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detectnumberingwithwhitespaces/) майно дозволяє вказати, як зареєстровані елементи списку визнаються, коли документ імпортується зі звичайного формату тексту:

* Ім'я * Якщо цей варіант встановлюється *true*, У списку також використовуються білі простори: алгоритм розпізнавання списку для кількості арабських стилів (1., 1.1.2.) використання як білих просторів, так і точок ().

* Ім'я * Якщо цей варіант встановлюється *false*, Алгоритм розпізнавання списків виявляє пункти списку, коли кінцеві числа списку з точки зору, правою дужкою або символами кулі (наприклад, "*", "-" або "o").

Приклад коду показує, як використовувати цю властивість:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DetectNumberingWithWhitespaces.cs" >}}

## Ручка Провідні та підйомні місця Під час завантаження TXT

Ви можете контролювати спосіб обробки провідних і причепів при завантаженні TXT файл. Провідні простори можуть бути оброблені, збережені або перетворені в відступ і причепні приміщення можуть бути оброблені або збережені.

Наприклад, наступний код показує, як обрізати провідні та причіпні місця при імпорті TXT файл:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-HandleSpacesOptions.cs" >}}

## Видалити документ Налаштування тексту

Aspose.Words забезпечує [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/documentdirection/) нерухомість в [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) клас для виявлення текстового напрямку (RTL / LTR) в документі. Це майно встановлює або отримує текстові напрямки документа, що надаються в [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/documentdirection/) заохочення. Значення за замовчуванням зліва *right*й

Приклад наступного коду показує, як виявити текстовий напрямок документа при імпорті файлу TXT:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DocumentTextDirection.cs" >}}

## Експорт заголовка та нижній колонтитул у вихідному TXT

Якщо ви хочете експортувати заголовок і нижній колонтитул у вихідному документі TXT, ви можете використовувати [ExportHeadersFootersMode](https://reference.aspose.com/words/net/aspose.words.saving/exportheadersfootersmode/) майно. Ця властивість вказує на те, як заголовки та нижній колонтитули експортуються в звичайний формат тексту.

Приклад коду показує, як експортувати заголовки та нижній колонтитул до звичайного формату тексту:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-ExportHeadersFootersMode.cs" >}}

## Виявлення експортного списку на виході TXT

Aspose.Words запроваджено [TxtListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtlistindentation/) клас, який дозволяє визначити, як рівень списку відступаються при експорті до звичайного текстового формату. Під час роботи [TxtSaveOption](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/), Про нас [ListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/listindentation/) майно надається, щоб вказати характер, який буде використовуватися для рівнів відступу і підрахунку, вказавши, скільки символів використовувати як відступ на один рівень списку.

Значення за замовчуванням для властивості персонажа '\0' вказує на те, що немає відступу. Для підрахунку майна, значення за замовчуванням 0, що означає відсутність відступу.

### Використання символів вкладки

Приклад коду показує, як експортувати рівні списку за допомогою символів вкладки:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseTabCharacterPerLevelForListIndentation.cs" >}}

### Використання космічних символів

Приклад коду показує, як експортувати рівні списку за допомогою символів простору:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseSpaceCharacterPerLevelForListIndentation.cs" >}}

### Використання ідентифікатора за замовчуванням

Приклад коду показує, як експортувати рівні списку за допомогою визначення за замовчуванням:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DefaultLevelForListIndentation.cs" >}}
