---
title: Работа с разделами в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с разделами
linktitle: Работа с разделами
description: "Создавайте разделы и разрывы разделов в документе и управляйте ими с помощью Python. Вставьте раздел в документ Python. Удалите раздел Python. Скопируйте разделы между документами."
type: docs
weight: 120
url: /ru/python-net/working-with-sections/
timestamp: 2024-09-25-11-08-55
---

Иногда требуется, чтобы формат документа не был одинаковым для всех страниц. Например, может потребоваться изменить формат нумерации страниц, изменить размер и ориентацию страниц или использовать первую страницу документа в качестве титульного листа без какой-либо нумерации. Этого можно добиться с помощью разделов.

Разделы - это узлы уровня, которые управляют верхними и нижними колонтитулами, ориентацией, столбцами, полями, форматированием номеров страниц и другими параметрами.

Aspose.Words позволяет управлять разделами, разбивать документ на разделы и вносить изменения в форматирование, применимые только к определенному разделу. Aspose.Words в разделе "Разрыв" хранится информация о форматировании разделов, такая как верхние и нижние колонтитулы, настройки страницы и столбцов.

В этой статье объясняется, как работать с разделами и разрывами разделов.

## Что такое раздел и разрыв раздела

Разделы документа представлены классами [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) и [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/). Объекты раздела являются непосредственными дочерними объектами узла [Document](https://reference.aspose.com/words/python-net/aspose.words/document/), к которым можно получить доступ с помощью свойства [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/). Вы можете управлять этими узлами, используя некоторые методы, такие как [Remove](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/remove/#node), [Add](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/add/#node), [IndexOf](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/index_of/#node), и другие.

Разрыв раздела - это опция, которая делит страницы документа на разделы с настраиваемым макетом.

## Типы разрыва раздела

Aspose.Words позволяет разделять и форматировать документы, используя различные разбиения на разделы в перечислении [BreakType](https://reference.aspose.com/words/python-net/aspose.words/breaktype/):

- SectionBreakContinuous
- SectionBreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

Вы также можете использовать перечисление [SectionStart](https://reference.aspose.com/words/python-net/aspose.words/sectionstart/), чтобы выбрать тип разрыва, который применяется только для первого раздела, например NewColumn, NewPage, EvenPage, и OddPage.

## Управление разделом

Поскольку раздел является обычным составным узлом, для управления разделами можно использовать все манипуляции с узлами API: добавлять, удалять и выполнять другие операции с разделами. Подробнее об узлах вы можете прочитать в статье [Aspose.Words Объектная модель документа (DOM)](/words/python-net/aspose-words-document-object-model/).

С другой стороны, вы также можете использовать `DocumentBuilder` API для работы с разделами. В этой статье мы сосредоточимся именно на этом способе работы с разделами.

## Вставка или удаление разрыва раздела

Aspose.Words позволяет вставить разрыв раздела в текст, используя метод [InsertBreak](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/#breaktype).

В следующем примере кода показано, как вставить разрыв раздела в документ:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "insert-section-breaks.py" >}}

Используйте метод [Remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/#default), чтобы удалить разрыв раздела. Если вам не нужно удалять разрыв определенного раздела, а вместо этого удалите содержимое этого раздела, вы можете использовать метод [ClearContent](https://reference.aspose.com/words/python-net/aspose.words/section/clear_content/#default).

В следующем примере кода показано, как удалить разрывы разделов:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "remove-section-breaks.py" >}}

{{% alert color="primary" %}}

Обратите внимание, что разрыв раздела содержит информацию о разделе, который идет перед ним, а не о разделе, который следует за ним. Таким образом, если вы удалите разрыв раздела, текст перед удаленным разрывом получит свойства следующего за ним разрыва раздела. Это может привести к тому, что весь документ станет альбомным, а верхние и нижние колонтитулы изменятся или полностью исчезнут.

{{% /alert %}}

## Переместить раздел

Если вы хотите переместить раздел из одной позиции в другую в вашем документе, вам необходимо получить индекс этого раздела. Aspose.Words позволяет получить позицию раздела из [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/). Вы можете использовать свойство [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/), чтобы получить все разделы в вашем документе. Но если вы хотите получить только первый раздел, вы можете использовать свойство [FirstSection](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/).

В следующем примере кода показано, как получить доступ к первому разделу и выполнить итерацию по дочерним элементам составного узла:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "section-child-nodes.py" >}}

## Укажите расположение раздела

Иногда вы хотите, чтобы ваш документ выглядел лучше, создавая креативные макеты для различных разделов документа. Если вы хотите указать тип текущей сетки разделов, вы можете выбрать режим компоновки раздела, используя перечисление [SectionLayoutMode](https://reference.aspose.com/words/python-net/aspose.words/sectionlayoutmode/):

- По умолчанию
- Сетка
- LineGrid
- SnapToChars

В следующем примере кода показано, как ограничить количество строк, которые могут быть на каждой странице:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "line-grid-section-layout-mode.py" >}}

## Редактировать раздел

Когда вы добавляете новый раздел в свой документ, в нем не будет основной части или абзаца, которые вы могли бы отредактировать. Aspose.Words позволяет гарантировать, что раздел содержит основную часть по крайней мере с одним абзацем, используя метод [EnsureMinimum](https://reference.aspose.com/words/python-net/aspose.words/section/ensure_minimum/#default) – он автоматически добавит основной узел (или HeaderFooter) в документ, а затем добавит к нему абзац.

В следующем примере кода показано, как подготовить новый узел раздела, используя **EnsureMinimum**:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "ensure-minimum.py" >}}

### Добавлять или дополнять содержимое

Если вы хотите нарисовать какую-либо фигуру или добавить текст или изображение в начале/конце раздела, вы можете использовать методы [AppendContent](https://reference.aspose.com/words/python-net/aspose.words/section/append_content/#section) и [PrependContent](https://reference.aspose.com/words/python-net/aspose.words/section/prepend_content/#section) класса [Section](https://reference.aspose.com/words/python-net/aspose.words/section/).

В следующем примере кода показано, как добавить содержимое существующего раздела:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "append-section-content.py" >}}

### Клонировать раздел

Aspose.Words позволяет дублировать раздел, создав его полную копию с помощью метода [Clone](https://reference.aspose.com/words/python-net/aspose.words/section/clone/#default).

В следующем примере кода показано, как клонировать первый раздел в вашем документе:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "clone-section.py" >}}

### Копирование разделов между документами

В некоторых случаях у вас могут быть большие документы с большим количеством разделов, и вы хотите скопировать содержимое раздела из одного документа в другой.

Aspose.Words позволяет копировать разделы между документами, используя метод [ImportNode](https://reference.aspose.com/words/python-net/aspose.words/nodeimporter/import_node/#node_bool).

В следующем примере кода показано, как копировать разделы между документами:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "copy-section.py" >}}

### Работа с верхним и нижним колонтитулами разделов

Основные правила отображения верхнего или нижнего колонтитула для каждого раздела довольно просты:

1. Если в разделе нет собственных колонтитулов определенного типа, то он берется из предыдущего раздела.
2. Тип верхнего и нижнего колонтитула, отображаемого на странице, регулируется настройками раздела "Другая первая страница" и "Разные четные и нечетные страницы" – если они отключены, то собственные заголовки раздела игнорируются.

В следующем примере кода показано, как создать 2 раздела с разными заголовками:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "link-to-previous-header-footer.py" >}}

Если вы хотите удалить текст из верхних и нижних колонтитулов, не удаляя [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) объектов в вашем документе, вы можете использовать метод [ClearHeadersFooters](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/#default). Кроме того, вы можете использовать метод [DeleteHeaderFooterShapes](https://reference.aspose.com/words/python-net/aspose.words/section/delete_header_footer_shapes/#default) для удаления всех фигур из верхних и нижних колонтитулов в вашем документе.

В следующем примере кода показано, как очистить содержимое всех верхних и нижних колонтитулов в разделе:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "delete-header-footer-content.py" >}}

В следующем примере кода показано, как удалить все фигуры из всех верхних и нижних колонтитулов раздела:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "delete-header-footer-shapes.py" >}}

## Настройка свойств страницы в разделе

Перед печатью страницы или документа может потребоваться настроить размер и оформление отдельной страницы или всего документа в целом. С помощью настройки страницы вы можете изменить параметры страниц документа, такие как поля, ориентация и размер, для печати разных первых страниц или нечетных страниц.

Aspose.Words позволяет настраивать свойства страниц и разделов с помощью класса [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/).

В следующем примере кода показано, как задать такие свойства, как размер страницы и ориентация для текущего раздела:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "page-setup-and-section-formatting.py" >}}

В следующем примере кода показано, как изменить свойства страницы во всех разделах:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "modify-page-setup-in-all-sections.py" >}}

## Смотрите также

- [Логические уровни узлов в документе](/words/python-net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
- [Вставка и добавление документов](/words/python-net/insert-and-append-documents/)
