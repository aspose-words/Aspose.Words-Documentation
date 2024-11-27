---
title: Робота з надбудовами Office в C++
second_title: Aspose.Words для C++
articleTitle: Робота з надбудовами Office
linktitle: Робота з надбудовами Office
description: "Aspose.Words для C++ надає різні класи для роботи з надбудовами Office. Ви можете додати панель завдань через веб-розширення та налаштувати властивості панелі та розширення."
type: docs
weight: 50
url: /uk/cpp/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

Іноді може знадобитися надати доступ до елементів керування інтерфейсом, які запускають код для зміни документів. Aspose.Words API надає простір імен `WebExtensions`, який надає різні класи для налаштування елементів та атрибутів, розширюючи словник XML для представлення доповнень Office.

WebExtensions простір імен можна умовно розділити на:

* Об'єкти для роботи з панеллю завдань
* Об'єкти для роботи з веб-розширеннями

## Використання панелей завдань

Панелі завдань-це інтерфейсні поверхні, які відображаються в правій частині вікна в Microsoft Word. Панель завдань дозволяє користувачам отримувати доступ до елементів керування інтерфейсом, які можуть запускати код для зміни документів.

Наприклад, використовуючи Aspose.Words API, ви можете додати надбудову панелі завдань і налаштувати її зовнішній вигляд.

## Використання веб-розширень

Веб-Розширення-це інструменти, які розширюють можливості програм Office і дозволяють взаємодіяти з вмістом документів Office. Веб-розширення надають додаткові функціональні можливості клієнтам Office для покращення взаємодії з користувачами.

Aspose.Words надає можливість додавати веб-Розширення типу панелі завдань за допомогою класів [WebExtension](https://reference.aspose.com/words/cpp/aspose.words.webextensions/webextension/) та [TaskPane](https://reference.aspose.com/words/cpp/aspose.words.webextensions/taskpane/), а також дозволяє налаштувати властивості панелі та розширення.

Наступний приклад коду показує, як створити панелі завдань та додати до Веб-розширення панелі завдань з основними властивостями:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cpp" >}}

Щоб переглянути список доповнень панелі завдань, використовуйте властивість [WebExtensionTaskPanes](https://reference.aspose.com/words/cpp/aspose.words/document/get_webextensiontaskpanes/).

Наступний приклад коду показує, як отримати такий список доповнень:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithWebExtension-GetListOfAddins.cpp" >}}
