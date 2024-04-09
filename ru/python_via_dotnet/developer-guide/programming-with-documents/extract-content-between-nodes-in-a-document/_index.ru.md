---
title: Извлечение контента между узлами документов
second_title: Aspose.Words для Python
articleTitle: Извлечение контента между узлами в документе
linktitle: Извлечение контента между узлами
description: "Как извлечь конкретный контент из диапазона в документе, легко используя Python."
type: docs
weight: 140
url: /ru/python-net/how-to-extract-selected-content-between-nodes-in-a-document/
---

При работе с документами важно уметь легко извлекать контент из определенного диапазона в документе. Однако содержание может состоять из сложных элементов, таких как абзацы, таблицы, изображения и т.д.

Независимо от того, какой контент необходимо извлечь, способ извлечения этого контента всегда будет определяться тем, какие узлы выбраны для извлечения контента между ними. Это могут быть целые текстовые тела или простые текстовые строки.

Существует множество возможных ситуаций и, следовательно, множество различных типов узлов, которые следует учитывать при извлечении контента. Например, вы можете извлечь контент между:

- Два конкретных пункта
- Конкретные прогоны текста
- Поля различных типов, такие как поля слияния
- Стартовый и конечный диапазоны закладки или комментария
- Различные тексты, содержащиеся в отдельных разделах

В некоторых ситуациях вам может даже потребоваться комбинировать различные типы узлов, такие как извлечение контента между абзацем и полем или между прогоном и закладкой.

В данной статье представлена реализация кода для извлечения текста между различными узлами, а также примеры общих сценариев.

{{% alert color="primary" %}}

Эти примеры являются лишь несколькими примерами многочисленных возможностей. Мы планируем, что функция извлечения текста будет частью общественности. API В будущем никакого дополнительного кода не потребуется. В то же время, не стесняйтесь размещать свои запросы относительно этой функциональности на веб-сайте. [Aspose.Words форум](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Зачем извлекать контент

Часто целью извлечения контента является дублирование или сохранение его отдельно в новом документе. Например, вы можете извлечь контент и:

- Копировать его в отдельный документ
- Преобразование определенной части документа в PDF или изображение
- многократно дублировать содержание документа
- Работа с извлеченным контентом отдельно от остальной части документа

Это может быть легко достигнуто с помощью Aspose.Words и реализация кода ниже.

## Алгоритм извлечения контента

Код в этом разделе рассматривает все возможные ситуации, описанные выше, с помощью одного обобщенного и многоразового метода. Общий контур этой техники включает в себя:

1. Сбор узлов, которые диктуют область контента, который будет извлечен из вашего документа. Получение этих узлов обрабатывается пользователем в его коде, исходя из того, что он хочет извлечь.
1. Передача этих узлов в **ExtractContent** Метод, представленный ниже. Вы также должны пройти булевой параметр, который указывает, должны ли эти узлы, действующие как маркеры, быть включены в экстракцию или нет.
1. Получение списка клонированного содержимого (копированных узлов), указанного для извлечения. Вы можете использовать этот список узлов любым применимым способом, например, создавая новый документ, содержащий только выбранный контент.

## Как извлечь контент

Чтобы извлечь контент из вашего документа, вам нужно позвонить в **extract_content** ниже и пройти соответствующие параметры. Основой этого метода является поиск узлов уровня блоков (параграфов и таблиц) и их клонирование для создания идентичных копий. Если пропускаемые маркерные узлы являются уровнями блоков, то способ может просто скопировать содержимое на этом уровне и добавить его в массив.

Однако если маркерные узлы являются встроенными (ребенок абзаца), то ситуация становится более сложной, так как необходимо разделить абзац на встроенный узел, будь то прогон, поля закладок и т.д. Содержание в клонированных родительских узлах, не присутствующих между маркерами, удаляется. Этот процесс используется для обеспечения того, чтобы встроенные узлы по-прежнему сохраняли форматирование исходного абзаца. Метод также запускает проверки на узлах, прошедших в качестве параметров, и делает исключение, если любой из узлов недействителен. Параметры, которые должны быть переданы этому методу:

1. **стартовый код** и **конечный**. Первые два параметра - это узлы, которые определяют, где начинается и заканчивается извлечение содержимого соответственно. Эти узлы могут быть как на уровне блоков.[Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) или рядового уровня (например, [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) и т.д
   1.Для прохождения поля необходимо пройти соответствующее [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) объект.
   1. чтобы передать закладки, [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) и [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) Узлы должны быть переданы.
   1.Для передачи комментариев, [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) и [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) Следует использовать узлы.
1. **является инклюзивным**. Определяет, включены ли маркеры в экстракцию или нет. Если эта опция установлена false и один и тот же узел или последовательные узлы проходят, затем возвращается пустой список:
   1.Если а [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) Узел передается, затем этот вариант определяет, должно ли быть включено или исключено все поле.
   1.Если а [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) или [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) Узел передается, этот вариант определяет, включена ли закладка или только содержимое между диапазоном закладок.
   1.Если а [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) или [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) Узел передается, этот параметр определяет, должен ли быть включен сам комментарий или только контент в диапазоне комментариев.

Осуществление этого **extract_content** Метод, который вы можете найти [здесь](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/DocsExamples/DocsExamples/programming_with_documents/contents_management/extract_content_helper.py). Этот метод будет упомянут в сценариях в этой статье.

Мы также определим пользовательский метод для легкого создания документа из извлеченных узлов. Этот метод используется во многих сценариях ниже и просто создает новый документ и импортирует в него добытый контент.

Следующий пример кода показывает, как взять список узлов и вставить их в новый документ:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "generate-document.py" >}}

## Содержание между абзацами

Это показывает, как использовать метод выше для извлечения содержимого между конкретными абзацами. В этом случае мы хотим извлечь тело письма, найденное в первой половине документа. Можно сказать, что это между 7-м и 11-м абзацем.

Приведенный ниже код позволяет выполнить эту задачу. Соответствующие пункты извлекаются с использованием [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) метод на документе и прохождение указанных индексов. Затем мы передаем эти узлы в **extract_content** Способ и состояние, что они должны быть включены в экстракцию. Этот метод возвращает скопированное содержимое между этими узлами, которые затем вставляются в новый документ.

Следующий пример кода показывает, как извлечь содержимое между конкретными абзацами, используя **extract_content** метод выше:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraphs.py" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Извлечение контента между различными типами узлов

Мы можем извлекать контент между любыми комбинациями уровней блоков или встроенных узлов. В этом сценарии ниже мы будем извлекать содержание между первым абзацем и таблицей во втором разделе включительно. Мы получаем узлы маркеров, позвонив [Body.first_paragraph](https://reference.aspose.com/words/python-net/aspose.words/story/first_paragraph/) и [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) метод по второму разделу документа для получения соответствующего [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) и [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) Узлы. Для небольшого изменения давайте вместо этого продублируем контент и вставим его ниже оригинала.

Следующий пример кода показывает, как извлечь содержимое между абзацем и таблицей, используя **extract_content** метод:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-block-level-nodes.py" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Содержание между абзацами Основано на стиле

Вам может потребоваться извлечь содержимое между абзацами одного и того же или другого стиля, например, между абзацами, помеченными стилями заголовков.

Приведенный ниже код показывает, как этого добиться. Это простой пример, который будет извлекать содержимое между первым экземпляром стилей "Голова 1" и "Голова 3", не извлекая заголовки. Для этого мы установили последний параметр false, который указывает, что маркерные узлы не должны быть включены.

В правильной реализации это должно быть запущено в цикле для извлечения содержимого между всеми абзацами этих стилей из документа. Извлеченный контент копируется в новый документ.

Следующий пример кода показывает, как извлекать контент между абзацами с использованием определенных стилей. **extract_content** метод:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraph-styles.py" >}}

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "paragraphs-by-style-name.py" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Извлечение контента между конкретными пробегами

Вы можете извлекать контент между встроенными узлами, такими как [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) И тоже. Пробеги из разных абзацев могут быть переданы в качестве маркеров. В приведенном ниже коде показано, как извлечь конкретный текст между ними. [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) Узел.

Следующий пример кода показывает, как извлекать контент между конкретными прогонами одного и того же абзаца, используя **extract_content** метод:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-runs.py" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Извлечение контента с помощью поля

Чтобы использовать поле в качестве маркера, [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) Узел должен быть пропущен. Последний параметр для **extract_content** Метод определяет, будет ли включено все поле или нет. Выделим содержание между полем слияния "Полное имя" и абзацем в документе. Мы используем [DocumentBuilder.move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) метод [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) класс. Это вернет обратно [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) Узел от названия поля слияния перешел к нему.

В нашем случае давайте установим последний параметр, переданный **extract_content** метод для `False` исключить поле из добычи. Мы переведем извлеченный контент в PDF.

Следующий пример кода показывает, как извлечь содержимое между конкретным полем и абзацем в документе, используя **extract_content** метод:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-using-field.py" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Извлечение контента из закладки

В документе содержание, которое определено в закладке, инкапсулируется [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) и [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) Узлы. Содержание, найденное между этими двумя узлами, составляет закладку. Вы можете передать любой из этих узлов в качестве любого маркера, даже из разных закладок, если начальный маркер появляется перед конечным маркером в документе. Мы будем извлекать этот контент в новый документ, используя код ниже. The **является инклюзивным** Параметр опции показывает, как сохранить или отбросить закладку.

Следующий пример кода показывает, как извлечь контент, на который ссылается закладка, используя **extract_content** метод:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-bookmark.py" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Извлечение контента из комментария

Комментарий состоит из [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) и [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) Узлы. Все эти узлы являются встроенными. Первые два узла инкапсулируют содержание в документе, на которое ссылается комментарий, как видно на скриншоте ниже. The [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) Сам по себе узел является [InlineStory](https://reference.aspose.com/words/python-net/aspose.words/inlinestory/) может содержать абзацы и строки. Он представляет собой сообщение комментария, рассматриваемое как пузырь комментариев в панели обзора. Поскольку этот узел является встроенным и потомком тела, вы также можете извлечь содержимое из этого сообщения.

Комментарий содержит заголовок, первый абзац и таблицу во втором разделе. Давайте добавим этот комментарий в новый документ. The **является инклюзивным** Опция диктует, сохраняется или отбрасывается сам комментарий.

Следующий пример кода показывает, как это сделать:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-comment-range.py" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Как извлечь только текст

Способы извлечения текста из документа:

- Используйте [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) сохранить как простой текст в файл или поток
- Используйте [Node.to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) и передать [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text) параметр. Внутренне это вызывает сохранение в виде текста в поток памяти и возвращает полученную строку
- Используйте [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) Восстановить текст со всеми Microsoft Word Управляющие символы, включая полевые коды

### Использование Node.get_text и Node.to_string

А. Документ Word может содержать управляющие символы, которые обозначают специальные элементы, такие как поле, конец ячейки, конец секции и т.д. Полный список возможных символов управления Словом определен в [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/) класс. The [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) Способ возвращает текст со всеми символами управляющего характера, присутствующими в узле.

Звонить [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) возвращает простое текстовое представление документа только без управляющих символов. Для получения дополнительной информации об экспорте в виде простого текста см. [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text)

Следующий пример кода показывает разницу между вызовом [get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) и [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) методы на узле:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "simple-extract-text.py" >}}

### Использовать `SaveFormat.Text`

Этот пример сохраняет документ следующим образом:

- Фильтры полевых символов и полевых кодов, формы, сноски, сноски и ссылки на комментарии
- Заменяет конец пункта **ControlChar.Cr** персонажей с **ControlChar.CrLf** комбинации
- Использование кодирования UTF8

Следующий пример кода показывает, как сохранить документ в формате TXT:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "docx-to-txt.py" >}}

## Извлечение изображений из форм

Вам может потребоваться извлечь изображения документов для выполнения некоторых задач. Aspose.Words Это также позволяет вам сделать это.

Следующий пример кода показывает, как извлечь изображения из документа:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-images.py" >}}
