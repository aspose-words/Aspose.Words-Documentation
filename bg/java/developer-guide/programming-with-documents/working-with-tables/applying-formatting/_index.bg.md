---
title: Форматиране на таблица в Java
second_title: Aspose.Words вместо Java
articleTitle: Прилагане на форматиране на таблица
linktitle: Прилагане на форматиране на таблица
description: "Форматиране на таблицата в детайли. Използване Java форматиране на всяка част от таблицата."
type: docs
weight: 70
url: /bg/java/applying-formatting/
timestamp: 2024-01-27-14-07-04
---

Всеки елемент от таблицата може да бъде приложен с различен форматиращ формат. Например форматирането на таблицата ще се прилага към цялата таблица, форматиране на реда само за определени редове, форматиране на клетки само за определени клетки.

Aspose.Words осигурява богат API да изтеглите и приложите форматиране към таблица. Можеш да използваш [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), както и [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) Възел за форматиране.

В тази статия ще обсъдим как да използваме форматиране на различни възли на таблицата и какви настройки за форматиране на таблицата Aspose.Words Подпори.

## Прилагане на форматиране към различни възли

В този раздел ще разгледаме прилагането на форматиране на различни възли на масата.

### Форматиране на нивото на таблица

За да приложите форматиране към таблица, можете да използвате наличните свойства върху съответната **Table** Възел с помощта на [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/), както и [TableCollection](https://reference.aspose.com/words/java/com.aspose.words/tablecollection/) Класове.

{{% alert color="primary" %}}

Имайте предвид, че таблицата трябва да има поне един ред, преди да могат да се прилагат свойствата на таблицата. Това означава, че при изграждане на маса с [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), това форматиране трябва да бъде направено след първото повикване [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell()), или след като първият ред се добави към таблицата, или когато възлите се поставят директно в DOM.

{{% /alert %}}

Снимките по-долу показват представяне на **Table** форматиране на функции в Microsoft Word и съответните им свойства в Aspose.Words.

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-1.png)

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-2.png)

Следният пример за код показва как да се приложи контурна граница към таблица:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-outline-border.java" >}}

Следният пример за код показва как да се изгради таблица с всички възможни граници (мрежа):

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "build-table-with-borders.java" >}}

### Форматиране на нивото на реда

Форматирането на ред ** може да се контролира с помощта на [Row](https://reference.aspose.com/words/java/com.aspose.words/row/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), както и [RowCollection](https://reference.aspose.com/words/java/com.aspose.words/rowcollection/) Класове.

{{% alert color="primary" %}}

Забележете, че a **Row** може да бъде само детски възел на **Table**. В същото време трябва да има поне един. **Cell** в **Row** така че форматирането може да се приложи към него.

{{% /alert %}}

Снимките по-долу показват представяне на **Row** форматиране на функции в Microsoft Word и съответните им свойства в Aspose.Words.

![apply-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-3.png)

Следният пример с код показва как да се промени форматирането на таблица:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-row-formatting.java" >}}

### Форматиране на ниво на клетка

Форматирането на ниво клетки се контролира от [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/), [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/), както и [CellCollection](https://reference.aspose.com/words/java/com.aspose.words/cellcollection/) Класове.

{{% alert color="primary" %}}

Забележете, че a **Cell** може да бъде само детски възел на **Row**. В същото време трябва да има поне един. [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) в **Cell** така че форматирането може да се приложи към него.

В допълнение към **Paragraph**, Можете също така да поставите **Table** в **Cell**.

{{% /alert %}}

Снимките по-долу показват представяне на **Cell** форматиране на функции в Microsoft Word и съответните им свойства в Aspose.Words.

![apply-formatting-to-cell-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-4.png)

![apply-auto-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-5.png)

Следният пример за код показва как да се промени форматирането на таблица:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-cell-formatting.java" >}}

Следният пример за код показва как да зададете количеството пространство (в точки), за да добавите към лявото/горе/отдясно/отдолу на съдържанието на клетката:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "cell-padding.java" >}}

## Посочване на височините на реда

Най-простият начин да зададете височината на реда е да използвате **DocumentBuilder**. Използване на подходящата **RowFormat** свойства, можете да зададете настройка по подразбиране височина или да приложите различна височина за всеки ред в таблицата.

В Aspose.Words, височината на редовете в таблицата се контролира от:

- височината на греблото [Height](https://reference.aspose.com/words/java/com.aspose.words/row/format#Height)
- правилото за височината на имота за даден ред [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/row/format#HeightRule)

В същото време, различна височина може да се настрои за всеки ред, което ви позволява да контролирате широко настройките на таблицата.

{{% alert color="primary" %}}

Избор на правила за определяне височината на даден обект може да бъде зададен с помощта на [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/heightrule/) полета.

{{% /alert %}}

Следният пример за код показва как да се създаде таблица, която съдържа една клетка и да се приложи форматиране на ред:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-row-formatting.java" >}}

## Посочете ширината на таблицата и клетките

Таблица в Microsoft Word документът предоставя няколко различни начина за преоразмеряване на таблицата и отделните клетки. Тези свойства позволяват значителен контрол върху външния вид и поведението на масата, така че Aspose.Words поддържа поведението на масите, като Microsoft Word.

Важно е да се знае, че елементите на таблицата представят няколко различни свойства, които могат да повлияят на това как се изчислява широчината на общата таблица, както и отделните клетки:

- Предпочитана ширина на масата
- Предпочитана ширина на отделните клетки
- Позволява автоматизация на масата

Тази статия описва как различните свойства ширина на таблицата работят и как да получите пълен контрол над таблицата ширина изчисление. Това е
особено полезно е да се знае в такива случаи, когато оформлението на таблицата не изглежда според очакванията.

{{% alert color="primary" %}}

В повечето случаи предпочитаната клетка се препоръчва в сравнение с широчината на таблицата. Предпочитаната широчина на клетката е повече в съответствие със спецификацията на формат DOX, както и Aspose.Words Модел.

Ширината на клетката всъщност е изчислена стойност за формат DOX. Истинската ширина на клетката може да зависи от много неща. Например промяната на маржовете на страниците или предпочитаната ширина на таблицата може да повлияе на действителната широчина на клетката.

Предпочитаната широчина на клетката е свойство на клетката, което се съхранява в документа. Тя не зависи от нищо и не се променя, когато промените таблицата или други свойства на клетката.

{{% /alert %}}

{{% alert color="primary" %}}

Всички свойства и методи, описани в тази статия са свързани с това как таблиците работят в Microsoft Word. Така че в повечето случаи, ако сте изграждане на вашата маса programmatically, но са трудно да се създаде желаната таблица, вместо това можете да опитате визуално да го създадете в Microsoft Word първо и след това просто копирайте форматиращите стойности във вашето приложение.

{{% /alert %}}

### Как да използвате Предпочитаната ширина

Желаната ширина на таблица или отделни клетки се определя чрез предпочитаното свойство за широчина, което е размерът, който даден елемент се стреми да побере. Това означава, че предпочитаната широчина може да бъде посочена за цялата таблица или за отделните клетки. В някои ситуации може да не е възможно да се побере тази ширина точно, но действителната ширина ще бъде близо до тази стойност в повечето случаи.

Подходящият предпочитан тип и стойност на ширината се определят посредством методите на [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/) клас:

- на [Auto](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#AUTO) поле за уточняване на авто или горно предпочитана ширина
- на [FromPercent](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPercent-double) метод за определяне на ширината на процентите
- на [FromPoints](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPoints-double) метод за определяне на широчината в точки

Снимките по-долу показват представяне на * предпочитаните характеристики на ширината* в Microsoft Word и съответните им свойства в Aspose.Words.

![formatting-table-properties-aspose-words-java](/words/java/applying-formatting/applying-formatting-8.png)

Пример за това как тези опции се прилагат към реална таблица в документ може да се види на снимката по-долу.

![table-applied-options-java](/words/java/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

Преди да можете да използвате предпочитаната ширина в таблица, трябва да гарантирате, че таблицата съдържа поне един ред. Това е така, защото такава таблица форматиране в Microsoft Word документ или в документ, създаден в Aspose.Words се съхранява в редовете на таблицата.

{{% /alert %}}

#### Посочете предпочитаната таблица или широчина на клетката

В Aspose.Words, Таблицата и широчината на клетките са определени, като се използва [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) собственост и [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) имот, с опции, налични в [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) Изброяване:

- **Auto**, която е еквивалентна на непредпочитана широчина
- **Percent**, който съответства на елемента спрямо наличното пространство в прозореца или размера на контейнера и преизчислява стойността, когато наличната ширина се променя
- **Points**, която съответства на елемент от посочената широчина в точки

{{% alert color="primary" %}}

По подразбиране една таблица може да бъде описана като монтирана на 100% от наличното пространство на страницата. В този случай, това означава, че масата ще се опита да заеме пространството между левите и десните страници.

{{% /alert %}}

Използване на [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) имотът ще коригира предпочитаната си ширина спрямо неговия контейнер: страница, текстова колона или външна таблица, ако тя е гнездо.

Следният пример за код показва как да зададете таблицата автоматично да се поберат до 50% от ширината на страницата:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-page-width.java" >}}

Използване на [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) Имотът върху дадена клетка ще коригира предпочитаната ширина.

Следният пример за код показва как да зададете различните предпочитани настройки на ширината:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "preferred-width-settings.java" >}}

#### Намерете Предпочитан тип ширина и стойност

Можеш да използваш [Type](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getType) както и [Value](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getValue) свойства, за да намерите предпочитаната ширина детайли на желаната таблица или клетка.

Следният пример за код показва как да се извлече предпочитаният тип широчина на таблица:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "retrieve-preferred-width-type.java" >}}

### Как да зададете автоматично

На [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) Имотът позволява клетките в таблицата да растат и свиват според избрания критерий. Например, можете да използвате **Автоматично свързване към прозорец** опция за монтиране на таблицата към широчината на страницата, както и **Автоматично свързване към съдържанието** възможност да се позволи на всяка клетка да расте или да се свива според съдържанието си.

{{% alert color="primary" %}}

Освен това, **AllowAutoFit** свойството може да се използва заедно с предпочитана широчина на клетката, за да се форматира клетка, която автоматично отговаря на съдържанието му, но също така има първоначална ширина. Ако е необходимо, широчината на клетката може да премине през тази ширина.

{{% /alert %}}

По подразбиране, Aspose.Words вмъква нова таблица, като използва **Автоматично свързване към прозорец**. Таблицата ще бъде обозначена според ширината на страницата. За промяна на масата, можете да се обадите на [AutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#autoFit-int) метод. Този метод приема [AutoFitBehavior](https://reference.aspose.com/words/java/com.aspose.words/autofitbehavior/) изброяване, в което се посочва какъв тип автофит се прилага към таблицата.

Важно е да знаете, че автофитът метод всъщност е пряк път, който прилага различни свойства към таблицата в същото време. Това са свойства, които всъщност дават на таблицата наблюдаваното поведение. Ще обсъдим тези имоти за всяка опция за автоматизация.

Следният пример за код показва как да се постави таблица за свиване или отглеждане на всяка клетка според съдържанието ѝ:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-auto-fit.java" >}}

Ще използваме следната таблица, за да приложим различните настройки за автоматично монтиране като демонстрация.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-1.png" alt="apply-different-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

#### Автофит таблица до прозорец

Когато автоматичното монтиране към прозорец се прилага към таблица, зад кулисите се извършват следните операции:

1. На **Table.AllowAutoFit** свойството е активирано за автоматично преоразмеряване на колоните, за да се побере на наличното съдържание, като се използва **Table.PreferredWidth** стойност от 100%
2. **CellFormat.PreferredWidth** се отстранява от всички клетки на таблицата
      {{% alert color="primary" %}}
   Имайте предвид, че това е малко по-различно от Microsoft Word поведение, при което предпочитаната ширина на всяка клетка е определена на подходящи стойности въз основа на сегашния им размер и съдържание. Aspose.Words не актуализира предпочитаната ширина, така че те просто се изчистват вместо това.
      {{% /alert %}}
3. Ширините на колоните са преброени за текущото съдържание на таблицата. Крайният резултат е таблица, която заема цялата налична ширина
4. Ширината на колоните в таблицата се променя автоматично, когато потребителят редактира текста

Следният пример за код показва как да автоматизирате таблица на ширината на страницата:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-page-width.java" >}}

Пример за това как тези опции се прилагат към горната таблица може да се види на снимката по-долу.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-2.png" alt="autofit-table-aspose-words-java" style="width:500px"/>

#### AutoFit Таблица за съдържание

Когато масата е автоматизирана, съдържанието се извършва зад кулисите:

1. На **Table.AllowAutoFit** може автоматично да преоразмери всяка клетка според съдържанието й

2. Предпочитаната широчина на таблицата се отстранява от **Table.PreferredWidth**, **CellFormat.PreferredWidth** се отстранява за всяка таблица
      {{% alert color="primary" %}}

   Имайте предвид, че тази опция автоматично премахва предпочитаната ширина от клетките, точно като в Microsoft Word. Ако искате да запазите размера на колоната и увеличаване или намаляване на колоните, за да се побере съдържанието, трябва да зададете **Table.AllowAutoFit** собственост на **True** самостоятелно, вместо да използва автофит прекия път.{{% /alert %}}

3. weather forecast

Следният пример за код показва как да се пригоди към съдържанието на таблицата:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-contents.java" >}}

Пример за това как тези опции се прилагат към горната таблица може да се види на снимката по-долу.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-3.png" alt="resize-column-autofit-settings-aspose-words-java" style="width:500px"/>

#### Изключване на автофита в таблица и използване на фиксирани колони

Ако вместо това таблица е с деактивиран автофит и се използват фиксирани ширини на колоните, се извършват следните стъпки:

1. **Table.AllowAutoFit** собственост е деактивирана, така че колоните не растат или свиват до тяхното съдържание
2. Предпочитаната широчина на цялата таблица се отстранява от **Table.PreferredWidth**, **CellFormat.PreferredWidth** се отстранява от всички клетки на таблицата
3. Крайният резултат е таблица, чиято ширина на колоната се определя от [CellFormat.Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) собственост, и чиито колони не са автоматично преоразмерени, когато потребителят влезе текст или когато страницата е преоразмерена

{{% alert color="primary" %}}

Имайте предвид, че ако не е посочена широчина за **CellFormat.Width**, се използва стойността по подразбиране на един инч (72 точки).

{{% /alert %}}

Следният пример за код показва как да се деактивира автофитът и да се даде възможност за фиксирана ширина за посочената таблица:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-fixed-column-widths.java" >}}

Пример за това как тези опции се прилагат към горната таблица може да се види на снимката по-долу.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-4.png" alt="disable-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

### Ред на точност при изчисляване на широчината на клетките

Aspose.Words позволява на потребителите да определят ширината на таблица или клетка чрез множество обекти, включително [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) го [Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) Имотът е предимно оставен от предишни версии, обаче, той все още е полезен за опростяване на определянето на ширината на клетката.

Важно е да знаете, че **CellFormat.Width** имот работи различно в зависимост от това коя от другите свойства ширина вече съществуват в таблицата.

Aspose.Words използва следния ред за изчисляване на широчината на клетките:

|  Ред |  Имоти |  Описание |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) се определя |  Ако **AutoFit** е включена:<br/>- масата може да се разрастне покрай предпочитаната ширина, за да се настанят в съдържанието.<br/>- промяна в **CellFormat.Width** стойност се игнорира и клетката ще се побере в съдържанието си вместо |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) със стойност **Points** или **Percent** |  **CellFormat.Width** е игнориран |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) със стойност **Auto** |  Стойността от **CellFormat.Width** се копира и става предпочитаната ширина на клетката (в точки) |

{{% alert color="primary" %}}

Всички промени в собствеността на широчината не се актуализират в предпочитаната ширина и вместо това трябва да се прилагат спрямо предпочитаната широчина.

{{% /alert %}}

{{% alert color="primary" %}}

При създаването на фиксирана подредба на таблицата, посочете ширината на клетката. Клетка без ширина не може да бъде записана във формат DOC. Формати на документи, различни от DOC, като например DOCX, позволяват по принцип да се съхранят клетки без широчина в фиксиран макет на таблицата.

{{% /alert %}}

## Разрешаване на разделяне между клетките

Можете да получите или да зададете допълнително пространство между клетките на таблицата, подобно на опцията "Продавай разстоянието" в Microsoft Word. Това може да се направи с помощта на [AllowCellSpacing](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowCellSpacing) собственост.

Пример за това как тези опции се прилагат към реална таблица в документ може да се види на снимката по-долу.

<img src="/words/java/applying-formatting/applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-java" style="width:500px"/>

Следният пример за код показва как да се определи разстоянието между клетките:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-cell-spacing.java" >}}

## Прилагане на граници и оформяне

Границите и засенчването могат да се прилагат към цялата таблица, като се използва [Table.SetBorder](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorder-int-int-double-java.awt.Color-boolean), [Table.SetBorders](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorders-int-double-java.awt.Color) както и [Table.SetShading](https://reference.aspose.com/words/java/com.aspose.words/table/#setShading-int-java.awt.Color-java.awt.Color), или само до специфични клетки, използващи [CellFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getBorders) както и [CellFormat.Shading](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getShading). Освен това могат да се настроят греди [RowFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getBorders), Но по този начин не може да се приложи сянка.

Снимките по-долу показват границите и настройките на сянката в Microsoft Word и съответните им свойства в Aspose.Words.

![apply-borders-shading-aspose-words-java-1](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-6.png)


![apply-borders-shading-aspose-words-java-2](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-7.png)


Следният пример за код показва как да се форматира таблица и клетка с различни граници и сенки:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "format-table-and-cell-with-different-borders.java" >}}
