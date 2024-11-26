---
title: Работа с параграфи в C++
second_title: Aspose.Words за C++
articleTitle: Работа с параграфи
linktitle: Работа с параграфи
description: "Параграф манипулация възел практики, използващи C++."
type: docs
weight: 210
url: /bg/cpp/working-with-paragraphs/
timestamp: 2024-01-30-16-22-34
---

Абзац е набор от знаци, комбинирани в логически блок и завършващи със специален знак – а *paragraph break*. В Aspose.Words един абзац е представен от класа [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/).

## Вмъкване на абзац

За да вмъкнете нов абзац в документа, всъщност трябва да вмъкнете знак за прекъсване на абзац в него. [DocumentBuilder.Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/) вмъква не само текстов низ в документа, но също така добавя нов абзац.

Текущото форматиране на шрифта също се определя от свойството [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/), а текущото форматиране на абзаца се определя от свойството [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_paragraphformat/). В следващия раздел ще разгледаме по-подробно форматирането на абзаците.

Следващият пример за код показва как да вмъкнете абзац в документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Форматиране На Абзац

Текущото форматиране на абзац е представено от обект **ParagraphFormat**, който се връща от свойството **ParagraphFormat**. Този обект капсулира различни свойства за форматиране на абзац, Налични в Microsoft Word. Можете лесно да нулирате форматирането на абзаца по подразбиране до нормален стил, подравнен отляво без отстъп, без разредка, без граници и без засенчване, като извикате [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/clearformatting/).

Следващият пример за код показва как да зададете форматиране на абзац:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

## Прилагане На Стил На Абзац

Някои форматиращи обекти като шрифт или ParagraphFormat стилове на поддръжка. Един вграден или дефиниран от потребителя стил е представен от `Style` обект, който съдържа съответните свойства на стила, като име, основен стил, шрифт и форматиране на абзаци на стила и т.н.

Освен това обектът **Style** предоставя свойството [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words/style/get_styleidentifier/), което връща идентификатор на стил, независим от локала, представен от стойността на Изброяване **StyleIdentifier**. Въпросът е, че имената на вградените стилове в Microsoft Word са локализирани за различни езици. С помощта на идентификатор на стил можете да намерите правилния стил, независимо от езика на документа. Стойностите на изброяване съответстват на Microsoft Word вградени стилове като *Normal*, *Heading 1*, *Heading 2* и т.н. Всички дефинирани от потребителя стилове са присвоени **StyleIdentifier.User** стойност.

Следващият пример за код показва как да приложите стил на абзац:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

## Вмъкване на разделител на стилове, за да поставите различни стилове на абзаци

Разделителят за стил може да бъде добавен в края на абзац, като се използва клавишната комбинация MS Word. Тази функция позволява два различни стила на абзаца, използвани в един логически отпечатан абзац. Ако искате част от текста от началото на определено заглавие да се показва в съдържание, но не искате цялото заглавие в съдържанието, можете да използвате тази функция.

Следващият пример за код показва как да вмъкнете разделител за стил, за да настаните различни стилове на абзаци:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Идентифициране На Разделител За Стил На Абзац

` `Aspose.Words осигурява публична собственост [BreakIsStyleSeparator](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_breakisstyleseparator/) в `Paragraph` клас позволява идентифицирането на разделител на стил, както е показано в примера, даден по-долу.:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cpp" >}}

## Прилагане на граници и оцветяване към абзац

Границите в Aspose.Words са представени от клас [BorderCollection](https://reference.aspose.com/words/cpp/aspose.words/bordercollection/) - това е колекция от [Border](https://reference.aspose.com/words/cpp/aspose.words/border/) обекти, които са достъпни по Индекс или по тип на границата. Типът на границата е представен чрез изброяването `BorderType`. Някои стойности от изброяването са приложими за няколко или само за един елемент на документа. Например **BorderType.Bottom** е приложим за абзац или клетка от таблица, докато **BorderType.DiagonalDown** задава диагоналната граница само в клетка от таблица.

Както колекцията от граници, така и всяка отделна граница имат сходни атрибути като цвят, стил на линията, ширина на линията, разстояние от текста и незадължителна сянка. Те са представени от свойства със същото име. Можете да постигнете различни типове граници, като комбинирате стойностите на свойствата. Освен това обектите **BorderCollection** и **Border** ви позволяват да нулирате тези стойности по подразбиране, като извикате метода [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/border/clearformatting/).

{{% alert color="primary" %}}

Обърнете внимание, че когато свойствата на границата се нулират до стойностите им по подразбиране, границата става невидима.

{{% /alert %}}

Aspose.Words също има клас [Shading](https://reference.aspose.com/words/cpp/aspose.words/shading/) съдържа атрибути за засенчване на елементите на документа. Можете да зададете желаната текстура за засенчване и цветовете, които се прилагат към фона и предния план на елемента.

Текстурата на засенчване е зададена със стойност [TextureIndex](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) изброяване, която позволява прилагането на различни модели към **Shading** обект. Например за да зададете цвят на фона за елемент на документа, използвайте стойността [TextureIndex.TextureSolid](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) и задайте цвета на оцветяване на преден план, както е подходящо.

Следният пример за код показва как да приложите граници и оцветяване към абзац:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}
