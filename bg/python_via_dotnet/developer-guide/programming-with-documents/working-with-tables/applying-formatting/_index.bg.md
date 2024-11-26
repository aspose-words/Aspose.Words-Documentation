---
title: Форматиране на таблицата в Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Прилагане на форматиране
linktitle: Прилагане на форматиране
description: "Форматиране на таблица в детайли, като се използва Python. Използване Python форматиране на всяка част от таблицата."
type: docs
weight: 70
url: /bg/python-net/applying-formatting/
timestamp: 2024-01-27-14-07-04
---

Всеки елемент от таблицата може да бъде приложен с различен формат. Например форматирането на таблицата ще се прилага към цялата таблица, форматиране на реда само за определени редове, форматиране на клетки само за определени клетки.

Aspose.Words осигурява богат API за извличане и прилагане форматиране на таблица. Можете да използвате [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/), както и [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/) Възел за форматиране.

В тази статия ще говорим за това как да се прилага форматиране на различни възли на таблицата и какви настройки за форматиране на таблицата Aspose.Words Подкрепления.

## Прилагане на форматиране към различни възли

В този раздел ще разгледаме прилагането на форматиране на различни възли на таблицата.

### Форматиране на нивото на таблица

За да приложите форматиране към таблица, можете да използвате наличните свойства на съответната **Table** Възел с използване на [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/), както и [TableCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/tablecollection/) Класове.

{{% alert color="primary" %}}

Имайте предвид, че таблицата трябва да има поне един ред, преди да могат да се прилагат свойствата на таблицата. Това означава, че при изграждане на маса с [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), това форматиране трябва да бъде направено след първото повикване [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/#default), или след като първият ред бъде добавен в таблицата или когато възлите се поставят директно в DOM.

{{% /alert %}}

Снимките по-долу показват представяне на **Table** форматиране на функции в Microsoft Word и съответните им свойства в Aspose.Words.

![formattin-features-table-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-1.png)




![formatting-table-options-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-2.png)

Следният пример за код показва как да се приложи контурна граница към таблица:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "apply-outline-border.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Следният пример за код показва как да се изгради таблица с всички възможни граници (мрежа):

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "build-table-with-borders.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Форматиране на нивото на реда

**Редово ниво** форматирането може да се контролира с помощта на [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/), [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/row/row_format/), както и [RowCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/rowcollection/) Класове.

{{% alert color="primary" %}}

Забележете, че a **Row** може да бъде само детски възел на **Table**. В същото време трябва да има поне един. **Cell** в **Row** така че форматирането може да се приложи към него.

{{% /alert %}}

Снимките по-долу показват представяне на **Row** форматиране на функции в Microsoft Word и съответните им свойства в Aspose.Words.

![formatting-row-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-3.png)


Следният пример с код показва как да се промени форматирането на реда в таблицата:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "modify-row-formatting.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Форматиране на ниво на клетка

Форматирането на ниво клетки се контролира от [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/cell_format/), както и [CellCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/cellcollection/) Класове.

{{% alert color="primary" %}}

Забележете, че a **Cell** може да бъде само детски възел на **Row**. В същото време трябва да има поне един. [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) в **Cell** така че форматирането може да се приложи към него.

В допълнение към **Paragraph**, Можете също така да поставите **Table** в **Cell**.

{{% /alert %}}

Снимките по-долу показват представяне на **Cell** форматиране на функции в Microsoft Word и съответните им свойства в Aspose.Words.

![formatting-cell-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-4.png)




![auto-formatting-cell-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-5.png)


Следният пример за код показва как да се промени форматирането на таблица:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "modify-cell-formatting.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Следният пример за код показва как да се определи количеството пространство (в точки), за да се добави към лявото/горе/дясно/долу на съдържанието на клетката:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "cell-padding.py" >}}

## Посочва се височината на реда

Най-простият начин да зададете височината на реда е да използвате **DocumentBuilder**. Използване на подходящия **RowFormat** свойства, можете да зададете настройка по подразбиране височина или да приложите различна височина за всеки ред в таблицата.

В Aspose.Words, височината на реда в таблицата се контролира от:

- височината на греблото [Height](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/height/)
- правилото за височината на имота за даден ред [HeightRule](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/height_rule/)

В същото време, различна височина може да бъде зададена за всеки ред ... това ви позволява да контролирате широко настройките на таблицата.

{{% alert color="primary" %}}

Възможности за определяне височината на даден обект могат да бъдат зададени с помощта на [HeightRule](https://reference.aspose.com/words/python-net/aspose.words/heightrule/) Изброяване.

{{% /alert %}}

Следният пример за код показва как да се създаде таблица, която съдържа една клетка и да се приложи форматиране на ред:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "apply-row-formatting.py" >}}

## Посочване на таблицата и широчината на клетките

Таблица в Microsoft Word документът предоставя няколко различни начина за преоразмеряване на таблицата и отделните клетки. Тези свойства позволяват значителен контрол върху външния вид и поведението на масата, така че Aspose.Words поддържа поведението на масите, като Microsoft Word.

Важно е да се знае, че елементите на таблицата представят няколко различни свойства, които могат да повлияят на това как се изчислява широчината на общата таблица, както и отделните клетки:

- Предпочитана ширина на масата
- Предпочитана ширина на отделните клетки
- Позволява автоматизация на масата

Тази статия описва как различните свойства за изчисляване ширина на таблицата работят и как да получите пълен контрол над таблицата ширина изчисление. Това е
особено полезно да се знае в такива случаи, когато оформлението на таблицата не изглежда както се очаква.

{{% alert color="primary" %}}

В повечето случаи предпочитаната клетка се препоръчва в сравнение с широчината на таблицата. Предпочитаната широчина на клетката е повече в съответствие със спецификацията на формат DOX, както и Aspose.Words Модел.

Ширината на клетката всъщност е изчислена стойност за формат DOX. Истинската ширина на клетката може да зависи от много неща. Например промяната на маржовете на страниците или предпочитаната ширина на таблицата може да повлияе на действителната широчина на клетката.

Предпочитаната широчина на клетката е свойство на клетката, което се съхранява в документа. Тя не зависи от нищо и не се променя, когато промените таблицата или други свойства на клетката.

{{% /alert %}}

{{% alert color="primary" %}}

Всички свойства и методи, описани в тази статия са свързани с това как таблиците работят в Microsoft Word. Така че в повечето случаи, ако сте изграждане на вашата маса programmatically, но го намират за трудно да се създаде желаната таблица, вместо това можете да опитате визуално да го създадете в Microsoft Word първо и след това просто копирайте форматиращите стойности във вашата програма.

{{% /alert %}}

### Как да използвате Предпочитаната ширина

Желаната ширина на таблица или отделни клетки се определя чрез предпочитаното свойство за широчина, което е размерът, който елементът се стреми да побере. Това означава, че предпочитаната широчина може да бъде посочена за цялата таблица или за отделните клетки. В някои ситуации може да не е възможно да се побере точно тази ширина, но действителната ширина ще бъде близо до тази стойност в повечето случаи.

Подходящият предпочитан тип и стойност на ширината се определят чрез методите на [PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/) клас:

- на [Auto](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) метод за определяне на авто или горно предпочитана ширина
- на [FromPercent](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) метод за определяне на ширината на процента
- на [FromPoints](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) метод за определяне на широчината в точки

Снимките по-долу показват представяне на * предпочитаните характеристики на ширината* в Microsoft Word и съответните им свойства в Aspose.Words.

![formatting-table-properties-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-8.png)

Пример за това как тези опции се прилагат към реална таблица в документ може да се види на снимката по-долу.

![tables-applying-options-python](/words/python-net/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

Преди да можете да използвате предпочитаната ширина в таблица, трябва да гарантирате, че таблицата съдържа поне един ред. Това е така, защото такава таблица форматиране в Microsoft Word документ или документ, създаден в Aspose.Words се съхранява в редовете на таблицата.

{{% /alert %}}

#### Посочете предпочитаната таблица или широчина на клетката

В Aspose.Words, Таблицата и широчината на клетките са определени с помощта на [Table.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/table/preferred_width/) собственост и [CellFormat.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/preferred_width/) имот, с опции, налични в [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) Изброяване:

- **Auto**, която е еквивалентна на непредпочитана широчина
- **Percent**, който съответства на елемента спрямо наличното пространство в прозореца или размера на контейнера и преизчислява стойността, когато наличната ширина се променя
- **Points**, което съответства на елемент от посочената широчина в точки

{{% alert color="primary" %}}

По подразбиране една таблица може да бъде описана като монтирана на 100% от наличното пространство на страницата. В този случай, това означава, че таблицата ще се опита да заеме пространството между левите и десните страници.

{{% /alert %}}

Използване на [Table.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/table/preferred_width/) Имотът ще коригира предпочитаната си ширина спрямо своя контейнер: страница, текстова колона или външна таблица, ако е гнездена маса.

Следният пример за код показва как да се постави таблицата автоматично да се поберат до 50% от ширината на страницата:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-page-width.py" >}}

Използване на [CellFormat.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/preferred_width/) Имотът върху дадена клетка ще коригира предпочитаната ширина.

Следният пример за код показва как да зададете различните предпочитани настройки на ширината:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "preferred-width-settings.py" >}}

#### Търсене Предпочитан тип ширина и стойност

Можеш да използваш [Type](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/type/) както и [Value](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/value/) свойства, за да намерите предпочитаната ширина детайли на желаната таблица или клетка.

Следният пример с код показва как да се извлече предпочитаният тип широчина на таблица:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "retrieve-preferred-width-type.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Как да зададете автоматично

На [AllowAutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_auto_fit/) Имотът позволява клетките в таблица да растат и свиват според избрания критерий. Например, можете да използвате **Автоматично свързване към прозорец** опция да се поберат таблицата на ширината на страницата, и **Автоматично свързване към съдържанието** възможност да се позволи на всяка клетка да расте или да се свива според съдържанието си.

{{% alert color="primary" %}}

Освен това, **AllowAutoFit** Имотът може да се използва заедно с предпочитана широчина на клетката за форматиране на клетка, която автоматично се вписва в нейното съдържание, но също така има първоначална широчина. Ако е необходимо, широчината на клетката може да премине през тази широчина.

{{% /alert %}}

По подразбиране, Aspose.Words вмъква нова таблица, като използва **Автоматично свързване към прозорец**. Таблицата ще бъде обозначена според широчината на страницата. За да преоразмерите масата, можете да се обадите на [AutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/auto_fit/#autofitbehavior) метод. Този метод приема [AutoFitBehavior](https://reference.aspose.com/words/python-net/aspose.words.tables/autofitbehavior/) изброяване, което посочва какъв тип автофит се прилага към таблицата.

Важно е да знаете, че автофитът метод всъщност е пряк път, който прилага различни свойства към таблицата в същото време. Това са свойства, които всъщност дават на таблицата наблюдаваното поведение. Ще обсъдим тези имоти за всяка опция за автоматизация.

Следният пример за код показва как да се постави таблица за свиване или отглеждане на всяка клетка в зависимост от съдържанието ѝ:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "allow-auto-fit.py" >}}

#### Автофит таблица до прозорец

Когато автоматичното монтиране към прозорец се прилага към таблица, зад кулисите се извършват следните операции:

1. На **Table.AllowAutoFit** Имотът е активиран за автоматично преоразмеряване на колоните, за да се побере съдържанието, като се използва **Table.PreferredWidth** стойност от 100%
2. **CellFormat.PreferredWidth** се отстранява от всички клетки на таблицата
      {{% alert color="primary" %}}
   Имайте предвид, че това е малко по-различно от Microsoft Word поведение, когато предпочитаната ширина на всяка клетка е определена на подходящи стойности въз основа на техния текущ размер и съдържание. Aspose.Words не актуализира предпочитаната ширина, така че те просто се изчистват вместо това.
      {{% /alert %}}
3. Ширините на колоните са преброени за текущото съдържание на таблицата
4. Ширината на колоните в таблицата се променя автоматично, когато потребителят редактира текста

Следният пример за код показва как да автоматизирате таблица на ширината на страницата:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-page-width.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### Автофит таблица към съдържанието

Когато масата е автоматизирана, следните стъпки се извършват зад кулисите:

1. На **Table.AllowAutoFit** свойството е активирано автоматично за преоразмеряване на всяка клетка според нейното съдържание

2. Предпочитаната широчина на таблицата се премахва от **Table.PreferredWidth**, **CellFormat.PreferredWidth** се отстранява за всяка таблица
      {{% alert color="primary" %}}

   Имайте предвид, че тази опция автоматично премахва предпочитаната ширина от клетките, точно както в Microsoft Word. Ако искате да запазите размера на колоната и да увеличите или намалите колоните, за да се побере съдържанието, трябва да зададете **Table.AllowAutoFit** собственост на **True** самостоятелно, вместо да използва автофит пряк път.{{% /alert %}}

3. Ширините на колоните са преброени за текущото съдържание на таблицата

Следният пример за код показва как да се пригоди към съдържанието на таблицата:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-contents.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### Изключване на автофит в таблица и използване на фиксирани колони

Ако вместо това таблица е с деактивиран автофит и се използват фиксирани ширини на колоните, се извършват следните стъпки:

1. **Table.AllowAutoFit** Имотът е деактивиран, така че колоните не растат или не се свиват до тяхното съдържание
2. Предпочитаната широчина на цялата таблица се отстранява от **Table.PreferredWidth**, **CellFormat.PreferredWidth** се отстранява от всички клетки на таблицата
3. Крайният резултат е таблица, чиято ширина на колоната се определя от [CellFormat.Width](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/width/) собственост, и чиито колони не са автоматично преоразмерени, когато потребителят влиза текст или когато страницата е преоразмерена

{{% alert color="primary" %}}

Имайте предвид, че ако не е посочена широчина за **CellFormat.Width**, се използва стойността по подразбиране на един инч (72 точки).

{{% /alert %}}

Следният пример за код показва как да се деактивира автофитът и да се даде възможност за фиксирана ширина за посочената таблица:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-fixed-column-widths.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Редът на точност при изчисляване на широчината на клетките

Aspose.Words позволява на потребителите да определят ширината на таблица или клетка чрез множество обекти, включително [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/) го [Width](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/width/q) Имотът е предимно оставен от предишни версии, но все пак е полезен за опростяване на настройката на широчината на клетката.

Важно е да се знае, че **CellFormat.Width** Имотът работи различно в зависимост от това кои от другите свойства на ширината вече съществуват в таблицата.

Aspose.Words използва следния ред за изчисляване на широчината на клетките:

|  Ред |  Имоти |  Описание |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_auto_fit/) се определя |  Ако **AutoFit** е включена:<br/>- таблицата може да се разрастне покрай предпочитаната ширина, за да се настанява съдържанието, обикновено не се свива под предпочитаната ширина<br/>- промяна в **CellFormat.Width** стойност се игнорира и клетката ще се побере в съдържанието си вместо |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) със стойност **Points** или **Percent** |  **CellFormat.Width** е игнориран |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) със стойност **Auto** |  Стойността от **CellFormat.Width** е копиран и става предпочитаната ширина на клетката (в точки) |

{{% alert color="primary" %}}

Всички промени в собствеността на ширината не се актуализират по предпочитаната широчина и вместо това трябва да се прилагат спрямо предпочитаната широчина.

{{% /alert %}}

{{% alert color="primary" %}}

При създаването на фиксирана подредба на таблицата, посочете ширината на клетката. Клетка без ширина не може да бъде записана във формат DOC. Формати на документи, различни от DOC, като например DOCX, позволяват по принцип да се съхранят клетки без широчина в фиксиран макет на таблицата.

{{% /alert %}}

## Разрешаване на разделяне между клетките

Можете да получите или да зададете допълнително пространство между клетките на таблицата, подобно на опцията "Продавай разстоянието" в Microsoft Word. Това може да се направи с помощта на [AllowCellSpacing](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_cell_spacing/) собственост.

Пример за това как тези опции се прилагат към реална таблица в документ може да се види на снимката по-долу.

<img src="/words/python-net/applying-formatting/applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-python" style="width:500px"/>

Следният пример за код показва как да се определи разстоянието между клетките:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "allow-cell-spacing.py" >}}

## Прилагане на граници и оформяне

Граници и сенки могат да се прилагат към цялата таблица, като се използва [Table.SetBorder](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_border/), [Table.SetBorders](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_borders/) както и [Table.SetShading](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_shading/), или само за специфични клетки, използващи [CellFormat.Borders](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/borders/) както и [CellFormat.Shading](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/shading/). Освен това могат да се настроят греди [RowFormat.Borders](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/borders/), Но по този начин не може да се приложи сянка.

Снимките по-долу показват границите и настройките на сянката в Microsoft Word и съответните им свойства в Aspose.Words.

![formatting-border-line-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-6.png)

![formatting-cell-color-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-7.png)

Следният пример за код показва как да се форматира таблица и клетка с различни граници и сенки:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "format-table-and-cell-with-different-borders.py" >}}
