---
title: Работа с VBA Macros в C#
second_title: Aspose.Words вместо .NET
articleTitle: Работа с VBA Macros
linktitle: Работа с VBA Macros
description: "Работа с документ VBA проекти, използващи C#."
type: docs
weight: 410
url: /bg/net/working-with-vba-macros/
---

Visual Basic за заявления (VBA) за Microsoft Word е прост, но мощен програмен език, който може да се използва за разширяване на функционалността. Aspose.Words API осигурява три класа за достъп до изходния код на проекта VBA:

- На [VBAProject](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/) Класът осигурява достъп до информация за проекта VBA
- На [VBAModuleCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbamodulecollection/) класът връща колекцията на VBA проектни модули
- На [VbaModule](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/) Класът осигурява достъп до модула на проекта VBA
- На [VbaModuleType](https://reference.aspose.com/words/net/aspose.words.vba/vbamoduletype/) Изброяването определя видовете модел в проект на VBA. Модулът може да бъде процесуален модул, документен модул, класов модул или проектантски модул

## Създаване на VBA проект

Aspose.Words API осигурява [VbaProject](https://reference.aspose.com/words/net/aspose.words/document/vbaproject/) имот, за да получите или зададете VbaProject в документа.

Следният пример за код показва как да се създаде VBA проект и VBA модул заедно с основни свойства, например. Име и тип:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cs" >}}

## Чети макроси

Aspose.Words Също така дава възможност на потребителите да четат VBA макрос.

Следният пример за код показва как да прочетете VBA Макрос от документа:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cs" >}}

## Запис или промяна на макроси

Използване Aspose.Words, потребителите могат да модифицират VBA макрос.

Следният пример с код показва как да се модифицира VBA Macros с помощта на [SourceCode](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/sourcecode/) собственост:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cs" >}}

## Клон VBA Проект

С Aspose.Words възможно е също да се клонират проекти на VBA.

Следният пример за код показва как да клонирате проекта VBA с помощта на [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/clone/) собственост, която създава копие от съществуващия проект:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cs" >}}

## Клон VBA Модул

Можете също да клонирате VBA модули, ако е необходимо.

Следният пример за код показва как да клонирате VBA Модула с помощта на [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/clone/) собственост, която създава копие от съществуващия проект:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cs" >}}

## Работа с референциите на проекта VBA

Aspose.Words API осигурява [VbaReferenceCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbareferencecollection/) клас за работа с VBA Референции за проекти, представляващи колекция от препоръки за проекти на VBA.

Следният пример за код показва как да се премахнат някои препратки от събирането на препратки от проект на VBA:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-RemoveReferenceFromCollectionOfReferences.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-GetLibIdAndReferencePath.cs" >}}