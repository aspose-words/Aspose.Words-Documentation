---
title: Заменить поля Python
second_title: Aspose.Words для Python via .NET
articleTitle: Замените поля статическим текстом
linktitle: Замените поля статическим текстом
description: "Узнайте, как заменить поля текстом в Python. Замените поля статическими данными, используя Python via .NET API."
type: docs
weight: 37
url: /ru/python-net/replace-fields/
---

Замена полей часто требуется, когда вы хотите сохранить документ как статическую копию. Например, при отправке в виде вложения в электронное письмо. Преобразование таких полей, как `DATE` или `TIME`, в статический текст позволит документу отображать ту же дату, что и при его отправке. Кроме того, в некоторых ситуациях вам может потребоваться удалить условные поля `IF` из вашего документа и заменить их самым последним текстовым результатом. Например, преобразование результата поля `IF` в статический текст, чтобы оно больше не изменяло свое значение динамически при обновлении полей в документе.

На диаграмме ниже показано, как поле `IF` хранится в документе:

* текст окружен специальными узлами полей – [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) и [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/)
* узел [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) разделяет текст внутри поля на код поля и результат поля
* код поля определяет общее поведение поля, в то время как результат поля сохраняет самый последний результат при обновлении этого поля с использованием Microsoft Word или Aspose.Words
* результат поля — это то, что сохраняется в поле и отображается в документе при просмотре

![update-remove-a-field-aspose-words](/words/python-net/replace-fields/updating-and-removing-a-field-1.png)

Структуру также можно увидеть ниже в иерархической форме, используя номер [демо-проект DocumentExplorer](https://github.com/aspose-words/Aspose.Words-for-.NET)*.*

![update-remove-a-field-aspose-words-2](/words/python-net/replace-fields/updating-and-removing-a-field-2.png)

## Поля, которые нельзя заменить текстом

Замена поля статическим текстом не работает должным образом для некоторых полей верхнего или нижнего колонтитула.

Например, попытка преобразовать поле `PAGE` в верхнем или нижнем колонтитуле в статический текст приведет к тому, что одно и то же значение будет отображаться на всех страницах. Это связано с тем, что верхние и нижние колонтитулы повторяются на нескольких страницах, а когда они остаются в виде полей, они обрабатываются специально для отображения правильного результата для каждой страницы.

Однако в заголовке поле `PAGE` хорошо преобразуется в статический текст. Этот фрагмент текста будет оцениваться так, как если бы он был последней страницей в разделе, что приведет к тому, что любое поле `PAGE` в заголовке будет отображать последнюю страницу на всех страницах.

В следующем примере кода показано, как заменить поле самым последним результатом:

ПРИМЕР

## Преобразование определенных типов полей в определенных частях документа

Поскольку метод **ConvertFieldsToStaticText** принимает два параметра — свойства [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) и перечисление [FieldType](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/), в этот метод можно передать любой составной узел. Это позволяет преобразовывать поля в статический текст только в определенных частях документа.

Например, вы можете передать объект [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) и преобразовать поля указанного типа из всего документа в статический текст или передать объект [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) раздела и преобразовать только поля, найденные в этом теле.

{{% alert color="primary" %}}

При передаче узла уровня блока, такого как [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), имейте в виду, что в некоторых случаях поля могут охватывать несколько абзацев. Если это произойдет, во избежание этого рекомендуется вместо этого передать родительский элемент композита.

{{% /alert %}}

Перечисление [FieldType](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/), передаваемое в метод **ConvertFieldsToStaticText**, указывает, какой тип полей следует преобразовать в статический текст. Любой другой тип поля, найденный в документе, останется неизменным.

В следующем примере кода показано, как выбрать поля определенного типа — *targetFieldType* в определенном узле — *compositeNode*, а затем преобразовать их в статический текст:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cs" >}}

В следующем примере кода показано, как преобразовать все поля `IF` в документе в статический текст:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInDocument.py" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Linked%20fields.docx).

{{% /alert %}}

В следующем примере кода показано, как преобразовать все `PAGE` поля в теле документа в статический текст:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInBody.py" >}}

В следующем примере кода показано, как преобразовать все `IF` полей в последнем абзаце в статический текст:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInParagraph.py" >}}