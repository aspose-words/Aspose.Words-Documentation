---
title: Използване `DocumentBuilder` Промяна на документ
second_title: Aspose.Words вместо Java
articleTitle: Използване `DocumentBuilder` Промяна на документ
linktitle: Използване `DocumentBuilder` Промяна на документ
type: docs
description: "Използвайте строителя на документи, за да промените документа лесно в Java."
weight: 20
url: /bg/java/using-documentbuilder-to-modify-a-document/
timestamp: 2024-10-21-11-17-44
---

## Определяне на форматиране

### Форматиране на шрифта

Текущото форматиране на шрифта е представено от a `Font` обект върнат от `DocumentBuilder.Font` собственост. На `Font` Класът съдържа голямо разнообразие от свойства на шрифта, възможни в Microsoft Word.

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
|  :-  |
Следният пример с код показва как да зададете форматиране на шрифта.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### Форматиране на клетка

Форматирането на клетките се използва при изграждането на таблица. Тя е представена от `CellFormat` обект върнат от `DocumentBuilder.CellFormat` собственост. CellFormat капсулира различни свойства таблица клетки като ширина или вертикално подравняване.

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
|  :-  |
Следният пример за код показва как да се създаде таблица, която съдържа единична форматирана клетка.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### Форматиране на ред

Форматирането на текущия ред се определя от a `RowFormat` обект, който се връща от `DocumentBuilder.RowFormat` собственост. Обектът капсулира информация за всички форматиране таблица ред.

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
|  :-  |
Да.low code пример показва как да се създаде таблица, която съдържа една клетка и прилагане на ред форматиране.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### Форматиране на списъка

Aspose.Words позволява лесното създаване на списъци чрез прилагане на форматиране на списъка. DocumentBuilder осигурява `DocumentBuilder.ListFormat` собственост, която връща a `ListFormat` Възразявам. Този обект има няколко метода за стартиране и приключване на списък и за увеличаване / намаляване на тирето.

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
|  :-  |
Има два общи вида списъци в Microsoft WordКуршум и номериран.

- За да направиш списък с куршуми, се обади. [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault).
- За да започнете номериран списък, обадете се [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault).

Куршумът или броят и форматирането се добавят към настоящия параграф и всички допълнителни параграфи, създадени с помощта на **DocumentBuilder** до [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) е призован да спре форматирането на списъка с куршуми.

В документите на Word списъците могат да се състоят от до девет нива. Форматиране на списък за всяко ниво определя какъв куршум или номер се използва, ляво тире, пространство между куршума и текста и т.н.

- За да се увеличи нивото на списъка на настоящия параграф с едно ниво, се обадете [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent).
- За да намалите нивото на списъка на настоящия параграф с едно ниво, се обадете [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent).

Методите променят нивото на списъка и прилагат форматиращите свойства на новото ниво.

{{% alert color="primary" %}}

Можете също така да използвате [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) собственост, която да получи или определи нивото на списъка за параграфа. Нивата на списъка са номерирани от 0 до 8.

{{% /alert %}}

Следният пример за код показва как да се изгради многостепенен списък.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### Настройки на страница и форматиране на раздел

Настройката на страницата и свойствата на раздел са капсулирани в `PageSetup` обект, който се връща от `DocumentBuilder.PageSetup` собственост. Обектът съдържа всички атрибути за настройка на страницата на раздел (ляв марж, долна граница, размер на хартията и т.н.) като свойства.

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
|  :-  |
Следният пример за код показва как да зададете такива свойства като размер на страница и ориентация за текущата секция.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### Прилагане на стил

Някои форматиращи обекти като шрифт или § Format поддръжка стилове. Един вграден или определен от потребителя стил е представен от `Style` обект, който съдържа съответните стилови свойства като име, базов стил, шрифт и параграф форматиране на стила, и така нататък.

Освен това, **Style** обект осигурява [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) имот, който връща локален независим идентификатор на стила, представен от a **Style.StyleIdentifier** стойност на изброяването. Въпросът е, че имената на вградените стилове в Microsoft Word са локализирани за различни езици. С помощта на идентификатор на стил, можете да намерите правилния стил, независимо от езика на документа. Стойностите на изброяване съответстват на Microsoft Word вградени стилове като Normal , Заглавие 1 , Заглавие 2 и т.н. Всички потребителски стилове са възложени **StyleIdentifier. Стойност на потребителя**.

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
|  :-  |
Следният пример за код показва как се прилага стил на параграф.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### Граници и сянка

Границите са представени от BorderCollectation. Това е колекция от гранични обекти, които са достъпни по индекс или по граничен тип. Типът граница е представен от `BorderType` Изброяване. Някои стойности на изброяването са приложими за няколко или само един документен елемент. Например, `BorderType.Bottom` се прилага за параграф или таблица, докато `BorderType.DiagonalDown` определя диагоналната граница само в таблица.

Както събирането на границите, така и всяка отделна граница имат сходни атрибути като цвят, стил на линия, ширина на линията, разстояние от текста, и опционална сянка. Те са представени от свойства на едно и също име. Можете да постигнете различни типове граници чрез комбиниране на стойността на имотите. В допълнение, и двете **BorderCollection** както и **Border** обекти ви позволяват да рестартирате тези стойности по подразбиране чрез повикване на [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) метод. Имайте предвид, че когато граничните свойства се рестартират до стойности по подразбиране, границата е невидима.

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
|  :-  |
На [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) класът съдържа сенчести атрибути за елементи на документ. Можете да зададете желаната сенчеста текстура и цветовете, които се прилагат на фона и преден план на елемента.

Сенчестата текстура е поставена с [TextureIndex](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) стойност на изброяване, която позволява прилагането на различни модели към **Shading** Възразявам. Например, за да зададете фонов цвят за елемент на документ, използвайте [TextureIndex.TextureSolid](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) стойност и настройте цвета на сянката на преден план според случая.

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
|  :-  |
Примерът по-долу показва как да се прилагат граници и сенки към параграф.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### Прилепване към мрежата

Aspose.Words осигурява две свойства `ParagraphFormat.SnapToGrid` както и `Font.SnapToGrid` да получите и да зададете параграф собственост щракване към мрежата

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### Преместване на курсора

### Определяне на текущата позиция на курсора

Можете да получите там, където курсора на строителя е разположен в момента по всяко време. На [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) имот връща възела, който в момента е избран в този строител. Възелът е пряко дете на параграф. Всички операции за вмъкване, които извършвате, като използвате `DocumentBuilder` ще се вмъкне преди `DocumentBuilder.CurrentNode`. Когато настоящият параграф е празен или курсорът е разположен точно преди края на параграфа, `DocumentBuilder.CurrentNode` Връща се нула.

Също така, можете да използвате [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) собственост, която получава параграфа, който в момента е избран в това **DocumentBuilder**. Да.low code пример показва как да получите достъп до текущия възел в документостроител.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### Преместване в който и да е възел (Параграфи и техните деца)

Ако имате документ обект възел, който е параграф или пряко дете на параграф, можете да посочите курсора на строителя към този възел. Използвайте [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) метод за извършване на това.
Следният пример за код показва как да преместите курсора в определен възел.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### Преместване в началото/край на документа

Ако трябва да преминете към началото на документа, обадете се [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart). Ако трябва да преминете към края на документа, обадете се [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Преместване в секция

Ако работите с документ, който съдържа множество раздели, можете да преминете в желания раздел, като използвате [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int). Този метод премества курсора в началото на определен раздел и приема индекса на необходимия раздел. Когато секторният индекс е по-голям или равен на 0, той определя индекс от началото на документа, като 0 е първият раздел. Когато секторният индекс е по-малък от 0, той посочва индекс от края на документа с -1 е последният раздел. Да.low code пример показва как да преместите курсора в определения раздел. Можете да изтеглите шаблонния файл на този пример от [Ето](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### Преместване в заглавна част/футър

Когато трябва да поставите някои данни в заглавна част или стъпало, трябва да се преместите там първо с помощта на [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int). Методът приема стойност за изброяване HeaderFooterType, която идентифицира вида на заглавната част или стъпалото до мястото, където курсора трябва да се премести.

Ако искате да създадете заглавни части и подметки, които са различни за първата страница, трябва да зададете [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) собственост на **true**. Ако искате да създадете заглавни части и подметки, които са различни за четни и странни страници, трябва да зададете [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) до **true**.

Ако искаш да се върнеш към главната история, използвай[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) да се изнесат от заглавната част или стъпалото. По-долу пример създава заглавни части и подметки в документ, използвайки DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Преместване в даден абзац

Използване[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) да премести курсора в желания параграф в настоящия раздел. Трябва да преминете два параметъра към този метод: точка Index (индексът на параграфа, към който да се придвижите) и символаIndex (индекса на символа вътре в параграфа).

Навигацията се извършва в текущата история на текущата секция. Това означава, че ако преместите курсора в основната заглавна част на първата част, тогава параграфIndex определя индекса на параграфа в тази заглавна част на тази секция.

Когато параграфIndex е по-голям или равен на 0, той определя индекс от началото на раздела, като 0 е първият параграф. Когато параграф Index е по-малък от 0, той посочва индекс от края на раздела с -1 е последният параграф. Индексът на символите в момента може да бъде посочен само като 0 за преминаване към началото на параграфа или -1 за преминаване към края на параграфа. Следният пример за код показва как да се премести позицията на курсора към посочения параграф. Можете да изтеглите шаблонния файл на този пример от [Ето](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### Преместване в клетка на масата

Използване [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) ако трябва да преместите курсора в клетка на масата в текущата секция. Този метод приема четири параметъра:

- таблицаIndex - индексът на таблицата, към която да се преместите.
- rowIndex - индексът на реда в таблицата.
- колона Index - индексът на колоната в таблицата.
- характерIndex - индексът на героя вътре в клетката.

Навигацията се извършва в текущата история на текущата секция.

За индексните параметри, когато индексът е по-голям или равен на 0, той определя индекс от началото, като 0 е първият елемент. Когато индексът е по-малък от 0, той определя индекс от края с -1 е последният елемент.

Също така, имайте предвид, че характерIndex в момента може да посочи само 0 да се премести в началото на клетката или -1 да се премести в края на клетката. Следният пример за код показва как да преместите позицията на курсора в определената таблица. Можете да изтеглите шаблонния файл на този пример от [Ето](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Преместване към отметки

Отметките често се използват за отбелязване на определени места в документа, където трябва да се поставят нови елементи. За да преминете към отметките, използвайте [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String). Този метод има две претоварвания. Най-простият не приема нищо друго освен името на отметките, където курсора трябва да се премести. Следният пример за код показва как да преместите курсора в отметки.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

Това претоварване премества курсора на позиция непосредствено след началото на отметките с определено име. Още едно претоварване. [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) премества курсора към отметки с по-голяма прецизност. Той приема два допълнителни булеански параметъра:

- isStart определя дали да премести курсора в началото или в края на отметките.
- isAfter определя дали да премести курсора, за да бъде след старта на отметките или крайната позиция, или да премести курсора, за да бъде преди отметките старт или крайна позиция.

Следният пример за код показва как да преместите курсора позиция в точно след отметките.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

Вмъкването на нов текст по този начин не заменя съществуващия текст на отметките. Имайте предвид, че някои отметки в документа са предназначени да образуват полета. Преместване към такава отметки и вмъкване на текст там вмъква текста във формата поле код. Въпреки че това няма да обезвреди полето на формата, въведеният текст няма да бъде видим, защото става част от кода на полето.

### Преместване в `Merge` Поле

Понякога може да се наложи да извършите "ръчно" Mail Merge приложение `DocumentBuilder` или попълнете сливане поле по специален начин вътре в Mail Merge Наставник на събития. Тогава... [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) Може да е полезно. Методът приема името на полето за сливане. Премества курсора на позиция точно зад определено сливащо се поле и премахва сливащото се поле. Следният пример с код показва как да преместите курсора на позиция точно след определено сливащо се поле.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## Как да конвертирате между измервателните единици

Повечето от обектите свойства, предвидени в Aspose.Words API които представляват някои измервания (ширина/височина, маржове и различни разстояния) приемат стойности в точки (1 инч равно на 72 точки). Понякога това не е удобно, така че има `ConvertUtil` клас, който осигурява помощни функции за преобразуване между различни измервателни единици. Позволява преобразуване на инча към точки, сочи към инча, пиксели към точки и сочи към пиксели. Когато пикселите се преобразуват в точки и обратно, то може да се извърши при 96 dpi (дот на инч) резолюции или при посочената резолюция dpi.

**ConvertUtil** е много полезно при задаване на различни свойства страница, тъй като например инча са по-обичайни измервателни единици, отколкото точки. Следващият пример показва как да се създаде страница свойства в инча.

Следният пример за код показва как да се определят свойствата на страницата в инча.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
