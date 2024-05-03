---
title: Работа с разделами в Java
second_title: Aspose.Words для Java
articleTitle: Работа с разделами
linktitle: Работа с разделами
description: "Понимание концепций раздела документа и методов манипуляции с использованием Java. Включить раздел в документ Java. Удалить раздел Java. Разделы копирования между документами."
type: docs
weight: 120
url: /ru/java/working-with-sections/
---

Иногда вам нужен документ, который не имеет одинакового форматирования на всех страницах. Например, вам может потребоваться изменить форматы номеров страниц, иметь различный размер страницы и ориентацию или иметь первую страницу документа в качестве обложки без какой-либо нумерации. Это можно сделать с помощью разделов.

Секции - это узлы уровня, которые контролируют заголовки и нижние колонки, ориентацию, столбцы, поля, форматирование номеров страниц и другие.

Aspose.Words позволяет управлять разделами, разделять документ на разделы и вносить изменения форматирования, которые относятся только к конкретному разделу. Aspose.Words хранит информацию о форматировании раздела, такую как заголовки и нижние колонки, настройка страницы и настройки колонки в перерыве раздела.

В этой статье объясняется, как работать с разделами и разделами перерывов.

## Что такое секция и секционный перерыв

Разделы документов представлены [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) и [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/) классы. Объекты секции являются непосредственными детьми [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Узел и может быть доступен через [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) собственность. Вы можете управлять этими узлами, используя некоторые методы, такие как: [Remove](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#remove-com.aspose.words.Node), [Add](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#add-com.aspose.words.Node), [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node), и другие.

Раздельный перерыв - это опция, которая делит страницы документов на разделы с настраиваемыми макетами.

## Типы разрыва раздела

Aspose.Words позволяет разделять и форматировать документы с использованием различных разделов [BreakType](https://reference.aspose.com/words/java/com.aspose.words/breaktype/) Перечисление:

- Непрерывный разрыв
- Обсуждение SectionBreakNewColumn
- SectionBreakNewPage
- Скачать SectionBreakEvenPage
- SectionBreakOddPage

Вы также можете использовать [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/sectionstart/) Перечисление для выбора типа перерыва, который применяется только для первого раздела, такого как NewColumn, NewPage, EvenPage и OddPage.

## Управлять секцией

Поскольку секция является обычным составным узлом, вся манипуляция узлом API Может использоваться для манипулирования секциями: для добавления, удаления и других операций на секциях. Подробнее о узлах можно прочитать в статье [Aspose.Words Document Object Model (DOM)](/words/ru/java/aspose-words-document-object-model/).

С другой стороны, вы также можете использовать `DocumentBuilder` API Работать с разделами. В этой статье мы сосредоточимся на этом конкретном способе работы с разделами.

## Вставить или удалить раздел Break

Aspose.Words позволяет вставить разбивку раздела в текст с помощью [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int) метод.

Следующий пример кода показывает, как вставить разрыв раздела в документ:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "insert-section-breaks.java" >}}

Используйте [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) Способ удаления разрыва раздела. Если вам не нужно удалять определенный разрыв раздела и вместо этого удалять содержимое этого раздела, вы можете использовать [ClearContent](https://reference.aspose.com/words/java/com.aspose.words/section/#clearContent) метод.

Следующий пример кода показывает, как удалить разрывы разделов:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "remove-section-breaks.java" >}}

{{% alert color="primary" %}}

Обратите внимание, что в перерыве раздела есть информация о разделе, который идет до него, а не о разделе, который идет после него. Таким образом, если вы удалите разрыв раздела, текст перед удаленным разрывом получит свойства разрыва раздела после него. Это может привести к тому, что весь документ станет ландшафтом, или заголовки и нижние колонтитулы изменятся или полностью исчезнут.

{{% /alert %}}

## Переместить раздел

Если вы хотите перенести раздел из одной позиции в другую в своем документе, вам нужно получить индекс этого раздела. Aspose.Words позволяет получить позицию раздела из [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/). Вы можете использовать [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) Имущество, чтобы получить все разделы в вашем документе. Но если вы хотите получить только первый раздел, вы можете использовать [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) собственность.

Следующий пример кода показывает, как получить доступ к первому разделу и повторить через детей композитного узла:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "section-child-nodes.java" >}}

## Укажите план раздела

Иногда вы хотите, чтобы ваш документ выглядел лучше, создавая креативные макеты для разных разделов документов. Если вы хотите указать тип сетки текущего раздела, вы можете выбрать режим макета раздела, используя [SectionLayoutMode](https://reference.aspose.com/words/java/com.aspose.words/sectionlayoutmode/) Перечисление:

- По умолчанию
- Сетка
- LineGrid
- SnapToChars

Следующий пример кода показывает, как ограничить количество строк, которые может иметь каждая страница:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "line-grid-section-layout-mode.java" >}}

## Редактировать раздел

Когда вы добавляете новый раздел в свой документ, не будет никакого текста или абзаца, который вы можете отредактировать. Aspose.Words позволяет гарантировать, что раздел содержит тело с по меньшей мере одним абзацем, используя [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/section/#ensureMinimum) метод - он автоматически добавит в документ узел Body (или HeaderFooter), а затем добавит в него Параграф.

Следующий пример кода показывает, как подготовить новый узел раздела с помощью **EnsureMinimum**:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "ensure-minimum.java" >}}

### Добавить или подготовить контент

Если вы хотите нарисовать какую-либо форму или добавить текст или изображение в начале / конце раздела, вы можете использовать [AppendContent](https://reference.aspose.com/words/java/com.aspose.words/section/#appendContent-com.aspose.words.Section) и [PrependContent](https://reference.aspose.com/words/java/com.aspose.words/section/#prependContent-com.aspose.words.Section) методов [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) класс.

Следующий пример кода показывает, как добавить содержимое существующего раздела:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "append-section-content.java" >}}

### Клонировать секцию

Aspose.Words позволяет дублировать раздел, создавая его полную копию с помощью [deepClone](https://reference.aspose.com/words/java/com.aspose.words/section/#deepClone) метод.

Следующий пример кода показывает, как клонировать первый раздел в вашем документе:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "clone-section.java" >}}

### Разделы копирования между документами

В некоторых случаях у вас могут быть большие документы со многими разделами, и вы хотите скопировать содержание раздела из одного документа в другой.

Aspose.Words позволяет копировать разделы между документами, используя [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/documentbase/#importNode-com.aspose.words.Node-boolean) метод.

Следующий пример кода показывает, как копировать разделы между документами:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "copy-section.java" >}}

### Работа с заголовком раздела и Footer

Основные правила отображения заголовка или футера для каждого раздела довольно просты:

1. Если раздел не имеет собственных заголовков/футов определенного типа, то он взят из предыдущего раздела.
2. Тип заголовка / футера, отображаемого на странице, контролируется настройками раздела "Разные первые страницы" и "Разные странные и даже страницы" - если они отключены, то собственные заголовки раздела игнорируются.

Следующий пример кода показывает, как создать 2 раздела с разными заголовками:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

Если вы хотите удалить текст заголовков и футеров без удаления [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) объекты в вашем документе, вы можете использовать [ClearHeadersFooters](https://reference.aspose.com/words/java/com.aspose.words/section/#clearHeadersFooters) метод. Кроме того, вы можете использовать [DeleteHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/section/#deleteHeaderFooterShapes) Способ удаления всех форм из заголовков и нижних колонок в вашем документе.

Следующий пример кода показывает, как очистить содержимое всех заголовков и нижних колонок в разделе:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-content.java" >}}

Следующий пример кода, как удалить все формы из всех нижних колонтитулов в разделе:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-shapes.java" >}}

## Настройка свойств страницы в разделе

Перед печатью страницы или документа вы можете настроить и изменить размер и макет одной страницы или всего документа. При настройке страницы вы можете изменить настройки страниц документа, такие как поля, ориентация и размер для печати разных первых страниц или нечетных страниц.

Aspose.Words позволяет настраивать свойства страниц и разделов с помощью [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) класс.

Следующий пример кода показывает, как установить такие свойства, как размер страницы и ориентация для текущего раздела:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "page-setup-and-section-formatting.java" >}}

Следующий пример кода показывает, как изменить свойства страницы во всех разделах:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "modify-page-setup-in-all-sections.java" >}}

## Смотрите также

- [Логические уровни узлов в документе](/words/ru/java/logical-levels-of-nodes-in-a-document/)
- [Включить и добавить документы](/words/ru/java/insert-and-append-documents/)