---
title: Извличане на съдържание между възлите на документа
second_title: Aspose.Words вместо Python
articleTitle: Извличане на съдържание между възлите в документ
linktitle: Съдържание на екстракт между възлите
description: "Как да извлечете конкретно съдържание от обхват в рамките на документа лесно използване Python."
type: docs
weight: 140
url: /bg/python-net/how-to-extract-selected-content-between-nodes-in-a-document/
---

При работа с документи е важно лесно да се извлече съдържание от определен диапазон в рамките на даден документ. Съдържанието обаче може да се състои от сложни елементи като параграфи, таблици, изображения и др.

Независимо от това какво съдържание трябва да бъде извлечено, методът за извличане на това съдържание винаги ще се определя от кои възли се избират, за да се извлече съдържание между тях. Това могат да бъдат цели текстови тела или прости текстови работи.

Има много възможни ситуации и следователно много различни видове възли да се вземат предвид при извличане на съдържание. Например, може да искате да извлечете съдържание между:

- Два конкретни параграфа
- Специфични редове на текста
- Полета от различни видове, като сливане полета
- Начална и крайна гама от отметки или коментар
- Различни органи на текста, съдържащи се в отделни секции

В някои ситуации може дори да се наложи да комбинирате различни типове възли, като например извличане на съдържание между параграф и поле, или между тичане и отметки.

Тази статия осигурява прилагането на код за извличане на текст между различни възли, както и примери за общи сценарии.

{{% alert color="primary" %}}

Тези примери са само няколко демонстрации на многото възможности. Планираме функционалността за извличане на текст да бъде част от обществото API в бъдеще и няма да се изисква допълнителен код. Междувременно, не се колебайте да публикувате вашите искания относно тази функционалност на [Aspose.Words форум](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Защо да извличаме съдържание

Често целта на извличането на съдържанието е да се дублира или запази отделно в нов документ. Например, можете да извлечете съдържание и:

- Копирайте го в отделен документ
- Конвертиране на конкретна част от документ в PDF или изображение
- Дублиране на съдържанието в документа многократно
- Работа с извлечено съдържание отделно от останалата част на документа

Това може лесно да се постигне с помощта Aspose.Words и прилагането на кода по-долу.

## Извличане на съдържание Алгоритъм

Кодът в този раздел адресира всички възможни ситуации, описани по-горе с един общ и повторно използван метод. Общата схема на тази техника включва:

1. Събиране на възлите, които диктуват областта на съдържание, което ще бъде извлечено от вашия документ. Възстановяването на тези възли се извършва от потребителя в техния код, въз основа на това, което те искат да бъдат извлечени.
1. Преминавайки тези възли към **ExtractContent** метод, предоставен по-долу. Трябва също така да преминете един булев параметър, който посочва дали тези възли, действащи като маркери, трябва да бъдат включени в екстракцията или не.
1. Извличане на списък с клонирано съдържание (копирани възли), за да бъде извлечено. Можете да използвате този списък от възли по какъвто и да е приложим начин, например създаване на нов документ, съдържащ само избраното съдържание.

## Как да извлечете съдържанието

За да извлечете съдържанието от вашия документ, трябва да се обадите на **екстракт_съдържание** метод по-долу и да премине съответните параметри. Основната основа на този метод включва намирането на възли на ниво блок (точки и таблици) и клонирането им, за да се създадат идентични копия. Ако преминаващите маркиращи възли са блоково ниво, тогава методът може просто да копира съдържанието на това ниво и да го добави към масива.

Въпреки това, ако маркерните възли са в линия (дете на параграф), тогава ситуацията става по-сложна, тъй като е необходимо да се раздели параграфа на вътрешния възел, било то тичане, отметки и др. Съдържанието в клонираните изходни възли, които не присъстват между маркерите, се премахва. Този процес се използва, за да се гарантира, че вътрешните възли ще запазят формата на параграфа майка. Методът също така ще извършва проверки на възлите, преминали като параметри и хвърля изключение, ако или възелът е невалиден. Параметрите, които трябва да бъдат предадени на този метод, са:

1. **startNode** както и **endNode**. Първите два параметъра са възлите, които определят къде да започне извличането на съдържанието и съответно да приключи. Тези възли могат да бъдат и двата блока ниво ([Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) или inline level (напр. [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) и т.н.:
   1. За да преминете полето, трябва да преминете съответното [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) Възразявам.
   1. За да преминете отметките, [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) както и [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) Възлите трябва да се преминат.
   1. За да получите коментари, [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) както и [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) Трябва да се използват възли.
1. **инклузив**. Определя дали маркерите са включени в екстракцията или не. Ако е зададена тази опция false и един и същ възел или последователни възли са преминали, след това празен списък ще бъде върнат:
   1. Ако [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) Възелът се приема след това тази опция определя дали цялото поле трябва да бъде включено или изключено.
   1. Ако [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) или [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) Възелът се приема, тази опция определя дали отметките са включени или само съдържанието между отметките.
   1. Ако [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) или [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) Възелът се приема, тази опция определя дали коментарът сам по себе си трябва да бъде включен или само съдържанието в обхвата на коментара.

Изпълнение на **екстракт_съдържание** метод можете да намерите [Тук](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/DocsExamples/DocsExamples/programming_with_documents/contents_management/extract_content_helper.py). Този метод ще бъде посочен в сценариите в тази статия.

Също така ще определим потребителски метод за лесно генериране на документ от извлечени възли. Този метод се използва в много от сценариите по-долу и просто създава нов документ и внася извлеченото съдържание в него.

Следният пример за код показва как да се вземе списък с възли и ги вмъква в нов документ:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "generate-document.py" >}}

## Съдържание на екстракт между параграфи

Това показва как да се използва горният метод за извличане на съдържание между конкретни параграфи. В този случай искаме да извлечем тялото на писмото, намерено в първата половина на документа. Можем да кажем, че това е между 7 и 11 абзац.

Кодът по-долу изпълнява тази задача. Съответните параграфи се извличат с помощта на [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) метод на документа и преминаване на посочените индекси. След това предаваме тези възли на **екстракт_съдържание** метод и се посочва, че те трябва да бъдат включени в екстракцията. Този метод ще върне копираното съдържание между тези възли, които след това се добавят в нов документ.

Следният пример за код показва как да се извлече съдържанието между конкретни параграфи, като се използва **екстракт_съдържание** метод по- горе:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraphs.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Извличане на съдържание между различните видове възли

Можем да извлечем съдържание между всяка комбинация от блок ниво или вътрешни възли. В този сценарий по-долу ще извлечем съдържанието между първия параграф и таблицата във втория раздел, включително. Получаваме маркерите като се обаждаме. [Body.first_paragraph](https://reference.aspose.com/words/python-net/aspose.words/story/first_paragraph/) както и [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) метод на втория раздел на документа за извличане на съответния [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) както и [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) Възли. За малко изменение нека... вместо това дублираме съдържанието и го поставяме под оригинала.

Следният пример за код показва как да се извлече съдържанието между параграф и таблица с помощта на **екстракт_съдържание** метод:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-block-level-nodes.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Съдържание на екстракт между параграфи Въз основа на стил

Може да се наложи да извлечете съдържанието между параграфи от един и същ или различен стил, като например между точки, отбелязани със стилове на заглавие.

Кодът по-долу показва как да се постигне това. Това е един прост пример, който ще извлече съдържанието между първата инстанция на нареждането на 1 и год. 3 инча стилове без извличане на заглавията, както добре. За да направим това, зададохме последния параметър на false, което посочва, че не следва да се включват маркиращите възли.

В правилното изпълнение това трябва да се стартира в цикъл, за да се извлече съдържание между всички параграфи от тези стилове от документа. Извлеченото съдържание се копира в нов документ.

Следният пример за код показва как да се извлече съдържание между параграфи със специфични стилове използване на **екстракт_съдържание** метод:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraph-styles.py" >}}

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "paragraphs-by-style-name.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Извличане на съдържание между специфични работи

Можете да извлечете съдържание между inline възли като [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) Както добре. Бягането от различни точки може да се премине като маркери. Кодът по-долу показва как да се извлече специфичен текст между едно и също [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) Възел.

Следният пример за код показва как да се извлече съдържание между специфични редове от същия параграф, като се използва **екстракт_съдържание** метод:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-runs.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Съдържание на екстракт чрез поле

За използване на поле като маркер, [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) Възелът трябва да бъде приет. Последният параметър **екстракт_съдържание** методът ще определи дали цялото поле трябва да бъде включено или не. Позволява да се извлече съдържанието между полето за сливане на FullName и параграф в документа. Ние използваме [DocumentBuilder.move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) метод на [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) Клас. Това ще върне [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) Възел от името на сливащото се поле премина към него.

В нашия случай нека да зададете последния параметър премина към **екстракт_съдържание** метод на `False` да се изключи полето от екстракцията. Ще предадем извлеченото съдържание на PDF.

Следният пример за код показва как да се извлече съдържание между конкретно поле и параграф в документа, като се използва **екстракт_съдържание** метод:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-using-field.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Извличане на съдържание от отметки

В документ съдържанието, което се определя в рамките на отметките, се капсулира от [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) както и [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) Възли. Съдържанието, намерено между тези два възела, прави отметките. Можете да минете някой от тези възли като всеки маркер, дори и тези от различни отметки, стига стартовият маркер да се появи преди крайния маркер в документа. Ще извлечем това съдържание в нов документ, използвайки кода по-долу. На **инклузив** параметър опция показва как да се запази или изхвърли отметките.

Следният пример с код показва как да се извлече съдържанието, посочено в отметките, използвайки **екстракт_съдържание** метод:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-bookmark.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Извличане на съдържание от коментар

Коментар е съставен от [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) както и [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) Възли. Всички тези възли са на линия. Първите два възела капсулират съдържанието в документа, което е посочено в коментара, както се вижда на снимката по-долу. На [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) Самото възел е [InlineStory](https://reference.aspose.com/words/python-net/aspose.words/inlinestory/) които могат да съдържат параграфи и да бягат. Тя представлява съобщението на коментара, както се вижда като коментар балон в прегледа стъкло. Тъй като този възел е в линия и потомък на тяло можете също така да извлечете съдържанието от вътре в това съобщение, както добре.

Коментарът обхваща заглавието, първия параграф и таблицата във втория раздел. Позволявам да извлечете този коментар в нов документ. На **инклузив** опцията диктува дали коментарът се поддържа или отхвърля.

Следният пример с код показва как да направите това:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-comment-range.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Как да извлечете само текст

Начините за извличане на текст от документа са:

- Използване [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) за запис като обикновен текст във файл или поток
- Използване [Node.to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) и преминаване на [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text) параметър. Вътрешно, това призовава за запис като текст в поток памет и връща получения низ
- Използване [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) за извличане на текст с всички Microsoft Word контролни знаци, включително кодове на полетата

### Използване на Node.get_text и Node.to_string

A Word документ може да съдържа контролни знаци, които определят специални елементи като поле, край на клетка, край на раздел и т.н. Пълният списък на възможните Word контрол символи се определя в [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/) Клас. На [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) метод връща текст с всички знаци контролен символ присъства в възела.

Обаждане [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) връща простото текстово представяне на документа само без контролни знаци. За допълнителна информация относно износа като обикновен текст вижте Използване [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text)

Следният код пример показва разликата между призоваване на [get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) както и [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) методи на възел:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "simple-extract-text.py" >}}

### Използване `SaveFormat.Text`

Този пример запазва документа, както следва:

- Filters out field characters and field codes, форма, бележка под линия, endnote and comment references
- Заменя края на параграфа **ControlChar.Cr** знаци с **ControlChar.CrLf** комбинации
- Използва UTF8 кодиране

Следният пример за код показва как да се запази документ във формат TXT:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "docx-to-txt.py" >}}

## Извличане на изображения от формите

Може да се наложи да извлечете изображения от документи, за да изпълните някои задачи. Aspose.Words ви позволява да направите това, както добре.

Следният пример за код показва как да извлечете изображения от документ:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-images.py" >}}
