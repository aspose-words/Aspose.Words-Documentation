---
title: Работа со стилями и темами
second_title: Aspose.Words для Python via .NET
articleTitle: Работа со стилями и темами
linktitle: Работа со стилями и темами
description: "Доступ и управление стилями и темами в документе с использованием Python."
type: docs
weight: 110
url: /ru/python-net/working-with-styles-and-themes/
---

The [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) Класс используется для управления встроенными и применения пользовательских настроек к стилям.

## Доступ к стилям

Вы можете получить набор стилей, определенных в документе, используя [Document.styles](https://reference.aspose.com/words/python-net/aspose.words/documentbase/styles/) собственность. Эта коллекция содержит как встроенные, так и пользовательские стили в документе. Определенный стиль может быть получен по его имени / алии, идентификатору стиля или индексу. Следующий пример кода показывает, как получить доступ к набору стилей, определенных в документе.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-AccessStyles.py" >}}

## Как извлечь контент на основе стилей

На простом уровне извлечение контента на основе стилей из документа Word может быть полезным для идентификации, перечисления и подсчета абзацев и прогонов текста, отформатированного в определенном стиле. Например, вам может потребоваться определить конкретные виды контента в документе, такие как примеры, заголовки, ссылки, ключевые слова, имена фигур и тематические исследования.

Чтобы сделать это еще на несколько шагов, можно также использовать структуру документа, определяемую используемыми стилями, для переназначения документа для другого вывода, такого как HTML. Именно так строится документация Aspose, ставя Aspose.Words На тест. Инструмент, построенный с использованием Aspose.Words берет исходные документы Word и разделяет их на темы на определенных уровнях заголовков. XML-файл создается с использованием Aspose.Words Используется для построения дерева навигации, которое можно увидеть слева. А потом Aspose.Words Преобразует каждую тему в HTML.

Решение для извлечения текста, отформатированного с определенными стилями в документе Word, обычно экономично и просто. Aspose.Words.

### Решение

Чтобы показать, как легко Aspose.Words обрабатывает извлечение контента на основе стилей, давайте рассмотрим пример. В этом примере мы собираемся извлечь текст, отформатированный с определенным стилем абзаца и стилем символа из образца документа Word. На высоком уровне это будет включать:
- Открытие документа Word с использованием [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) класс.
- Получение сборников всех абзацев и всех строк в документе.
- Выбор только необходимых абзацев и прогонов. В частности, мы получим текст, отформатированный в стиле абзаца "Глава 1" и стиле персонажа "Интенсивный акцент" из этого образца документа Word.

![working-with-styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


В этом примере документа текст, отформатированный в стиле абзаца заголовка 1, представляет собой "Insert Tab", "Quick Styles" и "Theme", а текст, отформатированный в стиле символов "Intense emphasis", представляет собой несколько экземпляров синего, курсивного, смелого текста, такого как "галереи" и "общий вид".

### Кодекс

Реализация стилистического запроса довольно проста в Aspose.Words Модель объекта документа, так как она просто использует инструменты, которые уже существуют. Для этого решения реализованы два класса методов:
- **Источник:_by_style_name** - Этот метод извлекает массив из тех пунктов в документе, которые имеют определенное название стиля.
- **Runs_by_style_name** - Этот метод извлекает множество тех заданий в документе, которые имеют определенное название стиля. Оба эти метода очень похожи, единственными отличиями являются типы узлов и представление информации о стиле в абзаце и узлах запуска. Вот вам реализация `paragraphs_by_style_name`: Ниже приведены примеры всех абзацев, отформатированных в указанном стиле.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ParagraphsByStyleName.py" >}}

{{% alert color="primary" %}}

Эта реализация также использует [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) Методика [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) класс, который возвращает совокупность всех узлов с указанным типом, которая в данном случае во всех пунктах.

Отметим, что второй параметр [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) метод устанавливается `True`. Это заставляет [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) метод рекурсивного выбора из всех узлов ребенка, а не выбора только ближайших детей.

{{% /alert %}}

Также стоит отметить, что сбор абзацев не создает непосредственных накладных расходов, потому что абзацы загружаются в эту коллекцию только при доступе к элементам в них. Затем все, что вам нужно сделать, это пройтись по коллекции, используя стандартный для каждого оператора и добавить абзацы, которые имеют указанный стиль, к массиву paragraphs_with_style. The `Paragraph` Название стиля можно найти в [Style.name](https://reference.aspose.com/words/python-net/aspose.words/style/name/) имуществом, [Paragraph.paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/paragraph/paragraph_format/) объект. Осуществление **Runs_by_style_name** Это почти то же самое, хотя мы используем [NodeType.RUN](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#run) для извлечения запущенных узлов. The [Font.style](https://reference.aspose.com/words/python-net/aspose.words/font/style/) свойство а [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) объект используется для доступа к информации о стиле в [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) Узлы. Ниже приведен пример всех прогонов, отформатированных с указанным стилем.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-RunsByStyleName.py" >}}


Когда оба запроса реализованы, все, что вам нужно сделать, это передать объект документа и указать названия стилей контента, который вы хотите получить: Ниже приведен пример выполнения запросов и отображения результатов. Вы можете скачать файл шаблона этого примера из [здесь](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Styles.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractContentBasedOnStyles.py" >}}

### Конечный результат

Когда все будет сделано, запуск образца будет отображать следующий вывод:

![styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


Как видите, это очень простой пример, показывающий количество и текст собранных абзацев и запускается в образце документа Word.

## Все стили из шаблона

Бывают случаи, когда хочется скопировать все стили из одного документа в другой. Вы можете использовать [Document.copy_styles_from_template](https://reference.aspose.com/words/python-net/aspose.words/document/copy_styles_from_template/) метод копирования стилей из указанного шаблона в документ. Когда стили копируются из шаблона в документ, аналогичные стили в документе переопределяются, чтобы соответствовать описаниям стилей в шаблоне. Уникальные стили из шаблона копируются в документ. Уникальные стили в документе остаются нетронутыми. бытьlow code Пример показывает, как копировать стили из одного документа в другой.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-CopyStyles.py" >}}

## Как манипулировать Тематические свойства

Мы добавили основные API в Aspose.Words Доступ к свойствам темы документа. На данный момент это API Включает следующие общественные объекты:

- [Theme](https://reference.aspose.com/words/python-net/aspose.words.themes/theme/)
- [ThemeFonts](https://reference.aspose.com/words/python-net/aspose.words.themes/themefonts/)
- [ThemeColors](https://reference.aspose.com/words/python-net/aspose.words.themes/themecolors/)

Вот как вы можете получить свойства темы:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-GetThemeProperties.py" >}}

И вот как вы можете установить свойства темы:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-SetThemeProperties.py" >}}
