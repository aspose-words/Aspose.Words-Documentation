---
title: Работа с PDF/A или PDF/UA
second_title: Aspose.Words для Java
articleTitle: Работа с PDF/A или PDF/UA
linktitle: Работа с PDF/A или PDF/UA
description: "Преобразование в PDF/A-1, PDF/A-2, PDF/A-4 и PDF/UA Java. Есть несколько проблем при конвертации в документы PDF/A. Aspose.Words для Java Решает их."
type: docs
weight: 28
url: /ru/java/working-with-pdfa-or-pdfua/
---

Формат PDF/A и PDF/UA предъявляет несколько требований к содержимому документа, которые не могут быть выполнены при автоматическом преобразовании из документа в формате Word в PDF. Эти требования должны быть проверены и исправлены либо в документе Word перед конверсией, либо в документе PDF после конверсии, чтобы создать полностью соответствующий документ PDF / A и PDF / UA.

Основные требования к структуре или шрифтам документа PDF/A и PDF/UA, которые мы рассмотрим в следующих разделах.

{{% alert color="primary" %}}

Обратите внимание, что выход PDF/UA-1 также будет соответствовать требованиям WCAG 2.0 и Раздела 508.

{{% /alert %}}

## Требования к структуре документов

Текущие требования к форматам PDF/A-1a, PDF/A-2a, PDF/A-4 и PDF/UA-1.

Есть некоторые нюансы того, как Aspose.Words Работает при конвертации в различные стандарты формата PDF. Их необходимо учитывать, если вы хотите получить ожидаемый результат.

{{% alert color="primary" %}}

Нет требований к логической структуре для PDF/A-4. По этой причине мы не рассматриваем версию PDF/A-4 в этом разделе "Требования к структуре документов".

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Спецификация говорит нам следующее (расширьте, чтобы увидеть детали):</summary>
    <p></p>
    <p>Авторам не рекомендуется создавать структурную или семантическую информацию с использованием автоматизированных процессов без соответствующей проверки.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

В приведенных ниже подразделах описываются нюансы того, как Aspose.Words Работает при конвертации в различные стандарты формата PDF и варианты их решения.

### Тип структуры

|  Стандартные уровни соответствия PDF в пределах Aspose.Words |  Наличие требования |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Документ PDF представляет собой последовательность блоков, таких как заголовки, абзацы, таблицы и другие. Эти блоки образуют структуру документа - сильно или слабо.

Как сильные, так и слабые структуры действительны для PDF/A. Microsoft Word документы имеют слабую структуру по дизайну; Aspose.Words Создает PDF со слабой структурой соответственно, а также генерирует заголовки согласно уровням контуров абзацев в исходном документе.

Для документа PDF/UA-1 со слабой структурой дополнительно требуется, чтобы номера заголовков шли в порядке без пробелов.

{{% alert color="secondary" %}}
<details>
    <summary>Спецификация говорит нам следующее (расширьте, чтобы увидеть детали):</summary>
    <p></p>
    <p>Структура на уровне блоков может следовать одной из двух основных парадигм:</p>
    </ol>
      <li>Сильно структурированы. Элементы группировки гнездятся на столько уровней, сколько необходимо для отражения организации материала в статьях, разделах, подразделах и так далее. На каждом уровне дети элемента группировки должны состоять из заголовка (H), одного или нескольких параграфов (P) для содержания на этом уровне и, возможно, одного или нескольких дополнительных элементов группировки для вложенных подразделов.</li>
      <li>Слабая структура. Документ является относительно плоским, имея, возможно, только один или два уровня группирующих элементов, со всеми заголовками, параграфами и другими BLSE. При этом организация материала не отражается в логической структуре, однако может быть выражена использованием заголовков с конкретными уровнями (Н1-Н6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Для документов PDF/UA-1 спецификация содержит дополнение, относящееся к уровням заголовков (расширить, чтобы увидеть детали):</summary>
    <p></p>
    <p>Если семантика документа требует нисходящей последовательности заголовков, такая последовательность должна протекать в строгом численном порядке и не должна пропускать промежуточный уровень заголовка. H1 H2 H3 допустим, а H1 H3 - нет.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Чтобы обеспечить правильный вывод, пользователи должны убедиться, что содержание исходного документа правильно организовано и уровни контуров правильно указаны для абзацев. В противном случае пользователь должен проверить и исправить структуру выводимого PDF-документа.

{{% alert color="secondary" %}}
<details>
    <summary>В этом блоке вы можете увидеть примеры: как установить уровни контуров в Microsoft Word или проверить и исправить структуру выходного документа PDF (расширить, чтобы увидеть детали).</summary>
    <p></p>
    <p>в Microsoft Word По умолчанию стили "Heading X" могут использоваться для определения уровня контура:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>Кроме того, уровень контуров можно было проверить или изменить в окне "Параграф":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>В Acrobat структура документа может быть проверена или изменена в панели "Тэги":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### Маркировка контента как артефакт

|  Стандартные уровни соответствия PDF в пределах Aspose.Words |  Наличие требования |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

В данный момент, Aspose.Words отмечает заголовки страниц и нижние колонтитулы, разделители заметок, повторяющиеся ячейки заголовков таблиц и декоративные изображения в качестве артефактов. Обратите внимание, что этот список может быть обновлен в будущем.

{{% alert color="secondary" %}}
<details>
    <summary>Спецификация говорит нам следующее (расширьте, чтобы увидеть детали):</summary>
    <p></p>
    <p>Графические объекты в документе можно разделить на два класса:</p>
    </ol>
      <li>Реальное содержание документа включает объекты, представляющие материал, первоначально представленный автором документа.</li>
      <li>Артефакты являются графическими объектами, которые не являются частью оригинального контента автора, а скорее генерируются автором в процессе создания страниц, макета или других строго механических процессов.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Если документ содержит какой-либо другой контент, который должен быть помечен как артефакт, или если какой-либо из артефактов является реальным контентом, клиенты должны исправить это на выходе PDF.

{{% alert color="secondary" %}}
<details>
    <summary>В этом блоке можно увидеть примеры: как маркировать формы как декоративные Microsoft Word или отметьте форму как артефакт в выходном документе PDF (расширьте, чтобы увидеть детали).</summary>
    <p></p>
    <p>Например, формы могут быть помечены как декоративные. Microsoft Word, Поэтому они будут экспортироваться в PDF в качестве артефакта:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>Вы можете пометить форму как артефакт на выходе PDF:</p>
      <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>Также можно переключать текст в заголовке с артефакта на реальный контент на выходе PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Спецификация естественного языка

|  Стандартные уровни соответствия PDF в пределах Aspose.Words |  Наличие требования |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Язык текста указывается в Microsoft Word Документы. Aspose.Words экспортирует указанный язык на выход PDF с *Lang* атрибут, прикрепленный к последовательности с пометкой или тегу Span - он контролируется [ExportLanguageToSpanTag](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportLanguageToSpanTag) собственность. Как правило, нет языковых проблем, когда текст вводится пользователем через Microsoft Word. Но есть вероятность, что язык может быть неточным, если текст генерируется автоматически.

{{% alert color="secondary" %}}
<details>
    <summary>Спецификация говорит нам следующее (расширьте, чтобы увидеть детали):</summary>
    <p></p>
    <p>Естественный язык по умолчанию для всего текста в файле должен быть указан записью Lang в словаре каталога документа.</p>
    <p>Все текстовое содержимое в файле, которое отличается от языка по умолчанию, должно быть указано с помощью `Lang` свойство, прикрепленное к последовательности с маркировкой контента или записью Lang в словаре элементов структуры.</p>
    <p>ISO19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Дополнительно для PDF/UA-1 спецификация сообщает нам следующее (расширить, чтобы увидеть детали):</summary>
    <p></p>
    <p>Естественный язык должен быть... Объявляются изменения в естественном языке.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>В этом блоке можно увидеть примеры: как убедиться, что язык указан правильно (расширить, чтобы увидеть детали).</summary>
    <p></p>
    <p>Пользователи должны убедиться, что язык указан правильно в исходном документе Word:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>Или выходной PDF-документ:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Рисунок

|  Стандартные уровни соответствия PDF в пределах Aspose.Words |  Наличие требования |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word Документы позволяют пользователям добавлять подпись.

{{% alert color="secondary" %}}
<details>
    <summary>Спецификация говорит нам следующее (расширьте, чтобы увидеть детали):</summary>
    <p></p>
    <p>Подпись, сопровождающая фигуру, должна быть помечена тегом подписи.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

В настоящее время Aspose.Words не может экспортировать подписи с тегом Caption, поэтому они должны быть помечены в выходном PDF.

{{% alert color="secondary" %}}
<details>
    <summary>В этом блоке можно увидеть примеры: как вставить подпись (расширить, чтобы увидеть детали).</summary>
    <p></p>
    <p>в Microsoft Word, Подпись может быть вставлена через контекстное меню:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>В Acrobat подпись может быть добавлена или изменена через `Object` Диалог свойств:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Альтернативные описания

|  Стандартные уровни соответствия PDF в пределах Aspose.Words |  Наличие требования |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word Документы позволяют пользователям добавлять альтернативный текст к изображениям, формам и таблицам. Aspose.Words экспортирует такой альтернативный текст на выход PDF.

{{% alert color="secondary" %}}
<details>
    <summary>Спецификация говорит нам следующее (расширьте, чтобы увидеть детали):</summary>
    <p></p>
    <p>Все элементы структуры, содержание которых не имеет естественного предопределенного текстового аналога, например изображения, формулы и т.д., должны предоставлять альтернативное текстовое описание с использованием записи Alt в словаре элементов структуры.</p>
    <p>Примечание Альтернативные описания предоставляют текстовые описания, которые помогают в правильной интерпретации непрозрачного нетекстового контента.</p>
    <p>ISO19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>В этом блоке можно увидеть примеры: как убедиться, что все элементы имеют альтернативный текст (расширить, чтобы увидеть детали).</summary>
    <p></p>
    <p>Пользователи должны убедиться, что все элементы имеют альтернативный текст в исходном документе Word:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Или выходной PDF-документ:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Альтернативные описания для гиперссылок

|  Стандартные уровни соответствия PDF в пределах Aspose.Words |  Наличие требования |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Помимо предыдущего пункта, Microsoft Word Документы также позволяют пользователям добавлять альтернативный текст в гиперссылки. Aspose.Words экспортирует такой альтернативный текст на выход PDF.

К сожалению, не каждое приложение позволяет настроить альтернативное описание. Например, Adobe Acrobat В настоящее время не позволяет настроить такое описание для гиперссылок. Но в Microsoft Word, Вы можете сделать это следующим образом:

<img src="/words/java/working-with-pdfa-or-pdfua/alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

Иногда возникает проблема, что невозможно установить альтернативный текст для автогенерированных гиперссылок в таблице содержимого (TOC) через Microsoft Word Чувак. Aspose.Words Они могут обновлять такие поля и генерировать ссылки самостоятельно.

Следуйте примеру кода для обновления `TOC` поля, использующие Aspose.Words Document Object Model ()DOM):

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

### Заголовок стола

|  Стандартные уровни соответствия PDF в пределах Aspose.Words |  Наличие требования |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Таблицы в документах PDF/UA-1 должны иметь заголовки - столбец, строку или оба. PDF/A требует только стандартной разметки таблицы, которая не имеет дополнительных ограничений. Обратите внимание, что Aspose.Words генерирует стандартную разметку таблицы автоматически.

{{% alert color="secondary" %}}
<details>
    <summary>Спецификация говорит нам следующее (расширьте, чтобы увидеть детали):</summary>
    <p></p>
    <p>Таблицы должны включать заголовки... Таблицы могут содержать заголовки колонок, заголовки строк или оба.</p>
    <p>ISO-14289-1, 7,5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>В этом блоке можно увидеть примеры: как установить заголовок таблицы (расширить, чтобы увидеть детали).</summary>
    <p></p>
    <p>Заголовок стола может быть настроен либо источником Microsoft Word документ:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>Или выходной PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Замена текста

|  Стандартные уровни соответствия PDF в пределах Aspose.Words |  Наличие требования |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>Спецификация говорит нам следующее (расширьте, чтобы увидеть детали):</summary>
    <p></p>
    <p>Спецификация говорит нам следующее:</p>
    <p>Все элементы текстуальной структуры, которые представлены нестандартным образом, например, пользовательские символы или встроенная графика, должны поставлять заменяющий текст с использованием стандарта. `ActualText` Введение в словарь элементов структуры...</p>
    <p>ISO19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word Документ не позволяет пользователям устанавливать заменяющий текст. Это необходимо проверить и исправить в выходном PDF:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Сокращения и акронимы Расширения

|  Стандартные уровни соответствия PDF в пределах Aspose.Words |  Наличие требования |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>Спецификация говорит нам следующее (расширьте, чтобы увидеть детали):</summary>
    <p></p>
    <p>Все экземпляры аббревиатур и аббревиатур в текстовом контенте должны быть помещены в последовательность с пометкой "Span", свойство E которой обеспечивает текстовое расширение аббревиатуры или аббревиатуры.</p>
<p>ISO19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word Документ не позволяет пользователям устанавливать аббревиатуры и акронимы расширений. Это необходимо проверить и исправить в выходном PDF:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Название документа

|  Стандартные уровни соответствия PDF в пределах Aspose.Words |  Наличие требования |
|  --------------------------------------------------  |  ------------------------------------------------------------  |
|  PDF/A-1a |                                                                |
|  PDF/A-2a |                                                                |
|  PDF/A-4 |                                                                |
|  PDF/UA-1 |  {{< emoticons/tick >}}<br/>Документ в формате PDF/UA-1 должен иметь название |

{{% alert color="secondary" %}}
<details>
    <summary>Спецификация говорит нам следующее (расширьте, чтобы увидеть детали):</summary>
    <p></p>
    <p>Спецификация говорит нам следующее:</p>
    <p>Поток метаданных в каталоге документа должен содержать запись dc:title, где dc является рекомендуемым префиксом для схемы метаданных Dublin Core.</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>В этом блоке можно увидеть примеры: как задать заголовок документа (расширить, чтобы увидеть детали).</summary>
    <p></p>
    <p>Заголовок документа может быть установлен либо источником Microsoft Word документ:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>Или выходной PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Требования к шрифтам

|  Стандартные уровни соответствия PDF в пределах Aspose.Words |  Наличие требования |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Существует также ряд нюансов работы с шрифтами при конвертации в форматы PDF/A-1, PDF/A-2, PDF/A-4 или PDF/UA-1 с использованием Aspose.Words. Их необходимо учитывать, если вы хотите избежать возможных проблем с выходным документом.

В приведенных ниже разделах описываются такие нюансы и варианты их решения.

### Юридические требования Font

|  Стандартные уровни соответствия PDF в пределах Aspose.Words |  Наличие требования |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words не проверяет законные ограничения используемых шрифтов – это зависит от пользователей. Другими словами, пользователь не должен предоставлять неуместные шрифты для преобразования PDF с использованием Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>Спецификация говорит нам следующее (расширьте, чтобы увидеть детали):</summary>
    <p></p>
    <p>Используются только программы шрифтов, которые юридически встраиваются в файл для неограниченного универсального рендеринга.</p>
    <p>ISO19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (точно такие же цитаты в двух спецификациях)</p>
</details>
{{% /alert %}}

### .notdef Glyph

|  Стандартные уровни соответствия PDF в пределах Aspose.Words |  Наличие требования |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Использование The `.notdef` glyph Запрещено. The `.notdef` glyph появится, если документ содержит символы, которые не присутствуют в выбранном шрифте и которые также не могут быть решены с помощью механизма Font Fallback.

{{% alert color="secondary" %}}
<details>
    <summary>Спецификация говорит нам следующее (расширьте, чтобы увидеть детали):</summary>
    <p></p>
    <p>Соответствующий документ не должен содержать ссылки на .notdef glyph от любого из текстов, показывающих операторов, независимо от режима рендеринга текста, в любом потоке контента.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (точно такие же котировки в двух спецификациях)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>В этом блоке можно увидеть примеры: как удалить или заменить эти символы (расширить, чтобы увидеть детали).</summary>
    <p></p>
    <p>Пользователи должны удалить или заменить эти символы в исходном документе Word:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Или выведите PDF-документ с помощью инструмента "Edit PDF":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Зона частного использования (PUA)

|  Стандартные уровни соответствия PDF в пределах Aspose.Words |  Наличие требования |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

Персонажи в зоне частного использования (PUA) в основном Windows Символические шрифты, такие как "Symbol", "Wingdings", "Webdings" и другие. Microsoft Word Форматы не предоставляют возможность хранения фактического текста для символов.

{{% alert color="secondary" %}}
<details>
    <summary>Спецификация говорит нам следующее (расширьте, чтобы увидеть детали):</summary>
    <p></p>
    <p>для уровня Только соответствие для любого символа ..., который отображается в коде или кодах в зоне частного использования Unicode (PUA), запись ActualText ... должна присутствовать для этого символа или последовательности символов, частью которых является такой символ.</p>
    <p>ISO19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

""Segoe UI Symbol" - это Windows шрифт Unicode, который можно использовать в качестве альтернативы символьным шрифтам.

{{% alert color="secondary" %}}
<details>
    <summary>В этом блоке можно увидеть примеры: что пользователь должен сделать, чтобы решить проблему с помощью символьных шрифтов (расширить, чтобы увидеть детали).</summary>
    <p></p>
    <p>Замените символьный шрифт на Unicode в исходном документе Word:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>Или добавьте запись ActualText к проблемным символам в выходном документе PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}