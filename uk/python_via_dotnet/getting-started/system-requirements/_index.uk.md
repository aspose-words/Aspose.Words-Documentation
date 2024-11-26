---
title: Вимоги до системи
second_title: Aspose.Words для Python via .NET
articleTitle: Вимоги до системи
linktitle: Вимоги до системи
description: "Перед тим як почати роботу з Aspose.Words для Python via .NET, Забезпечити, що ви відповідаєте операційній системі, вимогам платформи та навколишнього середовища, тому діяльність на ваших пристроях належним чином підраховується."
type: docs
weight: 50
url: /uk/python-net/system-requirements/
timestamp: 2024-04-27-18-03-32
---

Aspose.Words для Python via .NET не потрібно сторонніх товарів, таких як Microsoft Word бути встановленими. Aspose.Words це двигун для створення, редагування, перетворення та надання документів у різних форматах, включаючи Microsoft Word формати документів.

## Підтримувані операційні системи

Aspose.Words для Python via .NET підтримує будь-яку 64-бітну або 32-бітну операційну систему, де Python 3.5 або пізніше встановлюється.

<table>
    <tr>
        <td style="font-weight: bold; width:400px">Операційна система</td>
        <td style="font-weight: bold; width:400px">Версія</td>
    </tr>
    <tr>
        <td>Microsoft Windows</td>
        <td><ul></ul></td>
            <li>Windows 2003 р. Server (кс64, кс86)</li>
            <li>Windows 2008 Server (кс64, кс86)</li>
            <li>Windows 2012 рік Server (кс64, кс86)</li>
            <li>Windows 2012 рік R2 Server (кс64, кс86)</li>
            <li>Windows 2016 рік Server (кс64, кс86)</li>
            <li>Windows 2019 рік Server (кс64, кс86)</li>
            <li>Windows XP (кс64, кс86)</li>
            <li>Windows Vista (кс64, кс86)</li>
            <li>Windows 7 (х64, х86)</li>
            <li>Windows 8, 8.1 (х64, x86)</li>
            <li>Windows 10 (х64, x86)</li>
        
    </tr>
    <tr>
        <td>М'ясо</td>
        <td><ul></ul></td>
            <li>macOS-x86_64: 10.14 або пізніше</li>
            <li>macOS-arm64: 11.0 або пізніше</li>
        
    </tr>
    <tr>
        <td>Linux</td>
        <td><ul></ul></td>
            <li>Ubuntu</li>
            <li>Відкриті</li>
            <li>CentOS</li>
            <li>та інші</li>
        
    </tr>
</table>

## Вимоги до системи для цілей Linux та платформи macOS

- бібліотеки GCC-6 (або пізніше).

- Залежності .NET Core Runtimeй Встановлення .NET Core Runtime сам `NOT` обов'язкові.

- Для Python 3.5-3.7: У `pymalloc` будівництво Python потрібно. Про нас `--with-pymalloc` Python опція збірки включена за замовчуванням. Зазвичай, `pymalloc` будівництво Python позначений `m` suffix в ім'я файлу.

- до `libpython` Поділитися Python Бібліотека. Про нас `--enable-shared` Python build Option вимкнено за замовчуванням, деякі Python розподіли не містять `libpython` Бібліотека. Для деяких платформ Linux, `libpython` Бібліотека може бути встановлена за допомогою менеджера пакета, наприклад: `sudo apt-get install libpython3.7`й Загальна проблема полягає в тому, що `libpython` Русский EnglishРусскийУкраїнськаPolskiItalianoEspañol汉语Bahasa Indonesiaहिन्दीPortuguês日本語DeutschFrançaisภาษาไทยελληνικά اللغة العربية Питання можна зафіксувати за допомогою Python створення варіантів встановлення альтернативних бібліотек при компіляції Python, або фіксована шляхом створення символічного посилання на `libpython` Русский EnglishРусскийУкраїнськаPolskiItalianoEspañol汉语Bahasa Indonesiaहिन्दीPortuguês日本語DeutschFrançaisภาษาไทยελληνικά اللغة العربية Зазвичай, `libpython` Ім'я файла бібліотеки `libpythonX.Ym.so.1.0` для Python 3.5-3.7, або `libpythonX.Y.so.1.0` для Python 3.8 або пізніше (наприклад, libpython3.7m.so.1.0, libpython3.9.so.1.0)
