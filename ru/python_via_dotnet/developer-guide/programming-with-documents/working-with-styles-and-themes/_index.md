---
title: Работа со стилями и темами
second_title: Aspose.Words для Python via .NET
articleTitle: Работа со стилями и темами
linktitle: Работа со стилями и темами
description: "Доступ к стилям и темам в документе и управление ими с помощью Python."
type: docs
weight: 110
url: /ru/python-net/working-with-styles-and-themes/
---

Класс [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) используется для управления встроенными и применения пользовательских настроек к стилям.

## Доступ к стилям

Вы можете получить коллекцию стилей, определенных в документе, используя свойство [Document.styles](https://reference.aspose.com/words/python-net/aspose.words/documentbase/styles/). Эта коллекция содержит как встроенные, так и пользовательские стили документа. Конкретный стиль можно получить по его имени/псевдониму, идентификатору стиля или индексу. В следующем примере кода показано, как получить доступ к коллекции стилей, определенной в документе.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-AccessStyles.py" >}}

## Как извлечь контент на основе стилей

На простом уровне извлечение содержимого на основе стилей из документа Word может быть полезно для идентификации, перечисления и подсчета абзацев и фрагментов текста, отформатированных с использованием определенного стиля. Например, вам может потребоваться определить в документе определенные виды контента, такие как примеры, заголовки, ссылки, ключевые слова, названия фигур и тематические исследования.

Чтобы пойти еще дальше, это также можно использовать для использования структуры документа, определенной используемыми стилями, для повторного назначения документа для другого вывода, например HTML. Фактически, именно так построена документация Aspose, проверяющая Aspose.Words. Инструмент, созданный с использованием Aspose.Words, берет исходные документы Word и разбивает их на темы на определенных уровнях заголовков. XML-файл создается с использованием Aspose.Words, который используется для построения дерева навигации, которое вы можете видеть слева. А затем Aspose.Words конвертирует каждую тему в HTML.

Решение для извлечения текста, отформатированного с использованием определенных стилей в документе Word, обычно является экономичным и простым с использованием Aspose.Words.

### Решение

Чтобы проиллюстрировать, насколько легко Aspose.Words обрабатывает получение контента на основе стилей, давайте рассмотрим пример. В этом примере мы собираемся получить текст, отформатированный с использованием определенного стиля абзаца и стиля символов, из образца документа Word. На высоком уровне это будет включать в себя:
— Открытие документа Word с использованием класса [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).
- Получение коллекций всех абзацев и всех проходов в документе.
- Выделение только необходимых абзацев и прогонов. В частности, из этого примера документа Word мы получим текст, отформатированный с использованием стиля абзаца "Заголовок 1" и стиля символов "Сильный акцент".

![working-with-styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


В этом образце документа текст, отформатированный с использованием стиля абзаца "Заголовок 1", — это "Вставка вкладки", "Быстрые стили" и "Тема", а текст, отформатированный со стилем символов "Сильный акцент", — это несколько экземпляров синего цвета, выделенный курсивом жирный текст, например "галереи" и "общий вид".

### Код

Реализация запроса на основе стиля в объектной модели документа Aspose.Words довольно проста, поскольку он просто использует уже имеющиеся инструменты. Для этого решения реализованы два метода класса:
- **абзацы_по_стилю_имя** – Этот метод извлекает массив абзацев документа, имеющих определенное имя стиля.
- **run_by_style_name** – Этот метод извлекает массив прогонов в документе, имеющих определенное имя стиля. Оба эти метода очень похожи, единственными различиями являются типы узлов и представление информации о стиле внутри узлов абзаца и выполнения. Вот реализация `paragraphs_by_style_name`: В приведенном ниже примере находятся все абзацы, отформатированные с использованием указанного стиля.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ParagraphsByStyleName.py" >}}

{{% alert color="primary" %}}

В этой реализации также используется метод [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) класса [Document](https://reference.aspose.com/words/python-net/aspose.words/document/), который возвращает коллекцию всех узлов указанного типа, то есть во всех абзацах.

Обратите внимание, что второму параметру метода [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) присвоено значение `True`. Это заставляет метод [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) рекурсивно выбирать из всех дочерних узлов, а не выбирать только непосредственных дочерних узлов.

{{% /alert %}}

Также стоит отметить, что коллекция абзацев не создает непосредственных накладных расходов, поскольку абзацы загружаются в эту коллекцию только тогда, когда вы получаете доступ к их элементам. Затем все, что вам нужно сделать, — это просмотреть коллекцию, используя стандартный оператор foreach, и добавить абзацы с указанным стилем в массив Paraps_with_style. Имя стиля `Paragraph` можно найти в свойстве [Style.name](https://reference.aspose.com/words/python-net/aspose.words/style/name/) объекта [Paragraph.paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/paragraph/paragraph_format/). Реализация **run_by_style_name** почти такая же, хотя мы, очевидно, используем [NodeType.RUN](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#run) для получения узлов запуска. Свойство [Font.style](https://reference.aspose.com/words/python-net/aspose.words/font/style/) объекта [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) используется для доступа к информации о стиле в узлах [Run](https://reference.aspose.com/words/python-net/aspose.words/run/). Ниже приведен пример поиска всех прогонов, отформатированных с использованием указанного стиля.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-RunsByStyleName.py" >}}


Когда оба запроса реализованы, все, что вам нужно сделать, это передать объект документа и указать имена стилей содержимого, которое вы хотите получить: Ниже приведен пример запуска запросов и отображения результатов. Вы можете скачать файл шаблона этого примера по адресу [здесь](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Styles.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractContentBasedOnStyles.py" >}}

### Конечный результат

Когда все будет сделано, при запуске примера отобразится следующий вывод:

![styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


Как видите, это очень простой пример, показывающий количество и текст собранных абзацев и прогонов в образце документа Word.

## Копировать все стили из шаблона

Бывают случаи, когда требуется скопировать все стили из одного документа в другой. Вы можете использовать метод [Document.copy_styles_from_template](https://reference.aspose.com/words/python-net/aspose.words/document/copy_styles_from_template/) для копирования стилей из указанного шаблона в документ. Когда стили копируются из шаблона в документ, стили с одинаковыми именами в документе переопределяются в соответствии с описаниями стилей в шаблоне. В документ копируются уникальные стили из шаблона. Уникальные стили в документе остаются нетронутыми. В примере Below code показано, как копировать стили из одного документа в другой.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-CopyStyles.py" >}}

## Как манипулировать свойствами темы

Мы добавили базовый номер API в Aspose.Words для доступа к свойствам темы документа. На данный момент этот API включает в себя следующие общедоступные объекты:

- [Theme](https://reference.aspose.com/words/python-net/aspose.words.themes/theme/)
- [ThemeFonts](https://reference.aspose.com/words/python-net/aspose.words.themes/themefonts/)
- [ThemeColors](https://reference.aspose.com/words/python-net/aspose.words.themes/themecolors/)

Вот как вы можете получить свойства темы:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-GetThemeProperties.py" >}}

А вот как вы можете установить свойства темы:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-SetThemeProperties.py" >}}
