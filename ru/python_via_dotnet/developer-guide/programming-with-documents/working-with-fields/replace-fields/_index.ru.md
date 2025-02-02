﻿---
title: Заменить поля Python
second_title: Aspose.Words для Python via .NET
articleTitle: Замените поля статичным текстом
linktitle: Замените поля статичным текстом
description: "Узнайте, как заменить поля текстом в Python. Замените поля статическими данными, используя Python via .NET API."
type: docs
weight: 37
url: /ru/python-net/replace-fields/
timestamp: 2024-01-27-14-07-04
---

Замена полей часто требуется, когда вы хотите сохранить документ в виде статической копии. Например, при отправке в качестве вложения в электронном письме. Преобразование таких полей, как `DATE` или `TIME`, в статический текст позволит отображать в документе ту же дату, что и при отправке. Кроме того, в некоторых ситуациях вам может потребоваться удалить условные поля `IF` из вашего документа и заменить их самым последним текстовым результатом. Например, преобразуем результат работы поля `IF` в статический текст, чтобы оно больше не изменяло свое значение динамически при обновлении полей в документе.

На приведенной ниже диаграмме показано, как поле `IF` сохраняется в документе:

* текст окружен специальными узлами полей – [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) и [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/)
* узел [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) разделяет текст внутри поля на код поля и результат поля
* код поля определяет общее поведение поля, в то время как результат по полю сохраняет самый последний результат при обновлении этого поля с помощью Microsoft Word или Aspose.Words
* результат работы с полем - это то, что хранится в поле и отображается в документе при просмотре

![update-remove-a-field-aspose-words](updating-and-removing-a-field-1.png)

Структуру также можно увидеть ниже в иерархической форме, используя [демонстрационный проект *"DocumentExplorer"*.](https://github.com/aspose-words/Aspose.Words-for-.NET)*.*

![update-remove-a-field-aspose-words-2](updating-and-removing-a-field-2.png)

## Поля, которые не могут быть заменены текстом

Замена поля статическим текстом не работает должным образом для некоторых полей в верхнем или нижнем колонтитуле.

Например, попытка преобразовать поле `PAGE` в верхнем или нижнем колонтитуле в статический текст приведет к отображению одного и того же значения на всех страницах. Это связано с тем, что верхние и нижние колонтитулы повторяются на нескольких страницах, и когда они остаются в виде полей, они обрабатываются особым образом, чтобы отображать правильный результат для каждой страницы.

Однако в заголовке поле `PAGE` хорошо преобразуется в статический фрагмент текста. Этот фрагмент текста будет оцениваться так, как если бы он был последней страницей в разделе, что приведет к отображению любого поля `PAGE` в заголовке как последней страницы на всех страницах.

В следующем примере кода показано, как заменить поле самым последним результатом:

EXAMPLE

## Преобразование определенных типов полей в определенных частях документа

Поскольку метод **ConvertFieldsToStaticText** принимает два параметра – свойства [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) и перечисление [FieldType](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/), этому методу можно передать любой составной узел. Это позволяет преобразовывать поля в статический текст только в определенных частях документа.

Например, вы можете передать объект [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) и преобразовать поля указанного типа из всего документа в статический текст, или вы можете передать объект [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) раздела и преобразовать только поля, найденные в этом тексте.

{{% alert color="primary" %}}

При передаче узла на уровне блока, такого как [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), имейте в виду, что в некоторых случаях поля могут занимать несколько абзацев. В этом случае рекомендуется передавать родительский элемент составного элемента, чтобы избежать этого.

{{% /alert %}}

Перечисление [FieldType](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/), передаваемое методу **ConvertFieldsToStaticText**, указывает, какой тип полей следует преобразовать в статический текст. Любой другой тип полей, найденный в документе, останется неизменным.

В следующем примере кода показано, как выбрать поля определенного типа – *targetFieldType* в определенном узле – *compositeNode* и затем преобразовать их в статический текст:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cs" >}}

В следующем примере кода показано, как преобразовать все поля `IF` в документе в статический текст:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInDocument.py" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Linked%20fields.docx).

{{% /alert %}}

В следующем примере кода показано, как преобразовать все поля `PAGE` в тексте документа в статический текст:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInBody.py" >}}

В следующем примере кода показано, как преобразовать все поля `IF` в последнем абзаце в статический текст:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInParagraph.py" >}}
