---
title: Работа със стилове и теми в C#
second_title: Aspose.Words вместо .NET
articleTitle: Работа със стилове и теми
linktitle: Работа със стилове и теми
description: "Разширено Microsoft Word форматиране на функции, работа със стилове и теми, използващи C#."
type: docs
weight: 110
url: /bg/net/working-with-styles-and-themes/
timestamp: 2024-10-24-11-44-28
---

На [StyleCollection](https://reference.aspose.com/words/net/aspose.words/stylecollection/) класът се използва за управление на вградени и прилагане на потребителски настройки в стилове.

## Достъп до стилове

Можете да получите колекция от стилове определени в документа с помощта на [Document.Styles](https://reference.aspose.com/words/net/aspose.words/documentbase/styles/) собственост. Тази колекция съдържа както вградени, така и потребителски стилове в документ. Може да се получи определен стил с името/името, идентификатора на стила или индекса. Следният пример за код показва как да получите достъп до колекцията от стилове, определени в документа.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-AccessStyles-AccessStyles.cs" >}}

## Как да извлечете съдържание въз основа на стилове

На просто ниво, извличането на съдържанието въз основа на стилове от документ на Word може да бъде полезно за идентифициране, изброяване и преброяване на абзаци и редове на текст, форматирани със специфичен стил. Например, може да се наложи да се идентифицират определени видове съдържание в документа, като например примери, заглавия, препратки, ключови думи, фигури имена, и казуси изследвания.

За да направите това няколко стъпки по-нататък, това може да се използва и за използване на структурата на документа, дефиниран от стиловете, които използва, за да пренасочи документа към друг изход, като HTML. Това е всъщност начина, по който се изгражда документацията Aspose, поставяйки Aspose.Words на теста. Инструмент, построен с помощта на Aspose.Words взема документите на източника Word и ги разделя на теми на определени нива на заглавие. Name Aspose.Words която се използва за изграждане на навигационното дърво, което можете да видите вляво. И тогава... Aspose.Words превръща всяка тема в HTML.

Решението за извличане на текст, форматиран със специфични стилове в документ на Word, обикновено е икономично и лесно използване Aspose.Words.

### Решението

За да илюстрирам колко лесно Aspose.Words дръжки Retrieving съдържание въз основа на стилове, нека да разгледаме един пример. В този пример ние ще изтеглим текст, обозначен с определен стил на параграфа и стил на характера от примерен документ на Word. На високо ниво това ще включва:# Отваряне на Word документ с помощта на [Document](https://reference.aspose.com/words/net/aspose.words/document/) Клас. Получаване на колекции от всички параграфи и всички работи в документа.# Избор само на необходимите точки и работи. По-точно, ние ще набавим текст, на който се нареждат с настоящето 1. .. ..

![working-with-styles-and-themes-aspose-words-net](/words/net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


В този примерен документ, текстът, на който се нарежда стилът на нареждане на 1 и т.н., е в стила на "Инсерт" (Insert) и "Quick Styles" (Quick Styles) и "Theme" (Theme) и текстът, обозначен с "Интензивен акцент" стилът на характера е няколко случая на синьо, италицизирано, смел текст, като например галерии (galleries) и "overall person."

### Код

Изпълнението на един стил-базиран заявка е доста проста в Aspose.Words документ обект модел, тъй като тя просто използва инструменти, които вече са в сила. За това решение се прилагат два метода от клас: **ParagraphsByStyleName** - Да. Този метод извлича масив от тези параграфи в документа, който има специфично име на стила. **RunsByStyleName** - Да. Този метод извлича масив от тези работи в документа, който има специфично име стил. И двата метода са много сходни, единствените разлики са типовете възли и представянето на информацията за стила в рамките на параграфа и се движат възли. Ето и прилагането на параграфи ByStyleName: По-долу пример намерите всички параграфи, форматирани с посочения стил.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cs" >}}

{{% alert color="primary" %}}

Това изпълнение също използва `Document.GetChildNodes` метод на `Document` клас, който връща колекция от всички възли с посочения тип, който в този случай във всички параграфи.

Имайте предвид, че вторият параметър на **Document.GetChildNodes** метод е настроен на true. Това принуждава **Document.GetChildNodes** метод да изберете от всички детски възли рекурсивно, вместо да избирате само непосредствените деца.

{{% /alert %}}

Също така си струва да се отбележи, че събирането на точки не създава непосредствени режийни разходи, тъй като параграфи са натоварени в тази колекция само когато имате достъп до елементи в тях. След това, всичко, което трябва да направите, е да преминете през колекцията, използвайки стандарта за всеки оператор и да добавите точки, които имат посочения стил към параграфите Със Стийл Рейд. На `Paragraph` име на стила можете да намерите в [Style.Name](https://reference.aspose.com/words/net/aspose.words/style/name/) собственост на [Paragraph.ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraph/paragraphformat/) Възразявам. Изпълнението на RunsByStyleName е почти същото, въпреки че очевидно използваме [NodeType.Run](https://reference.aspose.com/words/net/aspose.words/nodetype/) за да си върнем възлите. На [Font.Style](https://reference.aspose.com/words/net/aspose.words/font/style/) собственост на a [Run](https://reference.aspose.com/words/net/aspose.words/run/) обект се използва за достъп до информация стил в **Run** Възли. По-долу се намират всички програми, форматирани с посочения стил.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cs" >}}


Когато и двете заявки се изпълняват, всичко, което трябва да направите, е да преминете към обект документ и да уточните имената на стила на съдържанието, което искате да изтеглите: По-долу например стартирайте запитвания и показвайте резултатите. Можете да изтеглите шаблонния файл на този пример от [Тук](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Styles.docx).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cs" >}}

### Крайен резултат

Когато всичко е готово, стартирането на пробата ще покаже следния изход:

![styles-and-themes-aspose-words-net](/words/net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


Както можете да видите, това е много прост пример, който показва номера и текста на събраните точки и работи в образеца Word документ.

## Копиране на всички стилове от шаблона

Има случаи, когато искате да копирате всички стилове от един документ в друг. Можеш да използваш `Document.CopyStylesFromTemplate` метод за копиране на стилове от посочения шаблон в документ. Когато стиловете се копират от шаблон към документ, подобни стилове в документа се променят, за да съответстват на описанието на стила в шаблона. Уникалните стилове от шаблона се копират в документа. Уникалните стилове в документа остават непокътнати. Бъдиlow code пример показва как да копирате стилове от един документ в друг.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cs" >}}

## Как да манипулирате Настройки на темата

Ние добавихме основни API в Aspose.Words достъп до свойствата на темата на документа. За сега, това API включва следните обществени обекти:

- Тема
- ThemeFonts
- ТемаЦвят

Ето как можете да получите тематични свойства:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-GetThemeProperties.cs" >}}

И ето как можете да зададете тема свойства:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-SetThemeProperties.cs" >}}
