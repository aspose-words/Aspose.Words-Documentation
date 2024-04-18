---
title: Работа с точки в Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Работа с абзаци
linktitle: Работа с абзаци
description: "Вмъква се параграф и се посочва форматирането му в документ, като се използва Python."
type: docs
weight: 210
url: /bg/python-net/working-with-paragraphs/
---

А параграф е набор от символи, комбинирани в логически блок и завършващи със специален характер, * параграф почивка*. В Aspose.Words, параграф е представен от [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) Клас.

## Вмъкване на параграф

За да вмъкнете нов параграф в документа, всъщност, трябва да вмъкнете един параграф, който да разбие характера му. [DocumentBuilder.writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/) вмъква и низ от текст в документа, но добавя и прекъсване на параграфа.

Текущото форматиране на шрифта също е посочено от [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) собствеността и форматирането на текущия параграф се определят от [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) собственост.

Следният пример за код показва как да се въведе параграф в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

## Форматен параграф

Форматирането на текущия параграф се представя от a [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) обект, който се връща от [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) собственост. Този обект капсулира различни свойства в параграф форматиране Microsoft Word. Можете лесно да рестартирате параграфа форматиране до по подразбиране в нормален стил, ляв подравнен, без вдлъбнатина, без разстояние, без граници и без сянка чрез призоваване [clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/clear_formatting/).

Следният пример с код показва как да се зададе форматиране на параграфа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ParagraphFormatting.py" >}}

## Прилагане на стил на абзац

Някои форматиращи обекти като [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) или [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) поддържа стилове. Един вграден или потребителски определен стил е представен от [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) обект, който съдържа съответните стилови свойства като име, базов стил, шрифт и параграф форматиране на стила, и така нататък.

Освен това, [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) обект осигурява [Style.style_identifier](https://reference.aspose.com/words/python-net/aspose.words/style/style_identifier/) имот, който връща локален независим идентификатор на стила, представен от a [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/) стойност на изброяването. Въпросът е, че имената на вградените стилове в Microsoft Word са локализирани за различни езици. Използвайки идентификатор на стил, можете да намерите правилния стил, независимо от езика на документа. Стойностите на изброяването съответстват на Microsoft Word вградени стилове като Normal , Заглавие 1 , Заглавие 2 и т.н. Всички потребителски стилове са определени [StyleIdentifier.USER](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#user) стойност

Следният пример за код показва как да се приложи стил на параграфа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyParagraphStyle.py" >}}

## Вмъкване на разделител на стила за поставяне на различни стилове

Към края на параграфа може да бъде добавен разделител на стила, използващ Ctrl + Alt + Въведете клавишен пряк път в MS Word. Тази функция позволява два различни стила на параграфа, използвани в един логически отпечатан абзац. Ако искате някакъв текст от началото на определена функция да се появи в таблица на съдържанието, но не искате цялата функция в Таблицата на съдържанието, можете да използвате тази функция

Следният пример за код показва как да се вмъкне разделител на стила, за да се поберат различни стилове параграф:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-InsertStyleSeparator.py" >}}

## Идентифициране на параграф Разделител на стила

Aspose.Words предоставя обществена собственост [break_is_style_separator](https://reference.aspose.com/words/python-net/aspose.words/paragraph/break_is_style_separator/) в [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) клас позволява идентифициране на Style Separator §, както е показано в примера по-долу:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-GetParagraphStyleSeparator.py" >}}

## Прилагане на граници и оформяне на абзац

Границите са представени от [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/). Това е колекция от [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) обекти, които са достъпни по индекс или по граничен вид. Типът граница е представен от [BorderType](https://reference.aspose.com/words/python-net/aspose.words/bordertype/) Изброяване. Някои стойности на изброяването са приложими за няколко или само един документен елемент. Например, [BorderType.BOTTOM](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#bottom) се прилага за параграф или таблица, докато [BorderType.DIAGONALDOWN](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#diagonaldown) определя диагоналната граница само в таблица.

Както събирането на границите, така и всяка отделна граница имат сходни атрибути като цвят, стил на линия, ширина на линията, разстояние от текст, и опционална сянка. Те са представени от свойства на едно и също име. Можете да постигнете различни типове граници, като комбинирате стойностите на имотите. В допълнение, и двете [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/) както и [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) обекти ви позволяват да рестартирате тези стойности по подразбиране, като се обадите [Border.clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/border/clear_formatting/) метод.

{{% alert color="primary" %}}

Имайте предвид, че когато граничните свойства бъдат рестартирани към техните стойности по подразбиране, границата става невидима.

{{% /alert %}}

Aspose.Words също има [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) класът съдържа сенчести атрибути за документни елементи. Можете да зададете желаната сенчеста текстура и цветовете, които се прилагат на фона и преден план на елемента.

Сенчестата текстура е поставена с [TextureIndex](https://reference.aspose.com/words/python-net/aspose.words/textureindex/) стойност на изброяване, която позволява прилагането на различни модели към [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) Възразявам. Например, за да зададете фонов цвят за елемент на документ, използвайте [TextureIndex.TEXTURE_SOLID](https://reference.aspose.com/words/python-net/aspose.words/textureindex/#texture_solid) стойност и настройте цвета на засенчване на преден план според случая. По-долу примерът показва как да се прилагат граници и да се засенчва параграф.

Следният пример за код показва как да се прилагат граници и да се засенчва параграф:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyBordersAndShadingToParagraph.py" >}}
