---
title: Системні вимоги
second_title: Aspose.Words для C++
articleTitle: Системні вимоги
linktitle: Системні вимоги
description: "Перш ніж розпочати роботу з Aspose.Words замість C++, Переконайтеся, що ви відповідаєте вимогам операційної системи, платформи, фреймворків та середовища, щоб належним чином враховувати дії на ваших пристроях."
type: docs
weight: 70
url: /uk/cpp/system-requirements/
timestamp: 2024-07-11-16-13-28
---

Aspose.Words C++ не вимагає встановлення будь-якого стороннього продукту, такого як Microsoft Word. Aspose.Words сам по собі є двигуном для створення, модифікації, перетворення та візуалізації документів у різних форматах, включаючи формати документів Microsoft Word.

## Підтримувані операційні системи

Aspose.Words для C++ підтримує наступні 64-розрядні або 32-розрядні операційні системи та платформи:

<table>
   <tr>
      <td style="font-weight: bold; width:400px">Операційна система</td>
      <td style="font-weight: bold; width:400px">Версія</td>
   </tr>
   <tr>
      <td>Microsoft Windows</td>
      <td><ul>
         <li>Windows 2008 Server (x64, x86)</li>
         <li>Windows 2012 Server (x64, x86)</li>
         <li>Windows 2012 R2 Server (x64, x86)</li>
         <li>Windows 2016 Server (x64, x86)</li>
         <li>Windows 2019 Server (x64, x86)</li>
         <li>Windows 2022 Server (x64, x86)</li>
         <li>Windows Vista (x64, x86)</li>
         <li>Windows 7 (x64, x86)</li>
         <li>Windows 8, 8.1 (x64, x86)</li>
         <li>Windows 10 (x64, x86)</li>
      </ul></td>
   </tr>
   <tr>
      <td>Linux</td>
      <td><ul>
         <li>Ubuntu</li>
         <li>Fedora</li>
         <li>OpenSUSE</li>
         <li>CentOS</li>
         <li>та інші</li>
      </ul></td>
   </tr>
   <tr>
      <td>macOS</td>
      <td><ul>
         <li>macOS-x86_64: 12.0 або пізніші версії</li>
         <li>macOS-arm64: 12.0 або пізніші версії</li>
      </ul></td>
   </tr>
</table>

## Середовище розробки

Ви можете використовувати Aspose.Words для C++ при розробці додатків для Windows, Linux або macOS.

### Windows

Aspose.Words для C++ може використовуватися для розробки додатків у будь-якому середовищі розробки, що підтримує [Microsoft Visual Studio набір інструментів платформи v143](https://docs.microsoft.com/en-us/cpp/porting/binary-compat-2015-2017), але середовища, перелічені в наступній таблиці, підтримуються явно:

<table>
	<tr>
			<td style="font-weight: bold; width:800px">Середовища розробки</td>
		</tr>
  <tr>
			<td><ul><li>Microsoft Visual Studio 2022</li></ul></td>
			</tr>
</table>

### Linux

Aspose.Words для C++ може використовуватися для розробки додатків у середовищі розробки, що підтримує [C++14 мовний стандарт](https://en.cppreference.com/w/cpp/14#Compiler_support), але наступні компілятори підтримуються явно:

<table>
	<tr>
			<td style="font-weight: bold; width:800px">Компілятор</td>
		</tr>
  <tr>
			<td><ul><li>Clang 3.9.1 або пізніші версії</li></ul></td>
			</tr>
</table>

### Додаткова залежність від Linux

Aspose.Words для C++ для Linux залежить від [fontconfig](https://www.freedesktop.org/wiki/Software/fontconfig/) двійкових файлів як динамічної бібліотеки, так і інструменту. Будь ласка, встановіть його перед використанням:

1. Встановлення fontconfig на Ubuntu або Debian</br>
`sudo apt install libfontconfig fontconfig`
2. Встановлення fontconfig на Fedora або CentOs</br>
   `sudo yum install fontconfig`

### macOS

Aspose.Words для C++ може використовуватися для розробки програми в наступних середовищах розробки:

<table>
	<tr>
			<td style="font-weight: bold; width:800px">Середовища розробки</td>
		</tr>
  <tr>
			<td><ul><li>Xcode 12.5.1 або пізнішої версії</li><li>Clang та libc++ (які за замовчуванням постачаються разом із Xcode)</li></ul></td>
			</tr>
</table>

### Додаткова залежність від macOS

Aspose.Words для C++ для macOS залежить від [fontconfig](https://www.freedesktop.org/wiki/Software/fontconfig/) двійкових файлів як динамічної бібліотеки, так і інструменту. Будь ласка, встановіть його перед використанням:

Встановлення fontconfig на macOS за допомогою [homebrew](https://brew.sh)</br>
`brew install fontconfig`
