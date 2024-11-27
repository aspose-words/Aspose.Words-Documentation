---
title: Работа с VBA макроси в C++
second_title: Aspose.Words за C++
articleTitle: Работа с VBA макроси
linktitle: Работа с VBA макроси
description: "Работа с документи VBA проекти, използващи C++."
type: docs
weight: 410
url: /bg/cpp/working-with-vba-macros/
timestamp: 2024-01-30-16-22-34
---

Visual Basic за приложения (VBA) за Microsoft Word е прост, но мощен език за програмиране, който може да се използва за разширяване на функционалността. Aspose.Words API осигурява три класа за достъп до VBA изходния код на проекта:

- Клас [VBAProject](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/) осигурява достъп до VBA информация за проекта
- Клас [VBAModulesCollection](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodulecollection/) връща колекция от VBA проектни модули
- Клас [VbaModule](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/) осигурява достъп до проектния модул VBA

## Създайте проект VBA

Aspose.Words API осигурява `Document.VbaProject` свойство за получаване или задаване на VbaProject в документа.

Следният пример за код показва как да създадете проект VBA и модул VBA заедно с основните свойства, напр. име и тип:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cpp" >}}

## Четене На Макроси

Aspose.Words също така предоставя на потребителите възможността да четат VBA макроси.

Следващият пример за код показва как да четете VBA макроси от документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cpp" >}}

## Запис или промяна на макроси

Използвайки Aspose.Words, потребителите могат да променят VBA макроси.

Следващият пример за код показва как да променяте VBA макроси, като използвате свойството [SourceCode](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/get_sourcecode/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cpp" >}}

## Клон VBA Проект

С Aspose.Words също е възможно да се клонират VBA проекти.

Следващият пример за код показва как да клонирате проекта VBA, като използвате свойството [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/), което създава копие на съществуващия проект:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cpp" >}}

## Клон VBA Модул

Можете също така да клонирате VBA модули, ако е необходимо.

Следващият пример за код показва как да клонирате модула VBA, като използвате свойството [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/), което създава копие на съществуващия проект.:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cpp" >}}
