---
title: Mail Merge Шаблон в C#
second_title: Aspose.Words для .NET
articleTitle: Mail Merge Шаблон
linktitle: Mail Merge Шаблон
type: docs
description: "Создайте шаблон Mail Merge для определения фиксированного содержимого в выходных документах, а затем создайте объединяемые документы, используя поля объединения в C#."
keywords: "create Mail Merge template с#"
weight: 10
url: /ru/net/mail-merge-template/
timestamp: 2024-07-11-08-07-06
---

Обычно шаблон слияния используется в качестве базового документа для операции Mail Merge, если это простой Mail Merge или Mail Merge с регионами. Mail merge с регионами является более эффективным и популярным способом, чем простой mail merge. Простой Mail Merge рассматривается как частный случай Mail Merge с областями, где областью является весь документ. Более подробно все объясняется в следующей статье "Типы операций Mail Merge".

Шаблон гарантирует, что текст в выходном объединенном документе отформатирован правильно, а операция Mail Merge гарантирует, что текст из источника данных правильно введен в шаблон объединения.

Aspose.Words предоставляет возможность создать шаблон Mail Merge для определения фиксированного содержимого, а затем сгенерировать документы слияния, используя поля слияния. Таким образом, шаблон слияния будет содержать необходимый текст, который будет одинаковым во всех выходных документах, и поля слияния для заполнения изменяющегося содержимого. В результате информация из указанного источника данных будет добавлена в шаблон объединения через эти поля во время создания объединенного документа.

## Что такое шаблон Mail Merge

Шаблон Mail Merge - это персонализированный документ, содержащий фиксированные данные и объединенные поля, в которых вы хотите разместить изменяемый текст. Шаблон слияния может быть в любом формате, поддерживающем поля, например, DOC, DOCX, DOT, DOTX, RTF. Кроме того, вы также можете использовать шаблон mustache, который более подробно описан в статье "Синтаксис шаблона Mustache".

Вы можете создать шаблон объединения, который будет служить образцом для новых документов, и он должен включать основной текст, который должен быть одинаковым для каждой версии объединяемого документа. Добавление полей объединения в шаблон будет представлять данные персонализации, такие как имена или адреса, которые извлекаются из источника данных. Операция Mail Merge автоматически вставит данные персонализации из вашего источника данных в документ шаблона слияния.

Кроме того, вы можете добавить регион Mail Merge в свой шаблон, вставив два поля Mail Merge, чтобы отметить начало и конец почтового региона. В следующей статье "Типы операций Mail Merge" это объясняется более подробно.

## Создайте шаблон Mail Merge

Вы можете создать шаблон и добавить в него определенные поля слияния, которые будут заменены значениями из источника данных либо вручную, например, с помощью Microsoft Word, либо программно, используя Aspose.Words. В этой статье мы рассмотрим программный способ создания шаблона.

Используйте класс [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/), чтобы создать необходимый шаблон слияния с помощью Aspose.Words. Вы можете включить текст, поле для объединения и разрыв строки в такой шаблон, используя методы [InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/), [InsetField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) и [InsertParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertparagraph/).

В следующем примере кода показано, как создать шаблон Mail Merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "create-mail-merge-template.cs" >}}

На рисунке ниже показан созданный шаблон:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## Настройка свойств шаблона Mail Merge

Aspose.Words позволяет настраивать ваш шаблон с помощью множества свойств. Настройка шаблона будет описана ниже на примере настройки некоторых свойств изображений и текста.

### Настройка свойств изображения

Вы можете указать свойства изображения, используя класс [ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/). Обратите внимание, что вы можете вставить изображение из базы данных, как описано в [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Working%20with%20Fields.cs#L214).

В следующем примере кода показано, как указать имя файла изображения и размер изображения:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "image-field-merging.cs" >}}

### Настройка свойств текста

Вы можете использовать свойство [Text](https://reference.aspose.com/words/net/aspose.words.mailmerging/fieldmergingargs/text/), чтобы вставить текст в документ для текущего поля слияния. Кроме того, вы можете изменить форматирование текстов и абзацев внутри вашего шаблона, используя классы [Font](https://reference.aspose.com/words/net/aspose.words/font/) и [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/). Вы можете обрабатывать текст, который будет вставлен до или после поля объединения, используя свойства [TextBefore](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/textbefore/) и [TextAfter](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/textafter/), которые включены в класс [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/).

В следующем примере кода показано, как вставлять флажки или HTML во время операции Mail Merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Fax.docx).

Вы также можете проверить реализацию класса `HandleMergeField` из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/828b58e207e96afa624956867ec9c777fa10af87/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Working%20with%20Fields.cs#L43).

{{% /alert %}}

## Смотрите также

* Для получения более подробной информации о том, как создавать шаблоны в Microsoft Word вручную, пожалуйста, ознакомьтесь со статьей [Создать шаблон](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) в документации Microsoft
