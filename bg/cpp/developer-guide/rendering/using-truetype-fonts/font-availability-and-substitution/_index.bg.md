---
title: MFont наличност и заместване в C++
second_title: Aspose.Words за C++
articleTitle: Наличност и заместване на шрифта
linktitle: Наличност и заместване на шрифта
description: "Когато точният шрифт за заместване не може да бъде намерен, Aspose.Words трябва да го замени с подобен шрифт вместо това. Тази статия описва процеса на намиране на най-подходящия шрифт."
type: docs
weight: 12
url: /bg/cpp/font-availability-and-substitution/
timestamp: 2024-09-24-14-35-44
---

Текст в документ може да бъде форматиран с различни шрифтове, като например Ариал, времена нов роман, Вердана и други. Когато Aspose.Words рендира документ, той се опитва да избере шрифтовете, които са посочени в документа.

Има обаче ситуации, когато точният шрифт не може да бъде намерен и Aspose.Words трябва да го замени с подобен шрифт. Aspose.Words избира шрифта според следния процес:

1. Aspose.Words опитва се да намери шрифт сред наличните източници на шрифтове с точно име на шрифта.
1. Aspose.Words опитва се да намери необходимия шрифт сред шрифтовете, вградени в оригиналния документ. Някои формати на документи, като DOCX, могат да съдържат вградени шрифтове.
1. Ако Aspose.Words не може да намери необходимия шрифт с точно съвпадение на името и свойството [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/), определено за този шрифт, тогава Aspose.Words ще намери шрифта, дефиниран с **AltName** от класа [FontInfo](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_info), който определя информацията за шрифта.
1. Ако Aspose.Words не може да намери дефинирания шрифт и **AltName** не е дефиниран, тогава правилата за заместване на шрифта се прилагат един по един, както е описано по-долу (когато се намери подходяща замяна, процесът на заместване на шрифта спира и следващата стъпка не се изпълнява):
   1. Aspose.Words ще се опита да Приложи OS настройки на шрифта, ако са налични, като използва помощната програма `FontConfig`. Тази функция не - Windows трябва да се използва с FontConfig-съвместим OS. Почти всеки Юникс-базиран OS вече има `FontConfig` библиотека, която е предназначена да осигури конфигурация на шрифта в цялата система, персонализиране и достъп до приложения. В противен случай тази библиотека може лесно да бъде инсталирана от потребителя.<br>
      Aspose.Words знае как да прави заявки за данни и да интерпретира FontConfig резултати за свои собствени цели. По подразбиране помощната програма `FontConfig` е забранена. Можете да го активирате, както следва:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontConfigSubstitution()->set_Enabled(true);
      {{< /highlight >}}
   1. Следващата стъпка е прост, но невероятно мощен механизъм, наречен [TableSubstitutionRule](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.table_substitution_rule). По подразбиране тази функция е активна и достъпна за всеки OS. Aspose.Words използва XML таблици, които определят основните правила за заместване за различни OS. Съгласно правилото за заместване на таблицата ще се използва списъкът с имената на заместващите шрифтове.<br>
**XML**
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - шрифт за заместване, SubstituteFonts - списък на вариантите за заместване, разделени със запетая. Първият наличен шрифт се използва за замяна.<br>
      Основната характеристика на това правило е възможността да заредите свои собствени таблици за заместване, както е показано в следващия пример:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Load(u"Table.xml");
      {{< /highlight >}}
      Можете да вземете като основа съществуващата таблица от буркана или да я запишете програмно по следния начин:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Save(u"MyTable.xml");
      {{< /highlight >}}
      Въпреки гъвкавостта на този механизъм, има някои случаи, когато е по-добре да го деактивирате, както е показано по-долу.:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->set_Enabled(false);
      {{< /highlight >}}
   1. **FontInfo** правилото за заместване ще се прилага, ако правилото за заместване на таблицата не може да намери шрифта. Този механизъм е активиран по подразбиране. Aspose.Words намира най-подходящия шрифт според информацията за шрифта, съдържаща се в определен документ. Тази информация може да бъде получена от класа **FontInfo**, както е показано по-долу.:<br>
**C++**
      {{< highlight cpp >}}
      System::SharedPtr<FontInfoCollection> fontInfos = doc->get_FontInfos();
      {{< /highlight >}}
      Потребителите не могат да се намесват в работния поток на тази функция, освен ако не решат да я деактивират в случай на незадоволителни резултати.:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontInfoSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      Ако **FontInfo** не е наличен за липсващия шрифт, процесът спира.
   1. **DefaultFont** правилото за заместване ще се прилага в случаите, когато `FontInfo` заместването също е неуспешно. Това правило също е разрешено по подразбиране. Съгласно това правило Aspose.Words ще се опита да използва шрифта по подразбиране, посочен в свойството [DefaultFontName](https://reference.aspose.com/words/cpp/aspose.words.fonts/defaultfontsubstitutionrule/get_defaultfontname/). Ако потребителят не е избрал свой собствен шрифт по подразбиране, тогава "пъти нов роман" ще се използва като шрифт по подразбиране. Това правило може да бъде деактивирано, както е показано по-долу:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      За да проверите текущия шрифт по подразбиране, използвайте:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->get_DefaultFontName();
      {{< /highlight >}}
      За да настроите своя собствена опция за замяна, приложете:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_DefaultFontName(u"Arial");
      {{< /highlight >}}
1. Ако Aspose.Words не може да извърши заместването на шрифта, той се опитва да получи първия наличен шрифт от наличните източници на шрифтове.
1. И накрая, ако Aspose.Words не може да намери никакви шрифтове сред наличните източници на шрифтове, той прави документа с помощта на свободния шрифт, който е вграден в Aspose.Words събрание.

{{% alert color="primary" %}}

Ако **FontInfo** е наличен, *FontInfo substitution rule* винаги ще разреши шрифта и ще замени правилото за шрифта по подразбиране. Ако искате да използвате правилото за шрифт по подразбиране, трябва да забраните *FontInfo substitution rule*. Обърнете внимание, че *FontConfig substitution rule* ще разреши шрифта в повечето случаи и по този начин замества всички други правила.

{{% /alert %}}


