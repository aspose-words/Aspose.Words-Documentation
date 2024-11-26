---
title: MFont Доступность и подстановка в C++
second_title: Aspose.Words для C++
articleTitle: Доступность и замена шрифтов
linktitle: Доступность и замена шрифтов
description: "Если не удается найти точный заменяющий шрифт, Aspose.Words необходимо заменить его на аналогичный шрифт. В этой статье описывается процесс поиска наиболее подходящего шрифта."
type: docs
weight: 12
url: /ru/cpp/font-availability-and-substitution/
timestamp: 2024-09-24-14-35-44
---

Текст в документе может быть отформатирован различными шрифтами, такими как Arial, Times New Roman, Verdana и другими. При отображении документа Aspose.Words выполняется попытка выбрать шрифты, указанные в документе.

Однако бывают ситуации, когда невозможно найти точный шрифт, и Aspose.Words необходимо заменить его на аналогичный шрифт. Aspose.Words выбор шрифта осуществляется в соответствии со следующим процессом:

1. Aspose.Words пытается найти шрифт с точным названием среди доступных источников шрифтов.
1. Aspose.Words пытается найти нужный шрифт среди шрифтов, встроенных в исходный документ. Некоторые форматы документов, такие как DOCX, могут содержать встроенные шрифты.
1. Если Aspose.Words не удается найти требуемый шрифт с точным совпадением названия и свойства [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/), определенного для этого шрифта, то Aspose.Words найдет шрифт, определенный с помощью **AltName** из класса [FontInfo](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_info), который определяет информацию о шрифте.
1. Если Aspose.Words не удается найти определенный шрифт, а **AltName** также не определен, то правила замены шрифта применяются последовательно, как описано ниже (когда соответствующая замена найдена, процесс замены шрифта останавливается и следующий шаг не выполняется).:
   1. Aspose.Words попытается применить настройки шрифта операционной системы, если они доступны, с помощью утилиты `FontConfig`. Эта функция, отличная от Windows, должна использоваться в операционной системе, совместимой с FontConfig. Практически в любой операционной системе на базе Unix уже есть библиотека `FontConfig`, предназначенная для обеспечения общесистемной настройки шрифтов, кастомизации и доступа к приложениям. В противном случае пользователь может легко установить эту библиотеку.<br>
      Aspose.Words умеет запрашивать данные и интерпретировать результаты FontConfig в своих собственных целях. По умолчанию утилита `FontConfig` отключена. Вы можете включить ее следующим образом:<br>
**С++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontConfigSubstitution()->set_Enabled(true);
      {{< /highlight >}}
   1. Следующий шаг - это простой, но невероятно мощный механизм, называемый [TableSubstitutionRule](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.table_substitution_rule). По умолчанию эта функция активна и доступна для любой операционной системы. Aspose.Words использует XML-таблицы, которые определяют основные правила подстановки для разных операционных систем. В соответствии с правилом подстановки в таблицу, будет использоваться список заменяющих названий шрифтов.<br>
**XML-код**
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - шрифт, который необходимо заменить, SubstituteFonts - список вариантов замены, разделенных запятой. Для замены используется первый доступный шрифт.<br>
      Главной особенностью этого правила является возможность загрузки ваших собственных таблиц подстановки, как это показано в следующем примере:<br>
**С++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Load(u"Table.xml");
      {{< /highlight >}}
      Вы можете взять за основу существующую таблицу из jar или сохранить ее программно следующим образом:<br>
**С++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Save(u"MyTable.xml");
      {{< /highlight >}}
      Несмотря на гибкость этого механизма, в некоторых случаях его лучше отключить, как показано ниже:<br>
**С++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->set_Enabled(false);
      {{< /highlight >}}
   1. Правило подстановки **FontInfo** будет применено, если в правиле подстановки в таблицу не удается найти шрифт. Этот механизм включен по умолчанию. Aspose.Words выполняется поиск наиболее подходящего шрифта в соответствии с информацией о шрифте, содержащейся в конкретном документе. Эта информация может быть получена из класса **FontInfo**, как показано ниже:<br>
**С++**
      {{< highlight cpp >}}
      System::SharedPtr<FontInfoCollection> fontInfos = doc->get_FontInfos();
      {{< /highlight >}}
      Пользователи не могут вмешиваться в рабочий процесс этой функции, если только они не решат отключить ее в случае неудовлетворительных результатов:<br>
**С++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontInfoSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      Если **FontInfo** недоступно для отсутствующего шрифта, то процесс останавливается.
   1. правило подстановки **DefaultFont** будет применено в том случае, если подстановка `FontInfo` также завершилась неудачей. Это правило также включено по умолчанию. В соответствии с этим правилом Aspose.Words попытается использовать шрифт по умолчанию, указанный в свойстве [DefaultFontName](https://reference.aspose.com/words/cpp/aspose.words.fonts/defaultfontsubstitutionrule/get_defaultfontname/). Если пользователь не выбрал свой собственный шрифт по умолчанию, то в качестве шрифта по умолчанию будет использоваться "Times New Roman". Это правило можно отключить, как показано ниже:<br>
**С++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      Чтобы проверить текущий шрифт по умолчанию, используйте:<br>
**С++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->get_DefaultFontName();
      {{< /highlight >}}
      Чтобы настроить свой собственный вариант замены, примените:<br>
**С++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_DefaultFontName(u"Arial");
      {{< /highlight >}}
1. Если Aspose.Words не может выполнить замену шрифта, он пытается получить первый доступный шрифт из доступных источников шрифтов.
1. Наконец, если Aspose.Words не удается найти какие-либо шрифты среди доступных источников шрифтов, документ отрисовывается с использованием бесплатного шрифта Fanwood, встроенного в сборку Aspose.Words.

{{% alert color="primary" %}}

Если доступно значение **FontInfo**, параметр *FontInfo substitution rule* всегда будет разрешать шрифт и переопределять правило шрифта по умолчанию. Если вы хотите использовать правило шрифта по умолчанию, вам следует отключить параметр *FontInfo substitution rule*. Обратите внимание, что *FontConfig substitution rule* в большинстве случаев определяет шрифт и, таким образом, переопределяет все остальные правила.

{{% /alert %}}


