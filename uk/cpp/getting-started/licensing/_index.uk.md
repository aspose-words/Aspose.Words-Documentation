﻿---
title: Ліцензування та підписка
second_title: Aspose.Words для C++
articleTitle: Ліцензування та підписка
linktitle: Ліцензування та підписка
description: "Aspose.Words for C++ надає різні тарифні плани для придбання або пропонує безкоштовну пробну версію та 30-денну тимчасову ліцензію для ознайомлення з політикою ліцензування та підписки."
type: docs
weight: 60
url: /uk/cpp/licensing/
timestamp: 2024-10-24-11-44-28
---

Іноді, щоб краще вивчити систему, хочеться якомога швидше зануритися в код. Щоб полегшити ситуацію, Aspose.Words надає різні тарифні плани для придбання або пропонує безкоштовну пробну версію та тимчасову ліцензію на 30 днів для ознайомлення.

{{% alert color="primary" %}}

Зверніть увагу, що існує ряд загальних правил і практик, які допоможуть вам оцінити, належним чином ліцензувати і придбати наші продукти. Ви можете ознайомитися з ними в розділі [Правила покупки і FAQ](https://purchase.aspose.com/policies/) розділ.

{{% /alert %}}

## Безкоштовна пробна версія або тимчасова Ліцензія

Aspose.Words це неймовірне програмне забезпечення, яке розробники можуть спробувати перед покупкою.

### Безкоштовна пробна версія

Ознайомча версія така ж, як і придбана – [Пробна версія](https://releases.aspose.com/words/) просто стає ліцензованим, коли ви додаєте кілька рядків коду для застосування ліцензії.

Пробна версія Aspose.Words без зазначеної ліцензії забезпечує повну функціональність продукту, але при завантаженні та збереженні у верхній частині документа додається оціночний водяний знак і максимальний розмір документа обмежується кількома сотнями абзаців.

### Тимчасова Ліцензія

Якщо ви хочете протестувати Aspose.Words без обмежень пробної версії, ви також можете попросити тимчасову ліцензію на 30 днів. Більш детальну інформацію дивіться в розділі [Отримати тимчасову ліцензію](https://purchase.aspose.com/temporary-license/) сторінка.

## Придбана ліцензія

Після покупки вам потрібно застосувати файл ліцензії або включити файл ліцензії як вбудований ресурс. Цей розділ описує варіанти того, як це можна зробити, а також надає коментарі щодо деяких поширених питань.

{{% alert color="primary" %}}

Вам потрібно встановити ліцензію:

* тільки один раз для кожного домену програми
* перед використанням будь-яких ІНШИХ КЛАСІВ Aspose.Words

{{% /alert %}}

{{% alert color="primary" %}}

Інформацію про ціни Ви можете знайти на сайті [Інформація про ціни](https://purchase.aspose.com/pricing/words/family/) сторінка.

{{% /alert %}}

### Захист вашої придбаної ліцензії

Після придбання ліцензії Вам необхідно уважно ознайомитися з інформацією на сторінці [Захист придбаної ліцензії](https://purchase.aspose.com/orders/protecting-your-license-file) щоб захистити ваш ліцензійний файл. Будь ласка, зверніть увагу, що ця сторінка доступна для перегляду, тільки якщо у вас є платна Ліцензія.

### Параметри застосування ліцензії

Ліцензії можуть бути видані з різних місць:

* Явний шлях
* Папка, що містить файл `Aspose.Words_\*.dll`
* Папка, що містить збірку, яка викликала `Aspose.Words_\*.dll`
* Папка, що містить оригінальну збірку (ваша `.exe`)
* Вбудований ресурс у збірці називається `Aspose.Words_\*.dll`

Часто найпростіший спосіб встановити ліцензію-помістити файл ліцензії в ту саму папку, що і `Aspose.Words_\*.dll`, і вказати лише ім'я файлу, не вказуючи шлях.

{{% alert color="primary" %}}

Використовуйте метод [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/) для ліцензування компонента.

Багаторазовий виклик **SetLicense** не шкідливий, це просто марна трата процесорного часу.

{{% /alert %}}

#### Застосувати ліцензію за допомогою файлу або потокового об'єкта

Розробляючи свою програму, викликайте **SetLicense** у коді запуску перед використанням класів Aspose.Words.

##### Завантажте ліцензію з файлу

Використовуючи метод [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/), ви можете спробувати знайти файл ліцензії в папках embedded resources або assembly для подальшого використання.

Наступний приклад коду показує, як ініціалізувати ліцензію з папки:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-file.h" >}}

##### Завантажте ліцензію з потокового об'єкта

Наступний приклад коду показує, як ініціалізувати ліцензію з потоку, використовуючи інший метод [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-stream.h" >}}

#### Включіть файл ліцензії як вбудований ресурс

Простий спосіб підключити ліцензію до програми та переконатися, що вона не буде втрачена, - це включити її як вбудований ресурс. Спосіб впровадження та використання ресурсів залежить від вашої цільової платформи.

##### Windows

Припустимо, ви додали ліцензію як ресурс, як показано нижче.

```
resource.h
#define IDR_ASPOSE_WORDS_LIC            101
```

```
resource.rc
IDR_ASPOSE_WORDS_LIC RCDATA "Aspose.Words.Cpp.lic"
```

{{% alert color="primary" %}}

Ви можете прочитати про те, як працювати з файлами ресурсів, на сторінці [Робота з файлами ресурсів](https://docs.microsoft.com/en-us/cpp/windows/working-with-resource-files?view=msvc-160) сторінка.

{{% /alert %}}

Наступний приклад коду показує, як ініціалізувати ліцензію з вбудованого ресурсу за допомогою методу [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-windows.h" >}}

##### Linux

Існує подібний спосіб вбудовування ресурсів у Linux у виконуваний файл.

{{% alert color="primary" %}}

Додаткові відомості див. в розділі [Вбудовування ресурсів у виконуваний файл за допомогою GCC](https://stackoverflow.com/questions/4158900/embedding-resources-in-executable-using-gcc/4158997#4158997).

{{% /alert %}}

Наступний приклад коду показує, як ініціалізувати ліцензію з вбудованого ресурсу за допомогою методу [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-linux.h" >}}

### Зміна імені файлу ліцензії

Ім'я файлу ліцензії не повинно бути " Aspose.Words.LIC". Ви можете перейменувати його на свій розсуд і використовувати це ім'я під час налаштування ліцензії у вашому додатку.

### Виняток "не вдається знайти ім'я файлу ліцензії"

Коли ви купуєте та завантажуєте ліцензію, веб-сайт Aspose присвоює файлу ліцензії ім'я *"Aspose.Words.LIC"*. Ви завантажуєте файл ліцензії за допомогою свого браузера. У цьому випадку деякі браузери розпізнають файл ліцензії як XML і додають до нього розширення .xml, так що повне ім'я файлу на вашому комп'ютері стає *"Aspose.Words.lic.XML"*.

Якщо Microsoft Windows налаштовано на приховування розширень для відомих типів файлів (на жаль, це за замовчуванням у більшості установок Windows), файл ліцензії відображатиметься як *"Aspose.Words. LIC"* у Windows Explorer. Ви, мабуть, подумаєте, що це справжнє ім'я файлу, і викликаєте **SetLicense**, передаючи його *"Aspose.Words.LIC"*, але такого файлу немає, отже, виняток.

Щоб вирішити проблему, перейменуйте файл, щоб видалити невидиме розширення .xml. Ми також рекомендуємо вимкнути опцію "приховати розширення" в Microsoft Windows.

## Використання декількох продуктів Aspose

Якщо ви використовуєте у своєму додатку кілька продуктів Aspose, таких як Aspose.Words та `Aspose.Cells`, ось кілька корисних порад:

* Встановіть ліцензію для кожного продукту Aspose окремо. Навіть якщо у вас є один файл ліцензії для всіх компонентів, наприклад "Aspose.Total.lic", вам все одно потрібно викликати **SetLicense** окремо для кожного продукту Aspose, який ви використовуєте у своєму додатку.
* Використовуйте повну назву ліцензійного класу. Кожен продукт Aspose має клас **License** у своєму власному просторі імен. Наприклад, у Aspose.Words є [Aspose.Words.License](https://reference.aspose.com/words/cpp/aspose.words/license/), а у `Aspose.Cells` є `Aspose.Cells`.Клас ліцензії. Використання повної назви класу дозволяє уникнути плутанини щодо того, яка Ліцензія застосовується до того чи іншого продукту.
