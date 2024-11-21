---
title: Замените поля текстом Java
second_title: Aspose.Words для Java
articleTitle: Замените поля статическим текстом
linktitle: Замените поля статическим текстом
description: "Как заменить поля текстом в Java. Заменить поля статичными данными с помощью Java API."
type: docs
weight: 37
url: /ru/java/replace-fields/
timestamp: 2024-01-27-14-07-04
---

Замена полей часто требуется, когда вы хотите сохранить документ в виде статической копии. Например, при отправке в качестве вложения в электронное письмо. Преобразование полей, таких как `DATE` или `TIME` Статический текст позволяет отображать ту же дату, что и при отправке. Кроме того, в некоторых ситуациях вам может потребоваться удалить условное `IF` Поля из вашего документа и заменить их с последним результатом текста. Например, преобразование результата `IF` От поля к статическому тексту, так что он больше не будет динамически изменять свое значение при обновлении полей в документе.

Диаграмма ниже показывает, как `IF` Поле хранится в документе:

* текст окружен специальными полевыми узлами - [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) и [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/)
* [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) Узел разделяет текст в поле на код поля и результат поля
* код поля определяет общее поведение поля, в то время как результат поля сохраняет самый последний результат, когда это поле обновляется с использованием Microsoft Word или Aspose.Words
* Результат поля - это то, что хранится в поле и отображается в документе при просмотре

![update-remove-a-field-aspose-words](/words/java/replace-fields/updating-and-removing-a-field-1.png)

Структуру также можно увидеть ниже в иерархической форме с помощью демонстрационного проекта. **“DocumentExplorer”**, Которые вместе с кораблями **Aspose.Words** установщик.

![update-remove-a-field-aspose-words-2](/words/java/replace-fields/updating-and-removing-a-field-2.png)

## Поля, которые нельзя заменить текстом

Замена поля статичным текстом не работает должным образом для некоторых полей в заголовке или футере.

Например, пытаясь преобразовать `PAGE` поле в заголовке или нижнем колонтитуле к статическому тексту приведет к тому, что одинаковое значение будет отображаться на всех страницах. Это связано с тем, что заголовки и нижние колонтитулы повторяются на нескольких страницах, и когда они остаются в виде полей, они обрабатываются, особенно когда они отображают правильный результат для каждой страницы.

Однако в заголовке, `PAGE` Поле хорошо переводится в статический прогон текста. Этот прогон текста будет оцениваться так, как если бы он был последней страницей в разделе, что приведет к тому, что любой `PAGE` поле в заголовке для отображения последней страницы на всех страницах.

Следующий пример кода показывает, как заменить поле с его последним результатом:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UnlinkFields-UnlinkFields.java" >}}

## Преобразование определенных типов полей в конкретные части документов

С тех пор **ConvertFieldsToStaticText** Метод принимает два параметра – [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) свойств и их [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) Перечисляя, можно передать любой композитный узел этому способу. Это позволяет конвертировать поля в статический текст только в определенных частях документа.

Например, вы можете пройти [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) объект и преобразовывать поля указанного типа из всего документа в статический текст, либо можно пройти [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) объект сечения и преобразует только поля, находящиеся в этом теле.

{{% alert color="primary" %}}

При прохождении узла уровня блока, такого как [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), Имейте в виду, что в некоторых случаях поля могут охватывать несколько абзацев. Если это происходит, рекомендуется пройти родительский состав, чтобы избежать этого.

{{% /alert %}}

The [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) Перечисление, переданное в **ConvertFieldsToStaticText** Метод определяет, какие поля должны быть преобразованы в статический текст. Любой другой тип поля, найденный в документе, останется неизменным.

Следующий пример кода показывает, как выбрать поля определенного типа: *targetFieldType* в конкретном узле – *compositeNode* Преобразуйте их в статический текст:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldHelper-FieldsHelper.java" >}}

Следующий пример показывает, как конвертировать все `IF` поля в документе к статическому тексту:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInDocument-ConvertFieldsInDocument.java" >}}

Следующий пример показывает, как конвертировать все `PAGE` поля в теле документа к статическому тексту:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInBody-ConvertFieldsInBody.java" >}}

Следующий пример показывает, как конвертировать все `IF` поля в последнем абзаце к статическому тексту:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.java" >}}
