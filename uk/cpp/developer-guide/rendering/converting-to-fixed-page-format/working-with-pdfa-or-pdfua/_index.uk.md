﻿---
title: Робота з PDF/A або PDF/UA
second_title: Aspose.Words для C++
articleTitle: Робота з PDF/A або PDF/UA
linktitle: Робота з PDF/A або PDF/UA
description: "Перетворити на PDF/A-1, PDF/A-2, PDF/A-4 і PDF/UA за допомогою C++. При перетворенні в документи PDF/A виникає кілька проблем, і Aspose.Words для C++ вирішує їх."
type: docs
weight: 38
url: /uk/cpp/working-with-pdfa-or-pdfua/
timestamp: 2024-01-27-14-07-04
---

Формат PDF/A і PDF/UA пред'являє кілька вимог до вмісту документа, які не можуть бути виконані при автоматичному перетворенні документа в форматі Word в формат PDF. Ці вимоги повинні бути перевірені та виправлені або в документі Word перед перетворенням, або в документі PDF після перетворення, щоб отримати документ, який повністю відповідає вимогам PDF/A та PDF/UA.

Основні вимоги пред'являються до структури або шрифтів документів PDF/A і PDF/UA, які ми розглянемо в наступних розділах.

{{% alert color="primary" %}}

Зверніть увагу, що вихід PDF/UA-1 також буде відповідати WCAG 2.0 та розділу 508.

{{% /alert %}}

## Вимоги до структури документа

Поточні вимоги пред'являються до форматів PDF/A-1a, PDF/A-2a, PDF/A-4, і PDF/UA-1.

Існують деякі нюанси роботи Aspose.Words при конвертації в різні стандарти формату PDF. Їх необхідно враховувати, якщо ви хочете отримати очікуваний результат.

{{% alert color="primary" %}}

Зверніть увагу, що для PDF/A-4 немає вимог до логічної структури. З цієї причини ми не розглядаємо версію PDF/A-4 у цьому розділі "вимоги до структури документа".

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Специфікація повідомляє нам наступне (розгорніть, щоб побачити деталі):</summary>
    <p></p>
    <p>Авторам недоцільно генерувати структурну або семантичну інформацію з використанням автоматизованих процесів без відповідної перевірки.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

У підрозділах нижче описані нюанси роботи Aspose.Words при перетворенні в різні стандарти формату PDF і варіанти їх вирішення.

### Тип конструкції

| PDF рівні відповідності стандартам в межах Aspose.Words | Наявність вимоги |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Документ PDF являє собою послідовність блоків, таких як заголовки, абзаци, таблиці та інші. Ці блоки утворюють структуру документа-сильну або слабку.

Для PDF/A допустимі як сильні, так і слабкі структури. Microsoft Word документи мають слабку структуру за дизайном, і Aspose.Words створює PDF зі слабкою структурою відповідно, а також генерує заголовки відповідно до рівнів структури абзаців у вихідному документі.

Для документа PDF/UA-1 зі слабкою структурою додатково потрібно, щоб номери заголовків йшли по порядку без пробілів.

{{% alert color="secondary" %}}
<details>
    <summary>Специфікація повідомляє нам наступне (розгорніть, щоб побачити деталі):</summary>
    <p></p>
    <p>Структура блочного рівня може відповідати одній з двох основних парадигм:</p>
    </ol>
      <li>Чітко структурований. Елементи угруповання розташовуються на стількох рівнях, скільки необхідно, щоб відобразити організацію матеріалу за статтями, розділами, підрозділами і так далі. На кожному рівні діти групуючого елемента повинні складатися із заголовка (H), одного або декількох абзаців (P) для вмісту цього рівня та, можливо, одного або декількох додаткових групуючих елементів для вкладених підрозділів.</li>
      <li>Слабо структурований. Документ є відносно плоским, можливо, містить лише один або два рівні групування елементів, а всі заголовки, абзаци та інші BLSEs є їх безпосередніми дочірніми елементами. В цьому випадку організація матеріалу не відбивається в логічній структурі, проте вона може бути виражена за допомогою заголовків з певними рівнями (H1–H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Для документів PDF/UA-1 специфікація містить доповнення, пов'язане з Рівнями заголовків (розгорніть, щоб побачити деталі).:</summary>
    <p></p>
    <p>Якщо семантика документа вимагає спадної послідовності заголовків, то така послідовність повинна бути строго нумерованою і не повинна пропускати проміжний рівень заголовка. H1 H2 H3 допустимо, тоді як H1 H3 - ні.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Щоб забезпечити коректний висновок, користувачі повинні переконатися, що вміст вихідного документа правильно організовано, а рівні структури абзаців вказані правильно. В іншому випадку користувач повинен перевірити та виправити структуру вихідного документа PDF.

{{% alert color="secondary" %}}
<details>
    <summary>У цьому блоці ви можете побачити приклади: як встановити рівні структури в Microsoft Word або перевірити та виправити структуру вихідного документа PDF (розгорніть, щоб побачити деталі).</summary>
    <p></p>
    <p>В Microsoft Word для завдання рівня контуру можна використовувати стилі "Заголовок X" за замовчуванням:</p>
    <img src="m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>Крім того, у вікні "Абзац" можна перевірити або змінити рівень контуру:</p>
    <img src="m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>У Acrobat структуру документа можна перевірити або змінити на панелі"Теги":</p>
    <img src="acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### Позначення вмісту як артефакту

| PDF рівні відповідності стандартам в межах Aspose.Words | Наявність вимоги |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

На даний момент Aspose.Words позначає верхні та нижні колонтитули сторінок, роздільники нотаток, повторювані клітинки заголовка таблиці та декоративні зображення як артефакти. Зверніть увагу, що в майбутньому цей список може бути оновлений.

{{% alert color="secondary" %}}
<details>
    <summary>Специфікація повідомляє нам наступне (розгорніть, щоб побачити деталі):</summary>
    <p></p>
    <p>Графічні об'єкти в документі можна розділити на два класи:</p>
    </ol>
      <li>Реальний зміст документа складається з об'єктів, що представляють матеріал, спочатку представлений автором документа.</li>
      <li>Артефакти-це Графічні об'єкти, які не є частиною оригінального вмісту автора, а створюються відповідним автором під час пагінації, макета чи інших суворо механічних процесів.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Якщо документ містить будь-який інший вміст, який повинен бути позначений як артефакт, або якщо будь-який з артефактованих матеріалів є реальним, клієнти повинні виправити це у вихідних даних PDF.

{{% alert color="secondary" %}}
<details>
    <summary>У цьому блоці ви можете побачити приклади: як позначити фігури як декоративні в Microsoft Word або як позначити фігуру як артефакт у вихідному документі PDF (розгорніть, щоб побачити деталі).</summary>
    <p></p>
    <p>Наприклад, фігури можуть бути позначені як декоративні в Microsoft Word, тому вони будуть експортовані в PDF Як артефакт:</p>
    <img src="m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>Ви можете позначити фігуру як артефакт у вихідних даних PDF:</p>
   <img src="acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>Крім того, ви можете переключити текст у заголовку з артефакту на реальний вміст у вихідних даних PDF:</p>
    <img src="acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Специфікація природної мови

| PDF рівні відповідності стандартам в межах Aspose.Words | Наявність вимоги |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Мова тексту вказана в документах Microsoft Word. Aspose.Words експортує зазначену мову у вихідні дані PDF з атрибутом *Lang*, прикріпленим до позначеної послідовності вмісту або Тегу Span - він управляється властивістю [ExportLanguageToSpanTag](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_exportlanguagetospantag/). Як правило, при введенні тексту Користувачем за допомогою Microsoft Word мовних проблем не виникає. Але існує ймовірність того, що мова може бути вказана неточно, якщо текст генерується автоматично.

{{% alert color="secondary" %}}
<details>
    <summary>Специфікація повідомляє нам наступне (розгорніть, щоб побачити деталі):</summary>
    <p></p>
    <p>Природна мова за замовчуванням для всього тексту у файлі повинна бути вказана у записі Lang у словнику каталогу документа.</p>
    <p>Весь текстовий вміст у файлі, який відрізняється від мови, що використовується за замовчуванням, повинен бути вказаний за допомогою властивості `Lang`, пов'язаної з послідовністю позначеного вмісту, або за допомогою мовного запису у словнику елементів структури...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Додатково для PDF/UA-1 специфікація повідомляє нам наступне (розгорніть, щоб побачити деталі):</summary>
    <p></p>
    <p>Повинна бути оголошена природна мова ... повинні бути оголошені зміни в природній мові.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>У цьому блоці ви можете побачити приклади: як переконатися, що мова вказана правильно (розгорніть, щоб побачити деталі).</summary>
    <p></p>
    <p>Користувачі повинні переконатися, що мова вказана правильно в будь-якому оригінальному документі Word:</p>
    <img src="m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>Або вихідний документ PDF:</p>
    <img src="acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Підпис до малюнка

| PDF рівні відповідності стандартам в межах Aspose.Words | Наявність вимоги |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word документи дозволяють користувачам додавати підписи до малюнків.

{{% alert color="secondary" %}}
<details>
    <summary>Специфікація повідомляє нам наступне (розгорніть, щоб побачити деталі):</summary>
    <p></p>
    <p>Підпис, що супроводжує малюнок, повинен бути позначений тегом Caption.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

В даний час Aspose.Words не може експортувати підписи з тегом Caption, тому вони повинні бути позначені у вихідних даних PDF.

{{% alert color="secondary" %}}
<details>
    <summary>У цьому блоці ви можете побачити приклади: як вставити заголовок (розгорніть, щоб побачити деталі).</summary>
    <p></p>
    <p>Microsoft Word заголовок можна вставити через контекстне меню:</p>
    <img src="figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>У Acrobat заголовок можна додати або змінити за допомогою діалогового вікна властивостей `Object`:</p>
    <img src="figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Альтернативні описи

| PDF рівні відповідності стандартам в межах Aspose.Words | Наявність вимоги |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word документи дозволяють користувачам додавати альтернативний текст до зображень, фігур та таблиць. Aspose.Words експортує такий альтернативний текст у вихідні дані PDF.

{{% alert color="secondary" %}}
<details>
    <summary>Специфікація повідомляє нам наступне (розгорніть, щоб побачити деталі):</summary>
    <p></p>
    <p>Всі елементи структури, вміст яких не має природного заданого текстового аналога, наприклад зображення, формули і т.д., повинні містити альтернативний текстовий опис, використовуючи запис Alt в словнику елементів структури...</p>
    <p>NOTE альтернативні описи містять текстові описи, які допомагають правильно інтерпретувати непрозорий нетекстовий вміст.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>У цьому блоці ви можете побачити приклади: як забезпечити, щоб усі елементи мали альтернативний текст (розгорніть, щоб побачити деталі).</summary>
    <p></p>
    <p>Користувачі повинні переконатися, що всі елементи мають альтернативний текст у будь-якому оригінальному документі Word:</p>
    <img src="m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Або вихідний документ PDF:</p>
    <img src="acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Альтернативні описи для гіперпосилань

| PDF рівні відповідності стандартам в межах Aspose.Words | Наявність вимоги |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

На додаток до попереднього пункту, документи Microsoft Word також дозволяють користувачам додавати альтернативний текст до гіперпосилань. Aspose.Words експортує такий альтернативний текст у вихідні дані PDF.

На жаль, не кожна програма дозволяє налаштувати альтернативний опис. Наприклад, Adobe Acrobat наразі не дозволяє налаштувати такий опис для гіперпосилань. Але в Microsoft Word ви можете зробити це наступним чином:

<img src="alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

Іноді виникає проблема, пов'язана з неможливістю задати альтернативний текст для автоматично генеруються гіперпосилань в змісті (TOC) через Microsoft Word GUI. Aspose.Words можна було б оновити такі поля і згенерувати посилання самостійно.

Дотримуйтесь прикладу коду, щоб оновити поля `TOC`, використовуючи об'єктну модель документа Aspose.Words (DOM).:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(filename);
auto tocHyperLinks = doc->get_Range()->get_Fields()->
    LINQ_Where([](SharedPtr<Field> f) {return f->get_Type() == FieldType::FieldHyperlink; })->            
    LINQ_Where([](SharedPtr<FieldHyperlink> f) { return f->get_DisplayResult().StartsWith(u"#_Toc"); });

for (const auto& link : tocHyperLinks)
    link->set_ScreenTip(link->get_DisplayResult());

auto opt = MakeObject<PdfSaveOptions>();
opt->set_Compliance(PdfCompliance::PdfUa1);
opt->set_DisplayDocTitle(true);
opt->set_ExportDocumentStructure(true);
opt->get_OutlineOptions()->set_HeadingsOutlineLevels(3);
opt->get_OutlineOptions()->set_CreateMissingOutlineLevels(true);

auto outFile = filename.substr(0, filename.find_last_of('.')) + "_aw.pdf";
doc->Save(outFile, opt);
{{< /highlight >}}

### Заголовки таблиць

| PDF рівні відповідності стандартам в межах Aspose.Words | Наявність вимоги |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Таблиці в документах PDF/UA-1 повинні мати заголовки – стовпець, рядок або обидва разом. PDF/A потрібна лише стандартна таблична розмітка, яка не має додаткових обмежень. Зверніть увагу, що Aspose.Words автоматично генерує стандартну табличну розмітку.

{{% alert color="secondary" %}}
<details>
    <summary>Специфікація повідомляє нам наступне (розгорніть, щоб побачити деталі):</summary>
    <p></p>
    <p>Таблиці повинні містити заголовки ... таблиці можуть містити заголовки стовпців, рядків або обидва.</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>У цьому блоці ви можете побачити приклади: як задати заголовок таблиці (розгорніть, щоб побачити подробиці).</summary>
    <p></p>
    <p>Заголовок таблиці може бути заданий або в вихідному документі Microsoft Word:</p>
    <img src="table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>Або вихід PDF:</p>
    <img src="table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Замінний текст

| PDF рівні відповідності стандартам в межах Aspose.Words | Наявність вимоги |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>Специфікація повідомляє нам наступне (розгорніть, щоб побачити деталі):</summary>
    <p></p>
    <p>Специфікація повідомляє нам наступне:</p>
    <p>Всі елементи текстової структури, представлені нестандартним чином, наприклад, призначені для користувача Символи або вбудована графіка, повинні містити замінює текст, використовуючи запис `ActualText` в словнику елементів структури...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word документ не дозволяє користувачам встановлювати текст для заміни. Тому це потрібно перевірити та виправити у вихідних даних PDF:

<img src="acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Скорочення та акронімічні Доповнення

| PDF рівні відповідності стандартам в межах Aspose.Words | Наявність вимоги |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>Специфікація повідомляє нам наступне (розгорніть, щоб побачити деталі):</summary>
    <p></p>
    <p>Всі екземпляри абревіатур і скорочень в текстовому Контенті повинні бути розміщені в послідовності, позначеної як content, за допомогою тега Span, властивість E якого забезпечує текстове розширення абревіатури або акроніму...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word документ не дозволяє користувачам встановлювати скорочення. Тому це потрібно перевірити та виправити у вихідних даних PDF:

<img src="acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Назва документа

| PDF рівні відповідності стандартам в межах Aspose.Words | Наявність вимоги |
| -------------------------------------------------- | ------------------------------------------------------------ |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/A-4 |  |
| PDF/UA-1 | {{< emoticons/tick >}}<br />Документ у PDF/UA-1 повинен мати заголовок. |

{{% alert color="secondary" %}}
<details>
    <summary>Специфікація повідомляє нам наступне (розгорніть, щоб побачити деталі):</summary>
    <p></p>
    <p>Специфікація повідомляє нам наступне:</p>
    <p>Потік метаданих у словнику каталогу документа повинен містити запис dc: title, де dc є рекомендованим префіксом для схеми метаданих Dublin Core…</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>У цьому блоці ви можете побачити приклади: як задати заголовок документа (розгорніть, щоб побачити подробиці).</summary>
    <p></p>
    <p>Назва документа може бути задано або як вихідний документ Microsoft Word:</p>
    <img src="document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>Або вихід PDF:</p>
    <img src="document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Вимоги до шрифту

| PDF рівні відповідності стандартам в межах Aspose.Words | Наявність вимоги |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Також існує ряд нюансів роботи зі шрифтами при конвертації в формати PDF/A-1, PDF/A-2, PDF/A-4 або PDF/UA-1 за допомогою Aspose.Words. Їх необхідно враховувати, якщо ви хочете уникнути можливих проблем з вихідним документом.

У розділах нижче описані такі нюанси і варіанти їх вирішення.

### Юридичні вимоги до шрифтів

| PDF рівні відповідності стандартам в межах Aspose.Words | Наявність вимоги |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Aspose.Words не перевіряє відповідність використовуваних шрифтів юридичним обмеженням – це залежить від користувачів. Іншими словами, користувач не повинен надавати невідповідні шрифти для перетворення PDF за допомогою Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>Специфікація повідомляє нам наступне (розгорніть, щоб побачити деталі):</summary>
    <p></p>
    <p>Повинні використовуватися тільки ті шрифтові програми, які легально вбудовуються в файл для необмеженого універсального відображення.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 ( точно такі ж цитати в двох специфікаціях)</p>
</details>
{{% /alert %}}

### .notdef Glyph

| PDF рівні відповідності стандартам в межах Aspose.Words | Наявність вимоги |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Використання символу `.notdef` заборонено. Символ `.notdef` з'явиться, якщо документ містить Символи, яких немає у вибраному шрифті і які також не можуть бути виправлені за допомогою резервного механізму зміни шрифту.

{{% alert color="secondary" %}}
<details>
    <summary>Специфікація повідомляє нам наступне (розгорніть, щоб побачити деталі):</summary>
    <p></p>
    <p>Відповідний документ не повинен містити посилання на гліф .notdef ні в одному з операторів відображення тексту, незалежно від режиму відображення тексту, в будь-якому потоці вмісту.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 ( точно такі ж цитати в двох специфікаціях)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>У цьому блоці ви можете побачити приклади: як видалити або замінити ці символи (розгорніть, щоб побачити деталі).</summary>
    <p></p>
    <p>Користувачі повинні видалити або замінити ці символи в будь-якому оригінальному документі Word:</p>
    <img src="m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Або вивести документ PDF за допомогою інструмента " редагувати PDF":</p>
    <img src="acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Зона приватного користування (PUA)

| PDF рівні відповідності стандартам в межах Aspose.Words | Наявність вимоги |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

Область приватного використання (PUA) символи відображаються в основному для Windows символьних шрифтів, таких як "Symbol", "Wingdings", "Webdings" та інших. Microsoft Word формати не надають можливості зберігати фактичний текст для символів.

{{% alert color="secondary" %}}
<details>
    <summary>Специфікація повідомляє нам наступне (розгорніть, щоб побачити деталі):</summary>
    <p></p>
    <p>Тільки для відповідності рівню a, для будь-якого символу... який зіставляється з кодом або кодами в області приватного використання Unicode (PUA), запис ActualText ... для цього символу або послідовності символів, частиною яких є такий символ, має бути присутній запис.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol" - це Шрифт Unicode Windows, який можна використовувати як альтернативу шрифтам символів.

{{% alert color="secondary" %}}
<details>
    <summary>У цьому блоці ви можете побачити приклади: що повинен зробити користувач, щоб вирішити проблему зі шрифтами символів (розгорніть, щоб побачити деталі).</summary>
    <p></p>
    <p>Замініть символьний шрифт на юнікодний у вихідному документі Word:</p>
    <img src="m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>Або додайте запис ActualText до проблемних символів у вихідному документі PDF:</p>
    <img src="acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}