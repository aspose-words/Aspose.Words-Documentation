---
title: Как да извлечете съдържание между възлите на документа
second_title: Aspose.Words вместо .NET
articleTitle: Извличане на съдържание между възлите в документ
linktitle: Съдържание на екстракт между възлите
description: "Извличане на съдържанието на документа в различна употреба C#."
type: docs
weight: 140
url: /bg/net/how-to-extract-selected-content-between-nodes-in-a-document/
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

За да извлечете съдържанието от вашия документ, трябва да се обадите на **ExtractContent** метод по-долу и да премине съответните параметри. Основната основа на този метод включва намирането на възли на ниво блок (точки и таблици) и клонирането им, за да се създадат идентични копия. Ако преминаващите маркиращи възли са блоково ниво, тогава методът може просто да копира съдържанието на това ниво и да го добави към масива.

Въпреки това, ако маркерните възли са в линия (дете на параграф), тогава ситуацията става по-сложна, тъй като е необходимо да се раздели параграфа на вътрешния възел, било то тичане, отметки и др. Съдържанието в клонираните изходни възли, които не присъстват между маркерите, се премахва. Този процес се използва, за да се гарантира, че вътрешните възли ще запазят формата на параграфа майка. Методът също така ще извършва проверки на възлите, преминали като параметри и хвърля изключение, ако или възелът е невалиден. Параметрите, които трябва да бъдат предадени на този метод, са:

1. **StartNode** както и **EndNode**. Първите два параметъра са възлите, които определят къде да започне извличането на съдържанието и съответно да приключи. Тези възли могат да бъдат и двата блока ниво ([Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) , [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/)) или вътрешно ниво (напр. [Run](https://reference.aspose.com/words/net/aspose.words/run/) , [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) , [BookmarkStart](https://reference.aspose.com/words/net/aspose.words/bookmark/bookmarkstart/) и т.н.:
   1. За да преминете полето, трябва да преминете съответното **FieldStart** Обект
   1. За да преминете отметките, **BookmarkStart** както и [BookmarkEnd](https://reference.aspose.com/words/net/aspose.words/bookmark/bookmarkend/) Възлите трябва да се преминат
   1. За да получите коментари, [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) както и [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/) Трябва да се използват възли
1. **IsInclusive**. Определя дали маркерите са включени в екстракцията или не. Ако е зададена тази опция false и един и същ възел или последователни възли са преминали, след това празен списък ще бъде върнат:
   1. Ако **FieldStart** Преминава се възел, след което тази опция определя дали цялото поле трябва да бъде включено или изключено
   1. Ако **BookmarkStart** или **BookmarkEnd** Възелът се приема, тази опция определя дали отметките са включени или само съдържанието между отметките.
   1. Ако **CommentRangeStart** или **CommentRangeEnd** Възелът се приема, тази опция определя дали коментарът сам по себе си трябва да бъде включен или само съдържанието в обхвата на коментара.

Изпълнение на **ExtractContent** метод можете да намерите [върху Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.cs). Този метод ще бъде посочен в сценариите в тази статия.

Също така ще определим потребителски метод за лесно генериране на документ от извлечени възли. Този метод се използва в много от сценариите по-долу и просто създава нов документ и внася извлеченото съдържание в него.

Следният пример за код показва как да се вземе списък с възли и ги вмъква в нов документ:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "generate-document.cs" >}}

## Съдържание на екстракт между параграфи

Това показва как да се използва горният метод за извличане на съдържание между конкретни параграфи. В този случай искаме да извлечем тялото на писмото, намерено в първата половина на документа. Можем да кажем, че това е между 7 и 11 абзац.

Кодът по-долу изпълнява тази задача. Съответните параграфи се извличат с помощта на [GetChild](https://reference.aspose.com/words/net/aspose.words/compositenode/) метод на документа и преминаване на посочените индекси. След това предаваме тези възли на **ExtractContent** метод и се посочва, че те трябва да бъдат включени в екстракцията. Този метод ще върне копираното съдържание между тези възли, които след това се добавят в нов документ.

Следният пример за код показва как да се извлече съдържанието между конкретни параграфи, като се използва `ExtractContent` метод по- горе:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraphs.cs" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Извличане на съдържание между различните видове възли

Можем да извлечем съдържание между всяка комбинация от блок ниво или вътрешни възли. В този сценарий по-долу ще извлечем съдържанието между първия параграф и таблицата във втория раздел, включително. Получаваме маркерите като викаме [FirstParagraph](https://reference.aspose.com/words/net/aspose.words/story/firstparagraph/) както и [GetChild](https://reference.aspose.com/words/net/aspose.words/compositenode/getchild/) методи на втория раздел на документа за извличане на съответния **Paragraph** както и **Table** Възли. За малко изменение нека... вместо това дублираме съдържанието и го поставяме под оригинала.

Следният пример за код показва как да се извлече съдържанието между параграф и таблица с помощта на **ExtractContent** метод:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-block-level-nodes.cs" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Съдържание на екстракт между параграфи Въз основа на стил

Може да се наложи да извлечете съдържанието между параграфи от един и същ или различен стил, като например между точки, отбелязани със стилове на заглавие. Кодът по-долу показва как да се постигне това. Това е един прост пример, който ще извлече съдържанието между първата инстанция на нареждането на 1 и год. 3 инча стилове без извличане на заглавията, както добре. За да направим това, зададохме последния параметър на false, което посочва, че не следва да се включват маркиращите възли.

В правилното изпълнение това трябва да се стартира в цикъл, за да се извлече съдържание между всички параграфи от тези стилове от документа. Извлеченото съдържание се копира в нов документ.

Следният пример за код показва как да се извлече съдържание между параграфи със специфични стилове използване на **ExtractContent** метод:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraph-styles.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "paragraphs-by-style-name.cs" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Извличане на съдържание между специфични работи

Можете да извлечете съдържание между inline възли като [Run](https://reference.aspose.com/words/net/aspose.words/run/) Както добре. **Runs** от различни параграфи могат да се приемат като маркери. Кодът по-долу показва как да се извлече специфичен текст между едно и също **Paragraph** Възел.

Следният пример за код показва как да се извлече съдържание между специфични редове от същия параграф, като се използва **ExtractContent** метод:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-runs.cs" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Съдържание на екстракт чрез поле

За използване на поле като маркер, `FieldStart` Възелът трябва да бъде приет. Последният параметър `ExtractContent` методът ще определи дали цялото поле трябва да бъде включено или не. Позволява да се извлече съдържанието между полето за сливане на FullName и параграф в документа. Ние използваме [MoveToMergeField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetomergefield/) метод на [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) Клас. Това ще върне **FieldStart** Възел от името на сливащото се поле премина към него.

В нашия случай нека да зададете последния параметър премина към **ExtractContent** метод на false да се изключи полето от екстракцията. Ще предадем извлеченото съдържание на PDF.

Следният пример за код показва как да се извлече съдържание между конкретно поле и параграф в документа, като се използва **ExtractContent** метод:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-field.cs" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Извличане на съдържание от отметки

В документ съдържанието, което се определя в рамките на отметките, се капсулира от `BookmarkStart` и "Отметки край възли." Съдържанието, намерено между тези два възела, прави отметките. Можете да минете някой от тези възли като всеки маркер, дори и тези от различни отметки, стига стартовият маркер да се появи преди крайния маркер в документа. Ще извлечем това съдържание в нов документ, използвайки кода по-долу. На **IsInclusive** параметър опция показва как да се запази или изхвърли отметките.

Следният пример с код показва как да се извлече съдържанието, посочено в отметките, използвайки **ExtractContent** метод:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-bookmark.cs" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Извличане на съдържание от коментар

Коментар е направен от коментарRangeStart, CommentRangeEnd и Коментар възли. Всички тези възли са на линия. Първите два възела капсулират съдържанието в документа, което е посочено в коментара, както се вижда на снимката по-долу.

На **Comment** Самото възел е [InlineStory](https://reference.aspose.com/words/net/aspose.words/inlinestory/) които могат да съдържат параграфи и да бягат. Тя представлява съобщението на коментара, както се вижда като коментар балон в прегледа стъкло. Тъй като този възел е в линия и потомък на тяло можете също така да извлечете съдържанието от вътре в това съобщение, както добре.

Коментарът обхваща заглавието, първия параграф и таблицата във втория раздел. Позволявам да извлечете този коментар в нов документ. На **IsInclusive** опцията диктува дали коментарът се поддържа или отхвърля.

Следният пример с код показва как да направите това:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-comment-range.cs" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Как да извлечете съдържание чрез DocumentVisitor

Използвайте [DocumentVisitor](https://reference.aspose.com/words/net/aspose.words/documentvisitor/) клас за изпълнение на този сценарий на използване. Този клас съответства на добре познатия дизайнерски модел. С **DocumentVisitor** **,** Можете да определите и изпълните потребителски операции, които изискват изброяване над дървото на документа.

**DocumentVisitor** осигурява набор от **VisitXXX** методи, които се използват, когато се среща конкретен документен елемент (нод). Например, [VisitParagraphStart](https://reference.aspose.com/words/net/aspose.words/documentvisitor/visitparagraphstart/) се нарича, когато се намери началото на текстов параграф и [VisitParagraphEnd](https://reference.aspose.com/words/net/aspose.words/documentvisitor/visitparagraphend/) се нарича, когато се намери краят на текстов параграф. Всеки **DocumentVisitor.VisitXXX** метод приема съответния обект, който той среща, така че можете да го използвате, когато е необходимо (да речем извличане на форматиране), напр. и двете **DocumentVisitor.VisitParagraphStart** както и **DocumentVisitor.VisitParagraphEnd** Прием на [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) Възразявам.

Всеки **DocumentVisitor.VisitXXX** метод връща a [VisitorAction](https://reference.aspose.com/words/net/aspose.words/visitoraction/) стойност, която контролира изброяването на възлите. Можете да поискате или да продължите изброяването, да прескочите текущия възел (но продължете изброяването), или да спрете изброяването на възлите.

Това са стъпките, които трябва да следвате за програмно определяне и извличане на различни части на документ:

- Създаване на клас, получен от **DocumentVisitor**
- Пренареждане и осигуряване на някои или всички **DocumentVisitor.VisitXXX** методи за извършване на някои потребителски операции
- Обади се. [Node.Accept](https://reference.aspose.com/words/net/aspose.words/node/accept/) на възела, откъдето искате да започнете изброяването, например, ако искате да изброите целия документ, използвайте [Document.Accept](https://reference.aspose.com/words/net/aspose.words/document/accept/)

**DocumentVisitor** осигурява изпълнението по подразбиране за всички **DocumentVisitor.VisitXXX** методи. Това улеснява създаването на нови посетители на документи, тъй като само методите, необходими за конкретен посетител, трябва да бъдат отменени. Не е необходимо да отменяте всички методи на посещение.

Следният пример показва как да използвате модела на Посетителя, за да добавите нови операции към Aspose.Words Модел на обекти. В този случай създаваме прост документен конвертор в текстов формат:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-document-visitor.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "convert-doc-to-txt.cs" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Как да извлечете само текст

Начините за извличане на текст от документа са:

- Използване [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/) с [SaveFormat.Text](https://reference.aspose.com/words/net/aspose.words/saveformat/) за запис като обикновен текст във файл или поток
- Използване [Node.ToString](https://reference.aspose.com/words/net/aspose.words/node/tostring/) и преминаване на **SaveFormat.Text** параметър. Вътрешно, това призовава за запис като текст в поток памет и връща получения низ
- Използване [Node.GetText](https://reference.aspose.com/words/net/aspose.words/node/gettext/) за извличане на текст с всички Microsoft Word контролни знаци, включително кодове на полетата
- Да се въведе обичай [DocumentVisitor](https://reference.aspose.com/words/net/aspose.words/documentvisitor/) за извършване на персонализирана екстракция

### Използване `Node.GetText` както и `Node.ToString`

A Word документ може да съдържа контролни знаци, които определят специални елементи като поле, край на клетка, край на раздел и т.н. Пълният списък на възможните Word контрол символи се определя в **ControlChar** Клас. На **Node.GetText** метод връща текст с всички знаци контролен символ присъства в възела.

Обаждане **ToString** връща простото текстово представяне на документа само без контролни знаци. За допълнителна информация относно износа като обикновен текст вж. следния раздел **"Използване на SaveFormat.Text"**.

Следният код пример показва разликата между призоваване на **GetText** както и **ToString** методи на възел:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "simple-extract-text.cs" >}}

### Използване `SaveFormat.Text`

Този пример запазва документа, както следва:

- Filters out field characters and field codes, форма, бележка под линия, endnote and comment references
- Заменя края на параграфа **ControlChar.Cr** знаци с **ControlChar.CrLf** комбинации
- Използва UTF8 кодиране

Следният пример за код показва как да се запази документ във формат TXT:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "docx-to-txt.cs" >}}

## Извличане на изображения от формите

Може да се наложи да извлечете изображения от документи, за да изпълните някои задачи. Aspose.Words ви позволява да направите това, както добре.

Следният пример за код показва как да извлечете изображения от документ:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-images.cs" >}}