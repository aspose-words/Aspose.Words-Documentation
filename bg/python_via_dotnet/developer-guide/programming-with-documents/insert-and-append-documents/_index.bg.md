---
title: Вмъкване и добавяне на документи
second_title: Aspose.Words вместо Python via .NET
articleTitle: Вмъкване и добавяне на документи
linktitle: Вмъкване и добавяне на документи
description: "Комбиниране на документи в едно: вмъкване или добавяне на документ в нов или съществуващ такъв с помощта на намиране и замяна, сливане на поле, отметки, или просто в документа завършва в Python."
type: docs
weight: 80
url: /bg/python-net/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Понякога е необходимо да се комбинират няколко документа в един. Можете да направите това ръчно или можете да използвате Aspose.Words вмъкване или добавяне на функция.

Операцията за вмъкване ви позволява да въведете съдържанието на предварително създадените документи в нов или съществуващ.

От своя страна, функцията за добавяне ви позволява да добавяте документ само в края на друг документ.

Тази статия обяснява как да се вмъкне или да се добави документ към друг по различни начини и описва общите свойства, които можете да приложите, докато вмъквате или добавяте документи.

## Вмъкване на документ

Както бе споменато по- горе, в Aspose.Words документ е представен като дърво от възли, а действието на поставянето на един документ в друг е копиране на възли от първото дърво на документа до второто.

Можете да поставите документи по различни начини. Например, можете да поставите документ чрез замяна операция, сливане поле по време на сливане операция, или чрез отметки.

Можете също така да използвате [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) или [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions) метод, който е подобен на въвеждането на документ в Microsoft Word, да се въведе цял документ в текущата позиция на курсора без никакъв предишен внос.

Следният пример с код показва как да се вмъкне документ с помощта на **вмъкване_ документ** метод:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-with-builder.py" >}}

Следният пример с код показва как да се вмъкне документ с помощта на **вмъкване_ document_ inline** метод:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-inline-with-builder.py" >}}

Следните подраздели описват опциите, по време на които можете да поставите един документ в друг.

### Вмъкване на документ в отметките

Можете да импортирате текстов файл в документ и да го поставите веднага след отметките, които сте определили в документа. За да направите това, създайте отметки, където искате да бъде поставен документът.

Следният пример за кодиране показва как да се вмъкне съдържанието на един документ в отметки в друг документ:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-at-bookmark.py" >}}

{{% alert color="primary" %}}

Имайте предвид, че отметките не трябва да съдържат няколко абзаца или текст, които искате да бъдат включени във Вашия окончателен резултатен документ.

{{% /alert %}}

## Добавяне на документ

Може да имате случай на използване, когато трябва да включите допълнителни страници от документ до края на съществуващ документ. За да направите това, просто трябва да се обадите на [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) метод за добавяне на документ към края на друг.

{{% alert color="primary" %}}

Имайте предвид, че [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) е метод на ниво възел в рамките на документ. Например, можете да създадете параграф, да зададете форматиращи свойства, и след това да го добавите като дете към тялото с помощта на [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) метод.

{{% /alert %}}

Следният пример за код показва как да се добави документ към края на друг документ:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "keep-source-formatting.py" >}}

## Импортиране и въвеждане на възли ръчно

Aspose.Words позволява автоматично въвеждане и добавяне на документи без никакви предишни изисквания за внос. Въпреки това, ако трябва да въведете или да добавите конкретен възел на вашия документ, като например раздел или параграф, тогава първо трябва да внесете този възел ръчно.

Когато трябва да вмъкнете или да добавите един раздел или параграф в друг, по същество трябва да внесете възлите на първото дърво на документния възел във втория с помощта на [import_node](https://reference.aspose.com/words/python-net/aspose.words/documentbase/import_node/) метод. След внос на възлите, трябва да използвате [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/) / [insert_before](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_before/) метод за поставяне на нов възел след/преди референтния възел. Това ви позволява да персонализирате процеса на вмъкване чрез внос на възли от документ и поставянето му на дадени позиции.

Можете също така да използвате [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) метод за добавяне на нов определен възел към края на списъка на възлите на деца, например, ако искате да добавите съдържание на ниво параграф вместо на ниво раздел.

Следният пример с код показва как ръчно да се внасят възли и да се поставят след определен възел с помощта на [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/) метод:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-as-nodes.py" >}}

{{% alert color="primary" %}}

Импортирането създава нов възел, който е копие на оригиналния възел и подходящ за въвеждане в документа за местоназначение.

{{% /alert %}}

Съдържание се внася в раздела по раздел на документа на местоназначението, което означава, че настройките, като например настройка на страниците, заглавни части или подметки, се запазват по време на вноса. Също така е полезно да се отбележи, че можете да дефинирате настройките за форматиране, когато вкарвате или добавяте документ, за да уточните как се свързват два документа.

## Общи свойства за вмъкване и добавяне на документи

И двете. [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) както и [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) методите се приемат [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) както и [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) като входящи параметри. На [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) позволява да контролирате как се слива форматирането на документи, когато внасяте съдържание от един документ в друг, като избирате различни режими на форматиране като [USE_DESTINATION_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#use_destination_styles), [KEEP_SOURCE_FORMATTING](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_source_formatting), както и [KEEP_DIFFERENT_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_different_styles). На [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) ви позволява да изберете различни опции за внос като [ignore_header_footer](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_header_footer/), [ignore_text_boxes](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_text_boxes/), [keep_source_numbering](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/keep_source_numbering/), [merge_pasted_lists](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/merge_pasted_lists/), както и [smart_style_behavior](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/smart_style_behavior/).

Aspose.Words ви позволява да коригирате визуализацията на получения документ, когато два документа се добавят заедно в дадена вложка или операция, като използвате [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) както и [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/). На [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) имот съдържа всички атрибути на раздел като [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/) [restart_page_numbering](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/restart_page_numbering/), [page_starting_number](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/page_starting_number/), [orientation](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/orientation/), и други. Най- често използваният случай е да се определи [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/) свойство за определяне дали добавеното съдържание ще се появи на същата страница или ще се раздели на нова.

{{% alert color="primary" %}}

Имайте предвид, че [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) както и [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) не се контролира как два документа се добавят/прилагат заедно. Позволяват ви само да променяте външния вид на документа с резултатите.

{{% /alert %}}

Следният пример за код показва как да се добави един документ към друг, като същевременно се запази съдържанието от разделяне на две страници:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "different-page-setup.py" >}}
