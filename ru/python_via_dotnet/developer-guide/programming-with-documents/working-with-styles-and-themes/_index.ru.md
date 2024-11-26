---
title: Работа со стилями и темами
second_title: Aspose.Words для Python via .NET
articleTitle: Работа со стилями и темами
linktitle: Работа со стилями и темами
description: "Доступ к стилям и темам документа и управление ими осуществляется с помощью Python."
type: docs
weight: 110
url: /ru/python-net/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

Класс [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) используется для управления встроенными и применения пользовательских настроек к стилям.

## Доступ к стилям

Вы можете получить коллекцию стилей, определенных в документе, используя свойство [Document.styles](https://reference.aspose.com/words/python-net/aspose.words/documentbase/styles/). Эта коллекция содержит как встроенные, так и пользовательские стили в документе. Конкретный стиль может быть получен по его имени/псевдониму, идентификатору стиля или индексу. В следующем примере кода показано, как получить доступ к коллекции стилей, определенных в документе.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-AccessStyles.py" >}}

## Как извлечь контент на основе стилей

На простом уровне извлечение содержимого на основе стилей из документа Word может быть полезно для идентификации, составления списка и подсчета абзацев и фрагментов текста, отформатированных в определенном стиле. Например, вам может потребоваться определить определенные виды содержимого в документе, такие как примеры, заголовки, ссылки, ключевые слова, названия рисунков и тематические исследования.

Если сделать еще несколько шагов вперед, то это также можно использовать для улучшения структуры документа, определяемой используемыми стилями, чтобы переназначить документ для другого вывода, например HTML. Фактически, именно так создается документация Aspose, что позволяет протестировать Aspose.Words. Инструмент, созданный с использованием Aspose.Words, использует исходные документы Word и разбивает их на темы с определенными уровнями заголовков. С помощью Aspose.Words создается файл XML, который используется для построения дерева навигации, которое вы можете видеть слева. А затем Aspose.Words преобразует каждую тему в HTML.

Решение для извлечения текста, отформатированного с использованием определенных стилей, из документа Word, как правило, экономично и просто с помощью Aspose.Words.

### Решение

Чтобы проиллюстрировать, как легко Aspose.Words обрабатывает поиск содержимого на основе стилей, давайте рассмотрим пример. В этом примере мы собираемся извлечь текст, отформатированный с использованием определенного стиля абзаца и стиля символов, из образца документа Word. На высоком уровне это потребует:
- Открываем документ Word с помощью класса [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).
- Получение коллекций всех абзацев и всех прогонов в документе.
- Выбираем только нужные абзацы и запускаем. В частности, мы извлекаем текст, отформатированный в стиле абзаца "Heading 1" и в стиле символов "Интенсивный акцент", из этого примера документа Word.

![working-with-styles-and-themes-aspose-words-net](working-with-styles-and-themes-1.png)


В этом примере документа текст, отформатированный в стиле абзаца "Heading 1", содержит "Вставка вкладки", "Быстрые стили" и "Тема", а текст, отформатированный в стиле символов "Интенсивный акцент", - это несколько вариантов текста, выделенного синим, курсивом, жирным шрифтом, например ‘галереи’ и ‘общий вид’.

### Код

Реализация запроса, основанного на стиле, в объектной модели документа Aspose.Words довольно проста, поскольку она просто использует уже имеющиеся инструменты. Для этого решения реализованы два метода класса:
- **paragraphs_by_style_name** – Этот метод извлекает массив тех абзацев в документе, которые имеют определенное название стиля.
- **runs_by_style_name** – Этот метод извлекает массив тех прогонов в документе, которые имеют определенное название стиля. Оба эти метода очень похожи, единственными различиями являются типы узлов и представление информации о стиле в узлах абзаца и прогона. Вот реализация `paragraphs_by_style_name`: В приведенном ниже примере найдите все абзацы, отформатированные в соответствии с указанным стилем.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ParagraphsByStyleName.py" >}}

{{% alert color="primary" %}}

В этой реализации также используется метод [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) класса [Document](https://reference.aspose.com/words/python-net/aspose.words/document/), который возвращает коллекцию всех узлов с указанным типом, который в данном случае содержится во всех абзацах.

Обратите внимание, что второму параметру метода [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) присвоено значение `True`. Это заставляет метод [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) рекурсивно выбирать из всех дочерних узлов, а не выбирать только непосредственные дочерние узлы.

{{% /alert %}}

Также стоит отметить, что коллекция paragraphs не создает немедленных накладных расходов, поскольку абзацы загружаются в эту коллекцию только тогда, когда вы получаете доступ к элементам в них. Затем все, что вам нужно сделать, это просмотреть коллекцию, используя стандартный оператор foreach, и добавить абзацы, имеющие указанный стиль, в массив paragraphs_with_style. Название стиля `Paragraph` можно найти в свойстве [Style.name](https://reference.aspose.com/words/python-net/aspose.words/style/name/) объекта [Paragraph.paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/paragraph/paragraph_format/). Реализация **runs_by_style_name** почти такая же, хотя очевидно, что мы используем [NodeType.RUN](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#run) для извлечения узлов запуска. Свойство [Font.style](https://reference.aspose.com/words/python-net/aspose.words/font/style/) объекта [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) используется для доступа к информации о стиле в узлах [Run](https://reference.aspose.com/words/python-net/aspose.words/run/). В приведенном ниже примере найдите все прогоны, отформатированные в соответствии с указанным стилем.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-RunsByStyleName.py" >}}


Когда оба запроса будут реализованы, все, что вам нужно сделать, это передать объект document и указать названия стилей содержимого, которое вы хотите получить: в приведенном ниже примере выполняйте запросы и отображайте результаты. Вы можете загрузить файл шаблона для этого примера с [здесь](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Styles.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractContentBasedOnStyles.py" >}}

### Конечный результат

Когда все будет сделано, при запуске примера отобразится следующий результат:

![styles-and-themes-aspose-words-net](working-with-styles-and-themes-2.png)


Как вы можете видеть, это очень простой пример, показывающий количество и текст собранных абзацев и прогонов в образце документа Word.

## Скопируйте все стили из шаблона

Бывают случаи, когда требуется скопировать все стили из одного документа в другой. Вы можете использовать метод [Document.copy_styles_from_template](https://reference.aspose.com/words/python-net/aspose.words/document/copy_styles_from_template/) для копирования стилей из указанного шаблона в документ. При копировании стилей из шаблона в документ стили с одинаковыми именами в документе переопределяются в соответствии с описаниями стилей в шаблоне. Уникальные стили из шаблона копируются в документ. Уникальные стили в документе остаются неизменными. В примереlow code показано, как копировать стили из одного документа в другой.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-CopyStyles.py" >}}

## Как управлять свойствами темы

Мы добавили базовый параметр API в параметр Aspose.Words для доступа к свойствам темы документа. На данный момент этот параметр API включает следующие общедоступные объекты:

- [Theme](https://reference.aspose.com/words/python-net/aspose.words.themes/theme/)
- [ThemeFonts](https://reference.aspose.com/words/python-net/aspose.words.themes/themefonts/)
- [ThemeColors](https://reference.aspose.com/words/python-net/aspose.words.themes/themecolors/)

Вот как вы можете получить свойства темы:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-GetThemeProperties.py" >}}

И вот как вы можете настроить свойства темы:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-SetThemeProperties.py" >}}
