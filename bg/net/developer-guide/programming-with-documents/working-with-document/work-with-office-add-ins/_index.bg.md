---
title: Работа с офис добавки в C#
second_title: Aspose.Words вместо .NET
articleTitle: Работа с офис добавки
linktitle: Работа с офис добавки
description: "Aspose.Words вместо .NET осигурява различни класове за работа с Office добавки използване C#. Можете да добавите Task Pane чрез уеб разширение и персонализиране на стъклото и свойствата на разширението."
type: docs
weight: 50
url: /bg/net/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

Понякога може да искате да дадете достъп до контроли на интерфейса, които работят код, за да промените документите. Aspose.Words API осигурява `WebExtensions` име пространство, което дава различни класове за персонализиране на елементи и атрибути разширяване на речник XML за представяне на Office Добавяне.

WebExtensions namespace може да бъде условно разделен на:

* Обекти за работа с работното стъкло
* Обекти за работа с уеб разширения

## Използване на шаблони за задачи

Задачите са интерфейсни повърхности, които са показани от дясната страна на прозореца в Microsoft Word. Задача стъкло позволява на потребителите да достъп до интерфейса контроли, които могат да стартират код за промяна на документи.

Например, използвайки Aspose.Words API, Можете да добавите задача стъкло добавяне и персонализиране на външния си вид.

## Използване на уеб разширения

Уеб разширенията са инструменти, които разширяват възможностите на Office приложения и взаимодействат със съдържанието на Office документ. Уеб разширенията осигуряват допълнителна функционалност на клиентите на Office за подобряване на потребителското преживяване.

Aspose.Words осигурява възможност за добавяне на Web разширения от типа Task Pane с помощта на [WebExtension](https://reference.aspose.com/words/net/aspose.words.webextensions/webextension/) както и [TaskPane](https://reference.aspose.com/words/net/aspose.words.webextensions/taskpane/) класове, а също така ви позволява да персонализирате стъклото и свойствата на разширението.

Следният пример за код показва как да се създадат работни стъкла и да се добавят към уеб разширяване задача стъкла с основни свойства:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-WebExtensions-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cs" >}}

За да видите списък със задачи, добавете [WebExtensionTaskPanes](https://reference.aspose.com/words/net/aspose.words/document/webextensiontaskpanes/) собственост.

Следният пример за код показва как да получите такъв списък с добавки:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with WebExtension-GetListOfAddins.cs" >}}
