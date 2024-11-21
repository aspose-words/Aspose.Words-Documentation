---
title: Робота з офісними добавками в Java
second_title: Aspose.Words для Java
articleTitle: Робота з офісними добавками
linktitle: Робота з офісними добавками
description: "Aspose.Words для Java надає різні класи для роботи з Office Add-ins. Ви можете додати Панель завдань через розширення та налаштування пане та властивостей розширення."
type: docs
weight: 50
url: /uk/java/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

Іноді ви можете надати доступ до керування інтерфейсами, які запускають код для зміни документів. Aspose.Words API забезпечує `WebExtensions` простір імен, який надає різні класи для налаштування елементів та атрибутів, що простягаються за допомогою XML словника для представлення Office Add-ins.

WebExtensions простір імен може бути умовно розподілений на:

* Об'єкти для роботи з пане завдання
* Об'єкти для роботи з розширеннями

## Використання завдань Panes

Завдання панелі - це інтерфейсні поверхні, які відображаються на правій стороні вікна в Microsoft Wordй Завдання панелі дозволяє користувачам керувати інтерфейсом доступу, які можуть запустити код для зміни документів.

Наприклад, за допомогою Aspose.Words API, Ви можете додати панель завдань і налаштувати його зовнішній вигляд.

## Використання розширення веб

Розширення веб-сайтів - інструменти, які розширюють можливості Office додатків та взаємодіють з вмістом Office. Подовжувачі веб-сайтів забезпечують додаткові функціональні можливості для покращення досвіду користувачів.

Aspose.Words надає можливість додавати Web розширення типу Пане завдання за допомогою [WebExtension](https://reference.aspose.com/words/java/com.aspose.words/webextension/) і [TaskPane](https://reference.aspose.com/words/java/com.aspose.words/taskpane/) класи, а також дозволяє налаштовувати пане і розширення властивостей.

Приклад коду показує, як створити сковорідки завдання і додати в панелі завдань веб-доповнення з базовими властивостями:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-UsingWebExtensionTaskPanes.java" >}}

Для перегляду списку завдань пане додати вини, використовуйте [WebExtensionTaskPanes](https://reference.aspose.com/words/java/com.aspose.words/document/#getWebExtensionTaskPanes) майно.

Приклад коду показує, як отримати такий список додатків:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-GetListOfAddins.java" >}}

