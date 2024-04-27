---
title: Робота з документообігу в Java
second_title: Aspose.Words для Java
articleTitle: Робота з документами
linktitle: Робота з документами
description: "Розширена обробка документів TXT, списки, BiDi, заголовки / нижній колонтитул, використовуючи Javaй"
type: docs
weight: 430
url: /uk/java/working-with-text-document/
---

У статті ми дізнаємось, які параметри можуть бути корисні для роботи з текстовим документом Aspose.Wordsй Будь ласка, зверніть увагу, що це не повний перелік доступних варіантів, але тільки приклад роботи з деякими з них.

## Додати бі-прямий Марки

Ви можете використовувати [AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks) Введіть номер мобільного, який Ви вказали при укладаннi договору з банком - для ідентифікації. Aspose.Words вставки Unicode Character 'RIGHT-TO-LEFT MARK' (U+200F) до кожного двонаправного Run в тексті. Цей параметр відповідає параметру "Додати двосторонні позначки" у діалоговому вікні перетворення файлів MS Word, коли ви експортуєте у формат Plain Text. Зауважте, що це з'являється у діалоговому вікні тільки якщо будь-який з арабських або івритових мов редагування додано в MS Word.

Приклад коду показує, як використовувати `TxtSaveOptions.AddBidiMarks` майно. Значення за замовчуванням даної нерухомості *true*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## Визначте пункти списку під час завантаження TXT

Aspose.Words може імпортувати список елементу текстового файлу у вигляді чисел списку або звичайного тексту у моделі об'єкта документа. Про нас [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces) нерухомість дозволяє вказати, як зареєстровані елементи списку визнаються, коли документ імпортується зі звичайного формату тексту:

* Ім'я * Якщо цей варіант встановлюється *true*, У списку також використовуються білі простори: алгоритм розпізнавання списку для кількості арабського стилю (1., 1.1.2.) використовується як білий простір, так і точка ().
* Ім'я * Якщо цей варіант встановлюється *false*, Алгоритм розпізнавання списків виявляє абзаци списків, коли кількість списків закінчується як з точки зору, правою дужкою або символами кулі (наприклад, "*", "-" або "o").

Приклад коду показує, як використовувати цю властивість:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## Ручка Провідні та траильні космоси під час завантаження TXT

Ви можете контролювати спосіб обробки провідних і причепів при завантаженні TXT файлів. Провідні простори можуть бути оброблені, збережені або перетворені в відступ і причепні приміщення можуть бути оброблені або збережені.

Приклад коду нижче показує, як обрізати провідні та причіпні місця під час імпорту файлу TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## Видалити документ Налаштування тексту

Aspose.Words Послуги [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection) нерухомість [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) клас для виявлення текстового напрямку (RTL / LTR) в документі. Це майно встановлює або отримує текстові напрямки документа, що надаються в [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/) заохочення. Значення за замовчуванням зліва направо.

Приклад наступного коду показує, як виявити текстовий напрямок документа при імпорті файлу TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## Експорт заголовка та нижній колонтитул у вихідному файлі TXT

Якщо ви хочете експортувати заголовок і нижній колонтитул у вихідному документі TXT, ви можете використовувати [ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode) майно. Ця властивість вказує на те, як заголовки та нижній колонтитули експортуються в звичайний формат тексту.

Приклад коду показує, як експортувати головки та нижній колонтитул до звичайного формату тексту:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## Виявлення експортного списку на виході TXT

Aspose.Words Введення [TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/) клас, який дозволяє вказати рівень списку, відступаючи при експорті до звичайного текстового формату. Під час роботи [TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/), Про нас [ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation) майно надається, щоб вказати характер, який буде використовуватися для рівнів відступу і підрахунку, вказавши, скільки символів використовувати як відступ на один рівень списку.

Значення за замовчуванням для властивості персонажа '\0' вказує на те, що немає відступу. Для підрахунку майна, значення за замовчуванням 0, що означає відсутність відступу.

### Використання символів вкладки

Приклад коду показує, як експортувати рівні списку за допомогою символів вкладки:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### Використання космічних символів

Приклад коду показує, як експортувати рівні списку за допомогою символів простору:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### Використання ідентифікатора за замовчуванням

Приклад коду показує, як експортувати рівні списку за допомогою визначення за замовчуванням:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}
