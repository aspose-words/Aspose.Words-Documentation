---
title: Работа с контрол на съдържанието SDT
second_title: Aspose.Words вместо Python via .NET
articleTitle: Работа с контрол на съдържанието SDT
linktitle: Работа с контрол на съдържанието SDT
description: "С помощта на питон можете да внедрите определена от клиента семантика, както и нейното поведение и външен вид в документ."
type: docs
weight: 390
url: /bg/python-net/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

В Microsoft Word, можете да създадете форма, като започнете с шаблон и да добавите контрол на съдържанието, включително чекови кутии, текстови кутии, берачи на дати и падащи списъци. В Aspose.Words структуриран документ Етикет или контрол на съдържанието от всеки документ, зареден в Aspose.Words е внесен като [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) Възел. Структурираните тагове на документи (SDT или контрол на съдържанието) позволяват вграждането на семантика, дефинирана от клиента, както и неговото поведение и появяване в документ. [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) може да се появи в документ на следните места:

- Block-ниво - Сред параграфи и таблици, като дете на [Body](https://reference.aspose.com/words/python-net/aspose.words/body/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/), [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) или [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) Възел
- Редово ниво - Сред редове в маса, като дете на [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) Възел
- Ниво на клетките - Сред клетките в таблица ред, като дете на [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) Възел
- Inline ниво - Сред съдържанието вътре, като дете на [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)
- Вцепенен в друг. [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

## Вмъкване на контрол на съдържанието в документ

В тази версия на Aspose.Words, могат да бъдат създадени следните видове SDT или контрол на съдържанието:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

Следният пример за код показва как да се създаде контрол на съдържанието на типа отметка.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CheckBoxTypeContentControl.py" >}}

Следният пример за код показва как да се създаде контрол на съдържанието на тип богата текстова кутия.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-RichTextBoxContentControl.py" >}}

Следният пример за код показва как да се създаде контрол на съдържанието на типа комбо кутия.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ComboBoxContentControl.py" >}}

## Как да актуализираме контролите на съдържанието

Този раздел обяснява как да се актуализират стойностите на SDT или контрол на съдържанието програмично

Следният пример за код показва как да зададете текущото състояние на отметката:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetCurrentStateOfCheckBox.py" >}}

Следният пример за код показва как да се модифицира контролът на съдържанието на тип обикновена текстова кутия, падащ списък и картина:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ModifyContentControls.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл на тези примери от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Свързване контрол на съдържанието към потребителски XML части

Можете да свържете контрол на съдържанието с XML данни (*custom XML част*) в Word документи.

Следният пример за код показва как да се свърже контрол на съдържанието към потребителски XML части:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-BindSDTtoCustomXmlPart.py" >}}

## Name

Можете да получите картографиране на този набор от структурирани документи за XML данни в персонализирана XML част от текущия документ, използвайки [StructuredDocumentTagRangeStart.xml_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttagrangestart/xml_mapping/) собственост. Все пак, [set_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/xmlmapping/set_mapping/) метод може да се използва за картографиране на набор от структурирани документи на XML данни.

Следният пример за код показва как да зададете XML картинг:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-StructuredDocumentTagRangeStartXmlMapping.py" >}}

## Изчистване на съдържанието на контрол на съдържанието

Можете да изчистите съдържанието на контрол на съдържанието с показване на държател. [StructuredDocumentTag.clear](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/clear/) метод изчиства съдържанието на този структуриран документ таг и показва placeholder, ако тя е определена. Все пак, Не е възможно да се изчисти съдържанието на контрол върху съдържанието, ако има ревизии. Ако контролът на съдържанието няма място, се поставят пет пространства като в MS Word (с изключение на повтарящите се секции, повтарящи се раздели, групи, чекови кутии, цитати). Ако контролът на съдържанието е картографиран към потребителски XML, съответният XML възел е изчистен.

Следният пример за код показва как да се изчисти съдържанието на контрол на съдържанието:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ClearContentsControl.py" >}}

## Промяна на контрол на съдържанието Фон и гранични цветове

На [StructuredDocumentTag.color](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/color/) Имотът ви позволява да получите или настроите цвета на контрола върху съдържанието. Цветът влияе на контрола върху съдържанието в две ситуации:

1. MS Word подчертава фона на контрола на съдържанието, когато мишката се движи над контрол на съдържанието. Това помага за идентифициране на контрола върху съдържанието. Цветът на подчертаването е малко по-мек от *color*. Например, MS Word подчертава фона с розов цвят, когато *color* е червено.
2. Когато взаимодействате (редактиране, бране и т.н.) със съдържанието контрол, границата на контрол на съдържанието е оцветена с *color*.

Следният пример за код показва как да промените цвета на контрол на съдържанието:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlColor.py" >}}

## Как да зададете стил за форматиране на текст в контрол на съдържанието

Ако искате да зададете стила на контрол на съдържанието, можете да използвате [StructuredDocumentTag.style](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style/) или [StructuredDocumentTag.style_name](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style_name/) имоти. Когато въведете текста в контрол на съдържанието в изходния документ, напечатаният текст ще има стила "Quote."

{{% alert color="primary" %}}

Имайте предвид, че за контрол на съдържанието могат да се прилагат само стилове свързани и символи. Изключение ("Не може да се приложи този стил към SDT") се хвърля, когато се прилага стил, който съществува, но не е свързан или характер стил.

{{% /alert %}}

Следният пример с код показва как да зададете стила на контрол на съдържанието:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlStyle.py" >}}

## Работа с контрол на съдържанието на повтарящия се раздел

Контролът на съдържанието на повтарящия се раздел позволява повтаряне на съдържанието, съдържащо се в него. Използване Aspose.Words, Могат да бъдат създадени структурираните възли на таговете на документа на повтарящия се раздел и повтарящите се типове елементи от раздел и за тази цел, [SdtType](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) вид изброяване предвижда [REPEATING_SECTION_ITEM](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/#repeating_section_item) собственост.

Следният пример за код показва как да се свърже контрол върху съдържанието на повтарящия се раздел с таблица:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CreatingTableRepeatingSectionMappedToCustomXmlPart.py" >}}
