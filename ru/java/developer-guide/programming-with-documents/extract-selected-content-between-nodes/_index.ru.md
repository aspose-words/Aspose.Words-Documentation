---
title: Извлечение выбранного контента между узлами Java
second_title: Aspose.Words для Java
articleTitle: Извлечение контента между узлами в документе
linktitle: Извлечение контента между узлами
type: docs
description: "Извлечение содержимого документа при различном использовании Java."
weight: 140
url: /ru/java/extract-selected-content-between-nodes/
timestamp: 2024-01-27-14-07-04
---

При работе с документами важно уметь легко извлекать контент из определенного диапазона в документе. Однако содержание может состоять из сложных элементов, таких как абзацы, таблицы, изображения и т.д.

Независимо от того, какой контент необходимо извлечь, способ извлечения этого контента всегда будет определяться тем, какие узлы выбраны для извлечения контента между ними. Это могут быть целые текстовые тела или простые текстовые строки.

Существует множество возможных ситуаций и, следовательно, множество различных типов узлов, которые следует учитывать при извлечении контента. Например, вы можете извлечь контент между:

- Два конкретных пункта
- Конкретные прогоны текста
- Поля различных типов, такие как поля слияния
- Начальный и конечный диапазоны закладки или комментария
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

Это может быть легко достигнуто с помощью Aspose.Words и реализации кода ниже.

## Извлечение алгоритма контента

Код в этом разделе рассматривает все возможные ситуации, описанные выше, с помощью одного обобщенного и многоразового метода. Общий контур этой техники включает в себя:

1. Сбор узлов, которые диктуют область контента, который будет извлечен из вашего документа. Получение этих узлов обрабатывается пользователем в его коде, исходя из того, что он хочет извлечь.
1. Передача этих узлов в **ExtractContent** Метод, представленный ниже. Вы также должны пройти булевой параметр, который указывает, должны ли эти узлы, действующие как маркеры, быть включены в экстракцию или нет.
1. Получение списка клонированного содержимого (копированных узлов), указанного для извлечения. Вы можете использовать этот список узлов любым применимым способом, например, создавая новый документ, содержащий только выбранный контент.

## Как извлечь контент

Мы будем работать с документом ниже в этой статье. Как видите, он содержит разнообразный контент. Также обратите внимание, что документ содержит второй раздел, начинающийся в середине первой страницы. Закладка и комментарий также присутствуют в документе, но не видны на скриншоте ниже.

![extract-content-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-1.png)

Чтобы извлечь контент из вашего документа, вам нужно позвонить в `ExtractContent` ниже и пройти соответствующие параметры.

Основой этого метода является поиск узлов блочного уровня (параграфов и таблиц) и их клонирование для создания идентичных копий. Если пропускаемые узлы маркеров являются блок-уровнями, то метод может просто скопировать содержимое на этом уровне и добавить его в массив.

Однако если маркерные узлы являются встроенными (ребенок абзаца), то ситуация становится более сложной, так как необходимо разделить абзац на встроенный узел, будь то прогон, поля закладок и т.д. Содержание в клонированных родительских узлах, не присутствующих между маркерами, удаляется. Этот процесс используется для обеспечения того, чтобы встроенные узлы по-прежнему сохраняли форматирование исходного абзаца.

Метод также запускает проверки на узлах, прошедших в качестве параметров, и делает исключение, если любой из узлов недействителен. Параметрами, которые должны быть переданы этому методу, являются:

1. **StartNode** и **EndNode**. Первые два параметра - это узлы, которые определяют, где начинается и заканчивается извлечение содержимого соответственно. Эти узлы могут быть как на уровне блоков.[Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) , [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) ) или рядный уровень (например [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) , [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) , [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) и т.д
   1.Для прохождения поля необходимо пройти соответствующее **FieldStart** объект.
   1. чтобы передать закладки, **BookmarkStart** и [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) Узлы должны быть пропущены.
   1.Для передачи комментариев, [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) и [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) Следует использовать узлы.
1. **IsInclusive**. Определяет, включены ли маркеры в экстракцию или нет. Если эта опция установлена false и один и тот же узел или последовательные узлы проходят, затем возвращается пустой список:

      1.Если а **FieldStart** Узел передается, затем этот вариант определяет, должно ли быть включено или исключено все поле.
      1.Если а **BookmarkStart** или **BookmarkEnd** Узел передается, этот вариант определяет, включена ли закладка или только содержимое между диапазоном закладок.
      1.Если а **CommentRangeStart** или **CommentRangeEnd** Узел передается, этот параметр определяет, должен ли быть включен сам комментарий или только контент в диапазоне комментариев.

Осуществление этого **ExtractContent** Метод, который вы можете найти [здесь](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Programming_with_documents/Contents_management/ExtractContentHelper.java). Этот метод будет упомянут в сценариях в этой статье.

Мы также определим пользовательский метод для легкого создания документа из извлеченных узлов. Этот метод используется во многих сценариях ниже и просто создает новый документ и импортирует в него добытый контент.

Следующий пример кода показывает, как взять список узлов и вставить их в новый документ:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "generate-document.java" >}}

## Содержание между абзацами

Это показывает, как использовать метод выше для извлечения содержимого между конкретными абзацами. В этом случае мы хотим извлечь тело письма, найденное в первой половине документа. Можно сказать, что это между 7-м и 11-м абзацами.

Приведенный ниже код позволяет выполнить эту задачу. Соответствующие пункты извлекаются с использованием [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) метод на документе и прохождение указанных индексов. Затем мы передаем эти узлы в **ExtractContent** Способ и состояние, что они должны быть включены в экстракцию. Этот метод возвращает скопированное содержимое между этими узлами, которые затем вставляются в новый документ.

Следующий пример кода показывает, как извлечь содержимое между конкретными абзацами, используя `ExtractContent` метод выше:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraphs.java" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

В итоговом документе содержатся два пункта, которые были извлечены.

![extract-content-result-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-2.png)

## Извлечение контента между различными типами узлов

Мы можем извлекать контент между любыми комбинациями блочных или встроенных узлов. В этом сценарии ниже мы будем извлекать содержание между первым абзацем и таблицей во втором разделе включительно. Мы получаем узлы маркеров, звоня [getFirstParagraph](https://reference.aspose.com/words/java/com.aspose.words/body/#getFirstParagraph) и [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) метод по второму разделу документа для получения соответствующего **Paragraph** и **Table** Узлы. Для небольшого изменения давайте вместо этого продублируем контент и вставим его ниже оригинала.

Следующий пример кода показывает, как извлечь содержимое между абзацем и таблицей, используя **ExtractContent** метод:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-block-level-nodes.java" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Ниже приводится дублирование содержания между пунктом и таблицей.

![extract-content-between-paragraphs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-3.png)

## Содержание между абзацами Основано на стиле

Вам может потребоваться извлечь содержимое между абзацами одного и того же или другого стиля, например, между абзацами, помеченными стилями заголовков.

Приведенный ниже код показывает, как этого добиться. Это простой пример, который будет извлекать содержимое между первым экземпляром стилей "Голова 1" и "Голова 3" без извлечения заголовков. Для этого мы установили последний параметр false, который указывает, что маркерные узлы не должны быть включены.

В правильной реализации это должно быть запущено в цикле для извлечения контента между всеми пунктами этих стилей из документа. Извлеченный контент копируется в новый документ.

Следующий пример кода показывает, как извлекать контент между абзацами с помощью определенных стилей. **ExtractContent** метод:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraph-styles.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "paragraphs-by-style-name.java" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Ниже приведен результат предыдущей операции.

![extract-content-between-paragraph-style-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-4.png)

## Извлечение контента между конкретными пробегами

Вы можете извлекать контент между встроенными узлами, такими как **Run** Тоже самое. **Runs** Из разных абзацев могут быть пропущены как маркеры. В приведенном ниже коде показано, как извлечь конкретный текст между ними. **Paragraph** Узел.

Следующий пример кода показывает, как извлекать контент между конкретными прогонами одного и того же абзаца, используя **ExtractContent** метод:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-runs.java" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Извлеченный текст отображается на консоли

![extract-content-between-runs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-5.png)

## Извлечение контента с помощью поля

Чтобы использовать поле в качестве маркера, `FieldStart` Узел должен быть пропущен. Последний параметр для `ExtractContent` Метод определяет, должно ли быть включено все поле или нет. Выделим содержание между полем слияния "Полное имя" и абзацем в документе. Мы используем [moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField(java.lang.String)) метод [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) класс. Это вернет обратно **FieldStart** Узел от названия поля слияния перешел к нему.

В нашем случае давайте установим последний параметр, переданный **ExtractContent** метод для false исключить поле из добычи. Мы переведем извлеченный контент в PDF.

Следующий пример кода показывает, как извлечь содержимое между конкретным полем и абзацем в документе, используя **ExtractContent** метод:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-field.java" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Извлеченное содержимое между полем и абзацем, без полевых и абзацевых маркерных узлов, отображаемых в PDF.

![extract-content-using-field-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-6.png)

## Извлечение контента из закладки

В документе содержание, которое определено в закладке, инкапсулируется `BookmarkStart` и узлы BookmarkEnd. Содержание, найденное между этими двумя узлами, составляет закладку. Вы можете передать любой из этих узлов в качестве любого маркера, даже из разных закладок, если начальный маркер появляется перед конечным маркером в документе.

В нашем примере документа у нас есть одна закладка, названная "Bookmark1". Содержание этой закладки выделено содержанием в нашем документе:

![extract-content-from-bookmark-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-7.png)

Мы будем извлекать этот контент в новый документ, используя код ниже. The **IsInclusive** Параметр опции показывает, как сохранить или отбросить закладку.

Следующий пример кода показывает, как извлечь контент, на который ссылается закладка, используя **ExtractContent** метод:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-bookmark.java" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Извлеченная продукция вместе с `IsInclusive` параметр, установленный true. Копия также сохранит закладку.

![extract-content-from-bookmark-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-8.png)

Извлеченная продукция вместе с **IsInclusive** параметр, установленный false. Копия содержит содержание, но без закладки.

![extract-content-from-bookmark-aspose-words-java-3](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-9.png)

## Извлечение контента из комментария

Комментарий состоит из узлов CommentRangeStart, CommentRangeEnd и Comment. Все эти узлы являются встроенными. Первые два узла инкапсулируют содержание в документе, на которое ссылается комментарий, как видно на скриншоте ниже.

The **Comment** Сам по себе узел является [InlineStory](https://reference.aspose.com/words/java/com.aspose.words/inlinestory/) может содержать абзацы и строки. Он представляет собой сообщение комментария, рассматриваемое как пузырь комментариев в панели обзора. Поскольку этот узел является встроенным и потомком тела, вы также можете извлечь содержимое из этого сообщения.

В нашем документе есть один комментарий. Давайте отобразим его, показав разметку на вкладке Обзор:

![extract-content-from-comment-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-10.png)

Комментарий содержит заголовок, первый абзац и таблицу во втором разделе. Давайте добавим этот комментарий в новый документ. The **IsInclusive** Вариант диктует, сохраняется ли сам комментарий или отбрасывается.

Следующий пример кода показывает, как это сделать ниже:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-comment-range.java" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Во-первых, извлеченный выход с `IsInclusive` параметр, установленный true. Копия также будет содержать комментарий.

![extract-content-from-comment-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-11.png)

Во-вторых, полученный результат с **является инклюзивным** устанавливать false. Копия содержит содержание, но без комментария.

![extract-content-from-comment-aspose-words-java-12](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-12.png)

## Извлекать контент с помощью DocumentVisitor

Aspose.Words Его можно использовать не только для создания Microsoft Word документы путем их динамического построения или слияния шаблонов с данными, а также для анализа документов с целью извлечения отдельных элементов документа, таких как заголовки, нижние колонтитулы, абзацы, таблицы, изображения и другие. Другая возможная задача - найти весь текст определенного форматирования или стиля.

Используйте [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) Класс для реализации этого сценария использования. Этот класс соответствует известному шаблону дизайна посетителя. с [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/)Вы можете определять и выполнять пользовательские операции, которые требуют перечисления по дереву документов.

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) Предоставляет набор из **VisitXXX** Методы, которые используются при встрече с конкретным элементом документа (узлом). Например, [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) Называется, когда найдено начало абзаца текста и [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) Называется при обнаружении конца текстового абзаца. Каждый **DocumentVisitor.VisitXXX** метод принимает соответствующий объект, с которым он сталкивается, чтобы вы могли использовать его по мере необходимости (например, восстановить форматирование), например, оба [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) и [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) принять [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) объект.

Каждый **DocumentVisitor.VisitXXX** Способ возвращает **VisitorAction** значение, которое контролирует перечисление узлов. Вы можете запросить либо продолжить перечисление, пропустить текущий узел (но продолжить перечисление), либо остановить перечисление узлов.

Вот шаги, которым вы должны следовать, чтобы программно определить и извлечь различные части документа:

- Создать класс, полученный из [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/).
- Переопределить и обеспечить реализацию для некоторых или всех **DocumentVisitor.VisitXXX** Способы выполнения некоторых пользовательских операций.
- Звони. [Node.accept](https://reference.aspose.com/words/java/com.aspose.words/node/#accept-com.aspose.words.DocumentVisitor) на узле, откуда вы хотите начать перечисление. Например, если вы хотите перечислить весь документ, используйте [accept(DocumentVisitor)](https://reference.aspose.com/words/java/com.aspose.words/document/#accept-com.aspose.words.DocumentVisitor).

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) обеспечивает реализацию по умолчанию для всех **DocumentVisitor.VisitXXX** методы. Это облегчает создание новых посетителей документов, поскольку только методы, необходимые для конкретного посетителя, должны быть отменены. Нет необходимости переопределять все методы посетителей.

Следующий пример показывает, как использовать шаблон посетителя для добавления новых операций в систему. Aspose.Words Объектная модель. В этом случае мы создаем простой конвертер документов в текстовый формат:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-document-visitor.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "convert-doc-to-txt.java" >}}

## Экстрактный текст Только

Способы извлечения текста из документа:

- Используйте [Document.save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) с [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) сохранить как простой текст в файл или поток
- Используйте [Node.toString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString-com.aspose.words.SaveOptions) и передать `SaveFormat.Text` параметр. Внутренне это вызывает сохранение в виде текста в поток памяти и возвращает полученную строку
- Используйте [Node.getText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) Восстановление текста со всеми Microsoft Word Управляющие символы, включая полевые коды
- Применять обычай [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) для выполнения индивидуальной экстракции

### Использовать `Node.GetText` и `Node.ToString`

А. Документ Word может содержать управляющие символы, которые обозначают специальные элементы, такие как поле, конец ячейки, конец секции и т.д. Полный список возможных символов управления Словом определен в **ControlChar** класс. The [GetText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) Способ возвращает текст со всеми символами управляющего характера, присутствующими в узле.

Calling ToString возвращает простое текстовое представление документа только без управляющих символов. Для получения дополнительной информации об экспорте в виде простого текста см. **Using SaveFormat.Text**.

Следующий пример кода показывает разницу между вызовом **GetText** и [ToString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString) методы на узле:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "simple-extract-text.java" >}}

### Использовать `SaveFormat.Text`

Этот пример сохраняет документ следующим образом:

- Фильтры полевых символов и полевых кодов, формы, сноски, сноски и ссылки на комментарии
- Заменить конец пункта [ControlChar.Cr](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) персонажей с [ControlChar.CrLf](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) комбинации
- Использование кодирования UTF8

Следующий пример кода показывает, как сохранить документ в формате TXT:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "docx-to-txt.java" >}}

## Извлечение изображений из форм

Вам может потребоваться извлечь изображения документов для выполнения некоторых задач. Aspose.Words Это также позволяет вам сделать это.

Следующий пример кода показывает, как извлечь изображения из документа:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-images.java" >}}
