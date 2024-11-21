---
title: Работа с PDF/A или PDF/UA
second_title: Aspose.Words вместо Java
articleTitle: Работа с PDF/A или PDF/UA
linktitle: Работа с PDF/A или PDF/UA
description: "Конвертиране в PDF/A-1, PDF/A-2, PDF/A-4 и PDF/UA с използване на Java. Има няколко проблеми при конвертиране в PDF/A документи, и Aspose.Words вместо Java решава ги."
type: docs
weight: 28
url: /bg/java/working-with-pdfa-or-pdfua/
timestamp: 2024-01-27-14-07-04
---

PDF/A и PDF/UA формат налага няколко изисквания, свързани със съдържанието на документа, които не могат да бъдат изпълнени при автоматично преобразуване от документ във формат Word към PDF. Тези изисквания следва да бъдат проверени и коригирани или в Word документ преди преобразуване или в PDF документ след преобразуване, за да се представи изцяло PDF/A и PDF/UA отговарящ на изискванията документ.

Основните изисквания са за структурата или шрифтовете на PDF/A и PDF/UA документ, които ще разгледаме в следващите раздели.

{{% alert color="primary" %}}

Моля, имайте предвид, че изходът PDF/UA-1 също ще бъде съвместим с WCAG 2.0 и раздел 508.

{{% /alert %}}

## Изисквания към структурата на документа

Настоящите изисквания са за PDF/A-1a, PDF/A-2a, PDF/A-4 и PDF/UA-1 формати.

Има някои нюанси на това как Aspose.Words работи при конвертиране в различни PDF формат стандарти. Те трябва да бъдат взети предвид, ако искате да получите очаквания резултат.

{{% alert color="primary" %}}

Имайте предвид, че няма логически изисквания за структурата на PDF/A-4. Поради тази причина не разглеждаме версията PDF/A-4 в раздел "Документни изисквания към структурата."

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Спецификацията ни казва следното (разширяване, за да видите подробности):</summary>
    <p></p>
    <p>Не е препоръчително писателите да генерират структурна или семантична информация, използвайки автоматизирани процеси без подходяща проверка.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

Разделите по-долу описват нюансите на начина, по който Aspose.Words работи при конвертиране в различни PDF формат стандарти и опции за тяхното решение.

### Тип структура

|  PDF стандартни нива на съответствие в рамките на Aspose.Words |  Наличие на изискване |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Документ PDF е поредица от блокове като заглавия, параграфи, таблици и други. Тези блокове образуват документна структура, силно или слабо.

Силните и слабите структури са валидни за PDF/A. Microsoft Word документите имат слаба структура по дизайн, и Aspose.Words създава PDF съответно със слабата структура и генерира позиции в съответствие с очертаните нива на параграфи в изходния документ.

За документ PDF/UA-1 със слаба структура, допълнително се изисква номерата на заглавията да са в ред без пропуски.

{{% alert color="secondary" %}}
<details>
    <summary>Спецификацията ни казва следното (разширяване, за да видите подробности):</summary>
    <p></p>
    <p>Структурата на блоковото ниво може да следва една от две основни парадигма:</p>
    </ol>
      <li>Силно структуриран. Групираните елементи гнездят до толкова нива, колкото е необходимо, за да отразяват организацията на материала в статии, раздели, подраздели и т.н. На всяко ниво децата от елемента на групиране следва да се състоят от позиция (H), една или повече букви (P) за съдържание на това ниво и може би един или повече допълнителни елементи на групиране за гнездящи подраздели.</li>
      <li>Слаба структура. Документът е сравнително плосък, като може би има само едно или две нива на групиране елементи, с всички заглавия, параграфи и други BLSE като техните непосредствени деца. В този случай организацията на материала не е отразена в логическата структура; тя обаче може да бъде изразена чрез използването на заглавия със специфични нива (H1 .H6).</li>
    </ol>
    <p></p>
    <p>ISO- 32000-1, 14, 8.4. 3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>За документи PDF/UA-1 спецификацията съдържа допълнение, свързано с нива на заглавие (за да видите подробности):</summary>
    <p></p>
    <p>Ако семантиката на документа изисква низходяща последователност от заглавни части, такава последователност се провежда в стриктен числен ред и не трябва да пропуска интервенционно ниво. H1 H2 H3 е допустимо, докато H1 H3 не е.</p>
    <p>ISO- 14289-1, 7.4.2</p>
</details>
{{% /alert %}}

За да се гарантира правилното изпълнение, потребителите трябва да гарантират, че съдържанието на изходния документ е правилно организирано и нивата на очертания са правилно определени за параграфи. В противен случай потребителят трябва да провери и определи структурата на изходния PDF документ.

{{% alert color="secondary" %}}
<details>
    <summary>В този блок можете да видите примери: как да зададете очертаващи нива в Microsoft Word или проверка и коригиране на структурата на изходния PDF документ (за да видите подробности).</summary>
    <p></p>
    <p>В Microsoft Word По подразбиране стилове "Heading X" могат да бъдат използвани за определяне на нивото на контура:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>Освен това нивото на контура може да бъде проверено или променено в прозореца "Параграф":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>В Acrobat структурата на документа може да бъде проверена или променена в стъклото "Tags":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### Маркиране на съдържанието като артефакт

|  PDF стандартни нива на съответствие в рамките на Aspose.Words |  Наличие на изискване |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

В момента, Aspose.Words marks page headers and foooters, банкнота разделители, повтаряща се таблица заглавни клетки, и декоративни изображения като артефакти. Имайте предвид, че този списък може да бъде актуализиран в бъдеще.

{{% alert color="secondary" %}}
<details>
    <summary>Спецификацията ни казва следното (разширяване, за да видите подробности):</summary>
    <p></p>
    <p>Графичните обекти в документ могат да бъдат разделени на два класа:</p>
    </ol>
      <li>Истинското съдържание на документа включва обекти, представляващи материал, първоначално въведен от автора на документа.</li>
      <li>Артефактите са графични обекти, които не са част от автора на оригиналното съдържание, а по-скоро са генерирани от приспособения писател в хода на въображението, оформлението или други строго механични процеси.</li>
    </ol>
    <p></p>
    <p>ISO- 32000-1, 14, 8.2.2.1</p>
</details>
{{% /alert %}}

Ако документът съдържа друго съдържание, което трябва да бъде маркирано като артефакт или ако някое от артефактите съдържа реално съдържание, клиентите трябва да определят това в изходния PDF.

{{% alert color="secondary" %}}
<details>
    <summary>В този блок можете да видите примери: как да маркирате формите като декоративни в Microsoft Word или маркирайте формата като артефакт в изходния PDF документ (за да видите подробности).</summary>
    <p></p>
    <p>Например, формите могат да бъдат маркирани като декоративни в Microsoft Word, Така че те ще бъдат изнесени в PDF като артефакт:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>Можете да маркирате формата като артефакт в изхода PDF:</p>
      <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>Също така, можете да превключите текст в заглавна част от артефакта към реално съдържание в изхода PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Спецификация на естествения език

|  PDF стандартни нива на съответствие в рамките на Aspose.Words |  Наличие на изискване |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Езикът на текста е посочен в Microsoft Word документи. Aspose.Words експортиране на посочения език към изход PDF с *Lang* атрибут, прикрепен към маркирано съдържание последователност или Span таг го контролира от [ExportLanguageToSpanTag](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportLanguageToSpanTag) собственост. Обикновено няма езикови въпроси, когато текст се въвежда от потребителя чрез Microsoft Word. Но има вероятност езикът да е неточен, ако текстът се генерира автоматично.

{{% alert color="secondary" %}}
<details>
    <summary>Спецификацията ни казва следното (разширяване, за да видите подробности):</summary>
    <p></p>
    <p>По подразбиране естественият език за целия текст във файла трябва да бъде посочен от Lang вписването в документа.</p>
    <p>Цялото текстово съдържание в рамките на файл, който се различава от езика по подразбиране, следва да бъде посочено чрез използване на `Lang` собственост, прикрепена към маркирано съдържание последователност, или чрез Lang вписване в елемент на структурата речник ...</p>
    <p>ISO- 19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Освен това за PDF/UA-1 спецификацията ни казва следното (за да видим подробности):</summary>
    <p></p>
    <p>Естественият език се обявява... Обявяват се промени в естествения език.</p>
    <p>ISO- 14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>В този блок можете да видите примери: как да се гарантира, че езикът е посочен правилно (разширяване, за да видите подробности).</summary>
    <p></p>
    <p>Потребителите следва да гарантират, че езикът е посочен правилно в документа с източник Word:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>Или изходния PDF документ:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Фигура Caption

|  PDF стандартни нива на съответствие в рамките на Aspose.Words |  Наличие на изискване |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word документите позволяват на потребителите да добавят надпис на фигурата.

{{% alert color="secondary" %}}
<details>
    <summary>Спецификацията ни казва следното (разширяване, за да видите подробности):</summary>
    <p></p>
    <p>Надпис, придружаваща фигура, се маркира с табелка "Caption."</p>
    <p>ISO- 14289-1, 7. 3</p>
</details>
{{% /alert %}}

В момента Aspose.Words не може да изнася надписи с таг за надпис, така че те трябва да бъдат маркирани в изходния PDF.

{{% alert color="secondary" %}}
<details>
    <summary>В този блок можете да видите примери: как да вмъкнете надписа (за да видите подробности).</summary>
    <p></p>
    <p>В Microsoft Word, надписът може да бъде поставен чрез контекстното меню:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>В Acrobat заглавието може да бъде добавено или променено чрез `Object` Диалог за настройки:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Алтернативни описания

|  PDF стандартни нива на съответствие в рамките на Aspose.Words |  Наличие на изискване |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word документите позволяват на потребителите да добавят алтернативен текст към изображения, форми и таблици. Aspose.Words експортиране на такъв алтернативен текст към изхода PDF.

{{% alert color="secondary" %}}
<details>
    <summary>Спецификацията ни казва следното (разширяване, за да видите подробности):</summary>
    <p></p>
    <p>Всички структурни елементи, чието съдържание няма естествен предварително определен текстов аналог, например изображения, формули и т.н., следва да предоставят алтернативен текстово описание с помощта на Alt запис в речника...</p>
    <p>БЕЛЕЖКА Алтернативните описания предоставят текстови описания, които помагат при правилното тълкуване на иначе непрозрачно нетекстуално съдържание.</p>
    <p>ISO- 19005- 2, 6. 7. 5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>В този блок можете да видите примери: как да се гарантира, че всички елементи имат алтернативен текст (за да видите подробности).</summary>
    <p></p>
    <p>Потребителите следва да гарантират, че всички елементи имат алтернативен текст в документа с източника Word:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Или изходния PDF документ:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Алтернативни описания за хипервръзки

|  PDF стандартни нива на съответствие в рамките на Aspose.Words |  Наличие на изискване |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

В допълнение към предишната точка, Microsoft Word документите също позволяват на потребителите да добавят алтернативен текст към хипервръзките. Aspose.Words експортиране на такъв алтернативен текст към изхода PDF.

За съжаление, не всяко приложение ви позволява да създадете алтернативно описание. Например, Adobe Acrobat понастоящем не позволява да се създаде такова описание за хипервръзки. Но в Microsoft Word, Можете да направите следното:

<img src="/words/java/working-with-pdfa-or-pdfua/alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

Понякога има проблем, че не е възможно да зададете алт текст за автоматично генерирани хипервръзки в съдържанието (TOC) чрез Microsoft Word GUI. Aspose.Words може да актуализира такива полета и да генерира връзките самостоятелно.

Следвайте примера с кода за актуализиране `TOC` полета, използващи Aspose.Words Document Object Model (DOM):

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

### Заглавни части на таблицата

|  PDF стандартни нива на съответствие в рамките на Aspose.Words |  Наличие на изискване |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Таблици в PDF/UA-1 документите трябва да имат заглавни части по колона, ред или и двете. PDF/A изисква само стандартна таблица, която няма допълнителни ограничения. Имайте предвид, че Aspose.Words генерира стандартната таблица автоматично.

{{% alert color="secondary" %}}
<details>
    <summary>Спецификацията ни казва следното (разширяване, за да видите подробности):</summary>
    <p></p>
    <p>Масите трябва да включват заглавни части... Таблици могат да съдържат колони заглавни части, ред заглавни части или и двете.</p>
    <p>ISO- 14289-1, 7. 5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>В този блок можете да видите примери: как да настроите заглавната част на масата (разширете, за да видите подробности).</summary>
    <p></p>
    <p>Заглавната част на масата може да се постави или източник Microsoft Word документ:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>Или изхода PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Заместващ текст

|  PDF стандартни нива на съответствие в рамките на Aspose.Words |  Наличие на изискване |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>Спецификацията ни казва следното (разширяване, за да видите подробности):</summary>
    <p></p>
    <p>Спецификацията ни казва следното:</p>
    <p>Всички текстови елементи на структурата, които са представени по нестандартен начин, например потребителски символи или онлайн графики, следва да предоставят заместващ текст с помощта на `ActualText` влизане в речника на елементите на структурата...</p>
    <p>ISO- 19005-2, 6. 7. 7</p>
</details>
{{% /alert %}}

Microsoft Word документът не позволява на потребителите да задават заместващ текст. Така че това трябва да се провери и фиксира в изхода PDF:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Съкращения и разширения на акроними

|  PDF стандартни нива на съответствие в рамките на Aspose.Words |  Наличие на изискване |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>Спецификацията ни казва следното (разширяване, за да видите подробности):</summary>
    <p></p>
    <p>Всички случаи на съкращения и съкращения в текстовото съдържание трябва да бъдат поставени в последователност от подчертано съдържание с таг Span, чиято собственост осигурява текстово разширяване на съкращението или съкращението...</p>
<p>ISO- 19005-2, 6.7. 8</p>
</details>
{{% /alert %}}

Microsoft Word документът не позволява на потребителите да определят съкращения и акроними разширения. Така че това трябва да се провери и фиксира в изхода PDF:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Заглавие на документа

|  PDF стандартни нива на съответствие в рамките на Aspose.Words |  Наличие на изискване |
|  --------------------------------------------------  |  ------------------------------------------------------------  |
|  PDF/A-1a |                                                                |
|  PDF/A-2a |                                                                |
|  PDF/A-4 |                                                                |
|  PDF/UA-1 |  {{< emoticons/tick >}}<br/>Документът в PDF/UA-1 следва да има заглавие |

{{% alert color="secondary" %}}
<details>
    <summary>Спецификацията ни казва следното (разширяване, за да видите подробности):</summary>
    <p></p>
    <p>Спецификацията ни казва следното:</p>
    <p>Метеорологичният поток в каталогния речник на документа по-долу трябва да съдържа следния текст:</p>
    <p>ISO- 14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>В този блок можете да видите примери: как да зададете заглавието на документа (за да видите подробности).</summary>
    <p></p>
    <p>Заглавието на документа може да бъде създадено или от източника Microsoft Word документ:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>Или изхода PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Изисквания към шрифта

|  PDF стандартни нива на съответствие в рамките на Aspose.Words |  Наличие на изискване |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Съществуват и редица нюанси на работа с шрифтове при конвертиране в PDF/A-1, PDF/A-2, PDF/A-4 или PDF/UA-1 формати, използващи Aspose.Words. Те трябва да бъдат взети предвид, ако искате да избегнете възможни проблеми с изходния документ.

Разделите по-долу описват такива нюанси и възможности за тяхното решение.

### Шрифт Правни изисквания

|  PDF стандартни нива на съответствие в рамките на Aspose.Words |  Наличие на изискване |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words не проверява правните ограничения на използваните шрифтове. С други думи, потребителят не трябва да предоставя неподходящи шрифтове за PDF преобразуване с помощта на Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>Спецификацията ни казва следното (разширяване, за да видите подробности):</summary>
    <p></p>
    <p>Използват се само програми за издаване на шрифтове, които са законно вградени във файл за неограничени универсален превод.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (точно същите цитати в две спецификации)</p>
</details>
{{% /alert %}}

### .notdef Glyph

|  PDF стандартни нива на съответствие в рамките на Aspose.Words |  Наличие на изискване |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Използване на `.notdef` glyph е забранено. На `.notdef` glyph ще се появи, ако документът съдържа знаци, които не присъстват в избрания шрифт и които също не могат да бъдат решени чрез механизма Font Fallback.

{{% alert color="secondary" %}}
<details>
    <summary>Спецификацията ни казва следното (разширяване, за да видите подробности):</summary>
    <p></p>
    <p>Документът за съответствие не трябва да съдържа позоваване на документа .notdef glyph от който и да е от операторите, показващи текста, независимо от режима на текстово предаване, във всеки поток от съдържание.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7,21.8 (точно същите цитати в две спецификации)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>В този блок можете да видите примери: как да премахнете или замените тези символи (разширете, за да видите подробности).</summary>
    <p></p>
    <p>Потребителите трябва да премахнат или заменят тези знаци в документа с източника Word:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Или изходния PDF документ с помощта на инструмента "Редактиране на PDF":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Частна зона за използване (PUA)

|  PDF стандартни нива на съответствие в рамките на Aspose.Words |  Наличие на изискване |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

Private Use Area (PUA) символи се появяват най-вече за Windows символични шрифтове като "Symbol," "Wings," "Webdings" и др. Microsoft Word форматите не предоставят опция за съхраняване на действителния текст за символи.

{{% alert color="secondary" %}}
<details>
    <summary>Спецификацията ни казва следното (разширяване, за да видите подробности):</summary>
    <p></p>
    <p>За ниво Само съответствие, за всеки символ ..., който е картографиран с код или кодове в Unicode Private Use Area (PUA), за този символ или поредица от символи, от които този символ е част.</p>
    <p>ISO- 19005-2, 6.2.11.7. 3</p>
</details>
{{% /alert %}}

"Segoe UI символ" е Windows Unicode шрифт, който може да се използва като алтернатива на символични шрифтове.

{{% alert color="secondary" %}}
<details>
    <summary>В този блок можете да видите примери: какво трябва да направи потребителят, за да реши проблема със символични шрифтове (за да видите подробности).</summary>
    <p></p>
    <p>Замяна на символичния шрифт с Unicode one в документа източник Word:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>Или да добавите текстов запис към проблемните знаци в изходния PDF документ:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
