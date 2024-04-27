---
title: Извличане на избрано съдържание между възлите в Java
second_title: Aspose.Words вместо Java
articleTitle: Извличане на съдържание между възлите в документ
linktitle: Съдържание на екстракт между възлите
type: docs
description: "Извличане на съдържание на документ в различна употреба Java."
weight: 140
url: /bg/java/extract-selected-content-between-nodes/
---

При работа с документи е важно лесно да се извлече съдържание от определен диапазон в даден документ. Съдържанието обаче може да се състои от сложни елементи като параграфи, таблици, изображения и др.

Независимо от това какво съдържание трябва да бъде извлечено, методът за извличане на това съдържание винаги ще се определя от кои възли се избират, за да се извлече съдържание между. Това могат да бъдат цели текстови тела или прости текстови работи.

Има много възможни ситуации и следователно много различни видове възли да се вземат предвид при извличане на съдържание. Например, може да искате да извлечете съдържание между:

- Два конкретни параграфа
- Специфични редове на текста
- Полета от различни видове, като сливане полета
- Начална и крайна гама от отметки или коментар
- Различни органи на текста, съдържащи се в отделни секции

В някои ситуации може дори да се наложи да комбинирате различни типове възли, като например извличане на съдържание между параграф и поле, или между бягане и отметки.

Тази статия осигурява прилагането на кода за извличане на текст между различни възли, както и примери за общи сценарии.

{{% alert color="primary" %}}

Тези примери са само няколко демонстрации на многото възможности. Планираме функционалността за извличане на текст да бъде част от обществото API в бъдеще и няма да се изисква допълнителен код. Междувременно, не се колебайте да публикувате вашите искания относно тази функционалност на [Aspose.Words форум](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Защо да извличаме съдържание

Често целта на извличането на съдържанието е да се дублира или запази отделно в нов документ. Например, можете да извлечете съдържание и:

- Копирайте го в отделен документ
- Конвертиране на конкретна част от документ в PDF или изображение
- Дублиране на съдържанието в документа много пъти
- Работа с извлечено съдържание отделно от останалата част от документа

Това може лесно да се постигне с помощта Aspose.Words и прилагането на кода по-долу.

## Извличане на съдържание Алгоритъм

Кодът в този раздел адресира всички възможни ситуации, описани по-горе с един общ и повторно използваем метод. Общата схема на тази техника включва:

1. Събиране на възлите, които диктуват областта на съдържание, което ще бъде извлечено от вашия документ. Възстановяването на тези възли се извършва от потребителя в техния код, въз основа на това, което те искат да бъдат извлечени.
1. Преминавайки тези възли към **ExtractContent** метод, предоставен по-долу. Трябва също така да преминете един булев параметър, който посочва дали тези възли, действащи като маркери, трябва да бъдат включени в екстракцията или не.
1. Извличане на списък с клонирано съдържание (копирани възли), за да бъде извлечено. Можете да използвате този списък от възли по всеки приложим начин, например създаване на нов документ, съдържащ само избраното съдържание.

## Как да извлечете съдържание

Ще работим с документа по-долу в тази статия. Както виждате, съдържа разнообразие от съдържание. Също така имайте предвид, че документът съдържа втори раздел, започващ в средата на първата страница. В документа също има отметки и коментари, но не са видими на снимката на екрана по-долу.

![extract-content-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-1.png)

За да извлечете съдържанието от вашия документ, трябва да се обадите на `ExtractContent` метод по-долу и да премине съответните параметри.

Основната основа на този метод включва намирането на възли на ниво блок (точки и таблици) и клонирането им, за да се създадат идентични копия. Ако получените маркиращи възли са блоково ниво, тогава методът може просто да копира съдържанието на това ниво и да го добави към масива.

Въпреки това, ако маркерните възли са в линия (дете на параграф), тогава ситуацията става по-сложна, тъй като е необходимо да се раздели параграфа на вътрешния възел, било то тичане, отметки и т.н. Съдържанието в клонираните изходни възли, които не присъстват между маркерите, се премахва. Този процес се използва, за да се гарантира, че вътрешните възли ще запазят формата на параграфа майка.

Методът също така ще извършва проверки на възлите, преминали като параметри и хвърля изключение, ако или възелът е невалиден. Параметрите, които трябва да бъдат предадени на този метод, са:

1. **StartNode** както и **EndNode**. Първите два параметъра са възлите, които определят къде да започне извличането на съдържанието и съответно да приключи. Тези възли могат да бъдат и двата блока ниво ([Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) , [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) ) или вътрешно ниво (напр. [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) , [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) , [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) и т.н.:
   1. За да преминете полето, трябва да преминете съответния **FieldStart** Възразявам.
   1. За да преминете отметките, **BookmarkStart** както и [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) Възелът трябва да бъде приет.
   1. За да получите коментари, [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) както и [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) Трябва да се използват възли.
1. **IsInclusive**. Определя дали маркерите са включени в екстракцията или не. Ако е зададена тази опция false и същият възел или последователни възли са преминали, след това празен списък ще бъде върнат:

      1. Ако **FieldStart** Възелът се приема след това тази опция определя дали цялото поле трябва да бъде включено или изключено.
      1. Ако **BookmarkStart** или **BookmarkEnd** Възелът се приема, тази опция определя дали отметките са включени или само съдържанието между отметките.
      1. Ако **CommentRangeStart** или **CommentRangeEnd** Възелът се приема, тази опция определя дали коментарът сам по себе си трябва да бъде включен или само съдържанието в обхвата на коментара.

Изпълнение на **ExtractContent** метод можете да намерите [Ето](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Programming_with_documents/Contents_management/ExtractContentHelper.java). Този метод ще бъде посочен в сценариите в тази статия.

Ние също така ще определим потребителски метод за лесно генериране на документ от извлечени възли. Този метод се използва в много от сценариите по-долу и просто създава нов документ и внася извлеченото съдържание в него.

Следният пример за код показва как да се вземе списък с възли и ги вмъква в нов документ:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "generate-document.java" >}}

## Съдържание на извлечение между параграфи

Това показва как да се използва горният метод за извличане на съдържание между конкретни параграфи. В този случай искаме да извлечем тялото на писмото, намерено в първата половина на документа. Можем да кажем, че това е между 7 и 11-ти параграф.

Кодът по-долу изпълнява тази задача. Съответните параграфи се извличат с помощта на [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) метод на документа и преминаване на посочените индекси. След това предаваме тези възли на **ExtractContent** метод и се посочва, че те трябва да бъдат включени в екстракцията. Този метод ще върне копираното съдържание между тези възли, които след това се добавят в нов документ.

Следният пример за код показва как да се извлече съдържанието между конкретни параграфи, като се използва `ExtractContent` метод по- горе:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraphs.java" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Изходният документ съдържа двете извлечени параграфи.

![extract-content-result-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-2.png)

## Извличане на съдържание между различните видове възли

Можем да извлечем съдържание между всяка комбинация от блоково ниво или вътрешни възли. В този сценарий по-долу ще извлечем съдържанието между първия параграф и таблицата във втория раздел, включително. Получаваме маркерите като викаме [getFirstParagraph](https://reference.aspose.com/words/java/com.aspose.words/body/#getFirstParagraph) както и [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) метод на втория раздел на документа за извличане на съответния **Paragraph** както и **Table** Възли. За малко изменение нека да се дублира съдържанието и да го постави под оригинала.

Следният пример за код показва как да се извлече съдържанието между параграф и таблица, като се използва **ExtractContent** метод:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-block-level-nodes.java" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Съдържанието между параграфа и таблицата е дублирано по-долу е резултатът.

![extract-content-between-paragraphs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-3.png)

## Съдържание на извлечение между параграфи Въз основа на стил

Може да се наложи да извлечете съдържанието между параграфи от един и същ или различен стил, като например между параграфи, маркирани със стилове на заглавие.

Кодът по-долу показва как да се постигне това. Това е един прост пример, който ще извлече съдържанието между първата инстанция на нареждането на 1 .. и ... .. За да направим това, зададохме последния параметър на false, което посочва, че не следва да се включват възлите на маркера.

В правилното изпълнение, това трябва да бъде в цикъл за извличане на съдържание между всички параграфи от тези стилове от документа. Извлеченото съдържание се копира в нов документ.

Следният пример за код показва как да се извлече съдържание между параграфи със специфични стилове използване на **ExtractContent** метод:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraph-styles.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "paragraphs-by-style-name.java" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

По-долу е резултатът от предишната операция.

![extract-content-between-paragraph-style-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-4.png)

## Извличане на съдържание между специфични работи

Можете да извлечете съдържание между inline възли като **Run** Както добре. **Runs** от различни параграфи могат да се приемат като маркери. Кодът по-долу показва как да се извлече специфичен текст между едно и също **Paragraph** Възел.

Следният пример за код показва как да се извлече съдържание между специфични работи на същия параграф, като се използва **ExtractContent** метод:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-runs.java" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Извлеченият текст се показва на конзолата

![extract-content-between-runs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-5.png)

## Съдържание на екстракт чрез поле

За да използвате поле като маркер, `FieldStart` Възелът трябва да бъде приет. Последният параметър `ExtractContent` метод ще определи дали цялото поле трябва да бъде включено или не. Позволявам да се извлече съдържанието между полето на FullName и параграф в документа. Ние използваме [moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField(java.lang.String)) метод на [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) Клас. Това ще върне **FieldStart** Възел от името на сливащото се поле е преминал към него.

В нашия случай нека да зададете последния параметър премина към **ExtractContent** метод на false да се изключи полето от екстракцията. Ще предадем извлеченото съдържание на PDF.

Следният пример за код показва как да се извлече съдържание между конкретно поле и параграф в документа, като се използва **ExtractContent** метод:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-field.java" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Извличаното съдържание между полето и параграфа, без полето и параграфа за маркиране, предоставени на PDF.

![extract-content-using-field-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-6.png)

## Извличане на съдържание от отметки

В документ съдържанието, което се определя в рамките на отметките, се капсулира от `BookmarkStart` и "Отметки край възли." Съдържанието, намерено между тези два възела, прави отметките. Можете да преминете всеки един от тези възли като всеки маркер, дори и тези от различни отметки, стига стартовият маркер да се появи преди крайния маркер в документа.

В нашия примерен документ, ние имаме една отметки, наименувана от Bookmark1. Съдържанието на тази отметки е подчертано съдържание в нашия документ:

![extract-content-from-bookmark-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-7.png)

Ще извлечем това съдържание в нов документ с помощта на кода по-долу. На **IsInclusive** параметърът показва как да се запази или изхвърли отметките.

Следният пример с код показва как да се извлече съдържанието, посочено в отметките, използвайки **ExtractContent** метод:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-bookmark.java" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Извлечената продукция с `IsInclusive` параметър, зададен към true. Копието ще запази и отметките.

![extract-content-from-bookmark-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-8.png)

Извлечената продукция с **IsInclusive** параметър, зададен към false. Копието съдържа съдържанието, но без отметките.

![extract-content-from-bookmark-aspose-words-java-3](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-9.png)

## Извличане на съдържание от коментар

Коментар е направен от коментарRangeStart, CommentRangeEnd и Коментар възли. Всички тези възли са на линия. Първите два възела капсулират съдържанието в документа, което се споменава в коментара, както се вижда на снимката на екрана по-долу.

На **Comment** Самото възел е [InlineStory](https://reference.aspose.com/words/java/com.aspose.words/inlinestory/) които могат да съдържат параграфи и да тичат. Той представлява съобщението на коментара, както се вижда като коментар балон в панела за преглед. Тъй като този възел е в линия и потомък на тяло можете също така да извлечете съдържанието от вътре в това съобщение, както добре.

В нашия документ имаме един коментар. Позволявам да го покажете чрез показване на надценката в раздела Преглед:

![extract-content-from-comment-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-10.png)

Коментарът обхваща заглавието, първия параграф и таблицата във втория раздел. Позволявам да извлечете този коментар в нов документ. На **IsInclusive** опцията диктува дали коментарът се съхранява или отхвърля.

Следният пример за код показва как да направите това е по-долу:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-comment-range.java" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Първо, извлечената продукция с `IsInclusive` параметър, зададен към true. Копието ще съдържа и коментара.

![extract-content-from-comment-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-11.png)

Второ, екстрахираната продукция с **ен** задаване на false. Копието съдържа съдържанието, но без коментара.

![extract-content-from-comment-aspose-words-java-12](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-12.png)

## Извличане на съдържание с помощта на DocumentVisitor

Aspose.Words може да се използва не само за създаване Microsoft Word документи чрез изграждането им динамично или сливане на шаблони с данни, но също и за анализ на документи, за да се извлекат отделни елементи на документи, като заглавни части, подметки, параграфи, таблици, изображения и др. Друга възможна задача е да намерите всички текст на конкретен форматиране или стил.

Използвайте [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) клас за изпълнение на този сценарий на използване. Този клас съответства на добре познатия дизайнерски модел. С [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/), Можете да определите и изпълните потребителски операции, които изискват изброяване над дървото на документа.

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) осигурява набор от **VisitXXX** методи, които се използват, когато се среща определен документен елемент (нод). Например, [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) се нарича, когато се намери началото на текстов параграф и [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) се нарича, когато се намери краят на текстов параграф. Всеки **DocumentVisitor.VisitXXX** метод приема съответния обект, който той среща, така че можете да го използвате, когато е необходимо (да кажем извличане на форматиране), напр. и двете [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) както и [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) Прием на [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) Възразявам.

Всеки **DocumentVisitor.VisitXXX** метод връща a **VisitorAction** стойност, която контролира изброяването на възлите. Можете да поискате или да продължите изброяването, да пропуснете текущия възел (но продължете изброяването), или да спрете изброяването на възлите.

Това са стъпките, които трябва да следвате за програмно определяне и извличане на различни части на документ:

- Създаване на клас, получен от [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/).
- Пренареждане и осигуряване на някои или всички **DocumentVisitor.VisitXXX** методи за извършване на някои потребителски операции.
- Обади се. [Node.accept](https://reference.aspose.com/words/java/com.aspose.words/node/#accept-com.aspose.words.DocumentVisitor) на възела от където искате да започнете изброяването. Например, ако искате да изброите целия документ, използвайте [accept(DocumentVisitor)](https://reference.aspose.com/words/java/com.aspose.words/document/#accept-com.aspose.words.DocumentVisitor).

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) осигурява изпълнението по подразбиране за всички **DocumentVisitor.VisitXXX** методи. Това улеснява създаването на нови посетители на документи, тъй като само методите, необходими за конкретен посетител, трябва да бъдат отменени. Не е необходимо да отменяте всички методи на посещение.

Следният пример показва как да използвате модела на Посетител, за да добавите нови операции към Aspose.Words Модел на обекти. В този случай създаваме прост документен конвертор в текстов формат:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-document-visitor.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "convert-doc-to-txt.java" >}}

## Изваждане на текст Само

Начините за извличане на текст от документа са:

- Използване [Document.save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) с [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) за запис като обикновен текст във файл или поток
- Използване [Node.toString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString-com.aspose.words.SaveOptions) и преминаване на `SaveFormat.Text` параметър. Вътрешно, това призовава запис като текст в поток памет и връща получения низ
- Използване [Node.getText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) за извличане на текст с всички Microsoft Word контролни знаци, включително кодове на полетата
- Да се въведе обичай [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) за извършване на персонализирана екстракция

### Използване `Node.GetText` както и `Node.ToString`

A Документът на Word може да съдържа контролни знаци, които определят специални елементи като поле, край на клетката, край на секцията и т.н. Пълният списък на възможните Word контрол символи се определя в **ControlChar** Клас. На [GetText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) метод връща текст с всички знаци контролен символ присъства в възела.

Обаждането на ToString връща простото текстово представяне на документа само без контролни знаци. За допълнителна информация относно износа като обикновен текст вж. **Using SaveFormat.Text**.

Следният код пример показва разликата между призоваване на **GetText** както и [ToString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString) методи на възел:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "simple-extract-text.java" >}}

### Използване `SaveFormat.Text`

Този пример запазва документа, както следва:

- Filters out field characters and field codes, форма, бележка под линия, endnote and comment references
- Заменя края на параграфа [ControlChar.Cr](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) знаци с [ControlChar.CrLf](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) комбинации
- Използва UTF8 кодиране

Следният пример за код показва как да запишете документ във формат TXT:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "docx-to-txt.java" >}}

## Извличане на изображения от формите

Може да се наложи да извлечете изображения на документи, за да изпълните някои задачи. Aspose.Words ви позволява да направите това, както добре.

Следният пример за код показва как да извлечете изображения от документ:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-images.java" >}}