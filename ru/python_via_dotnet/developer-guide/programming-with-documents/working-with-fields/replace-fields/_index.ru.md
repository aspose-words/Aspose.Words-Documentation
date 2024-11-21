---
title: Заменить поля Python
second_title: Aspose.Words для Python via .NET
articleTitle: Замените поля статичным текстом
linktitle: Замените поля статичным текстом
description: "Как заменить поля текстом в Python. Заменить поля статичными данными с помощью Python via .NET API."
type: docs
weight: 37
url: /ru/python-net/replace-fields/
timestamp: 2024-01-27-14-07-04
---

Замена полей часто требуется, когда вы хотите сохранить документ в виде статической копии. Например, при отправке в качестве вложения в электронное письмо. Преобразование полей, таких как `DATE` или `TIME` Статический текст позволяет отображать ту же дату, что и при отправке. Кроме того, в некоторых ситуациях вам может потребоваться удалить условное `IF` Поля из вашего документа и заменить их с последним результатом текста. Например, преобразование результата `IF` От поля к статическому тексту, так что он больше не будет динамически изменять свое значение при обновлении полей в документе.

Диаграмма ниже показывает, как `IF` Поле хранится в документе:

* текст окружен специальными полевыми узлами - [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) и [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/)
* [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) Узел разделяет текст в поле на код поля и результат поля
* код поля определяет общее поведение поля, в то время как результат поля сохраняет самый последний результат при обновлении этого поля с использованием Microsoft Word или Aspose.Words
* Результат поля - это то, что хранится в поле и отображается в документе при просмотре

![update-remove-a-field-aspose-words](/words/python-net/replace-fields/updating-and-removing-a-field-1.png)

Структуру также можно увидеть ниже в иерархической форме. [демонстрационный проект * "Исследователь документов"*](https://github.com/aspose-words/Aspose.Words-for-.NET)*.*

![update-remove-a-field-aspose-words-2](/words/python-net/replace-fields/updating-and-removing-a-field-2.png)

## Поля, которые нельзя заменить текстом

Замена поля статичным текстом не работает должным образом для некоторых полей в заголовке или футере.

Например, пытаясь преобразовать `PAGE` поле в заголовке или футере к статическому тексту приведет к тому, что одинаковое значение будет отображаться на всех страницах. Это связано с тем, что заголовки и нижние колонтитулы повторяются на нескольких страницах, и когда они остаются в виде полей, они обрабатываются, особенно когда они отображают правильный результат для каждой страницы.

Однако в заголовке, `PAGE` Поле хорошо переводится в статический поток текста. Этот прогон текста будет оцениваться так, как если бы он был последней страницей в разделе, что приведет к тому, что любой `PAGE` поле в заголовке для отображения последней страницы на всех страницах.

Следующий пример кода показывает, как заменить поле с его последним результатом:

Пример

## Преобразование определенных типов полей в конкретные части документов

С тех пор **ConvertFieldsToStaticText** Метод принимает два параметра – [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) свойств и их [FieldType](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/) Перечисляя, можно передать любой композитный узел этому способу. Это позволяет конвертировать поля в статический текст только в определенных частях документа.

Например, вы можете пройти [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) объект и преобразовать поля указанного типа из всего документа в статический текст, либо можно пройти [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) объект сечения и преобразует только поля, находящиеся в этом теле.

{{% alert color="primary" %}}

При прохождении узла уровня блока, такого как [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), Имейте в виду, что в некоторых случаях поля могут охватывать несколько абзацев. Если это происходит, рекомендуется пройти родительский состав, чтобы избежать этого.

{{% /alert %}}

The [FieldType](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/) Перечисление передано в **ConvertFieldsToStaticText** Метод определяет, какие поля должны быть преобразованы в статический текст. Любой другой тип поля, найденный в документе, останется неизменным.

Следующий пример кода показывает, как выбрать поля определенного типа: *targetFieldType* в конкретном узле – *compositeNode* Преобразуйте их в статический текст:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cs" >}}

Следующий пример показывает, как конвертировать все `IF` поля в документе к статическому тексту:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInDocument.py" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Linked%20fields.docx).

{{% /alert %}}

Следующий пример показывает, как конвертировать все `PAGE` поля в теле документа к статическому тексту:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInBody.py" >}}

Следующий пример показывает, как конвертировать все `IF` поля в последнем абзаце к статическому тексту:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInParagraph.py" >}}
