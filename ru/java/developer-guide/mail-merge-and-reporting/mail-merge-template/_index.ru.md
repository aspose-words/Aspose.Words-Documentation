---
title: Mail Merge Шаблон в Java
second_title: Aspose.Words для Java
articleTitle: Mail Merge Шаблон
linktitle: Mail Merge Шаблон
type: docs
description: "Создайте шаблон Mail Merge для определения фиксированного содержимого в выходных документах, а затем создайте объединяемые документы, используя поля объединения в Java."
keywords: "create Mail Merge template Java, Mail Merge Java"
weight: 10
url: /ru/java/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

Обычно шаблон слияния используется в качестве базового документа для операции Mail Merge, если это простой Mail Merge или Mail Merge с регионами. Mail merge с регионами является более эффективным и популярным способом, чем простой mail merge. Простой Mail Merge рассматривается как частный случай Mail Merge с областями, где областью является весь документ. Более подробно все объясняется в следующей статье "Типы операций Mail Merge".

Шаблон гарантирует, что текст в выходном объединенном документе отформатирован правильно, а операция Mail Merge гарантирует, что текст из источника данных правильно введен в шаблон объединения.

Aspose.Words предоставляет возможность создать шаблон Mail Merge для определения фиксированного содержимого и последующего создания документов слияния с использованием полей слияния. Таким образом, шаблон слияния будет содержать необходимый текст, который будет одинаковым во всех выходных документах, и поля слияния для заполнения изменяющегося содержимого. В результате информация из указанного источника данных будет добавлена в шаблон объединения через эти поля во время создания объединенного документа.

## Что такое шаблон Mail Merge

Шаблон Mail Merge - это персонализированный документ, содержащий фиксированные данные и объединенные поля, в которых вы хотите разместить изменяемый текст. Шаблон слияния может быть в любом формате, поддерживающем поля, например, DOC, DOCX, DOT, DOTX, RTF. Кроме того, вы также можете использовать шаблон mustache, который более подробно описан в статье "Синтаксис шаблона Mustache".

Вы можете создать шаблон объединения, который будет служить образцом для новых документов, и он должен включать основной текст, который должен быть одинаковым для каждой версии объединяемого документа. Добавление полей объединения в шаблон будет представлять данные персонализации, такие как имена или адреса, которые извлекаются из источника данных. Операция Mail Merge автоматически вставит данные персонализации из вашего источника данных в документ шаблона слияния.

Кроме того, вы можете добавить регион Mail Merge в свой шаблон, вставив два поля Mail Merge, чтобы отметить начало и конец почтового региона. В следующей статье "Типы операций Mail Merge" это объясняется более подробно.

## Создайте шаблон Mail Merge

Вы можете создать шаблон и добавить в него определенные поля слияния, которые будут заменены значениями из источника данных либо вручную, например, с помощью Microsoft Word, либо программно, используя Aspose.Words. В этой статье мы рассмотрим программный способ создания шаблона.

Используйте класс [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), чтобы создать необходимый шаблон слияния с помощью Aspose.Words. Вы можете включить текст, поле для объединения и разрыв строки в такой шаблон, используя методы [InsertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput(java.lang.String,int,java.lang.String,java.lang.String,int)), [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField(int,boolean)), и [InsertParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertParagraph()).

В следующем примере кода показано, как создать шаблон Mail Merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeTemplate-CreateMailMergeTemplate.java" >}}

На рисунке ниже показан созданный шаблон:

<img src="/words/java/mail-merge-template/mail-merge-template-1.png" alt="mail_merge_template_aspose_words_java" style="width:650px"/>

## Настройка свойств шаблона Mail Merge

Aspose.Words позволяет настраивать ваш шаблон с помощью множества свойств. Настройка шаблона будет описана ниже на примере настройки некоторых свойств изображений и текста.

### Настройка свойств изображения

Вы можете указать свойства изображения, используя класс [ImageFieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/imagefieldmergingargs/). Обратите внимание, что вы можете вставить изображение из базы данных, как описано в [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Mail_Merge_And_Reporting/WorkingWithFields.java#L226).

В следующем примере кода показано, как указать имя файла изображения и размер изображения:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-ImageFieldMerging.java" >}}

### Настройка свойств текста

Вы можете использовать классы [Текст]https://reference.aspose.com/words/java/com.aspose.words/Fieldmergingargs#Text ) связь для введения текста в текст для текучего поля обьединения. Кроме того, вы можете изменить форматирование текстов и абзацев внутри вашего шаблона, используя [Шрифт](https://reference.aspose.com/words/java/com.aspose.words/font/) и [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/). Вы можете обрабатывать текст, который будет вставлен до или после поля объединения, используя свойства [TextBefore](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#TextBefore) и [TextAfter](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#TextAfter), которые включены в класс [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/).

В следующем примере кода показано, как вставлять флажки или HTML во время операции Mail Merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-MailMergeFormFields.java" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Fax.docx).

Вы также можете проверить реализацию класса `HandleMergeField` из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Mail_Merge_And_Reporting/WorkingWithFields.java).

{{% /alert %}}

## Смотрите также

* Для получения более подробной информации о том, как создавать шаблоны в Microsoft Word вручную, пожалуйста, ознакомьтесь со статьей [Создать шаблон](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) в документации Microsoft
