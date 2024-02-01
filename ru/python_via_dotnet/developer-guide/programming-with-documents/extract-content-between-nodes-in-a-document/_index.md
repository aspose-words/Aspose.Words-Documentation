---
title: Извлечение содержимого между узлами документа
second_title: Aspose.Words для Python
articleTitle: Извлечение содержимого между узлами документа
linktitle: Извлечение содержимого между узлами
description: "Как легко извлечь определенный контент из диапазона внутри документа, используя Python."
type: docs
weight: 140
url: /ru/python-net/how-to-extract-selected-content-between-nodes-in-a-document/
---

При работе с документами важно иметь возможность легко извлекать контент из определенного диапазона внутри документа. Однако контент может состоять из сложных элементов, таких как абзацы, таблицы, изображения и т.д.

Независимо от того, какой контент необходимо извлечь, метод извлечения этого контента всегда будет определяться тем, какие узлы выбраны для извлечения контента. Это могут быть целые текстовые тела или простые текстовые фрагменты.

Существует множество возможных ситуаций и, следовательно, множество различных типов узлов, которые следует учитывать при извлечении контента. Например, вы можете захотеть извлечь контент между:

- Два конкретных абзаца
- Конкретные фрагменты текста
- Поля различных типов, например поля слияния
- Начальный и конечный диапазоны закладки или комментария
- Различные объемы текста, содержащиеся в отдельных разделах

В некоторых ситуациях вам может даже потребоваться объединить различные типы узлов, например, извлечение содержимого между абзацем и полем или между прогоном и закладкой.

В этой статье представлена реализация кода для извлечения текста между различными узлами, а также примеры распространенных сценариев.

{{% alert color="primary" %}}

Эти примеры — всего лишь несколько демонстраций множества возможностей. Мы планируем, что в будущем функция извлечения текста станет частью общедоступного API, и никакого дополнительного кода не потребуется. А пока не стесняйтесь оставлять свои запросы относительно этой функции по номеру [Aspose.Words форум](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Зачем извлекать контент

Часто целью извлечения контента является его дублирование или сохранение отдельно в новом документе. Например, вы можете извлечь контент и:

- Скопируйте его в отдельный документ
- Преобразование определенной части документа в PDF или изображение
- Многократное дублирование содержимого документа
- Работайте с извлеченным содержимым отдельно от остальной части документа

Этого можно легко добиться, используя Aspose.Words и реализацию кода ниже.

## Алгоритм извлечения контента

Код в этом разделе рассматривает все возможные ситуации, описанные выше, с помощью одного обобщенного и многократно используемого метода. Общая схема этой техники включает в себя:

1. Сбор узлов, определяющих область содержимого, которая будет извлечена из вашего документа. Получение этих узлов обрабатывается пользователем в его коде в зависимости от того, что он хочет извлечь.
1. Передача этих узлов в метод **ExtractContent**, представленный ниже. Вы также должны передать логический параметр, который указывает, следует ли включать эти узлы, действующие как маркеры, в извлечение или нет.
1. Получение списка клонированного контента (скопированных узлов), указанного для извлечения. Вы можете использовать этот список узлов любым подходящим способом, например, создав новый документ, содержащий только выбранный контент.

## Как извлечь контент

Чтобы извлечь содержимое из вашего документа, вам необходимо вызвать метод **экстракт_контента**, указанный ниже, и передать соответствующие параметры. В основе этого метода лежит поиск узлов уровня блока (абзацев и таблиц) и их клонирование для создания идентичных копий. Если переданные узлы маркера относятся к уровню блока, то метод может просто скопировать содержимое этого уровня и добавить его в массив.

Однако если узлы-маркеры являются встроенными (дочерними узлами абзаца), ситуация усложняется, поскольку необходимо разделить абзац на встроенном узле, будь то прогон, поля закладок и т.д. Содержимое в клонированных родительских узлах не присутствующий между маркерами удаляется. Этот процесс используется для того, чтобы гарантировать, что встроенные узлы сохранят форматирование родительского абзаца. Этот метод также будет проверять узлы, переданные в качестве параметров, и выдаст исключение, если какой-либо узел недействителен. Параметры, которые необходимо передать этому методу:

1. **стартовый узел** и **конечныйузел**. Первые два параметра — это узлы, которые определяют, где должно начинаться и заканчиваться извлечение контента соответственно. Эти узлы могут быть как блочными ([Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)), так и встроенными (например, [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) и т.д.):
  1. Для передачи поля необходимо передать соответствующий объект [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/).
  1. Для передачи закладок необходимо передать узлы [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) и [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/).
  1. Для передачи комментариев следует использовать узлы [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) и [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/).
1. **isInclusive**. Определяет, включены ли маркеры в извлечение или нет. Если для этой опции установлено значение false и передается один и тот же узел или последовательные узлы, то будет возвращен пустой список:
  1. Если передается узел [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), эта опция определяет, должно ли быть включено или исключено все поле.
  1. Если передается узел [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) или [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/), этот параметр определяет, включена ли закладка или только содержимое между диапазоном закладок.
  1. Если передается узел [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) или [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/), этот параметр определяет, должен ли быть включен сам комментарий или только содержимое диапазона комментариев.

Реализацию метода **экстракт_контента** вы можете найти в [здесь](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/DocsExamples/DocsExamples/programming_with_documents/contents_management/extract_content_helper.py). Этот метод будет упоминаться в сценариях этой статьи.

Мы также определим собственный метод, который позволит легко генерировать документ из извлеченных узлов. Этот метод используется во многих приведенных ниже сценариях и просто создает новый документ и импортирует в него извлеченное содержимое.

В следующем примере кода показано, как взять список узлов и вставить его в новый документ:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "generate-document.py" >}}

## Извлечение содержимого между абзацами

Это демонстрирует, как использовать описанный выше метод для извлечения содержимого между конкретными абзацами. В данном случае мы хотим извлечь тело письма, найденное в первой половине документа. Можно сказать, что это между 7-м и 11-м абзацем.

Код ниже выполняет эту задачу. Соответствующие абзацы извлекаются из документа с использованием метода [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) и передачи указанных индексов. Затем мы передаем эти узлы методу **экстракт_контента** и заявляем, что они должны быть включены в извлечение. Этот метод вернет скопированный контент между этими узлами, который затем будет вставлен в новый документ.

В следующем примере кода показано, как извлечь содержимое между конкретными абзацами с помощью метода **экстракт_контента**, описанного выше:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraphs.py" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Извлечение содержимого между узлами разных типов

Мы можем извлекать контент между любыми комбинациями блочных или встроенных узлов. В приведенном ниже сценарии мы извлечем содержимое между первым абзацем и таблицей во втором разделе включительно. Мы получаем узлы маркеров, вызывая методы [Body.first_paragraph](https://reference.aspose.com/words/python-net/aspose.words/story/first_paragraph/) и [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) во втором разделе документа, чтобы получить соответствующие узлы [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) и [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). Для небольшого изменения давайте вместо этого продублируем контент и вставим его ниже оригинала.

В следующем примере кода показано, как извлечь содержимое между абзацем и таблицей с помощью метода **экстракт_контента**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-block-level-nodes.py" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Извлечение содержимого между абзацами на основе стиля

Возможно, вам придется извлечь содержимое между абзацами одного или разных стилей, например между абзацами, отмеченными стилями заголовков.

Код ниже показывает, как этого добиться. Это простой пример, который извлекает содержимое между первым экземпляром стилей "Заголовок 1" и "Заголовок 3", не извлекая при этом заголовки. Для этого мы устанавливаем для последнего параметра значение false, что указывает, что узлы-маркеры не должны включаться.

В правильной реализации это должно выполняться в цикле для извлечения содержимого между всеми абзацами этих стилей из документа. Извлеченное содержимое копируется в новый документ.

В следующем примере кода показано, как извлечь содержимое между абзацами с определенными стилями с помощью метода **экстракт_контента**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraph-styles.py" >}}

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "paragraphs-by-style-name.py" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Извлечение содержимого между конкретными запусками

Вы также можете извлекать контент между встроенными узлами, такими как [Run](https://reference.aspose.com/words/python-net/aspose.words/run/). В качестве маркеров можно передавать прогоны из разных абзацев. Код ниже показывает, как извлечь определенный текст между одним и тем же узлом [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).

В следующем примере кода показано, как извлечь содержимое между отдельными запусками одного и того же абзаца с помощью метода **экстракт_контента**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-runs.py" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Извлечение содержимого с помощью поля

Чтобы использовать поле в качестве маркера, необходимо передать узел [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/). Последний параметр метода **экстракт_контента** определяет, следует ли включать все поле или нет. Давайте извлечем содержимое между полем слияния "Полное имя" и абзацем в документе. Мы используем метод [DocumentBuilder.move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) класса [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/). Это вернет узел [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) из имени поля слияния, переданного ему.

В нашем случае давайте установим для последнего параметра, переданного методу **экстракт_контента**, значение `False`, чтобы исключить поле из извлечения. Мы преобразуем извлеченный контент в PDF.

В следующем примере кода показано, как извлечь содержимое между определенным полем и абзацем в документе с помощью метода **экстракт_контента**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-using-field.py" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Извлечь контент из закладки

В документе содержимое, определенное в закладке, инкапсулируется узлами [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) и [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/). Содержимое, найденное между этими двумя узлами, составляет закладку. Вы можете передать любой из этих узлов как любой маркер, даже из разных закладок, при условии, что начальный маркер появляется в документе перед конечным маркером. Мы извлечем это содержимое в новый документ, используя приведенный ниже код. Параметр параметра **isInclusive** показывает, как сохранить или удалить закладку.

В следующем примере кода показано, как извлечь содержимое, на которое ссылается закладка, с помощью метода **экстракт_контента**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-bookmark.py" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Извлечь контент из комментария

Комментарий состоит из узлов [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) и [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/). Все эти узлы являются встроенными. Первые два узла инкапсулируют содержимое документа, на который ссылается комментарий, как показано на снимке экрана ниже. Сам узел [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) представляет собой узел [InlineStory](https://reference.aspose.com/words/python-net/aspose.words/inlinestory/), который может содержать абзацы и фрагменты. Он представляет собой сообщение комментария, отображаемое в виде пузырька комментариев на панели просмотра. Поскольку этот узел является встроенным и является потомком тела, вы также можете извлечь содержимое из этого сообщения.

Комментарий инкапсулирует заголовок, первый абзац и таблицу во втором разделе. Давайте извлечем этот комментарий в новый документ. Опция **isInclusive** определяет, будет ли сам комментарий сохранен или удален.

В следующем примере кода показано, как это сделать:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-comment-range.py" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Как извлечь только текст

Способы получения текста из документа:

- Используйте [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) для сохранения в виде обычного текста в файл или поток
- Используйте [Node.to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) и передайте параметр [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text). Внутри это вызывает сохранение как текст в поток памяти и возвращает результирующую строку
- Используйте [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) для получения текста со всеми Microsoft Word управляющими символами, включая коды полей

### Использование Node.get_text и Node.to_string

Документ Word может содержать управляющие символы, которые обозначают специальные элементы, такие как поле, конец ячейки, конец раздела и т.д. Полный список возможных управляющих символов Word определен в классе [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/). Метод [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) возвращает текст со всеми символами управления, присутствующими в узле.

Вызов [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) возвращает простое текстовое представление документа только без управляющих символов. Дополнительную информацию об экспорте в виде обычного текста см. в разделе "Использование [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text)"

В следующем примере кода показана разница между вызовом методов [get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) и [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) на узле:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "simple-extract-text.py" >}}

### Использование `SaveFormat.Text`

В этом примере документ сохраняется следующим образом:

- Фильтрует символы полей и коды полей, формы, сноски, концевые сноски и ссылки на комментарии
- Заменяет конец абзаца из **ControlChar.Cr** символов на **ControlChar.CrLf** комбинации
- Использует кодировку UTF8

В следующем примере кода показано, как сохранить документ в формате TXT:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "docx-to-txt.py" >}}

## Извлечение изображений из фигур

Вам может потребоваться извлечь изображения документов для выполнения некоторых задач. Aspose.Words позволяет вам сделать это.

В следующем примере кода показано, как извлечь изображения из документа:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-images.py" >}}
