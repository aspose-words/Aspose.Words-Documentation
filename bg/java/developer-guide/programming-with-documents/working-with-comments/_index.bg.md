---
title: Работа с коментари в Java
second_title: Aspose.Words вместо Java
articleTitle: Работа с коментари
linktitle: Работа с коментари
description: "Работа с коментари, използвайки Java."
type: docs
weight: 260
url: /bg/java/working-with-comments/
---

{{% alert color="primary" %}}

**Опитай онлайн**

Можете да опитате тази функционалност с нашия [Безплатни онлайн премахване на анотация](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words позволява на потребителите да работят с коментари го в документ в Aspose.Words са представени от [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) Клас. Използвайте също [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) както и [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) класове за определяне на региона на текста, който следва да бъде свързан с коментар.

## Добавяне на коментар

Aspose.Words ви позволява да добавите коментари по няколко начина:

1. Използване на [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) клас
2. Използване на [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) както и [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) класове

Следният пример за код показва как да се добави коментар към параграф, като се използва **Comment** клас:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

Следният пример за код показва как да се добави коментар към параграф, използвайки регион на текст и **CommentRangeStart** както и **CommentRangeEnd** класове:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## Извличане или премахване на коментари

Използването на коментари в Word документ (в допълнение към Track Changes) е обичайна практика при преглеждане на документи, особено когато има множество рецензенти. Може да има ситуации, в които единственото, от което се нуждаете от документ са коментарите. Кажете, че искате да генерирате списък с констатации от прегледа или може би сте събрали цялата полезна информация от документа и просто искате да премахнете ненужни коментари. Може да искате да видите или премахнете коментарите на определен рецензент.

В тази извадка ще разгледаме някои прости методи както за събиране на информация от коментарите в документ, така и за премахване на коментари от документ. По-конкретно, ще покрием как да:

- Извадете всички коментари от документ или само тези, направени от определен автор.
- Премахване на всички коментари от документ или само от определен автор.

### Как да извлечете или премахнете коментари

Кодът в тази проба е доста прост и всички методи се основават на един и същ подход. Коментар в Word документ е представен от `Comment` обект в Aspose.Words модел документ обект. За да съберете всички коментари в документ, използвайте [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) метод с първия параметър, определен за `NodeType.Comment`. Уверете се, че вторият параметър на **get ChildNodes** метод е настроен на true: това принуждава **get ChildNodes** да изберете от всички детски възли рекурсивно, а не само събиране на непосредствените деца.

За да илюстрираме как да извлечем и премахнем коментари от даден документ, ще минем през следните стъпки:

1. Отваряне на документ с Word [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) клас
1. Вземете всички коментари от документа в колекция
1. За да извлечете коментари:
   1. Прегледайте колекцията с помощта на оператора
   1. Извличане и изброяване на името на автора, дата и час на всички коментари
   1. Извличане и изброяване на името на автора, дата и час и текст на коментарите, написани от конкретен автор, в този случай, авторът го прави
1. Премахване на коментари:
   1. Отидете назад през колекцията с помощта на оператора
   1. Премахване на коментари
1. Запази промените.

Ще използваме следния Word документ за това упражнение:

![extract-remove-comments-aspose-words-java-1](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-1.png)

Както можете да видите, тя съдържа няколко коментара от двама автори с инициалите готварски и други.

### Как да извлечете всички коментари

На [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) метод е много полезен и можете да го използвате всеки път, когато имате нужда да получите списък на документи възли от всякакъв вид. Получената колекция не създава непосредствени режийни разходи, тъй като възлите са избрани в тази колекция само когато изброявате или достъп до елементи в нея.

Следният пример за код показва как да се извлече името на автора, дата и час и текст на всички коментари в документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### Как да извлечете Коментарите на определен автор

След като сте избрали Коментар възли в колекция, всичко, което трябва да направите, е да извлечете информацията, която ви трябва. В тази проба инициалите, датата, часа и обикновения текст на коментара се комбинират в един низ; вместо това можете да изберете да го съхранявате по друг начин.

Претовареният метод, който извлича Коментарите от конкретен автор е почти същия, той просто проверява името на автора, преди да добави информацията в масива.

Следният пример за код показва как да се извлече името на автора, датата и часа и текста на коментарите на посочения автор:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### Как да премахнете коментари

Ако премахвате всички коментари, не е необходимо да преминавате през колекцията, изтривайки коментарите един по един; можете да ги премахнете, като ги извикате [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear) относно събирането на коментари.

Следният пример за код показва как да премахнете всички коментари в документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

Когато трябва да премахнете избирателно коментарите, процесът става по-подобен на кода, който използвахме за извличане на коментари.

Следният пример за код показва как да премахнете коментари от посочения автор:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

Основната точка за подчертаване тук е използването на оператора. За разлика от простата екстракция, тук искате да изтриете коментар. Подходящ трик е да итерираме колекцията назад от последния коментар до първия. Причината за това, ако започнете от края и се върнете назад, индексът на предходните елементи остава непроменен и можете да работите по пътя си обратно към първия елемент от колекцията.

Следният пример за код показва методите за извличане и отстраняване на коментари:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc).

{{% /alert %}}

Когато се стартира, пробата показва следните резултати. Първо, той изброява всички коментари на всички автори, след това изброява само коментарите на избрания автор. Накрая, кодът премахва всички коментари.

![extract-remove-comments-aspose-words-java-2](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-2.png)

Изходният документ на Word вече е изтрит от него:

![extract-remove-comments-aspose-words-java-3](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-3.png)

### Как да премахнете текст между коментарRangeStart и коментарRangeEnd

Използване Aspose.Words Можете също така да премахнете коментари между коментарRangeStart и коментарRangeEnd възли.

Следният пример с код показва как да премахнете текста между коментарRangeStart и коментарRangeEnd:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## Добавяне или премахване на коментара

На [addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String) методът добавя отговор на този коментар. Моля, имайте предвид, че поради съществуващите ограничения на Службата на държавите членки в документа се допуска само едно (1) ниво на отговорите. С изключение на типа Invaluation Exception ще бъде повдигнат, ако този метод се нарича на съществуващия коментар Отговор.

Можеш да използваш [removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment) метод за премахване на посочения отговор на този коментар.

Следният пример за код показва как да се добави отговор на коментар и да се премахне отговор на коментар:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## Отговор на коментара

Aspose.Words подкрепа за четене на отговора на коментар. На [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies) имот връща колекция от [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) предмети, които са непосредствени деца на посочения коментар.

Следният пример за код показва как да се итератира чрез отговорите на коментара и ги решава:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}