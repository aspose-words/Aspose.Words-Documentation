---
title: Работа с Office Addins в Java
second_title: Aspose.Words для Java
articleTitle: Работа с Office Addins
linktitle: Работа с Office Addins
description: "Aspose.Words для Java Предоставляет различные классы для работы с Office Add-ins. Вы можете добавить панель задач через веб-расширение и настроить свойства панели и расширения."
type: docs
weight: 50
url: /ru/java/work-with-office-add-ins/
---

Иногда вы можете предоставить доступ к элементам управления интерфейсом, которые запускают код для изменения документов. Aspose.Words API обеспечивает `WebExtensions` Пространство имен, которое предоставляет различные классы для настройки элементов и атрибутов, расширяя словарь XML для представления Office Add-ins.

Пространство имен WebExtensions условно можно разделить на:

* Объекты для работы с панелью задач
* Объекты для работы с веб-расширениями

## Использование панелей задач

Панели задач представляют собой интерфейсные поверхности, которые отображаются на правой стороне окна в Microsoft Word. Панель задач позволяет пользователям получать доступ к элементам управления интерфейсом, которые могут запускать код для изменения документов.

Например, используя Aspose.Words API, Вы можете добавить панель задач и настроить ее внешний вид.

## Использование веб-расширений

Web Extensions - это инструменты, расширяющие возможности приложений Office и взаимодействующие с содержимым документов Office. Web Extensions предоставляет дополнительные функциональные возможности клиентам Office для улучшения пользовательского опыта.

Aspose.Words обеспечивает возможность добавления веб-расширений типа панели задач с помощью [WebExtension](https://reference.aspose.com/words/java/com.aspose.words/webextension/) и [TaskPane](https://reference.aspose.com/words/java/com.aspose.words/taskpane/) классы, а также позволяет настроить свойства панелей и расширений.

Следующий пример кода показывает, как создавать панели задач и добавлять в панели задач веб-расширения с основными свойствами:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-UsingWebExtensionTaskPanes.java" >}}

Чтобы увидеть список дополнений панели задач, используйте [WebExtensionTaskPanes](https://reference.aspose.com/words/java/com.aspose.words/document/#getWebExtensionTaskPanes) собственность.

Следующий пример кода показывает, как получить такой список дополнений:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-GetListOfAddins.java" >}}

