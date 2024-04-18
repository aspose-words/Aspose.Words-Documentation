---
title: Работа с контрол на съдържанието SDT
second_title: Aspose.Words вместо .NET
articleTitle: Работа с контрол на съдържанието SDT
linktitle: Работа с контрол на съдържанието SDT
description: "Разширено управление на съдържанието на документи, как да се създаде и манипулира контрол на съдържанието (Strucured Document Tags) използване C#."
type: docs
weight: 390
url: /bg/net/working-with-content-control-sdt/
---

В Microsoft Word, можете да създадете форма, като започнете с шаблон и да добавите контрол на съдържанието, включително чекови кутии, текстови кутии, берачи на дати и падащи списъци. В <span notrans="<span notrans=" Aspose.Words"=""></span>,"> структуриран документ Етикет или контрол на съдържанието от всеки документ, зареден в Aspose.Words е внесен като Structured DocumentTag възел. Структурираните тагове на документи (SDT или контрол на съдържанието) позволяват вграждането на семантика, дефинирана от клиента, както и неговото поведение и появяване в документ.

Структуриран документ Етикет може да се появи в документ на следните места:

- Ниво на блок по точки и маси, като дете на тяло, HeaderFooter, Коментар, бележка под линия или възел на форма
- Ниво на гребане сред редове в таблица, като дете на възел на маса
- Ниво на клетки готварски клетки в таблица ред, като дете на ред възел
- Inline-level
- Заседнал в друг структуриран документ Етикет

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

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.cs" >}}

Следният пример за код показва как да се създаде контрол на съдържанието на тип богата текстова кутия:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-RichTextBoxContentControl-RichTextBoxContentControl.cs" >}}

Следният пример за код показва как да се създаде контрол на съдържанието на типа комбо кутия:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-ComboBoxContentControl-ComboBoxContentControl.cs" >}}

## Как да актуализирате контролите на съдържанието

Този раздел обяснява как да се актуализират стойностите на SDT или контрол на съдържанието програмично.

Следният пример за код показва как да зададете текущото състояние на отметката:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-SetCurrentStateOfCheckBox.cs" >}}

Следният пример за код показва как да се модифицира контролът на съдържанието на тип обикновена текстова кутия, падащ списък и картина:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-ModifyContentControls.cs" >}}

## Свързване контрол на съдържанието към потребителски XML части

Можете да свържете контрол на съдържанието с XML данни (*custom XML част*) в Word документи.

Следният пример за код показва как да се свърже контрол на съдържанието към потребителски XML части:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-BindSDTtoCustomXmlPart.cs" >}}

## Name

Можете да получите картографиране на този набор от структурирани документи за XML данни в персонализирана XML част от текущия документ, използвайки **Структуриран DocumentTagRangeStart.XmlMapping имот**. Все пак, [SetMapping](https://reference.aspose.com/words/net/aspose.words.markup/xmlmapping/setmapping/) метод може да се използва за картографиране на набор от структурирани документи на XML данни.

Следният пример за код показва как да зададете XML картинг:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-StructuredDocumentTagRangeStartXmlMapping.cs" >}}

## Изчистване на съдържанието на контрол на съдържанието

Можете да изчистите съдържанието на контрол на съдържанието с показване на държател. На **StructuredDocumentTag.Clear** метод изчиства съдържанието на този структуриран документ таг и показва placeholder, ако тя е определена. Все пак, Не е възможно да се изчисти съдържанието на контрол върху съдържанието, ако има ревизии. Ако контролът на съдържанието няма място, се поставят пет пространства като в Microsoft Word (с изключение на повтарящите се раздели, повтарящи се раздели, групи, чекови кутии, цитати). Ако контролът на съдържанието е картографиран към потребителски XML, съответният XML възел е изчистен.

Следният пример за код показва как да се изчисти съдържанието на контрол на съдържанието:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-ClearContentsControl.cs" >}}

## Промяна на контрол на съдържанието Фон и гранични цветове

На `StructuredDocumentTag.Color` Имотът ви позволява да получите или настроите цвета на контрола върху съдържанието. Цветът влияе на контрола върху съдържанието в две ситуации:

1. MS Word подчертава фона на контрола на съдържанието, когато мишката се движи над контрол на съдържанието. Това помага за идентифициране на контрола върху съдържанието. Цветът на подчертаването е малко по-мек от *Color*. Например, MS Word подчертава фона с розов цвят, когато *Color* е Ред.
2. Когато взаимодействате (редактиране, бране и т.н.) със съдържанието контрол, границата на контрол на съдържанието е оцветена с *Color*.

Следният пример за код показва как да промените цвета на контрол на съдържанието:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlColor.cs" >}}

## Как да зададете стил за форматиране на текст в контрол на съдържанието

Ако искате да зададете стила на контрол на съдържанието, можете да използвате `StructuredDocumentTag.Style` или `StructuredDocumentTag.StyleName` имоти. Когато въведете текста в контрол на съдържанието в изходния документ, напечатаният текст ще има стила "Quote."

{{% alert color="primary" %}}

Имайте предвид, че за контрол на съдържанието могат да се прилагат само стилове свързани и символи. Невалидна операция Exception ("Не може да се прилага този стил към SDT") се хвърля, когато се прилага стил, който съществува, но не е свързан или стил Character.

{{% /alert %}}

Следният пример с код показва как да зададете стила на контрол на съдържанието:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cs" >}}

## Работа с контрол на съдържанието на повтарящия се раздел

Контролът на съдържанието на повтарящия се раздел позволява повтаряне на съдържанието, съдържащо се в него. Използване Aspose.Words, Могат да бъдат създадени структурираните възли на таговете на документа на повтарящия се раздел и повтарящите се типове елементи от раздел и за тази цел, [Тип на изброяването на SdtType](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/) осигурява **RepeatingSectionItem** собственост.

Следният пример с код показва как да се свърже контрол на съдържанието на повтарящ се раздел към таблица.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cs" >}}
