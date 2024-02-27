---
title: Работа с надстройками Office в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с надстройками Office
linktitle: Работа с надстройками Office
description: "Aspose.Words для Python via .NET предоставляет различные классы для работы с надстройками Office. Вы можете добавить панель задач через веб-расширение и настроить свойства панели и расширения."
type: docs
weight: 50
url: /ru/python-net/work-with-office-add-ins/
---

Иногда вам может потребоваться предоставить доступ к элементам управления интерфейса, которые запускают код для изменения документов. Aspose.Words API предоставляет модуль [webextensions](https://reference.aspose.com/words/python-net/aspose.words.webextensions/), который предоставляет различные классы для настройки элементов и атрибутов, расширяющих словарь XML для представления надстроек Office.

Пространство имен WebExtensions можно условно разделить на:

* Объекты для работы с панелью задач
* Объекты для работы с веб-расширениями

## Использование панелей задач

Панели задач представляют собой поверхности интерфейса, которые отображаются в правой части окна в Microsoft Word. Панель задач позволяет пользователям получать доступ к элементам управления интерфейса, которые могут запускать код для изменения документов.

Например, с помощью Aspose.Words API вы можете добавить надстройку области задач и настроить ее внешний вид.

## Использование веб-расширений

Веб-расширения — это инструменты, которые расширяют возможности приложений Office и взаимодействуют с содержимым документов Office. Веб-расширения предоставляют клиентам Office дополнительные функции для улучшения пользовательского опыта.

Aspose.Words предоставляет возможность добавлять веб-расширения типа "Панель задач" с помощью классов [WebExtension](https://reference.aspose.com/words/python-net/aspose.words.webextensions/webextension/) и [TaskPane](https://reference.aspose.com/words/python-net/aspose.words.webextensions/taskpane/), а также позволяет настраивать свойства панели и расширения.

В следующем примере кода показано, как создавать панели задач и добавлять их к панелям задач веб-расширения с базовыми свойствами:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-UsingWebExtensionTaskPanes.py" >}}

Чтобы просмотреть список надстроек области задач, используйте свойство [web_extension_task_panes](https://reference.aspose.com/words/python-net/aspose.words/document/web_extension_task_panes/).

В следующем примере кода показано, как получить такой список надстроек:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-GetListOfAddins.py" >}}
