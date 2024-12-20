---
title: Как извлекать содержимое между узлами документа
second_title: Aspose.Words для C++
articleTitle: Извлечение содержимого между узлами документа
linktitle: Извлекать содержимое между Узлами
type: docs
description: "Извлечение содержимого документа на разных языках с использованием C++."
weight: 140
url: /ru/cpp/how-to-extract-selected-content-between-nodes-in-a-document/
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

Эти примеры - всего лишь несколько демонстраций множества возможностей. В будущем мы планируем, что функция извлечения текста станет частью общедоступного API, и никакого дополнительного кода не потребуется. А пока не стесняйтесь оставлять свои пожелания относительно этой функции на форуме [Aspose.Words](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Зачем извлекать контент

Часто целью извлечения содержимого является дублирование или сохранение его отдельно в новом документе. Например, вы можете извлечь содержимое и:

- Скопируйте его в отдельный документ
- Преобразование определенной части документа в формат PDF или изображения
- Дублируйте содержимое документа много раз
- Работайте с извлеченным содержимым отдельно от остальной части документа

Этого можно легко достичь, используя Aspose.Words и приведенную ниже реализацию кода.

## Алгоритм извлечения содержимого

Приведенный в этом разделе код рассматривает все возможные ситуации, описанные выше, с помощью одного обобщенного метода, который можно использовать повторно. В общих чертах этот метод включает:

1. Выбор узлов, которые определяют область содержимого, которая будет извлечена из вашего документа. Поиск этих узлов осуществляется пользователем в его коде в зависимости от того, что он хочет извлечь.
1. Передаем эти узлы методу **ExtractContent**, представленному ниже. Вы также должны передать логический параметр, который указывает, должны ли эти узлы, действующие как маркеры, быть включены в извлечение или нет.
1. Получение списка клонированного содержимого (скопированных узлов), указанного для извлечения. Вы можете использовать этот список узлов любым подходящим способом, например, создать новый документ, содержащий только выбранное содержимое.

## Как извлечь контент

Чтобы извлечь содержимое из вашего документа, вам необходимо вызвать метод `ExtractContent`, описанный ниже, и передать соответствующие параметры. В основе этого метода лежит поиск узлов на уровне блоков (абзацев и таблиц) и их клонирование для создания идентичных копий. Если переданные узлы-маркеры находятся на уровне блоков, то метод может просто скопировать содержимое на этом уровне и добавить его в массив.

Однако, если узлы-маркеры являются встроенными (дочерними по отношению к абзацу), ситуация становится более сложной, поскольку необходимо разделить абзац на встроенном узле, будь то прогон, поля закладок и т.д. Содержимое в клонированных родительских узлах, отсутствующее между маркерами, удаляется. Этот процесс используется для обеспечения того, чтобы встроенные узлы сохраняли форматирование родительского абзаца. Метод также выполняет проверку узлов, переданных в качестве параметров, и генерирует исключение, если какой-либо из узлов является недопустимым. В этот метод передаются следующие параметры:

1. **StartNode** и **EndNode**. Первые два параметра - это узлы, которые определяют, где должно начинаться и заканчиваться извлечение содержимого соответственно. Эти узлы могут быть как на уровне блоков (абзац, таблица), так и на встроенном уровне (например, Run, FieldStart, BookmarkStart и т.д.).:
   1. Чтобы передать поле, вы должны передать соответствующий объект **FieldStart**.
   1. Чтобы передать закладки, необходимо передать узлы **BookmarkStart** и BookmarkEnd.
   1. Для передачи комментариев следует использовать узлы CommentRangeStart и CommentRangeEnd.
1. **IsInclusive**. Определяет, будут ли маркеры включены в извлечение или нет. Если для этого параметра установлено значение false и передается один и тот же узел или последовательные узлы, то будет возвращен пустой список:

      1. Если передан узел **FieldStart**, то этот параметр определяет, следует ли включать или исключать все поле целиком.
      1. Если передан узел **BookmarkStart** или **BookmarkEnd**, этот параметр определяет, включена ли закладка или только содержимое между диапазонами закладок.
      1. Если передан узел **CommentRangeStart** или **CommentRangeEnd**, этот параметр определяет, должен ли быть включен сам комментарий или только содержимое в диапазоне комментариев.

Реализацию метода **ExtractContent** вы можете найти [здесь](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Examples/DocsExamples/source/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.h). Этот метод будет описан в сценариях, описанных в этой статье.

Мы также определим пользовательский метод, позволяющий легко создавать документ из извлеченных узлов. Этот метод используется во многих сценариях, описанных ниже, и просто создает новый документ и импортирует в него извлеченное содержимое.

В следующем примере кода показано, как взять список узлов и вставить их в новый документ.

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "generate-document.h" >}}

## Извлекайте содержимое между абзацами

Это демонстрирует, как использовать описанный выше метод для извлечения содержимого между конкретными абзацами. В данном случае мы хотим извлечь текст письма, найденного в первой половине документа. Мы можем сказать, что оно находится между 7-м и 11-м абзацами.

Приведенный ниже код выполняет эту задачу. Соответствующие абзацы извлекаются с использованием метода [GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/) в документе и с передачей указанных индексов. Затем мы передаем эти узлы методу **ExtractContent** и указываем, что они должны быть включены в извлечение. Этот метод вернет скопированное содержимое между этими узлами, которое затем будет вставлено в новый документ.

В следующем примере кода показано, как извлечь содержимое между определенными абзацами, используя метод `ExtractContent`, описанный выше:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraphs.h" >}}

## Извлекать содержимое между различными типами узлов

Мы можем извлекать содержимое между любыми комбинациями узлов на уровне блоков или встроенных узлов. В приведенном ниже сценарии мы будем извлекать содержимое между первым абзацем и таблицей во втором разделе включительно. Мы получаем узлы маркеров, вызывая методы `Body.FirstParagraph` и [GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/) во втором разделе документа, чтобы получить соответствующие узлы абзаца и таблицы. Для небольшого изменения давайте вместо этого продублируем содержимое и вставим его под оригинал.

В следующем примере кода показано, как извлечь содержимое из абзаца и таблицы с помощью метода `ExtractContent`:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-block-level-nodes.h" >}}

## Извлекайте содержимое из абзацев в зависимости от стиля

Возможно, вам потребуется извлечь содержимое из абзацев одного и того же или разных стилей, например, из абзацев, помеченных стилями заголовков. Приведенный ниже код показывает, как этого добиться. Это простой пример, который позволяет извлечь содержимое между первым экземпляром стилей "Heading 1" и "Header 3" без извлечения заголовков. Для этого мы устанавливаем последнему параметру значение false, которое указывает, что узлы-маркеры не должны включаться.

При правильной реализации это должно выполняться в цикле для извлечения содержимого между всеми абзацами этих стилей из документа. Извлеченное содержимое копируется в новый документ.

В следующем примере кода показано, как извлекать содержимое между абзацами с определенными стилями, используя метод `ExtractContent`:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraph-styles.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "paragraphs-by-style-name.h" >}}

## Извлекайте содержимое Между Определенными Запусками

Вы также можете извлекать содержимое между встроенными узлами, такими как [Run](https://reference.aspose.com/words/cpp/aspose.words/run/). В качестве маркеров можно использовать **Runs** из разных абзацев. В приведенном ниже коде показано, как извлекать определенный текст из одного и того же узла **Paragraph**.

В следующем примере кода показано, как извлекать содержимое между конкретными запусками одного и того же абзаца, используя метод **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-runs.h" >}}

## Извлекать содержимое с помощью поля

Чтобы использовать поле в качестве маркера, необходимо передать узел `FieldStart`. Последний параметр метода `ExtractContent` определяет, следует ли включать все поле целиком или нет. Давайте извлекем содержимое из поля слияния "Полное имя" и абзаца в документе. Мы используем метод [MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/) класса [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/). Это вернет узел **FieldStart** из переданного ему поля name of merge.

В нашем случае давайте установим для последнего параметра, переданного методу **ExtractContent**, значение false, чтобы исключить поле из извлечения. Мы преобразуем извлеченный контент в PDF.

В следующем примере кода показано, как извлечь содержимое из определенного поля и абзаца в документе, используя метод **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-field.h" >}}

## Извлечение содержимого из закладки

В документе содержимое, определенное в закладке, инкапсулируется узлами `BookmarkStart` и BookmarkEnd. Содержимое, находящееся между этими двумя узлами, составляет закладку. Вы можете использовать любой из этих узлов в качестве любого маркера, даже из разных закладок, при условии, что начальный маркер отображается перед конечным маркером в документе. Мы извлекем это содержимое в новый документ, используя приведенный ниже код. Параметр **IsInclusive** показывает, как сохранить или удалить закладку.

В следующем примере кода показано, как извлечь содержимое, на которое ссылается закладка, используя метод **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-bookmark.h" >}}

## Извлекать содержимое из комментария

Комментарий состоит из узлов CommentRangeStart, CommentRangeEnd и Comment. Все эти узлы являются встроенными. Первые два узла содержат содержимое документа, на который ссылается комментарий, как показано на скриншоте ниже.

Сам узел **Comment** представляет собой встроенную историю, которая может содержать абзацы и фрагменты текста. Он представляет сообщение комментария, отображаемое в виде пузырька комментариев на панели предварительного просмотра. Поскольку этот узел является встроенным и является потомком тела, вы также можете извлечь содержимое из этого сообщения.

Комментарий содержит заголовок, первый абзац и таблицу во втором разделе. Давайте перенесем этот комментарий в новый документ. Параметр **IsInclusive** определяет, следует ли сохранить сам комментарий или удалить его.

В следующем примере кода показано, как это сделать:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-comment-range.h" >}}

## Как извлечь контент с помощью DocumentVisitor

Используйте класс [DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/) для реализации этого сценария использования. Этот класс соответствует хорошо известному шаблону оформления посетителей. С помощью **DocumentVisitor,** вы можете определять и выполнять пользовательские операции, которые требуют перечисления в дереве документа.

**Посетитель документа**

Каждый метод **DocumentVisitor.VisitXXX** возвращает значение [VisitorAction](https://reference.aspose.com/words/net/aspose.words/visitoraction/), которое управляет перечислением узлов. Вы можете запросить либо продолжить перечисление, пропустить текущий узел (но продолжить перечисление), либо остановить перечисление узлов.

Вот шаги, которые вы должны выполнить, чтобы программно определить и извлечь различные части документа:

- Создайте класс, производный от **DocumentVisitor**
- Переопределите и предоставьте реализации для некоторых или всех методов **DocumentVisitor.VisitXXX** для выполнения некоторых пользовательских операций
- Вызовите `Node.Accept` на узле, с которого вы хотите начать перечисление. Например, если вы хотите перечислить весь документ, используйте `Document.Accept`

**Посетитель документа**

В этом примере показано, как использовать шаблон посетителя для добавления новых операций в объектную модель Aspose.Words. В данном случае мы создаем простой конвертер документов в текстовый формат:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-document-visitor.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "convert-doc-to-txt.h" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Как извлечь только текст

Существуют следующие способы извлечения текста из документа:

- Используйте [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) с [SaveFormat.Text](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) для сохранения в виде обычного текста в файл или поток
- Используйте [Node.ToString](https://reference.aspose.com/words/cpp/aspose.words/node/tostring/) и передайте параметр **SaveFormat.Text**. Внутренне это вызывает функцию сохранения в виде текста в потоке памяти и возвращает результирующую строку
- Используйте [Node.GetText](https://reference.aspose.com/words/cpp/aspose.words/node/gettext/) для извлечения текста со всеми управляющими символами Microsoft Word, включая коды полей
- Реализуйте пользовательский параметр [DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/) для выполнения индивидуального извлечения

### Используя `Node.GetText` и `Node.ToString`

Документ Word может содержать управляющие символы, которые обозначают специальные элементы, такие как поле, конец ячейки, конец раздела и т.д. Полный список возможных управляющих символов Word определен в классе [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/). Метод **Node.GetText** возвращает текст со всеми управляющими символами, присутствующими в узле.

Вызов **ToString** возвращает только текстовое представление документа без управляющих символов.

В следующем примере кода показана разница между вызовом методов **GetText** и **ToString** на узле:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "simple-extract-text.h" >}}

### Используя `SaveFormat.Text`

В этом примере документ сохраняется следующим образом:

- Отфильтровывает символы полей и коды полей, форму, сноски, концевые примечания и ссылки на комментарии
- Заменяет символы конца абзаца **ControlChar.Cr** комбинациями **ControlChar.CrLf**
- Использует кодировку UTF8

В следующем примере кода показано, как сохранить документ в формате TXT:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "docx-to-txt.h" >}}

## Извлечение изображений из фигур

Для выполнения некоторых задач вам может потребоваться извлечь изображения из документов. Aspose.Words это также позволяет это сделать.

В следующем примере кода показано, как извлекать изображения из документа:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-images.h" >}}
