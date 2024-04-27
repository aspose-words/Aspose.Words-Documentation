---
title: Работа с контрол на съдържанието SDT Java
second_title: Aspose.Words вместо Java
articleTitle: Работа с контрол на съдържанието SDT
linktitle: Работа с контрол на съдържанието SDT
type: docs
description: "Разширено управление на съдържанието на документи, как да се създаде и манипулира контрол на съдържанието (Strucured Document Tags) използване Java."
weight: 390
url: /bg/java/working-with-content-control-sdt/
---

В Microsoft Word, Можете да създадете форма, като започнете с шаблон и добавяне на контрол на съдържанието, включително чекови кутии, текстови кутии, берачи на дати и падащи списъци. В <span notrans="<span notrans=" Aspose.Words"=""></span>,"> Структуриран документ Етикет или контрол на съдържанието от всеки документ, зареден в Aspose.Words е внесен като Structured DocumentTag възел. Структурираните тагове на документи (SDT или контрол на съдържанието) позволяват вграждането на семантика, дефинирана от клиента, както и нейното поведение и появяване в документ.

Структуриран документ Етикетът може да се появи в документ на следните места:

- Ниво на блока - Сред параграфи и маси, като дете на тяло, HeaderFooter, Коментар, бележка под линия или възел на форма.
- На ниво ред - сред редове в маса, като дете на възел на маса.
- Ниво на клетките - между килиите в ред маси, като дете на възел.
- Inline-ниво - Сред съдържанието вътре, като дете на §.
- Заседнали в друга структура на документ Tag.

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

Следният пример за код показва как да се създаде контрол на съдържанието на тип квадратче:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

Следният пример за код показва как да се създаде контрол на съдържанието на тип богата текстова кутия:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

Следният пример за код показва как да се създаде контрол на съдържанието на тип комбо кутия:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## Как да актуализирате контрола на съдържанието

Този раздел обяснява как да се актуализират стойностите на SDT или контрол на съдържанието програмично.

Следният пример за код показва как да зададете текущото състояние на отметката:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

Следният пример за код показва как да се променят контрола на съдържанието на тип обикновена текстова кутия, падащ списък и картина:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл на тези примери от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Подвързване контрол на съдържанието към потребителски XML части

Можете да свържете контрол на съдържанието с XML данни (*custom XML част*) в Word документи

Следният пример за код показва как да се свърже контрол на съдържанието с потребителски XML части:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## Изчистване на съдържанието на контрол на съдържанието

Можете да изчистите съдържанието на контрол върху съдържанието с показване на държател. **Структурирани DocumentTag.clear()** метод изчиства съдържанието на този структуриран документ таг и показва placeholder, ако тя е определена. Обаче, Не е възможно да се изчисти съдържанието на контрол върху съдържанието, ако има ревизии. Ако контролът на съдържанието няма място, се добавят пет пространства като в MS Word (с изключение на повтарящите се раздели, повтарящи се раздели елементи, групи, чекови кутии, цитати). Ако контролът на съдържанието е картографиран към потребителски XML, съответният XML възел е изчистен.

Следният пример за код показва как да изчистите съдържанието на контрол на съдържанието:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## Промяна на цветовете за контрол на съдържанието

На `StructuredDocumentTag.Color` Имотът ви позволява да получите или настроите цвета на контрол на съдържанието. Цветът влияе на контрола върху съдържанието в две ситуации:

1. MS Word подчертава фона на контрол на съдържанието, когато мишката се движи над контрол на съдържанието. Това помага да се идентифицира контролът върху съдържанието. Цветът на подчертаване е малко по-мек от *Color*. Например, MS Word подчертава фона с розов цвят, когато *Color* Ред.
2. Когато взаимодействате (редактиране, бране и т.н.) със съдържанието контрол, границата на контрол на съдържанието е оцветена с *Color*.

Следният пример за код показва как да промените цвета на контрол на съдържанието:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## Как да зададете стил за форматиране на текст в контрол на съдържанието

Ако искате да зададете стила на контрол на съдържанието, можете да използвате `StructuredDocumentTag.Style` или `StructuredDocumentTag.StyleName` имоти. Когато въведете текста в контрол на съдържанието в изходния документ, напечатаният текст ще има стила "Quote."

{{% alert color="primary" %}}

Имайте предвид, че само Linked и Character стилове могат да се прилагат за контрол на съдържанието. Невалидна операция Exception ("Не може да се приложи този стил към SDT") се хвърля, когато се прилага стил, който съществува, но не е свързан или стил на характер.

{{% /alert %}}

Следният пример с код показва как да зададете стила на контрол на съдържанието:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## Работа с контрол на съдържанието в раздела за повтаряне

Контролът на съдържанието на повтарящия се раздел позволява повтаряне на съдържанието, съдържащо се в него. Използване Aspose.Words, Могат да бъдат създадени структурираните възли на таговете на документа на повтарящия се раздел и повтарящите се типове елементи от раздел и за тази цел, [Тип на изброяното на SdtType](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) осигурява repeating_SECION_ITEM член.

Следният пример за код показва как да се свърже контрол на съдържанието на повтарящия се раздел към таблица:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

