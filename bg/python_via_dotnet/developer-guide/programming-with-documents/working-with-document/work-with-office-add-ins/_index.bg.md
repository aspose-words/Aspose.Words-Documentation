---
title: Работа с офис добавки в Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Работа с офис добавки
linktitle: Работа с офис добавки
description: "Aspose.Words вместо Python via .NET осигурява различни класове за работа с Office Add-ins. Можете да добавите Task Pane чрез уеб разширение и персонализиране на стъклото и свойствата на разширението."
type: docs
weight: 50
url: /bg/python-net/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

Понякога може да искате да дадете достъп до контроли на интерфейса, които работят код, за да промените документите. Aspose.Words API осигурява [webextensions](https://reference.aspose.com/words/python-net/aspose.words.webextensions/) модул, който предоставя различни класове за персонализиране на елементи и атрибути, разширяващи речника XML за представяне на Office Add-ins.

WebExtensions namespace може да бъде условно разделен на:

* Обекти за работа с работното стъкло
* Обекти за работа с уеб разширения

## Използване на шаблони за задачи

Задачите са интерфейсни повърхности, които са показани от дясната страна на прозореца в Microsoft Word. Задача стъкло позволява на потребителите да достъп до интерфейса контроли, които могат да стартират код за промяна на документи.

Например, използвайки Aspose.Words API, Можете да добавите задача стъкло добавяне и персонализиране на външния си вид.

## Използване на уеб разширения

Уеб разширенията са инструменти, които разширяват възможностите на Office приложения и взаимодействат със съдържанието на Office документ. Уеб разширенията осигуряват допълнителна функционалност на клиентите на Office за подобряване на потребителското преживяване.

Aspose.Words осигурява възможност за добавяне на Web разширения от типа Task Pane с помощта на [WebExtension](https://reference.aspose.com/words/python-net/aspose.words.webextensions/webextension/) както и [TaskPane](https://reference.aspose.com/words/python-net/aspose.words.webextensions/taskpane/) класове, а също така ви позволява да персонализирате стъклото и свойствата на разширението.

Следният пример за код показва как да се създадат работни стъкла и да се добавят към уеб разширяване задача стъкла с основни свойства:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-UsingWebExtensionTaskPanes.py" >}}

За да видите списък със задачи, добавете [web_extension_task_panes](https://reference.aspose.com/words/python-net/aspose.words/document/web_extension_task_panes/) собственост.

Следният пример за код показва как да получите такъв списък с добавки:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-GetListOfAddins.py" >}}
