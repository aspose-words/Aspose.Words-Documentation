---
title: Работа с коментари в C#
second_title: Aspose.Words вместо .NET
articleTitle: Работа с коментари
linktitle: Работа с коментари
description: "Работа с коментари, използвайки C#."
type: docs
weight: 260
url: /bg/net/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Опитай онлайн**

Можете да опитате тази функционалност с нашия [Безплатни онлайн премахване на анотация](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words позволява на потребителите да работят с коментари. . коментари в документ в Aspose.Words са представени от [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) Клас. Използвайте също [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) както и [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/) класове за определяне на региона на текста, който следва да бъде свързан с коментар.

## Добавяне на коментар

Aspose.Words ви позволява да добавите коментари по няколко начина:

1. Използване на [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) клас
2. Използване на [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) както и [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/) класове

Следният пример с код показва как да се добави коментар към параграф, като се използва **Comment** клас:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AddComments-AddComments.cs" >}}

Следният пример за код показва как да се добави коментар към параграф, използвайки регион на текст и **CommentRangeStart** както и **CommentRangeEnd** класове:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AnchorComment-AnchorComment.cs" >}}

## Извличане или премахване на коментари

Използването на коментари в Word документ (в допълнение към Track Changes) е обичайна практика при преглеждане на документи, особено когато има множество рецензенти. Може да има ситуации, в които единственото нещо, от което се нуждаете от документ са коментарите. Кажете, че искате да генерирате списък с констатации от прегледа, или може би сте събрали цялата полезна информация от документа и просто искате да премахнете ненужни коментари. Може да искате да видите или премахнете коментарите на определен рецензент.

В тази извадка ще разгледаме някои прости методи както за събиране на информация от коментарите в документ, така и за премахване на коментари от документ. Конкретно ще покрием как да:

- Извличане на всички коментари от документ или само тези, направени от определен автор
- Премахване на всички коментари от документ или само от определен автор

### Как да извлечете или премахнете коментари

Кодът в тази проба всъщност е доста прост и всички методи се основават на един и същ подход. Коментар в Word документ е представен от [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) обект в Aspose.Words модел документ обект. За да съберете всички коментари в документ, използвайте [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) метод с първия параметър, определен за [NodeType.Comment](https://reference.aspose.com/words/net/aspose.words/nodetype/). Уверете се, че вторият параметър на **GetChildNodes** метод е настроен на true: това принуждава **GetChildNodes** да изберете от всички детски възли рекурсивно, а не само събиране на непосредствените деца.

За да илюстрираме как да извлечем и премахнем коментари от даден документ, ще минем през следните стъпки:

1. Отваряне на Word документ с помощта на [Document](https://reference.aspose.com/words/net/aspose.words/document/) клас
2. Вземете всички коментари от документа в колекция
3. За да извлечете коментари:
   1. Претърсете колекцията с помощта на всеки оператор
   2. Извличане и изброяване на името на автора, датата и часа и текста на всички коментари
   3. Извличане и изброяване на името на автора, дата и час и текст на коментарите, написани от конкретен автор, в този случай авторът го прави
4. Премахване на коментари:
   1. Преминавате назад през колекцията с помощта на оператора
   2. Премахване на коментари
5. Запис на промените

### Как да извлечете всички коментари

На **GetChildNodes** метод е много полезен и можете да го използвате всеки път, когато имате нужда да получите списък на документи възли от всякакъв вид. Получената колекция не създава непосредствени режийни разходи, тъй като възлите се избират в тази колекция само когато изброявате или получавате данни в нея.

Следният пример за код показва как да се извлече името на автора, дата и час и текст на всички коментари в документа:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractComments.cs" >}}

### Как да извлечете Коментарите на определен автор

След като сте избрали **Comment** Трябва само да извлечеш нужната информация. В тази проба, авторите инициали, дата, час и обикновен текст на коментара се комбинират в един низ; можете да изберете да го съхранявате по някои други начини вместо това.

Претовареният метод, който извлича Коментарите от конкретен автор е почти същия, той просто проверява името на автора, преди да добави информацията в масива.

Следният пример за код показва как да се извлече името на автора, дата и час и текст на коментарите от посочения автор:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cs" >}}

### Как да премахнете коментари

Ако премахвате всички коментари, няма нужда да преминавате през колекцията, изтривайки коментарите един по един. Можете да ги премахнете като се обадите на [Clear](https://reference.aspose.com/words/net/aspose.words/nodecollection/clear/) метод за събиране на коментари.

Следният пример за код показва как да премахнете всички коментари в документа:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveComments.cs" >}}

Когато трябва да премахнете избирателно коментарите, процесът става по-подобен на кода, който използвахме за извличане на коментари.

Следният пример за код показва как да премахнете коментари от посочения автор:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cs" >}}

Основната точка за подчертаване тук е използването на оператора. За разлика от простата екстракция, тук искате да изтриете коментар. Подходящ трик е да се итерира колекцията назад от последния коментар до първия. Причината за това, ако започнете от края и се движите назад, индексът на предходните елементи остава непроменен и можете да се върнете към първия елемент от колекцията.

Следният пример с код показва методите за извличане и отстраняване на коментари:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ProcessComments.cs" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Comments.docx).

{{% /alert %}}

### Как да премахнете коментар между коментарRangeStart и коментарRange End

Използване Aspose.Words Можете също така да премахнете коментари между **CommentRangeStart** както и **CommentRangeEnd** Възли.

Следният пример с код показва как да премахнете текста между **CommentRangeStart** както и **CommentRangeEnd**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cs" >}}

## Добавяне или премахване на коментара

На [AddReply](https://reference.aspose.com/words/net/aspose.words/comment/addreply/) методът добавя отговор на този коментар. Моля, имайте предвид, че поради съществуващото Microsoft В документа се допускат само 1 степен на отговор. С изключение на типа *InvalidOperationException* ще се повиши, ако този метод е призован за съществуващия коментар Отговор.

Можеш да използваш [RemoveReply](https://reference.aspose.com/words/net/aspose.words/comment/removereply/) метод за премахване на посочения отговор на този коментар.

Следният пример за код показва как да се добави отговор на коментар и премахване на коментара отговор:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cs" >}}

## Отговор на коментара

На [Replies](https://reference.aspose.com/words/net/aspose.words/comment/replies/) имот връща колекция от [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) предмети, които са непосредствени деца на посочения коментар.

Следният пример за код показва как да се итератира чрез отговорите на коментара и ги решава:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cs" >}}
