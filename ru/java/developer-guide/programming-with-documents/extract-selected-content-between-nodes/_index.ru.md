---
title: Извлекать выбранное содержимое между узлами в Java
second_title: Aspose.Words для Java
articleTitle: Извлечение содержимого между узлами документа
linktitle: Извлекать содержимое между Узлами
type: docs
description: "Извлечение содержимого документа различными способами с помощью Java."
weight: 140
url: /ru/java/extract-selected-content-between-nodes/
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
- Дублируйте содержимое документа много раз
- Работайте с извлеченным содержимым отдельно от остальной части документа

Этого можно легко достичь, используя Aspose.Words и приведенную ниже реализацию кода.

## Алгоритм извлечения содержимого

Приведенный в этом разделе код рассматривает все возможные ситуации, описанные выше, с помощью одного обобщенного метода, который можно использовать повторно. В общих чертах этот метод включает:

1. Сбор узлов, которые определяют область содержимого, которая будет извлечена из вашего документа. Поиск этих узлов осуществляется пользователем в его коде в зависимости от того, что он хочет извлечь.
1. Передаем эти узлы методу **ExtractContent**, представленному ниже. Вы также должны передать логический параметр, который указывает, должны ли эти узлы, действующие как маркеры, быть включены в извлечение или нет.
1. Получение списка клонированного содержимого (скопированных узлов), указанного для извлечения. Вы можете использовать этот список узлов любым применимым способом, например, создать новый документ, содержащий только выбранное содержимое.

## Как извлечь контент

В этой статье мы будем работать с документом, представленным ниже. Как вы можете видеть, он содержит разнообразный контент. Также обратите внимание, что документ содержит второй раздел, начинающийся с середины первой страницы. Закладка и комментарий также присутствуют в документе, но не видны на скриншоте ниже.

![extract-content-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-1.png)

Чтобы извлечь содержимое из вашего документа, вам нужно вызвать метод `ExtractContent`, приведенный ниже, и передать соответствующие параметры.

В основе этого метода лежит поиск узлов на уровне блоков (абзацев и таблиц) и их клонирование для создания идентичных копий. Если переданные маркерные узлы относятся к уровню блоков, то метод может просто скопировать содержимое на этом уровне и добавить его в массив.

Однако, если узлы-маркеры являются встроенными (дочерними по отношению к абзацу), ситуация становится более сложной, поскольку необходимо разделить абзац на встроенном узле, будь то прогон, поля закладок и т.д. Содержимое в клонированных родительских узлах, отсутствующее между маркерами, удаляется. Этот процесс используется для обеспечения того, чтобы встроенные узлы по-прежнему сохраняли форматирование родительского абзаца.

Метод также выполняет проверку узлов, переданных в качестве параметров, и генерирует исключение, если какой-либо из узлов является недопустимым. В этот метод передаются следующие параметры:

1. **StartNode** и **EndNode**. Первые два параметра - это узлы, которые определяют, где должно начинаться и заканчиваться извлечение содержимого соответственно. Эти узлы могут быть как блочного уровня ([Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) ), так и встроенного (например, [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) и т.д.).:
   1. Чтобы передать поле, вы должны передать соответствующий объект **FieldStart**.
   1. Чтобы передать закладки, необходимо передать узлы **BookmarkStart** и [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/).
   1. Для передачи комментариев следует использовать узлы [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) и [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/).
1. **IsInclusive**. Определяет, будут ли маркеры включены в извлечение или нет. Если для этого параметра установлено значение false и передается один и тот же узел или последовательные узлы, то будет возвращен пустой список:

      1. Если передается узел **FieldStart**, то этот параметр определяет, следует ли включать или исключать все поле целиком.
      1. Если передан узел **BookmarkStart** или **BookmarkEnd**, этот параметр определяет, включена ли закладка или только содержимое между диапазонами закладок.
      1. Если передан узел **CommentRangeStart** или **CommentRangeEnd**, этот параметр определяет, должен ли быть включен сам комментарий или только содержимое в диапазоне комментариев.

Реализацию метода **ExtractContent** вы можете найти [здесь](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Programming_with_documents/Contents_management/ExtractContentHelper.java). Этот метод будет описан в сценариях, описанных в этой статье.

Мы также определим пользовательский метод, позволяющий легко создавать документ из извлеченных узлов. Этот метод используется во многих сценариях, описанных ниже, и просто создает новый документ и импортирует в него извлеченное содержимое.

В следующем примере кода показано, как взять список узлов и вставить их в новый документ:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "generate-document.java" >}}

## Извлекайте содержимое между абзацами

Это демонстрирует, как использовать описанный выше метод для извлечения содержимого между определенными абзацами. В данном случае мы хотим извлечь текст письма, найденного в первой половине документа. Мы можем сказать, что это между 7-м и 11-м абзацами.

Приведенный ниже код выполняет эту задачу. Соответствующие абзацы извлекаются с использованием метода [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) в документе и с передачей указанных индексов. Затем мы передаем эти узлы методу **ExtractContent** и указываем, что они должны быть включены в извлечение. Этот метод вернет скопированное содержимое между этими узлами, которое затем будет вставлено в новый документ.

В следующем примере кода показано, как извлечь содержимое между определенными абзацами, используя метод `ExtractContent`, описанный выше:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraphs.java" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Итоговый документ содержит два абзаца, которые были извлечены из него.

![extract-content-result-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-2.png)

## Извлекать содержимое между различными типами узлов

Мы можем извлекать содержимое между любыми комбинациями узлов на уровне блоков или встроенных узлов. В приведенном ниже сценарии мы будем извлекать содержимое между первым абзацем и таблицей во втором разделе включительно. Мы получаем узлы-маркеры, вызывая методы [getFirstParagraph](https://reference.aspose.com/words/java/com.aspose.words/body/#getFirstParagraph) и [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) во втором разделе документа, чтобы получить соответствующие узлы **Paragraph** и **Table**. Для небольшого изменения давайте вместо этого продублируем содержимое и вставим его под оригинал.

В следующем примере кода показано, как извлечь содержимое из абзаца и таблицы с помощью метода **ExtractContent**:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-block-level-nodes.java" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Содержание между абзацем и таблицей было продублировано, ниже приведен результат.

![extract-content-between-paragraphs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-3.png)

## Извлекайте содержимое из абзацев в зависимости от стиля

Возможно, вам потребуется извлечь содержимое между абзацами одного и того же или разного стиля, например, между абзацами, помеченными стилями заголовков.

Приведенный ниже код показывает, как этого добиться. Это простой пример, который позволяет извлекать содержимое между первым экземпляром стилей "Heading 1" и "Заголовок 3" без извлечения заголовков. Для этого мы устанавливаем последнему параметру значение false, которое указывает, что узлы-маркеры не должны быть включены.

При правильной реализации это должно выполняться в цикле для извлечения содержимого между всеми абзацами этих стилей из документа. Извлеченное содержимое копируется в новый документ.

В следующем примере кода показано, как извлекать содержимое между абзацами с определенными стилями, используя метод **ExtractContent**:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraph-styles.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "paragraphs-by-style-name.java" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Ниже приведен результат предыдущей операции.

![extract-content-between-paragraph-style-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-4.png)

## Извлекать содержимое Между Определенными Запусками

Вы также можете извлекать содержимое между встроенными узлами, такими как **Run**. в качестве маркеров можно использовать **Runs** из разных абзацев. В приведенном ниже коде показано, как извлекать определенный текст из одного и того же узла **Paragraph**.

В следующем примере кода показано, как извлекать содержимое между конкретными запусками одного и того же абзаца, используя метод **ExtractContent**:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-runs.java" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Извлеченный текст отображается на консоли.

![extract-content-between-runs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-5.png)

## Извлекать содержимое с помощью поля

Чтобы использовать поле в качестве маркера, необходимо передать узел `FieldStart`. Последний параметр метода `ExtractContent` определяет, следует ли включать все поле целиком или нет. Давайте выделим содержимое между полем слияния "FullName" и абзацем в документе. Мы используем метод [moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField(java.lang.String)) класса [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Он вернет узел **FieldStart** из имени переданного ему поля слияния.

В нашем случае давайте установим для последнего параметра, переданного методу **ExtractContent**, значение false, чтобы исключить поле из извлечения. Мы преобразуем извлеченное содержимое в PDF.

В следующем примере кода показано, как извлечь содержимое из определенного поля и абзаца в документе с помощью метода **ExtractContent**:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-field.java" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Извлеченное содержимое между полем и абзацем без узлов-маркеров поля и абзаца, отображаемых как PDF.

![extract-content-using-field-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-6.png)

## Извлечение содержимого из закладки

В документе содержимое, определенное в закладке, инкапсулируется узлами `BookmarkStart` и BookmarkEnd. Содержимое, находящееся между этими двумя узлами, составляет закладку. Вы можете передать любой из этих узлов в качестве любого маркера, даже из разных закладок, при условии, что начальный маркер отображается в документе перед конечным маркером.

В нашем примере документа у нас есть одна закладка с именем "Bookmark1". Содержимое этой закладки является выделенным содержимым в нашем документе:

![extract-content-from-bookmark-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-7.png)

Мы извлекем это содержимое в новый документ, используя приведенный ниже код. Параметр **IsInclusive** показывает, как сохранить или удалить закладку.

В следующем примере кода показано, как извлечь содержимое, на которое ссылается закладка, используя метод **ExtractContent**:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-bookmark.java" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Извлеченный результат с параметром `IsInclusive`, равным true. В копии также будет сохранена закладка.

![extract-content-from-bookmark-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-8.png)

Извлеченный результат с параметром **IsInclusive**, равным false. Копия содержит содержимое, но без закладки.

![extract-content-from-bookmark-aspose-words-java-3](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-9.png)

## Извлекать содержимое из комментария

Комментарий состоит из узлов CommentRangeStart, CommentRangeEnd и Comment. Все эти узлы являются встроенными. Первые два узла инкапсулируют содержимое документа, на который ссылается комментарий, как показано на скриншоте ниже.

Узел **Comment** сам по себе является узлом [InlineStory](https://reference.aspose.com/words/java/com.aspose.words/inlinestory/), который может содержать абзацы и заголовки. Он представляет собой сообщение комментария, отображаемое в виде пузырька комментариев на панели просмотра. Поскольку этот узел является встроенным и является потомком тела, вы также можете извлечь содержимое из этого сообщения.

В нашем документе есть один комментарий. Давайте отобразим его, показав разметку на вкладке Обзор:

![extract-content-from-comment-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-10.png)

Комментарий содержит заголовок, первый абзац и таблицу во втором разделе. Давайте перенесем этот комментарий в новый документ. Параметр **IsInclusive** определяет, следует ли сохранить сам комментарий или удалить его.

В следующем примере кода показано, как это сделать, приведенном ниже:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-comment-range.java" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Сначала извлеките выходные данные с параметром `IsInclusive`, равным true. Копия также будет содержать комментарий.

![extract-content-from-comment-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-11.png)

Во-вторых, извлеченный вывод с значением **isInclusive**, равным false. Копия содержит содержимое, но без комментария.

![extract-content-from-comment-aspose-words-java-12](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-12.png)

## Извлеките содержимое с помощью DocumentVisitor

Aspose.Words может использоваться не только для создания Microsoft Word документов путем их динамического создания или объединения шаблонов с данными, но и для синтаксического анализа документов с целью извлечения отдельных элементов документа, таких как верхние и нижние колонтитулы, абзацы, таблицы, изображения и другие. Другая возможная задача - найти весь текст определенного формата или стиля.

Используйте класс [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) для реализации этого сценария использования. Этот класс соответствует хорошо известному шаблону оформления посетителей. С помощью [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) вы можете определять и выполнять пользовательские операции, которые требуют перечисления в дереве документа.

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) предоставляет набор из **VisitXXX** методов, которые вызываются при обнаружении определенного элемента документа (узла). Например, [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) вызывается при обнаружении начала текстового абзаца, а [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) вызывается при обнаружении конца текстового абзаца. Каждый метод **DocumentVisitor.VisitXXX** принимает соответствующий объект, с которым он сталкивается, чтобы вы могли использовать его по мере необходимости (скажем, восстановить форматирование), например, как [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph), так и [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) принимают объект [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/).

Каждый метод **DocumentVisitor.VisitXXX** возвращает значение **VisitorAction**, которое управляет перечислением узлов. Вы можете запросить либо продолжить перечисление, пропустить текущий узел (но продолжить перечисление), либо остановить перечисление узлов.

Вот шаги, которые вы должны выполнить, чтобы программно определить и извлечь различные части документа:

- Создайте класс, производный от [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/).
- Переопределите и предоставьте реализации для некоторых или всех методов **DocumentVisitor.VisitXXX** для выполнения некоторых пользовательских операций.
- Вызовите [Node.accept](https://reference.aspose.com/words/java/com.aspose.words/node/#accept-com.aspose.words.DocumentVisitor) на узле, с которого вы хотите начать перечисление. Например, если вы хотите перечислить весь документ, используйте [accept(DocumentVisitor)](https://reference.aspose.com/words/java/com.aspose.words/document/#accept-com.aspose.words.DocumentVisitor).

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) предоставляет реализации по умолчанию для всех методов **DocumentVisitor.VisitXXX**. Это упрощает создание новых посетителей документа, поскольку необходимо переопределять только методы, необходимые для конкретного посетителя. Нет необходимости переопределять все методы посетителя.

В следующем примере показано, как использовать шаблон посетителя для добавления новых операций в объектную модель Aspose.Words. В этом случае мы создаем простой конвертер документов в текстовый формат:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-document-visitor.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "convert-doc-to-txt.java" >}}

## Извлекать только текст

Существуют следующие способы извлечения текста из документа:

- Используйте [Document.save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) вместо [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) для сохранения в виде обычного текста в файл или поток
- Используйте [Node.toString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString-com.aspose.words.SaveOptions) и передайте параметр `SaveFormat.Text`. Внутренне это вызывает функцию сохранения в виде текста в потоке памяти и возвращает результирующую строку
- Используйте [Node.getText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) для извлечения текста, содержащего все управляющие символы Microsoft Word, включая коды полей
- Реализуйте пользовательский параметр [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) для выполнения индивидуального извлечения

### Используя `Node.GetText` и `Node.ToString`

Документ Word может содержать управляющие символы, которые обозначают специальные элементы, такие как поле, конец ячейки, конец раздела и т.д. Полный список возможных управляющих символов Word определен в классе **ControlChar**. Метод [GetText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) возвращает текст со всеми управляющими символами, присутствующими в узле.

Вызов ToString возвращает только текстовое представление документа без управляющих символов. Дополнительную информацию об экспорте в виде обычного текста смотрите в **Using SaveFormat.Text**.

В следующем примере кода показана разница между вызовом методов **GetText** и [ToString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString) на узле:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "simple-extract-text.java" >}}

### Используя `SaveFormat.Text`

В этом примере документ сохраняется следующим образом:

- Отфильтровывает символы полей и коды полей, форму, сноски, концевые примечания и ссылки на комментарии
- Заменяет символы конца абзаца [ControlChar.Cr](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) комбинациями [ControlChar.CrLf](https://reference.aspose.com/words/java/com.aspose.words/controlchar/)
- Использует кодировку UTF8

В следующем примере кода показано, как сохранить документ в формате TXT:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "docx-to-txt.java" >}}

## Извлечение изображений из фигур

Для выполнения некоторых задач вам может потребоваться извлечь изображения из документов. Aspose.Words это также позволяет это сделать.

В следующем примере кода показано, как извлекать изображения из документа:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-images.java" >}}
