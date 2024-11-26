---
title: Работа со стилями и темами
second_title: Aspose.Words для Java
articleTitle: Работа со стилями и темами
linktitle: Работа со стилями и темами
description: "Расширенные возможности форматирования Microsoft Word, работа со стилями и темами с помощью Java."
type: docs
weight: 110
url: /ru/java/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

Класс [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) используется для управления встроенными и применения пользовательских настроек к стилям.

## Как извлечь контент на основе стилей

На простом уровне извлечение содержимого на основе стилей из документа Word может быть полезно для идентификации, составления списка и подсчета абзацев и фрагментов текста, отформатированных в определенном стиле. Например, вам может потребоваться определить определенные виды содержимого в документе, такие как примеры, заголовки, ссылки, ключевые слова, названия рисунков и тематические исследования.

Если сделать еще несколько шагов вперед, то это также можно использовать для улучшения структуры документа, определяемой используемыми стилями, чтобы переназначить документ для другого вывода, например HTML. Фактически, именно так создается документация Aspose, что позволяет протестировать Aspose.Words. Инструмент, созданный с использованием Aspose.Words, использует исходные документы Word и разбивает их на темы с определенными уровнями заголовков. С помощью Aspose.Words создается файл XML, который используется для построения дерева навигации, которое вы можете видеть слева. А затем Aspose.Words преобразует каждую тему в HTML. Решение для извлечения текста, отформатированного с использованием определенных стилей, из документа Word, как правило, экономично и просто с помощью Aspose.Words.

Чтобы проиллюстрировать, как легко Aspose.Words обрабатывает поиск содержимого на основе стилей, давайте рассмотрим пример. В этом примере мы собираемся извлечь текст, отформатированный с использованием определенного стиля абзаца и стиля символов, из образца документа Word.

На высоком уровне это будет включать:

1. Открываем документ Word с помощью класса [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1. Получение коллекций всех абзацев и всех прогонов в документе.
1. Выбор только необходимых абзацев и прогонов.

В частности, мы извлекем текст, отформатированный в стиле абзаца "Heading 1" и в стиле символов "Интенсивный акцент", из этого примера документа Word.

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

В этом примере документа текст, отформатированный в стиле абзаца "Heading 1", содержит "Вставка вкладки", "Быстрые стили" и "Тема", а текст, отформатированный в стиле символов "Интенсивный акцент", - это несколько вариантов текста, выделенного синим, курсивом, жирным шрифтом, например ‘галереи’ и ‘общий вид’.

Реализация запроса, основанного на стиле, в объектной модели документа Aspose.Words довольно проста, поскольку она просто использует уже имеющиеся инструменты. Для этого решения реализованы два метода класса:

1. **ParagraphsByStyleName** – Этот метод извлекает массив тех абзацев в документе, которые имеют определенное название стиля.
1. **RunsByStyleName** – Этот метод извлекает массив тех прогонов в документе, которые имеют определенное название стиля.

Оба эти метода очень похожи, единственными различиями являются типы узлов и представление информации о стиле в узлах paragraph и run. Вот реализация ParagraphsByStyleName, показанная в примере кода, приведенном ниже, для поиска всех абзацев, отформатированных в указанном стиле.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

В этой реализации также используется метод [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) класса `Document`, который возвращает коллекцию всех непосредственных дочерних узлов.

Также стоит отметить, что коллекция paragraphs не создает немедленных накладных расходов, поскольку абзацы загружаются в эту коллекцию только тогда, когда вы получаете доступ к элементам в них.Затем все, что вам нужно сделать, это просмотреть коллекцию, используя стандартный оператор foreach, и добавить абзацы, имеющие указанный стиль, в массив paragraphsWithStyle. Название стиля `Paragraph` можно найти в свойстве [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName) объекта [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat).

Реализация RunsByStyleName почти такая же, хотя мы, очевидно, используем `NodeType.Run` для извлечения узлов запуска. Свойство [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle) объекта [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) используется для доступа к информации о стиле в узлах **Run**.

В следующем примере кода все прогоны отформатированы в соответствии с указанным стилем.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

Когда оба запроса реализованы, все, что вам нужно сделать, это передать объект document и указать имена стилей содержимого, которое вы хотите получить:

{{% /alert %}}

В следующем примере кода выполняются запросы и отображаются результаты.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

Когда все будет сделано, при запуске примера отобразится следующий результат:

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

Как вы можете видеть, это очень простой пример, показывающий количество и текст собранных абзацев и прогонов в образце документа Word.

## Вставьте разделитель стилей для размещения различных стилей абзацев

Разделитель стилей можно добавить в конец абзаца, используя сочетание клавиш Ctrl + Alt + Enter в MS Word. Эта функция позволяет использовать два разных стиля абзаца в одном логичном печатном абзаце. Если вы хотите, чтобы в оглавлении отображался текст из начала определенного заголовка, но не весь заголовок целиком, вы можете использовать эту функцию.

В следующем примере кода показано, как вставить разделитель стилей для размещения разных стилей абзаца.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## Скопируйте все стили из шаблона

Бывают случаи, когда требуется скопировать все стили из одного документа в другой. Вы можете использовать метод `Document.CopyStylesFromTemplate` для копирования стилей из указанного шаблона в документ. При копировании стилей из шаблона в документ стили с одинаковыми именами в документе переопределяются в соответствии с описаниями стилей в шаблоне. Уникальные стили из шаблона копируются в документ. Уникальные стили в документе остаются неизменными.

В следующем примере кода показано, как копировать стили из одного документа в другой.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## Как управлять свойствами темы

Мы добавили базовый параметр API в параметр Aspose.Words для доступа к свойствам темы документа. На данный момент этот параметр API включает в себя следующие общедоступные объекты:

- Тема
- ThemeFonts
- ThemeColors

Вот как вы можете получить свойства темы:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

И вот как вы можете настроить свойства темы:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
