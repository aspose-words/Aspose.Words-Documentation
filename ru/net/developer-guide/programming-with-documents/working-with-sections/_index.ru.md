---
title: Работа с разделами в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с разделами
linktitle: Работа с разделами
description: "Понимание концепций разделов документа и методов манипулирования с использованием C#. Вставьте раздел в документ C#. Удалите раздел C#. Копируйте разделы между документами."
type: docs
weight: 120
url: /ru/net/working-with-sections/
---

Иногда вам нужен документ, который не имеет одинакового форматирования на всех страницах. Например, вам может потребоваться изменить формат номеров страниц, изменить размер и ориентацию страницы или использовать первую страницу документа в качестве титульной страницы без нумерации. Вы можете добиться этого с помощью разделов.

Разделы — это узлы уровня, которые управляют верхними и нижними колонтитулами, ориентацией, столбцами, полями, форматированием номеров страниц и т.д.

Aspose.Words позволяет управлять разделами, разделять документ на разделы и вносить изменения форматирования, применимые только к определенному разделу. Aspose.Words хранит информацию о форматировании раздела, такую как верхние и нижние колонтитулы, настройки страницы и настройки столбцов в разрыве раздела.

В этой статье объясняется, как работать с разделами и разрывами разделов.

## Что такое раздел и разрыв раздела

Разделы документа представлены классами [Section](https://reference.aspose.com/words/ru/net/aspose.words/section/) и [SectionCollection](https://reference.aspose.com/words/ru/net/aspose.words/section/collection). Объекты раздела являются непосредственными дочерними элементами узла [Document](https://reference.aspose.com/words/ru/net/aspose.words/document/), и доступ к ним можно получить через свойство [Sections](https://reference.aspose.com/words/ru/net/aspose.words/document//properties/sections). Вы можете управлять этими узлами, используя некоторые методы, такие как [Remove](https://reference.aspose.com/words/ru/net/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/ru/net/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/ru/net/aspose.words/nodecollection/indexof/) и другие.

Разрыв раздела — это опция, которая делит страницы документа на разделы с настраиваемым макетом.

## Виды разрыва раздела

Aspose.Words позволяет разделять и форматировать документы, используя разные разрывы разделов перечисления [BreakType](https://reference.aspose.com/words/ru/net/aspose.words/breaktype/):

* РазделBreakContinous
* РазделBreakNewColumn
* РазделBreakNewPage
* РазделBreakEvenPage
* РазделBreakOddPage

Вы также можете использовать перечисление [SectionStart](https://reference.aspose.com/words/ru/net/aspose.words/sectionstart/), чтобы выбрать тип разрыва, который применяется только для первого раздела, например NewColumn, NewPage, EvenPage и OddPage.

## Управление разделом

Поскольку раздел является обычным составным узлом, всю манипуляцию с узлом API можно использовать для манипулирования разделами: для добавления, удаления и других операций над разделами. Подробнее об узлах вы можете прочитать в статье [Aspose.Words Document Object Model (DOM)](/words/ru/net/aspose-words-document-object-model/).

С другой стороны, для работы с разделами также можно использовать `DocumentBuilder` API. В этой статье мы сосредоточимся именно на этом способе работы с разделами.

## Вставка или удаление разрыва раздела

Aspose.Words позволяет вставлять разрыв раздела в текст с помощью метода [InsertBreak](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/insertbreak/).

В следующем примере кода показано, как вставить разрыв раздела в документ:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "insert-section-breaks.cs" >}}

Используйте метод [Remove](https://reference.aspose.com/words/ru/net/aspose.words/node/remove/), чтобы удалить разрыв раздела. Если вам не нужно удалять разрыв определенного раздела и вместо этого удалить содержимое этого раздела, вы можете использовать метод [ClearContent](https://reference.aspose.com/words/ru/net/aspose.words/section/clearcontent/).

В следующем примере кода показано, как удалить разрывы разделов:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "remove-section-breaks.cs" >}}

{{% alert color="primary" %}}

Обратите внимание, что разрыв раздела содержит информацию о разделе, который идет перед ним, а не о разделе, который идет после него. Таким образом, если вы удалите разрыв раздела, текст перед удаленным разрывом получит свойства следующего за ним разрыва раздела. Это может привести к тому, что весь документ станет альбомным, а верхние и нижние колонтитулы изменятся или полностью исчезнут.

{{% /alert %}}

## Переместить раздел

Если вы хотите переместить раздел из одной позиции в документе в другую, вам необходимо получить индекс этого раздела. Aspose.Words позволяет получить позицию раздела из [SectionCollection](https://reference.aspose.com/words/ru/net/aspose.words/sectioncollection/), используя свойство [Item](https://reference.aspose.com/words/ru/net/aspose.words/sectioncollection//properties/item). Вы можете использовать свойство [Sections](https://reference.aspose.com/words/ru/net/aspose.words/document/sections/), чтобы получить все разделы вашего документа. Но если вы хотите получить только первый раздел, вы можете использовать свойство [FirstSection](https://reference.aspose.com/words/ru/net/aspose.words/document/firstsection/).

В следующем примере кода показано, как получить доступ к первому разделу и перебрать дочерние элементы составного узла:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "section-child-nodes.cs" >}}

## Укажите макет раздела

Иногда вы хотите, чтобы ваш документ выглядел лучше, создав креативные макеты для разных разделов документа. Если вы хотите указать тип текущей сетки раздела, вы можете выбрать режим макета раздела, используя перечисление [SectionLayoutMode](https://reference.aspose.com/words/ru/net/aspose.words/sectionlayoutmode/):

* По умолчанию
* Сетка
* Линейная сетка
* SnapToChars

В следующем примере кода показано, как ограничить количество строк, которые может иметь каждая страница:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "line-grid-section-layout-mode.cs" >}}

## Редактировать раздел

Когда вы добавляете в документ новый раздел, в нем не будет ни основной части, ни абзаца, которые можно было бы редактировать. Aspose.Words позволяет гарантировать, что раздел содержит тело хотя бы с одним абзацем, используя метод [EnsureMinimum](https://reference.aspose.com/words/ru/net/aspose.words/section/ensureminimum/) — он автоматически добавит узел Body (или HeaderFooter) в документ, а затем добавит к нему абзац.

В следующем примере кода показано, как подготовить новый узел раздела с использованием **EnsureMinimum**:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "ensure-minimum.cs" >}}

### Добавить или добавить контент в начало

Если вы хотите нарисовать какую-либо фигуру или добавить текст или изображение в начале/конце раздела, вы можете использовать методы [AppendContent](https://reference.aspose.com/words/ru/net/aspose.words/section/appendcontent/) и [PrependContent](https://reference.aspose.com/words/ru/net/aspose.words/section/prependcontent/) класса [Section](https://reference.aspose.com/words/ru/net/aspose.words/section/).

В следующем примере кода показано, как добавить содержимое существующего раздела:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "append-section-content.cs" >}}

### Клонировать раздел

Aspose.Words позволяет дублировать раздел, создав его полную копию методом [Clone](https://reference.aspose.com/words/ru/net/aspose.words/section/clone/).

В следующем примере кода показано, как клонировать первый раздел документа:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "clone-section.cs" >}}

### Копирование разделов между документами

В некоторых случаях у вас могут быть большие документы с множеством разделов, и вы хотите скопировать содержимое раздела из одного документа в другой.

Aspose.Words позволяет копировать разделы между документами методом [ImportNode](https://reference.aspose.com/words/ru/net/aspose.words/nodeimporter/importnode/).

В следующем примере кода показано, как копировать разделы между документами:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "copy-section.cs" >}}

### Работа с заголовком и подвалом раздела

Основные правила отображения хедера или футера каждого раздела довольно просты:

1. Если в разделе нет своих колонтитулов определенного типа, то он берется из предыдущего раздела.
2. Тип верхнего/подвала, отображаемого на странице, определяется настройками разделов "Разная первая страница" и "Разные четные и нечетные страницы" — если они отключены, то собственные заголовки разделов игнорируются.

В следующем примере кода показано, как создать 2 раздела с разными заголовками:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "link-to-previous-header-footer.cs" >}}

Если вы хотите удалить текст верхних и нижних колонтитулов, не удаляя [HeaderFooter](https://reference.aspose.com/words/ru/net/aspose.words/headerfooter/) объекта в документе, вы можете использовать метод [ClearHeadersFooters](https://reference.aspose.com/words/ru/net/aspose.words/section/clearheadersfooters/). Кроме того, вы можете использовать метод [DeleteHeaderFooterShapes](https://reference.aspose.com/words/ru/net/aspose.words/section/deleteheaderfootershapes/), чтобы удалить все фигуры из верхних и нижних колонтитулов вашего документа.

В следующем примере кода показано, как очистить содержимое всех верхних и нижних колонтитулов в разделе:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-content.cs" >}}

В следующем примере кода показано, как удалить все фигуры из всех верхних и нижних колонтитулов раздела:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-shapes.cs" >}}

## Настройка свойств страницы в разделе

Перед печатью страницы или документа вы можете настроить и изменить размер и макет отдельной страницы или всего документа. С помощью настройки страницы вы можете изменить настройки страниц документа, такие как поля, ориентация и размер, для печати разных первых страниц или нечетных страниц.

Aspose.Words позволяет настраивать свойства страниц и разделов с помощью класса [PageSetup](https://reference.aspose.com/words/ru/net/aspose.words/pagesetup/).

В следующем примере кода показано, как задать такие свойства, как размер и ориентация страницы, для текущего раздела:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "page-setup-and-section-formatting.cs" >}}

В следующем примере кода показано, как изменить свойства страницы во всех разделах:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "modify-page-setup-in-all-sections.cs" >}}

## Смотрите также

* [Логические уровни узлов в документе](https://docs.aspose.com/words/net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
* [Вставка и добавление документов](/words/ru/net/insert-and-append-documents/)

