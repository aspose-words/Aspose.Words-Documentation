---
title: Робота з ногами та Endnote
second_title: Aspose.Words для Python via .NET
articleTitle: Робота з ногами та Endnote
linktitle: Робота з ногами та Endnote
description: "Вставте в документ і вкажіть його параметри Pythonй"
type: docs
weight: 160
url: /uk/python-net/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words також надає деякі класи, методи та властивості для роботи з ногами та ендонотами.

## Вставити Endnote і встановити параметри кількості

Якщо ви хочете вставити примітку або кінцеву програму в документі Word, будь ласка, використовуйте [insert_footnote](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_footnote/) метод. Цей метод вставляє примітку або кінцеву в документ.

[EndnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/endnoteoptions/) і [FootnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/) класи представляють варіанти занурення ніг і ендоноти.

Наприклад, наступний код показує, як вставити кінцеві в документ і встановити параметри номерування:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetEndnoteOptions.py" >}}

## Встановити кількість колонок для ніг

Ви можете встановити кількість стовпчиків для макетів нижньої білизни за допомогою [columns](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/columns/) майно. Якщо ця властивість має значення 0, площа приміток відформатована кількістю стовпчиків на основі кількості стовпців на сторінці відображення.

Приклад наступного коду показує, як встановити кількість стовпчиків для макета піддону:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootNoteColumns.py" >}}

## Встановити позицію Футно та EndNote

Посада примітки може бути в нижній частині кожної сторінки або приманити текст на кожній сторінці. Кінцева позиція може бути в кінці розділу або в кінці документа.

Наприклад, наступний код показує, як встановити позицію примітки та ендоноти:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootnoteAndEndNotePosition.py" >}}
