---
title: Работа с VBA Macros в Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Работа с VBA Macros
linktitle: Работа с VBA Macros
description: "Създаване, четене, писане, клониране и управление на VBA макроси в документ, използвайки Python."
type: docs
weight: 410
url: /bg/python-net/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic за заявления (VBA) за Microsoft Word е прост, но мощен програмен език, който може да се използва за разширяване на функционалността. Aspose.Words API осигурява три класа за достъп до изходния код на проекта VBA:

- На [VBAProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) Класът осигурява достъп до информация за проекта VBA
- На [VBAModuleCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodulecollection/) класът връща колекцията на VBA проектни модули
- На [VbaModule](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/) Класът осигурява достъп до модула на проекта VBA
- На [VbaModuleType](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamoduletype/) Изброяването определя видовете модел в проект на VBA. Модулът може да бъде процесуален модул, документен модул, класов модул или проектантски модул

## Създаване на VBA проект

Aspose.Words API осигурява [vba_project](https://reference.aspose.com/words/python-net/aspose.words/document/vba_project/) имот, за да получите или настроите [VbaProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) в документа.

Следният пример за код показва как да се създаде VBA проект и VBA модул заедно с основни свойства, например. [name](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/name/) както и [type](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/type/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CreateVbaProject.py" >}}

## Чети макроси

Aspose.Words Също така дава възможност на потребителите да четат VBA макрос.

Следният пример за код показва как да прочетете VBA Макрос от документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ReadVbaMacros.py" >}}

## Запис или промяна на макроси

Използване Aspose.Words, потребителите могат да модифицират VBA макрос.

Следният пример с код показва как да се модифицира VBA Macros с помощта на [source_code](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/source_code/) собственост:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ModifyVbaMacros.py" >}}

## Клон VBA Проект

С Aspose.Words възможно е също да се клонират проекти на VBA.

Следният пример за код показва как да клонирате проекта VBA с помощта на [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/clone/) собственост, която създава копие от съществуващия проект:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaProject.py" >}}

## Клон VBA Модул

Можете също да клонирате VBA модули, ако е необходимо.

Следният пример за код показва как да клонирате VBA Модула с помощта на [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/clone/) собственост, която създава копие от съществуващия проект:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaModule.py" >}}

## Работа с референциите на проекта VBA

Aspose.Words API осигурява [VbaReferenceCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbareferencecollection/) клас за работа с VBA Референции за проекти, представляващи колекция от препоръки за проекти на VBA.

Следният пример за код показва как да се премахнат някои препратки от събирането на препратки от проект на VBA:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-RemoveReferenceFromCollectionOfReferences.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-GetLibIdAndReferencePath.py" >}}
