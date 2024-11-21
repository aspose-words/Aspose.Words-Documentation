---
title: Mail Merge Шаблон на C++
second_title: Aspose.Words для C++
articleTitle: Mail Merge Шаблон
linktitle: Mail Merge Шаблон
type: docs
description: "Создайте шаблон mail merge для определения фиксированного содержимого в выходных документах, а затем создайте объединяемые документы, используя поля объединения."
keywords: "create mail merge template с++"
weight: 10
url: /ru/cpp/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

Обычно в качестве базового документа для операции mail merge используется шаблон слияния, будь то простой mail merge или mail merge с регионами. Mail merge с регионами является более эффективным и популярным способом, чем простой mail merge. Простой mail merge рассматривается как частный случай mail merge с регионами, где регион представляет собой весь документ целиком. Более подробно все объясняется в следующей статье "Типы операций Mail Merge".

Шаблон гарантирует, что текст в выходном объединенном документе отформатирован правильно, а операция mail merge гарантирует, что текст из источника данных правильно введен в шаблон объединения.

Aspose.Words предоставляет возможность создать шаблон mail merge для определения фиксированного содержимого, а затем сгенерировать документы слияния, используя поля слияния. Таким образом, шаблон слияния будет содержать необходимый текст, который будет одинаковым во всех выходных документах, и поля слияния для заполнения изменяющегося содержимого. В результате информация из указанного источника данных будет добавлена в шаблон объединения через эти поля во время создания объединенного документа.

## Что такое шаблон Mail Merge

Шаблон mail merge - это персонализированный документ, содержащий фиксированные данные и объединенные поля, в которых вы хотите разместить изменяемый текст. Шаблон слияния может быть в любом формате, поддерживающем поля, например, DOC, DOCX, DOT, DOTX, RTF. Кроме того, вы также можете использовать шаблон mustache, который более подробно описан в статье "Синтаксис шаблона Mustache".

Вы можете создать шаблон объединения, который будет служить образцом для новых документов, и он должен включать основной текст, который должен быть одинаковым для каждой версии объединяемого документа. Добавление полей объединения в шаблон будет представлять данные персонализации, такие как имена или адреса, которые извлекаются из источника данных. Операция mail merge автоматически вставит данные персонализации из вашего источника данных в документ шаблона слияния.

Кроме того, вы можете добавить регион mail merge в свой шаблон, вставив два поля mail merge, чтобы отметить начало и конец почтового региона. В следующей статье "Типы операций Mail Merge" это объясняется более подробно.

## Создайте шаблон Mail Merge

Вы можете создать шаблон и добавить в него определенные поля слияния, которые будут заменены значениями из источника данных либо вручную, например, с помощью Microsoft Word, либо программно, используя Aspose.Words. В этой статье мы рассмотрим программный способ создания шаблона.

Используйте класс [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), чтобы создать необходимый шаблон слияния с помощью Aspose.Words. Вы можете включить текст, поле для объединения и разрыв строки в такой шаблон, используя методы [InsertTextInput](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserttextinput/), [InsetField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) и [InsertParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertparagraph/).

В следующем примере кода показано, как создать шаблон mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeTemplate-CreateMailMergeTemplate.cpp" >}}

На рисунке ниже показан созданный шаблон:

<img src="mail-merge-template-1.png" alt="mail_merge_template-aspose-words-cpp" style="width:650px"/>

## Настройка свойств шаблона Mail Merge

Aspose.Words позволяет настраивать ваш шаблон с помощью множества свойств. Настройка шаблона будет описана ниже на примере настройки некоторых свойств изображений и текста.

### Настройка свойств изображения

Вы можете указать свойства изображения, используя класс [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/).

В следующем примере кода показано, как указать имя файла изображения и размер изображения:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-ImageFieldMerging.cpp" >}}

### Настройка свойств текста

Вы можете использовать свойство [Text](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/fieldmergingargs/get_text/), чтобы вставить текст в документ для текущего поля слияния. Кроме того, вы можете изменить форматирование текстов и абзацев внутри вашего шаблона, используя классы [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) и [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/). Вы можете обрабатывать текст, который будет вставлен до или после поля объединения, используя свойства [TextBefore](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textbefore/) и [TextAfter](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textafter/), которые включены в класс [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/).

В следующем примере кода показано, как вставлять флажки или HTML во время операции mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Вы также можете проверить реализацию класса `HandleMergeField` из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Смотрите также

* Для получения более подробной информации о том, как создавать шаблоны в Microsoft Word вручную, ознакомьтесь со статьей [Создать шаблон](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) в документации Microsoft
