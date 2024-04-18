---
title: Работа с коментари в Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Работа с коментари
linktitle: Работа с коментари
description: "Как да добавите, премахнете или манипулирате коментари в документ, използвайки Python."
type: docs
weight: 260
url: /bg/python-net/working-with-comments/
---

{{% alert color="primary" %}}

**Опитай онлайн**

Можете да опитате тази функционалност с нашия [Безплатни онлайн премахване на анотация](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words позволява на потребителите да работят с коментари. . коментари в документ в Aspose.Words са представени от [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) Клас. Използвайте също [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) както и [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) класове за определяне на региона на текста, който следва да бъде свързан с коментар.

## Добавяне на коментар

Aspose.Words ви позволява да добавите коментари по няколко начина:

1. Използване на [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) клас
2. Използване на [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) както и [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) класове

Следният пример с код показва как да се добави коментар към параграф, като се използва **Comment** клас:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddComments.py" >}}

Следният пример за код показва как да се добави коментар към параграф, използвайки регион на текст и **CommentRangeStart** както и **CommentRangeEnd** класове:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AnchorComment.py" >}}

## Извличане или премахване на коментари

Използването на коментари в Word документ (в допълнение към Track Changes) е обичайна практика при преглеждане на документи, особено когато има множество рецензенти. Може да има ситуации, в които единственото нещо, от което се нуждаете от документ са коментарите. Кажете, че искате да генерирате списък с констатации от прегледа, или може би сте събрали цялата полезна информация от документа и просто искате да премахнете ненужни коментари. Може да искате да видите или премахнете коментарите на определен рецензент.

В тази извадка ще разгледаме някои прости методи както за събиране на информация от коментарите в документ, така и за премахване на коментари от документ. Конкретно ще покрием как да:

- Извадете всички коментари от документ или само тези, направени от определен автор.
- Премахване на всички коментари от документ или само от определен автор.

### Как да извлечете или премахнете коментари

Кодът в тази проба всъщност е доста прост и всички методи се основават на един и същ подход. Коментар в Word документ е представен от [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) обект в Aspose.Words модел документ обект. За да съберете всички коментари в документ, използвайте [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) метод с първия параметър, определен за [NodeType.COMMENT](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#comment). Уверете се, че вторият параметър на **get_child_nodes** метод е настроен на true: това принуждава **get_child_nodes** да изберете от всички детски възли рекурсивно, а не само събиране на непосредствените деца.

За да илюстрираме как да извлечем и премахнем коментари от даден документ, ще минем през следните стъпки:

1. Отваряне на Word документ с помощта на [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) клас
1. Вземете всички коментари от документа в колекция
1. За да извлечете коментари:
   1. Претърсете колекцията с помощта на всеки оператор
   1. Извличане и изброяване на името на автора, датата и часа и текста на всички коментари
   1. Извличане и изброяване на името на автора, дата и час и текст на коментарите, написани от конкретен автор, в този случай авторът
1. Премахване на коментари:
   1. Преминавате назад през колекцията с помощта на оператора
   1. Премахване на коментари
1. Запис на промените

### Как да извлечете всички коментари

На [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) метод е много полезен и можете да го използвате всеки път, когато имате нужда да получите списък на документи възли от всякакъв вид. Получената колекция не създава непосредствени режийни разходи, тъй като възлите се избират в тази колекция само когато изброявате или получавате данни в нея.

Следният пример за код показва как да се извлече името на автора, дата и час и текст на всички коментари в документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractComments.py" >}}

### Как да извлечете Коментарите на определен автор

След като сте избрали [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) Трябва само да извлечеш нужната информация. В тази проба, авторите инициали, дата, час и обикновен текст на коментара се комбинират в един низ; можете да изберете да го съхранявате по някои други начини вместо това.

Претовареният метод, който извлича Коментарите от конкретен автор е почти същия, той просто проверява името на автора, преди да добави информацията в масива.

Следният пример за код показва как да се извлече името на автора, дата и час и текст на коментарите от посочения автор:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractCommentsByAuthor.py" >}}

### Как да премахнете коментари

Ако премахвате всички коментари, не е необходимо да преминавате през колекцията, изтривайки коментарите един по един; можете да ги премахнете като ги извикате [clear](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/clear/) относно събирането на коментари.

Следният пример за код показва как да премахнете всички коментари в документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveComments.py" >}}

Когато трябва да премахнете избирателно коментарите, процесът става по-подобен на кода, който използвахме за извличане на коментари.

Следният пример за код показва как да премахнете коментари от посочения автор:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveCommentsByAuthor.py" >}}

Основната точка за подчертаване тук е използването на оператора. За разлика от простата екстракция, тук искате да изтриете коментар. Подходящ трик е да се итерализира колекцията назад от последния [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) до първия. Причината за това, ако започнете от края и се движите назад, индексът на предходните елементи остава непроменен и можете да се върнете към първия елемент от колекцията.

Следният пример с код показва методите за извличане и отстраняване на коментари:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ProcessComments.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Comments.docx).

{{% /alert %}}

### Как да премахнете коментар между коментарRangeStart и коментарRange End

Използване Aspose.Words Можете също така да премахнете коментари между **CommentRangeStart** както и **CommentRangeEnd** Възли.

Следният пример с код показва как да премахнете текста между **CommentRangeStart** както и **CommentRangeEnd**:

{{< highlight python >}}
# Open the document.
doc = aw.Document(docs_base.my_dir + "Comments.docx")

commentStart = doc.get_child(aw.NodeType.COMMENT_RANGE_START, 0, True).as_comment_range_start()
commentEnd = doc.get_child(aw.NodeType.COMMENT_RANGE_END, 0, True).as_comment_range_end()

currentNode = commentStart
isRemoving = True
while (currentNode != None and isRemoving) :
    if (currentNode.node_type == aw.NodeType.COMMENT_RANGE_END) :
        isRemoving = False

    nextNode = currentNode.next_pre_order(doc)
    currentNode.remove()
    currentNode = nextNode

# Save the document.
doc.save(docs_base.artifacts_dir + "WorkingWithComments.remove_region_text.docx")
{{< /highlight >}}

## Добавяне или премахване на коментара

На [add_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/add_reply/) методът добавя отговор на този коментар. Моля, имайте предвид, че поради съществуващото Microsoft В документа се допускат само 1 степен на отговор. С изключение на типа **InvalidOperationException** ще се повиши, ако този метод е призован за съществуващия коментар Отговор.

Можеш да използваш [remove_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/remove_reply/) метод за премахване на посочения отговор на този коментар.

Следният пример за код показва как да се добави отговор на коментар и премахване на коментара отговор:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddRemoveCommentReply.py" >}}

## Отговор на коментара

На [replies](https://reference.aspose.com/words/python-net/aspose.words/comment/replies/) имот връща колекция от [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) предмети, които са непосредствени деца на посочения коментар.

Следният пример за код показва как да се итератира чрез отговорите на коментара и ги решава:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-CommentResolvedandReplies.py" >}}