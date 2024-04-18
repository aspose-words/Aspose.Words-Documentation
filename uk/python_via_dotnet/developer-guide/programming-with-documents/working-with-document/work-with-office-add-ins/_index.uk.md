---
title: Робота з офісними добавками в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Робота з офісними добавками
linktitle: Робота з офісними добавками
description: "Aspose.Words для Python via .NET надає різні класи для роботи з Office Add-ins. Ви можете додати Панель завдань через розширення та налаштування пане та властивостей розширення."
type: docs
weight: 50
url: /uk/python-net/work-with-office-add-ins/
---

Іноді ви можете надати доступ до керування інтерфейсами, які запускають код для зміни документів. Aspose.Words API забезпечує [webextensions](https://reference.aspose.com/words/python-net/aspose.words.webextensions/) Модуль, який надає різні класи для налаштування елементів та атрибутів, що простягаються за допомогою XML словника для представлення Office Add-ins.

WebExtensions простір імен може бути умовно розподілений на:

* Об'єкти для роботи з пане завдання
* Об'єкти для роботи з розширеннями

## Використання завдань Panes

Завдання панелі - це інтерфейсні поверхні, які відображаються на правій стороні вікна в Microsoft Wordй Завдання панелі дозволяє користувачам керувати інтерфейсом доступу, які можуть запустити код для зміни документів.

Наприклад, за допомогою Aspose.Words API, Ви можете додати панель завдань і налаштувати його зовнішній вигляд.

## Використання розширення веб

Розширення веб-сайтів - інструменти, які розширюють можливості Office додатків та взаємодіють з вмістом Office. Розширення веб-сайтів надає додаткові функціональні можливості для покращення досвіду роботи користувачів.

Aspose.Words надає можливість додавати Web розширення типу Пане завдання за допомогою [WebExtension](https://reference.aspose.com/words/python-net/aspose.words.webextensions/webextension/) і [TaskPane](https://reference.aspose.com/words/python-net/aspose.words.webextensions/taskpane/) класи, а також дозволяє налаштовувати сковорідку та розширення властивостей.

Наприклад, наступний код показує, як створити сковорідки задачі і додати в панелі завдань з розширенням сайтів з базовими властивостями:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-UsingWebExtensionTaskPanes.py" >}}

Для перегляду списку завдань пане додати вини, використовуйте [web_extension_task_panes](https://reference.aspose.com/words/python-net/aspose.words/document/web_extension_task_panes/) майно.

Приклад коду показує, як отримати такий список додатків:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-GetListOfAddins.py" >}}
