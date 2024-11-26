---
title: Извлечение содержимого между узлами Документа
second_title: Aspose.Words для Python
articleTitle: Извлечение содержимого между узлами документа
linktitle: Извлекать содержимое между Узлами
description: "Как легко извлечь конкретное содержимое из диапазона в документе, используя Python."
type: docs
weight: 140
url: /ru/python-net/how-to-extract-selected-content-between-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

При работе с документами важно иметь возможность легко извлекать содержимое из определенного диапазона в документе. Однако содержимое может состоять из сложных элементов, таких как абзацы, таблицы, изображения и т.д.

Независимо от того, какой контент необходимо извлечь, метод извлечения этого контента всегда будет определяться тем, какие узлы выбраны для извлечения содержимого между ними. Это могут быть целые текстовые фрагменты или простые текстовые фрагменты.

Существует множество возможных ситуаций и, следовательно, множество различных типов узлов, которые следует учитывать при извлечении содержимого. Например, вы можете захотеть извлечь содержимое между:

- Два конкретных пункта
- Конкретные фрагменты текста
- Поля различных типов, такие как поля слияния
- Начальный и конечный диапазоны закладки или комментария
- Различные тексты, содержащиеся в отдельных разделах

В некоторых ситуациях вам может даже потребоваться объединить различные типы узлов, например, для извлечения содержимого из абзаца и поля или из запуска и закладки.

В этой статье приводится реализация кода для извлечения текста между различными узлами, а также примеры распространенных сценариев.

{{% alert color="primary" %}}

Эти примеры - всего лишь несколько демонстраций множества возможностей. В будущем мы планируем, что функция извлечения текста станет общедоступной API, и никакого дополнительного кода не потребуется. А пока не стесняйтесь оставлять свои пожелания относительно этой функции на форуме [Aspose.Words](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Зачем извлекать контент

Часто целью извлечения содержимого является дублирование или сохранение его отдельно в новом документе. Например, вы можете извлечь содержимое и:

- Скопируйте его в отдельный документ
- Преобразуйте определенную часть документа в PDF или изображение
- Повторяйте содержимое документа много раз
- Работайте с извлеченным содержимым отдельно от остальной части документа

Этого можно легко достичь, используя Aspose.Words и приведенную ниже реализацию кода.

## Алгоритм извлечения контента

Приведенный в этом разделе код рассматривает все возможные ситуации, описанные выше, с помощью одного обобщенного метода, который можно использовать повторно. В общих чертах этот метод включает:

1. Сбор узлов, которые определяют область содержимого, которая будет извлечена из вашего документа. Поиск этих узлов осуществляется пользователем в его коде в зависимости от того, что он хочет извлечь.
1. Передаем эти узлы методу **ExtractContent**, представленному ниже. Вы также должны передать логический параметр, который указывает, должны ли эти узлы, действующие как маркеры, быть включены в извлечение или нет.
1. Получение списка клонированного содержимого (скопированных узлов), указанного для извлечения. Вы можете использовать этот список узлов любым применимым способом, например, создать новый документ, содержащий только выбранное содержимое.

## Как извлечь контент

Чтобы извлечь содержимое из вашего документа, вам необходимо вызвать метод **extract_content**, описанный ниже, и передать соответствующие параметры. В основе этого метода лежит поиск узлов на уровне блоков (абзацев и таблиц) и их клонирование для создания идентичных копий. Если переданные узлы-маркеры находятся на уровне блока, то метод может просто скопировать содержимое на этом уровне и добавить его в массив.

Однако, если узлы-маркеры являются встроенными (дочерними по отношению к абзацу), ситуация становится более сложной, поскольку необходимо разделить абзац на встроенном узле, будь то прогон, поля закладок и т.д. Содержимое в клонированных родительских узлах, отсутствующее между маркерами, удаляется. Этот процесс используется для обеспечения того, чтобы встроенные узлы сохраняли форматирование родительского абзаца. Метод также выполняет проверку узлов, переданных в качестве параметров, и генерирует исключение, если какой-либо из узлов является недопустимым. В этот метод передаются следующие параметры:

1. **startNode** и **endNode**. Первые два параметра - это узлы, которые определяют, где должно начинаться и заканчиваться извлечение содержимого соответственно. Эти узлы могут быть как на уровне блоков ([Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), так и на встроенном уровне (например, [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) и т.д.):
   1. Чтобы передать поле, вы должны передать соответствующий объект [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/).
   1. Чтобы передать закладки, необходимо передать узлы [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) и [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/).
   1. Для передачи комментариев следует использовать узлы [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) и [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/).
1. **isInclusive**. Определяет, будут ли маркеры включены в извлечение или нет. Если для этого параметра установлено значение false и передается один и тот же узел или последовательные узлы, то будет возвращен пустой список:
   1. Если передается узел [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), то этот параметр определяет, следует ли включать или исключать все поле целиком.
   1. Если передан узел [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) или [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/), этот параметр определяет, включена ли закладка или только содержимое между диапазонами закладок.
   1. Если передан узел [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) или [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/), этот параметр определяет, должен ли быть включен сам комментарий или только содержимое в диапазоне комментариев.

Реализацию метода **extract_content** вы можете найти [здесь](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/DocsExamples/DocsExamples/programming_with_documents/contents_management/extract_content_helper.py). Этот метод будет описан в сценариях, описанных в этой статье.

Мы также определим пользовательский метод, позволяющий легко создавать документ из извлеченных узлов. Этот метод используется во многих сценариях, описанных ниже, и просто создает новый документ и импортирует в него извлеченное содержимое.

В следующем примере кода показано, как взять список узлов и вставить их в новый документ:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "generate-document.py" >}}

## Извлекайте содержимое между абзацами

Это демонстрирует, как использовать описанный выше метод для извлечения содержимого между конкретными абзацами. В данном случае мы хотим извлечь текст письма, найденного в первой половине документа. Мы можем сказать, что оно находится между 7-м и 11-м абзацами.

Приведенный ниже код выполняет эту задачу. Соответствующие абзацы извлекаются с использованием метода [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) в документе и с передачей указанных индексов. Затем мы передаем эти узлы методу **extract_content** и указываем, что они должны быть включены в извлечение. Этот метод вернет скопированное содержимое между этими узлами, которое затем будет вставлено в новый документ.

В следующем примере кода показано, как извлечь содержимое между определенными абзацами, используя метод **extract_content**, описанный выше:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraphs.py" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Извлекать содержимое между различными типами узлов

Мы можем извлекать содержимое из любых комбинаций блоков или встроенных узлов. В приведенном ниже сценарии мы будем извлекать содержимое между первым абзацем и таблицей во втором разделе включительно. Мы получаем узлы-маркеры, вызывая методы [Body.first_paragraph](https://reference.aspose.com/words/python-net/aspose.words/story/first_paragraph/) и [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) во втором разделе документа, чтобы получить соответствующие узлы [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) и [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). Для небольшого изменения давайте вместо этого продублируем содержимое и вставим его под оригинал.

В следующем примере кода показано, как извлечь содержимое из абзаца и таблицы с помощью метода **extract_content**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-block-level-nodes.py" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Извлекайте содержимое из абзацев в зависимости от стиля

Возможно, вам потребуется извлечь содержимое между абзацами одного и того же или разного стиля, например, между абзацами, помеченными стилями заголовков.

Приведенный ниже код показывает, как этого добиться. Это простой пример, который позволяет извлекать содержимое между первым экземпляром стилей "Heading 1" и "Заголовок 3" без извлечения заголовков. Для этого мы устанавливаем последнему параметру значение false, которое указывает, что узлы-маркеры не должны быть включены.

В правильной реализации это должно выполняться в цикле для извлечения содержимого между всеми абзацами этих стилей из документа. Извлеченное содержимое копируется в новый документ.

В следующем примере кода показано, как извлекать содержимое между абзацами с определенными стилями, используя метод **extract_content**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraph-styles.py" >}}

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "paragraphs-by-style-name.py" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Извлекайте содержимое Между Определенными Запусками

Вы также можете извлекать содержимое между встроенными узлами, такими как [Run](https://reference.aspose.com/words/python-net/aspose.words/run/). Фрагменты из разных абзацев могут быть переданы в качестве маркеров. В приведенном ниже коде показано, как извлекать определенный текст из одного и того же узла [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).

В следующем примере кода показано, как извлекать содержимое между конкретными запусками одного и того же абзаца, используя метод **extract_content**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-runs.py" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Извлекать содержимое с помощью поля

Чтобы использовать поле в качестве маркера, необходимо передать узел [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/). Последний параметр метода **extract_content** определяет, следует ли включать все поле целиком или нет. Давайте выделим содержимое между полем слияния "FullName" и абзацем в документе. Мы используем метод [DocumentBuilder.move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) класса [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/). Это вернет узел [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) из переданного ему поля name of merge.

В нашем случае давайте установим для последнего параметра, переданного методу **extract_content**, значение `False`, чтобы исключить поле из извлечения. Мы преобразуем извлеченный контент в PDF.

В следующем примере кода показано, как извлечь содержимое из определенного поля и абзаца в документе с помощью метода **extract_content**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-using-field.py" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Извлечение содержимого из закладки

В документе содержимое, определенное в закладке, инкапсулируется узлами [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) и [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/). Содержимое, находящееся между этими двумя узлами, и составляет закладку. Вы можете использовать любой из этих узлов в качестве любого маркера, даже из разных закладок, при условии, что начальный маркер отображается перед конечным маркером в документе. Мы извлекем это содержимое в новый документ, используя приведенный ниже код. Параметр **isInclusive** показывает, как сохранить или удалить закладку.

В следующем примере кода показано, как извлечь содержимое, на которое ссылается закладка, используя метод **extract_content**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-bookmark.py" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Извлекать содержимое из комментария

Комментарий состоит из узлов [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) и [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/). Все эти узлы являются встроенными. Первые два узла содержат содержимое документа, на который ссылается комментарий, как показано на скриншоте ниже. Узел [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) сам по себе является узлом [InlineStory](https://reference.aspose.com/words/python-net/aspose.words/inlinestory/), который может содержать абзацы и заголовки. Он представляет собой сообщение комментария, отображаемое в виде пузырька комментариев на панели просмотра. Поскольку этот узел является встроенным и является потомком тела, вы также можете извлечь содержимое из этого сообщения.

Комментарий содержит заголовок, первый абзац и таблицу во втором разделе. Давайте перенесем этот комментарий в новый документ. Параметр **isInclusive** определяет, следует ли сохранить сам комментарий или удалить его.

В следующем примере кода показано, как это сделать:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-comment-range.py" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Как извлечь только текст

Существуют следующие способы извлечения текста из документа:

- Используйте [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) для сохранения в виде обычного текста в файл или поток
- Используйте [Node.to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) и передайте параметр [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text). Внутренне это вызывает функцию сохранения в виде текста в потоке памяти и возвращает результирующую строку
- Используйте [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) для извлечения текста, содержащего все управляющие символы Microsoft Word, включая коды полей

### Используя Node.get_text и Node.to_string

Документ Word может содержать управляющие символы, которые обозначают специальные элементы, такие как поле, конец ячейки, конец раздела и т.д. Полный список возможных управляющих символов Word определен в классе [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/). Метод [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) возвращает текст со всеми управляющими символами, присутствующими в узле.

Вызов [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) возвращает только текстовое представление документа без управляющих символов. Дополнительную информацию об экспорте в виде обычного текста смотрите в разделе Использование [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text).

В следующем примере кода показана разница между вызовом методов [get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) и [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) на узле:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "simple-extract-text.py" >}}

### Используя `SaveFormat.Text`

В этом примере документ сохраняется следующим образом:

- Отфильтровывает символы полей и коды полей, форму, сноски, концевые примечания и ссылки на комментарии
- Заменяет символы конца абзаца **ControlChar.Cr** комбинациями **ControlChar.CrLf**
- Использует кодировку UTF8

В следующем примере кода показано, как сохранить документ в формате TXT:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "docx-to-txt.py" >}}

## Извлечение изображений из фигур

Для выполнения некоторых задач вам может потребоваться извлечь изображения из документов. Aspose.Words это также позволяет это сделать.

В следующем примере кода показано, как извлекать изображения из документа:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-images.py" >}}
