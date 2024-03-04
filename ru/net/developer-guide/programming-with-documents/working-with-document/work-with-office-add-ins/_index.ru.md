---
title: Работа с надстройками Office в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с надстройками Office
linktitle: Работа с надстройками Office
description: "Aspose.Words для .NET предоставляет различные классы для работы с надстройками Office с использованием C#. Вы можете добавить панель задач через веб-расширение и настроить свойства панели и расширения."
type: docs
weight: 50
url: /ru/net/work-with-office-add-ins/
---

Иногда вам может потребоваться предоставить доступ к элементам управления интерфейса, которые запускают код для изменения документов. Aspose.Words API предоставляет пространство имен `WebExtensions`, которое предоставляет различные классы для настройки элементов и атрибутов, расширяющих словарь XML для представления надстроек Office.

Пространство имен WebExtensions можно условно разделить на:

* Объекты для работы с панелью задач
* Объекты для работы с веб-расширениями

## Использование панелей задач

Панели задач — это поверхности интерфейса, которые отображаются в правой части окна в Microsoft Word. Панель задач позволяет пользователям получать доступ к элементам управления интерфейса, которые могут запускать код для изменения документов.

Например, с помощью Aspose.Words API вы можете добавить надстройку области задач и настроить ее внешний вид.

## Использование веб-расширений

Веб-расширения — это инструменты, которые расширяют возможности приложений Office и взаимодействуют с содержимым документов Office. Веб-расширения предоставляют клиентам Office дополнительные функции для улучшения пользовательского опыта.

Aspose.Words предоставляет возможность добавлять веб-расширения типа "Панель задач" с помощью классов [WebExtension](https://reference.aspose.com/words/ru/net/aspose.words.webextensions/webextension/) и [TaskPane](https://reference.aspose.com/words/ru/net/aspose.words.webextensions/taskpane/), а также позволяет настраивать свойства панели и расширения.

В следующем примере кода показано, как создавать панели задач и добавлять их к панелям задач веб-расширения с базовыми свойствами:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-WebExtensions-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cs" >}}

Чтобы просмотреть список надстроек области задач, используйте свойство [WebExtensionTaskPanes](https://reference.aspose.com/words/ru/net/aspose.words/document/webextensiontaskpanes/).

В следующем примере кода показано, как получить такой список надстроек:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with WebExtension-GetListOfAddins.cs" >}}
