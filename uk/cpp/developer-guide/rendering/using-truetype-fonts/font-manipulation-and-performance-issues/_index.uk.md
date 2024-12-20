﻿---
title: Маніпулювання шрифтами та проблеми з продуктивністю в C++
second_title: Aspose.Words для C++
articleTitle: Маніпулювання шрифтами та проблеми з продуктивністю
linktitle: Маніпулювання шрифтами та проблеми з продуктивністю
description: "Aspose.Words для C++ використовує повну назву шрифту, прізвище, версію, стиль, щоб знайти необхідні дані про шрифт або відповідну заміну запитуваному шрифту. FontSettings дозволяє прискорити завантаження документів."
type: docs
weight: 11
url: /uk/cpp/font-manipulation-and-performance-issues/
timestamp: 2024-09-24-14-35-44
---

Усі доступні механізми маніпулювання шрифтами містяться в класі [FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings). Цей клас відповідає за вибірку шрифтів з певних джерел, а також за процес заміни шрифту, як описано нижче.

## Розбір дозволених шрифтів

Аналіз шрифтів виконується в кілька етапів:

1. Отримання інформації про Шрифт, вибір з усіх доступних шрифтів.
1. Аналіз дозволених шрифтів для отримання доступних гліфів і метрик (горизонтальних і вертикальних).
1. Аналіз дозволених шрифтів для вбудовування і підгрупування.

Коли Aspose.Words вперше зустрічає шрифт у документі, він намагається отримати основну інформацію про Шрифт, таку як повна назва шрифту, прізвище, версія, стиль, із файлів шрифтів, розташованих у кожному джерелі шрифту. Після вилучення всіх шрифтів Aspose.Words використовує ці відомості для пошуку необхідних даних шрифту або відповідної заміни запитуваного шрифту.

## Проблема продуктивності при заміні шрифтів

Оскільки описана вище процедура займає багато часу, це може негативно позначитися на продуктивності програми при його першому запуску. Однак кожен екземпляр **FontSettings** має власний кеш, що може скоротити час обробки наступних документів. Наприклад, ви можете спільно використовувати екземпляр класу **FontSettings** для різних документів, що дозволяє прискорити завантаження документів. Наступний приклад демонструє це:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.cpp" >}}

У випадку, коли **FontSettings** Не визначено явно, Aspose.Words використовує екземпляр за замовчуванням **FontSettings**. Цей екземпляр також автоматично розподіляється між документами і може бути витягнутий наступним чином:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
{{< /highlight >}}

## Використання екземпляра за замовчуванням FontSettings

Якщо ви впевнені, що всі документи, які обробляються, вимагають однакових налаштувань шрифту, рекомендується налаштувати та використовувати екземпляр за замовчуванням **FontSettings**. Припустимо, вам потрібно використовувати однакові джерела шрифтів для всіх ваших документів. У цьому випадку ви можете просто змінити екземпляр за замовчуванням наступним чином:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cpp" >}}

{{% alert color="primary" %}}

Екземпляр користувача **FontSettings** має вищий пріоритет, ніж екземпляр за замовчуванням.

{{% /alert %}}
