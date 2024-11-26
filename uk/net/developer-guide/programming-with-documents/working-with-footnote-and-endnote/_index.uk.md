---
title: Робота з Футнот і Енднот в C#
second_title: Aspose.Words для .NET
articleTitle: Робота з ногами та Endnote
linktitle: Робота з ногами та Endnote
description: "Як маніпулювати примітки і ендоноти за допомогою C#й"
type: docs
weight: 160
url: /uk/net/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words також надає деякі класи, методи та властивості для роботи з ногами та ендонотами.

## Вставити Endnote і встановити параметри кількості

Якщо ви хочете вставити примітку або перенести в документ Word, будь ласка, використовуйте [InsertFootnote](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfootnote/) метод. Цей метод вставляє примітку або кінцеву в документ.

[EndnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/endnoteoptions/) і [FootnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/) класи представляють варіанти занурення ніг і ендоноти.

Наприклад, наступний код показує, як вставити кінцеві в документ і встановити параметри номерування:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cs" >}}

## Встановити кількість колонок для ніг

Ви можете встановити кількість стовпчиків для макетів нижньої білизни за допомогою [Columns](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/columns/) майно. Якщо ця властивість має значення 0, площа приміток відформатована кількістю стовпчиків на основі кількості стовпців на сторінці відображення.

Приклад наступного коду показує, як встановити кількість стовпчиків для макета піддону:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cs" >}}

## Встановити позицію Футно та EndNote

Посада примітки може бути в нижній частині кожної сторінки або приманити текст на кожній сторінці. Кінцева позиція може бути в кінці розділу або в кінці документа.

Наприклад, наступний код показує, як встановити позицію примітки та ендоноти:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteOptions.cs" >}}
