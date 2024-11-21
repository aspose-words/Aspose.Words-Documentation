---
title: Работа с разделами в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с разделами
linktitle: Работа с разделами
description: "Создание и управление разделами и разбивками разделов в документе с использованием Python. Включить раздел в документ Python. Удалить раздел Python. Разделы копирования между документами."
type: docs
weight: 120
url: /ru/python-net/working-with-sections/
timestamp: 2024-09-25-11-08-55
---

Иногда вам нужен документ, который не имеет одинакового форматирования на всех страницах. Например, вам может потребоваться изменить форматы номеров страниц, иметь различный размер страницы и ориентацию или иметь первую страницу документа в качестве обложки без какой-либо нумерации. Это можно сделать с помощью разделов.

Секции - это узлы уровня, которые контролируют заголовки и нижние колонки, ориентацию, столбцы, поля, форматирование номеров страниц и другие.

Aspose.Words позволяет управлять разделами, разделять документ на разделы и вносить изменения форматирования, которые относятся только к конкретному разделу. Aspose.Words сохраняет информацию о форматировании раздела, такую как заголовки и нижние колонки, настройка страницы и настройки колонки в перерыве раздела.

В этой статье объясняется, как работать с разделами и разделами перерывов.

## Что такое секция и секционный перерыв

Разделы документов представлены [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) и [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/) классы. Объекты секции являются непосредственными детьми [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Узел и может быть доступен через [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/) собственность. Вы можете управлять этими узлами, используя некоторые методы, такие как: [Remove](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/remove/#node), [Add](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/add/#node), [IndexOf](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/index_of/#node), и другие.

Раздельный перерыв - это опция, которая делит страницы документов на разделы с настраиваемыми макетами.

## Типы разрыва раздела

Aspose.Words позволяет разделять и форматировать документы с использованием различных разделов [BreakType](https://reference.aspose.com/words/python-net/aspose.words/breaktype/) перечисление:

- Непрерывный разрыв
- Обсуждение SectionBreakNewColumn
- SectionBreakNewPage
- Скачать SectionBreakEvenPage
- SectionBreakOddPage

Вы также можете использовать [SectionStart](https://reference.aspose.com/words/python-net/aspose.words/sectionstart/) Перечисление для выбора типа перерыва, который применяется только для первого раздела, такого как NewColumn, NewPage, EvenPage и OddPage.

## Управлять секцией

Поскольку секция является обычным составным узлом, вся манипуляция узлом API Может использоваться для манипулирования секциями: для добавления, удаления и других операций на секциях. Подробнее о узлах можно прочитать в статье [Aspose.Words Document Object Model (DOM)](/words/ru/python-net/aspose-words-document-object-model/).

С другой стороны, вы также можете использовать `DocumentBuilder` API Работать с разделами. В этой статье мы сосредоточимся на этом конкретном способе работы с разделами.

## Вставить или удалить раздел Break

Aspose.Words позволяет вставить разбивку раздела в текст с помощью [InsertBreak](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/#breaktype) метод.

Следующий пример кода показывает, как вставить разрыв раздела в документ:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "insert-section-breaks.py" >}}

Используйте [Remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/#default) Способ удаления разрыва раздела. Если вам не нужно удалять определенный разрыв раздела и вместо этого удалять содержимое этого раздела, вы можете использовать [ClearContent](https://reference.aspose.com/words/python-net/aspose.words/section/clear_content/#default) метод.

Следующий пример кода показывает, как удалить разрывы разделов:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "remove-section-breaks.py" >}}

{{% alert color="primary" %}}

Обратите внимание, что в перерыве раздела есть информация о разделе, который идет до него, а не о разделе, который идет после него. Таким образом, если вы удалите разрыв раздела, текст перед удаленным разрывом получит свойства разрыва раздела после него. Это может привести к тому, что весь документ станет ландшафтом, или заголовки и нижние колонтитулы изменятся или полностью исчезнут.

{{% /alert %}}

## Переместить раздел

Если вы хотите перенести раздел из одной позиции в другую в своем документе, вам нужно получить индекс этого раздела. Aspose.Words позволяет получить позицию раздела из [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/). Вы можете использовать [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/) Имущество, чтобы получить все разделы в вашем документе. Но если вы хотите получить только первый раздел, вы можете использовать [FirstSection](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/) собственность.

Следующий пример кода показывает, как получить доступ к первому разделу и повторить через детей композитного узла:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "section-child-nodes.py" >}}

## Укажите план раздела

Иногда вы хотите, чтобы ваш документ выглядел лучше, создавая креативные макеты для различных разделов документов. Если вы хотите указать тип сетки текущего раздела, вы можете выбрать режим макета раздела, используя [SectionLayoutMode](https://reference.aspose.com/words/python-net/aspose.words/sectionlayoutmode/) перечисление:

- По умолчанию
- Сетка
- LineGrid
- SnapToChars

Следующий пример кода показывает, как ограничить количество строк, которые может иметь каждая страница:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "line-grid-section-layout-mode.py" >}}

## Редактировать раздел

Когда вы добавляете новый раздел в свой документ, не будет никакого текста или абзаца, который вы можете отредактировать. Aspose.Words позволяет гарантировать, что раздел содержит тело с по меньшей мере одним абзацем, используя [EnsureMinimum](https://reference.aspose.com/words/python-net/aspose.words/section/ensure_minimum/#default) метод - он автоматически добавит в документ узел Body (или HeaderFooter), а затем добавит в него Параграф.

Следующий пример кода показывает, как подготовить новый узел раздела с помощью **EnsureMinimum**:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "ensure-minimum.py" >}}

### Добавить или подготовить контент

Если вы хотите нарисовать какую-либо форму или добавить текст или изображение в начале / конце раздела, вы можете использовать [AppendContent](https://reference.aspose.com/words/python-net/aspose.words/section/append_content/#section) и [PrependContent](https://reference.aspose.com/words/python-net/aspose.words/section/prepend_content/#section) методов [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) класс.

Следующий пример кода показывает, как добавить содержимое существующего раздела:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "append-section-content.py" >}}

### Клонировать секцию

Aspose.Words позволяет дублировать раздел, создавая его полную копию с помощью [Clone](https://reference.aspose.com/words/python-net/aspose.words/section/clone/#default) метод.

Следующий пример кода показывает, как клонировать первый раздел в вашем документе:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "clone-section.py" >}}

### Разделы копирования между документами

В некоторых случаях у вас могут быть большие документы со многими разделами, и вы хотите скопировать содержание раздела из одного документа в другой.

Aspose.Words позволяет копировать разделы между документами, используя [ImportNode](https://reference.aspose.com/words/python-net/aspose.words/nodeimporter/import_node/#node_bool) метод.

Следующий пример кода показывает, как копировать разделы между документами:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "copy-section.py" >}}

### Работа с заголовком раздела и фойе

Основные правила отображения заголовка или футера для каждого раздела довольно просты:

1. Если раздел не имеет собственных заголовков/футов определенного типа, то он взят из предыдущего раздела.
2. Тип заголовка / футера, отображаемого на странице, контролируется настройками разделов "Разные первые страницы" и "Разные странные и даже страницы" - если они отключены, то собственные заголовки раздела игнорируются.

Следующий пример кода показывает, как создать 2 раздела с разными заголовками:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "link-to-previous-header-footer.py" >}}

Если вы хотите удалить текст заголовков и футеров без удаления [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) объекты в вашем документе, вы можете использовать [ClearHeadersFooters](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/#default) метод. Кроме того, вы можете использовать [DeleteHeaderFooterShapes](https://reference.aspose.com/words/python-net/aspose.words/section/delete_header_footer_shapes/#default) Способ удаления всех форм из заголовков и нижних колонок в вашем документе.

Следующий пример кода показывает, как очистить содержимое всех заголовков и нижних колонок в разделе:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "delete-header-footer-content.py" >}}

Следующий пример кода, как удалить все формы из всех нижних колонтитулов в разделе:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "delete-header-footer-shapes.py" >}}

## Настройка свойств страницы в разделе

Перед печатью страницы или документа вы можете настроить и изменить размер и макет одной страницы или всего документа. При настройке страницы вы можете изменить настройки страниц документа, такие как поля, ориентация и размер для печати разных первых страниц или нечетных страниц.

Aspose.Words позволяет настраивать свойства страниц и разделов с помощью [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) класс.

Следующий пример кода показывает, как установить такие свойства, как размер страницы и ориентация для текущего раздела:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "page-setup-and-section-formatting.py" >}}

Следующий пример кода показывает, как изменить свойства страницы во всех разделах:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "modify-page-setup-in-all-sections.py" >}}

## Смотрите также

- [Логические уровни узлов в документе](/words/python-net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
- [Включить и добавить документы](/words/ru/python-net/insert-and-append-documents/)
