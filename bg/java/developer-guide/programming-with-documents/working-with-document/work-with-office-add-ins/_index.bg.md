---
title: Работа с офис добавки в Java
second_title: Aspose.Words вместо Java
articleTitle: Работа с офис добавки
linktitle: Работа с офис добавки
description: "Aspose.Words вместо Java осигурява различни класове за работа с Office Add-ins. Можете да добавите Task Pane чрез уеб разширение и персонализиране на стъклото и свойствата на разширението."
type: docs
weight: 50
url: /bg/java/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

Понякога може да искате да даде достъп до интерфейс контрол, който работи код, за да промените документи. Aspose.Words API осигурява `WebExtensions` име пространство, което дава различни класове за персонализиране на елементи и атрибути разширяване на речник XML за представяне на Office Add-ins.

WebExtensions namespace може да се раздели условно на:

* Обекти за работа с работното стъкло
* Обекти за работа с уеб разширения

## Използване на шаблони за задачи

Задачите са интерфейсни повърхности, които се показват от дясната страна на прозореца в Microsoft Word. Задача стъкло позволява на потребителите да достъп до интерфейс контроли, които могат да стартират код, за да променят документи.

Например, използването Aspose.Words API, Можете да добавите задача стъкло добавяне и персонализиране на външния си вид.

## Използване на уеб разширения

Уеб разширенията са инструменти, които разширяват възможностите на Office приложения и взаимодействат със съдържанието на Office документ. Уеб разширенията осигуряват допълнителна функционалност на клиентите на Офис за подобряване на потребителското преживяване.

Aspose.Words осигурява възможност за добавяне на Web разширения от типа Task Pane с помощта на [WebExtension](https://reference.aspose.com/words/java/com.aspose.words/webextension/) както и [TaskPane](https://reference.aspose.com/words/java/com.aspose.words/taskpane/) класове, а също така ви позволява да персонализирате стъклото и свойствата на разширението.

Следният пример за код показва как да се създадат работни стъкла и да се добавят към уеб разширяване задача стъкла с основни свойства:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-UsingWebExtensionTaskPanes.java" >}}

За да видите списък със задачи, добавете [WebExtensionTaskPanes](https://reference.aspose.com/words/java/com.aspose.words/document/#getWebExtensionTaskPanes) собственост.

Следният пример за код показва как да получите такъв списък с добавки:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-GetListOfAddins.java" >}}

