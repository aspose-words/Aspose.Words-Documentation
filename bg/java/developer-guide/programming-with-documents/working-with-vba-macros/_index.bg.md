---
title: Работа с VBA Macros в Java
second_title: Aspose.Words вместо Java
articleTitle: Работа с VBA Макрос
linktitle: Работа с VBA Макрос
description: "Работа с документ VBA проекти, използващи Java."
type: docs
weight: 410
url: /bg/java/working-with-vba-macros/
---

Visual Basic за заявления (VBA) за Microsoft Word е прост, но мощен програмен език, който може да се използва за разширяване на функционалността. Aspose.Words API осигурява три класа за достъп до изходния код на проекта VBA:

- На [VBAProject](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/) Класът осигурява достъп до информация за проекта VBA
- На [VBAModulesCollection](https://reference.aspose.com/words/java/com.aspose.words/vbamodulecollection/) клас връща колекцията на VBA проектни модули
- На [VbaModule](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/) Класът осигурява достъп до модула на проекта VBA

## Създаване на VBA проект

Aspose.Words API осигурява [VbaProject](https://reference.aspose.com/words/java/com.aspose.words/document/#getVbaProject) имот, за да получите или настроите VbaProject в документа.

Следният пример за код показва как да се създаде VBA проект и VBA модул заедно с основни свойства, например. Име и тип:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CreateVbaProject.java" >}}

## Чети макроси

Aspose.Words Също така дава възможност на потребителите да четат VBA макрос.

Следният пример за код показва как да прочетете VBA Макрос от документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ReadVbaMacros.java" >}}

## Промяна на макроси

Използване Aspose.Words, потребителите могат да модифицират VBA макрос.

Следният пример за код показва как да модифицирате VBA Macros с помощта на [SourceCode](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/#getSourceCode) собственост:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ModifyVbaMacros.java" >}}

## Клон VBA Проект

С Aspose.Words възможно е също така да се клонират проекти на VBA.

Следният пример за код показва как да клонирате проекта VBA с помощта на [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) собственост, която създава копие от съществуващия проект:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaProject.java" >}}

## Клон VBA Модул

Можете също така да клонирате VBA модули, ако е необходимо.

Следният пример за код показва как да клонирате модула VBA с помощта на [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) собственост, която създава копие от съществуващия проект

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaModule.java" >}}
