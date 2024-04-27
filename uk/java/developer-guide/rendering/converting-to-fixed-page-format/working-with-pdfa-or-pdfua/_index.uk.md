---
title: Робота з PDF/A або PDF/UA
second_title: Aspose.Words для Java
articleTitle: Робота з PDF/A або PDF/UA
linktitle: Робота з PDF/A або PDF/UA
description: "Перетворення в PDF/A-1, PDF/A-2, PDF/A-4 та PDF/UA за допомогою Javaй Є кілька проблем при конвертації документів PDF/A, і Aspose.Words для Java розчиняє їх."
type: docs
weight: 28
url: /uk/java/working-with-pdfa-or-pdfua/
---

У форматі PDF/A та PDF/UA передбачено декілька вимог, пов’язаних із вмістом документа, які не можуть виконуватися під час автоматичного перетворення з документа у форматі Word у PDF. Ці вимоги повинні бути перевірені та виправлені або у документі Word перед перетворенням або у документі PDF після перетворення, щоб зробити повністю PDF/A та PDF/UA сумісний документ.

Основні вимоги до структури або шрифтів документа PDF/A та PDF/UA, які ми розглянемо в наступних розділах.

{{% alert color="primary" %}}

Будь ласка, зверніть увагу, що вихід PDF/UA-1 також буде WCAG 2.0 та розділом 508.

{{% /alert %}}

## Вимоги до структури документів

Поточні вимоги до PDF/A-1a, PDF/A-2a, PDF/A-4 та PDF/UA-1.

Є деякі нюанси того, як Aspose.Words працює при конвертуванні різних стандартів формату PDF. Вони повинні бути враховані, якщо ви хочете отримати очікуваний результат.

{{% alert color="primary" %}}

Зверніть увагу, що не існує вимог логічної структури для PDF/A-4. З цієї причини ми не розглядаємо версію PDF/A-4 в розділі "Докази до структури документів".

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Спеціалізацію розповідає нам про наступні (поширити деталі):</summary>
    <p></p>
    <p>Для створення структурної або семантичної інформації з використанням автоматизованих процесів без відповідної перевірки.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

Підрозділи нижче описують нюанси як Aspose.Words працює при перетворенні в різні стандарти формату PDF і варіанти їх вирішення.

### Тип конструкції

|  Рівень відповідності стандарту PDF в межах Aspose.Words |  Наявність вимог |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2а |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Документ PDF є послідовністю блоків, таких як заголовки, абзаци, таблиці та інші. Ці блоки утворюють структуру документа – сильно або слабкий.

І сильні і слабкі конструкції діють для PDF/A. Microsoft Word документи мають слабку структуру за допомогою дизайну і Aspose.Words створює PDF зі слабкою структурою відповідно, а також генерує заголовки відповідно до рівнів абзаців у початковому документі.

Для документу PDF/UA-1 зі слабкою структурою необхідно додатково, щоб заголовки залишалися без проміжків.

{{% alert color="secondary" %}}
<details>
    <summary>Спеціалізацію розповідає нам про наступні (поширити деталі):</summary>
    <p></p>
    <p>Структура блоку може слідувати одному з двох основних парадигм:</p>
    </ol>
      <li>Сильно структуровані. Угруповання елементів гнізда до багатьох рівнів, що необхідно відобразити організацію матеріалу на статті, розділи, підрозділи та ін. На кожному рівні діти групивого елементу повинні складатися з заголовка (H), одного або декількох абзаців (P) для змісту на цьому рівні, і, можливо, один або кілька додаткових групувальних елементів для гніздових підсекцій.</li>
      <li>Змочена структура. Документ відносно плоский, має, можливо, тільки один або два рівні групування елементів, з усіма заголовками, абзаци та іншими BLSEми, як їхні безпосередні діти. У цьому випадку організація матеріалу не відображається в логічній структурі; проте, вона може бути виражена за допомогою заголовків з певними рівнями (H1–H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Для документів PDF/UA-1, специфікація містить доповнення, пов’язані з рівнями заголовка (розширити деталі):</summary>
    <p></p>
    <p>Якщо документ семантика вимагає спадаючої послідовності заголовків, така послідовність продовжиться в строгому чисельному порядку і не пропускає домокання рівня заголовка. H1 H2 H3 допустимо, в той час як H1 H3 не є.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Щоб забезпечити правильний вихід, користувачі повинні переконатися, що вміст початкового документа належним чином організований і окреслювати рівні правильно вказані для абзаців. В іншому випадку користувач повинен перевірити і виправити структуру вихідного документа PDF.

{{% alert color="secondary" %}}
<details>
    <summary>У цьому блокі можна побачити приклади: як встановити рівні контурів в Microsoft Word або перевірте та зафіксуйте структуру вихідного документа PDF (поширюйте деталі).</summary>
    <p></p>
    <p>У Microsoft Word За замовчуванням "Heading X" можна використовувати для встановлення рівня контуру:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>Крім того, рівень контуру можна перевірити або змінити у вікні "Параграф":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>У документі може бути зареєстрований або змінений у сковороді "Таги":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### Маркування контенту як артефакт

|  Рівень відповідності стандарту PDF в межах Aspose.Words |  Наявність вимог |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2а |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

На даний момент Aspose.Words розмітки сторінок заголовків і нижніх колонок, замітка сепараторів, повторних клітин заголовка столу, декоративних зображень як артефакти. Зверніть увагу, що цей список може бути оновлено в майбутньому.

{{% alert color="secondary" %}}
<details>
    <summary>Спеціалізацію розповідає нам про наступні (поширити деталі):</summary>
    <p></p>
    <p>Графічні об'єкти в документі можна розділити на два класи:</p>
    </ol>
      <li>Реальний зміст документа включає об'єкти, що представляють матеріал, які спочатку вводяться автором документа.</li>
      <li>Артифакти – це графічні об’єкти, які не входять до авторського оригінального контенту, але досить генеруються конформуючим письменником в ході піхви, макету або інших суворих механічних процесів.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Якщо документ містить будь-який інший зміст, який повинен бути позначений як артефакт, або якщо будь-який з записаного вмісту є справжнім змістом, клієнти повинні виправити це у вихідному PDF.

{{% alert color="secondary" %}}
<details>
    <summary>У цьому блоці можна побачити приклади: як розмітити форми як декоративні в Microsoft Word або позначте форму як артефакт у вихідному документі PDF (поширюйте деталі).</summary>
    <p></p>
    <p>Наприклад, форми можуть бути позначені як декоративними Microsoft Word, щоб вони будуть експортовані в PDF як артефакт:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>Ви можете відмітити форму як артефакт у виході PDF:</p>
      <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>Також ви можете переключати текст у заголовку з артефакту до реального вмісту у вихідному PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Специфікація натуральної мови

|  Рівень відповідності стандарту PDF в межах Aspose.Words |  Наявність вимог |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2а |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Текстова мова вказана в Microsoft Word документи. Aspose.Words експорт вказаної мови до виходу PDF з *Lang* атрибут, прикріплений до послідовності позначеного вмісту або тегу Span - він керується [ExportLanguageToSpanTag](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportLanguageToSpanTag) майно. Зазвичай не існує мовних питань, коли текст вводиться користувачем через Microsoft Wordй Якщо текст автоматично генерується.

{{% alert color="secondary" %}}
<details>
    <summary>Спеціалізацію розповідає нам про наступні (поширити деталі):</summary>
    <p></p>
    <p>За замовчуванням природна мова для всіх текстів у файлі повинна бути вказана записом Lang у словнику каталогу документа.</p>
    <p>Весь текстовий вміст у файлі, який відрізняється від мови за замовчуванням, необхідно вказати за допомогою використання файлу `Lang` майно, прикріплене до означеної послідовності, або шляхом входу Lang в структурний елемент словника ...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Додатково для PDF/UA-1, специфікація розповідає нам:</summary>
    <p></p>
    <p>Природна мова повинна бути заявлена... Зміни у природній мові будуть оголошені.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>У цьому блоці ви можете побачити приклади: як забезпечити те, що мова вказана правильно (розширити деталі).</summary>
    <p></p>
    <p>Користувачі повинні переконатися, що мова вказана належним чином в будь-якому документі Word:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>Або вихід документа PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Фігурне затримання

|  Рівень відповідності стандарту PDF в межах Aspose.Words |  Наявність вимог |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2а |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word документи дозволяють користувачам додати підписку на фігуру.

{{% alert color="secondary" %}}
<details>
    <summary>Спеціалізацію розповідає нам про наступні (поширити деталі):</summary>
    <p></p>
    <p>Вказка, що супроводжується фігурою, повинна бути позначена тегом підписки.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

В наявності Aspose.Words не можна експортувати підписи з тегом Caption, щоб вони повинні бути позначені у виході PDF.

{{% alert color="secondary" %}}
<details>
    <summary>У цьому блоці можна побачити приклади: як вставити підпис (поширити деталі).</summary>
    <p></p>
    <p>У Microsoft Word, У контекстному меню можна вставляти підписку:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>Прийняти підписку можна додавати або змінити через `Object` Властивості діалог:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Альтернативні описи

|  Рівень відповідності стандарту PDF в межах Aspose.Words |  Наявність вимог |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2а |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word документи дозволяють користувачам додати альтернативний текст на зображення, форми та таблиці. Aspose.Words експортує такий альтернативний текст до виходу PDF.

{{% alert color="secondary" %}}
<details>
    <summary>Спеціалізацію розповідає нам про наступні (поширити деталі):</summary>
    <p></p>
    <p>Всі елементи структури, вміст яких не має природного заданого текстового аналога, наприклад зображення, формула і т.д., повинні надати альтернативний текст опису за допомогою Alt запису в структурі елемент словника...</p>
    <p>ЗАМОВИТИ Визначені описи дають текстові описи, які допомагають при правильній інтерпретації іншого непрозорого нетекстового вмісту.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>У цьому блоці ви можете побачити приклади: як забезпечити, що всі елементи мають альтернативний текст (розширити деталі).</summary>
    <p></p>
    <p>Користувачі повинні переконатися, що всі елементи мають альтернативний текст або джерело документ Word:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Або вихід документа PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Альтернативні описи для гіперпосилання

|  Рівень відповідності стандарту PDF в межах Aspose.Words |  Наявність вимог |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2а |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Крім попередньої точки, Microsoft Word документи також дозволяють користувачам додати альтернативний текст до гіперпосилання. Aspose.Words експортує такий альтернативний текст до виходу PDF.

На жаль, не кожен додаток дозволяє встановити альтернативний опис. Наприклад, Adobe Acrobat В даний час не в змозі встановити такий опис для гіперпосилання. Але в Microsoft Word, Ви можете зробити це наступним чином:

<img src="/words/java/working-with-pdfa-or-pdfua/alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

Іноді виникає проблема, що неможливо встановити альт текст для автоматизації гіперпосилання в таблиці змісту (TOC) через Microsoft Word Інтерфейс. Aspose.Words може оновити такі поля і створити посилання на власні.

Додайте приклад коду, щоб оновити `TOC` поля з використанням Aspose.Words Document Object Model (Українська)DOM):

{{< highlight java >}}
Document doc = new Document(fileName);
ArrayList<FieldHyperlink> tocHyperLinks = new ArrayList<>();

for (Field field : doc.getRange().getFields()) {
    if (field.getType() == FieldType.FIELD_HYPERLINK) {
        FieldHyperlink hyperlink = (FieldHyperlink) field;
        if (hyperlink.getFieldCode().startsWith("#_Toc")) {
            tocHyperLinks.add(hyperlink);
        }
    }
}

for (FieldHyperlink link : tocHyperLinks)
    link.setScreenTip(link.getDisplayResult());

PdfSaveOptions opt = new PdfSaveOptions();
opt.setCompliance(PdfCompliance.PDF_UA_1);
opt.setDisplayDocTitle(true);
opt.setExportDocumentStructure(true);
opt.getOutlineOptions().setHeadingsOutlineLevels(3);
opt.getOutlineOptions().setCreateMissingOutlineLevels(true);

String outFile = fileName.substring(0,fileName.lastIndexOf('.')) + "_aw.pdf";
doc.save(outFile, opt);
{{< /highlight >}}

### Наголовки таблиці

|  Рівень відповідності стандарту PDF в межах Aspose.Words |  Наявність вимог |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2а |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Столи у документах PDF/UA-1 повинні мати заголовки – стовпчик, ряд або обидва. PDF/A вимагає стандартного розмітки таблиці, що не має додаткових обмежень. Примітка Aspose.Words автоматично генерує стандартну розмітку таблиці.

{{% alert color="secondary" %}}
<details>
    <summary>Спеціалізацію розповідає нам про наступні (поширити деталі):</summary>
    <p></p>
    <p>Столи повинні включати заголовки ... Столи можуть містити колонки, заголовки рядків або обидва.</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>У цьому блокі можна побачити приклади: як встановити заголовок таблиці (поширити деталі).</summary>
    <p></p>
    <p>Заголовок таблиці можна встановити як джерело Microsoft Word документ:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>Або вихід PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Заміна тексту

|  Рівень відповідності стандарту PDF в межах Aspose.Words |  Наявність вимог |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2а |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>Спеціалізацію розповідає нам про наступні (поширити деталі):</summary>
    <p></p>
    <p>Специфікація розповідає нам про наступне:</p>
    <p>Всі елементи текстури, які представлені в нестандартному порядку, наприклад, користувацьких символів або вбудованої графіки, повинні поставляти заміну тексту за допомогою параметра `ActualText` запис у структурний елемент словника...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word документ не дозволяє користувачам встановлювати заміну тексту. Отже, це потрібно перевірити і зафіксувати у вихідному форматі PDF:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Аббревіатури та акроніми Розширення

|  Рівень відповідності стандарту PDF в межах Aspose.Words |  Наявність вимог |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2а |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>Спеціалізацію розповідає нам про наступні (поширити деталі):</summary>
    <p></p>
    <p>Всі екземпляри аббревіатури та акронімів у текстовому вмісті повинні бути розміщені в позначеній послідовності вмісту з тегом Span, який E має текстове розширення аббревіатури або acronym...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word документ не дозволяє користувачам встановлювати скорочення та розширення акронімів. Отже, це потрібно перевірити і зафіксувати у вихідному форматі PDF:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Назва документа

|  Рівень відповідності стандарту PDF в межах Aspose.Words |  Наявність вимог |
|  --------------------------------------------------  |  ------------------------------------------------------------  |
|  PDF/A-1a |                                                                |
|  PDF/A-2а |                                                                |
|  PDF/А-4 |                                                                |
|  PDF/UA-1 |  {{< emoticons/tick >}}<br/>Документ у PDF/UA-1 має назву |

{{% alert color="secondary" %}}
<details>
    <summary>Спеціалізацію розповідає нам про наступні (поширити деталі):</summary>
    <p></p>
    <p>Специфікація розповідає нам про наступне:</p>
    <p>Потік метаданих у словнику каталогу документа повинен містити dc: запис назви, де dc є рекомендованим префіксом для Дубліна Core метаданих schema ...</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>У цьому блоці ви можете побачити приклади: як встановити назву документа (дивитись деталі).</summary>
    <p></p>
    <p>Назва документа може бути встановлена як джерело Microsoft Word документ:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>Або вихід PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Вимоги до шрифту

|  Рівень відповідності стандарту PDF в межах Aspose.Words |  Наявність вимог |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2а |   {{< emoticons/tick >}}   |
|  PDF/A-2б |   {{< emoticons/tick >}}   |
|  PDF/А-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Також є ряд нюансів роботи з шрифтами при перетворенні в PDF/A-1, PDF/A-2, PDF/A-4 або PDF/UA-1 з використанням Aspose.Wordsй Вони повинні бути враховані, якщо ви хочете уникнути можливих проблем з вихідним документом.

Зрізи нижче описують такі нюанси і варіанти їх вирішення.

### Юридичні вимоги

|  Рівень відповідності стандарту PDF в межах Aspose.Words |  Наявність вимог |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2а |   {{< emoticons/tick >}}   |
|  PDF/A-2б |   {{< emoticons/tick >}}   |
|  PDF/А-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words не перевіряє правові обмеження використовуваних шрифтів – це до користувачів. Іншими словами, користувач не повинен надавати недорогі шрифти для перетворення PDF Aspose.Wordsй

{{% alert color="secondary" %}}
<details>
    <summary>Спеціалізацію розповідає нам про наступні (поширити деталі):</summary>
    <p></p>
    <p>У файлі для необмеженого, універсального рендерингу використовуються тільки програми шрифту, які є юридично зібраними у файлі.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (зазвичай однакові котирування в двох специфікаціях)</p>
</details>
{{% /alert %}}

### .недф Glyph

|  Рівень відповідності стандарту PDF в межах Aspose.Words |  Наявність вимог |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2а |   {{< emoticons/tick >}}   |
|  PDF/A-2б |   {{< emoticons/tick >}}   |
|  PDF/А-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Використання `.notdef` glyph забороняється. Про нас `.notdef` glyph з'явиться, якщо документ містить символи, які не присутні в вибраному шрифті, і які також не можуть бути вирішені за допомогою механізму "Фонс".

{{% alert color="secondary" %}}
<details>
    <summary>Спеціалізацію розповідає нам про наступні (поширити деталі):</summary>
    <p></p>
    <p>Не містить посилання на .notdef glyph від будь-яких операторів текстового показу, незалежно від способу відображення тексту, в будь-якому потоковому режимі.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (зазвичай однакові лапки в двох специфікаціях)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>У цьому блоці ви можете побачити приклади: як видалити або замінити ці символи (дивитись деталі).</summary>
    <p></p>
    <p>Користувачі повинні видалити або замінити ці символи в документі Word:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Або вихід документа PDF за допомогою інструмента "Редагувати PDF":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Приватна область використання (PUA)

|  Рівень відповідності стандарту PDF в межах Aspose.Words |  Наявність вимог |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2а |   {{< emoticons/tick >}}   |
|  PDF/A-2б |   {{< emoticons/tick >}}   |
|  PDF/А-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

Приватні символи використання (PUA) з'являються переважно для Windows символічні шрифти типу "Symbol", "Wingdings", "Webdings", та інші. Microsoft Word Формати не дають можливості зберігати фактичний текст для символів.

{{% alert color="secondary" %}}
<details>
    <summary>Спеціалізацію розповідає нам про наступні (поширити деталі):</summary>
    <p></p>
    <p>Для рівня Єдиний, для будь-якого персонажа ... який наклеєний кодом або кодами в зоні Private Use (PUA), Актуальний запис тексту ... буде присутній для цього персонажа або послідовності символів, які такий символ є частиною.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Символ Segoe UI Windows Унікод шрифт, який можна використовувати як альтернативу символічним шрифтам.

{{% alert color="secondary" %}}
<details>
    <summary>У цьому блоці ви можете побачити приклади: який користувач повинен зробити для вирішення проблеми з символічними шрифтами (поширити деталі).</summary>
    <p></p>
    <p>Замініть символічний шрифт з унікодом один у документі Word:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>Або додайте актуальний запис тексту до проблемних символів у вихідному документі PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
