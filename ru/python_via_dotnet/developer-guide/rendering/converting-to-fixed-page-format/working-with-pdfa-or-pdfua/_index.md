---
title: Работа с PDF/A или PDF/UA
second_title: Aspose.Words для Python
articleTitle: Работа с PDF/A или PDF/UA
linktitle: Работа с PDF/A или PDF/UA
description: "Конвертируйте в PDF/A-1, PDF/A-2, PDF/A-4 и PDF/UA с помощью Python. При преобразовании в документы PDF/A возникает несколько проблем, и Aspose.Words для Python решает их."
type: docs
weight: 28
url: /ru/python-net/working-with-pdfa-or-pdfua/
---

Форматы PDF/A и PDF/UA налагают ряд требований, связанных с содержимым документа, которые невозможно выполнить при автоматическом преобразовании документа формата Word в PDF. Эти требования следует проверить и исправить либо в документе Word перед преобразованием, либо в документе PDF после преобразования, чтобы создать документ, полностью совместимый с PDF/A и PDF/UA.

Основные требования предъявляются к структуре или шрифтам документа PDF/A и PDF/UA, которые мы рассмотрим в следующих разделах.

{{% alert color="primary" %}}

Обратите внимание, что выходные данные PDF/UA-1 также будут соответствовать WCAG 2.0 и разделу 508.

{{% /alert %}}

## Требования к структуре документа

Текущие требования относятся к форматам PDF/A-1a, PDF/A-2a, PDF/A-4 и PDF/UA-1.

Есть некоторые нюансы работы Aspose.Words при конвертации в различные стандарты формата PDF. Их необходимо учитывать, если вы хотите получить ожидаемый результат.

{{% alert color="primary" %}}

Обратите внимание, что для PDF/A-4 не существует требований к логической структуре. По этой причине мы не рассматриваем версию PDF/A-4 в этом разделе "Требования к структуре документа".

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
   <summary>Спецификация сообщает нам следующее (разверните, чтобы увидеть подробности):</summary>
   <p></p>
   <p>Авторам не рекомендуется генерировать структурную или семантическую информацию с использованием автоматизированных процессов без соответствующей проверки.</p>
   <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

В подразделах ниже описаны нюансы работы Aspose.Words при конвертации в различные стандарты формата PDF и варианты их решения.

### Тип структуры

|  Уровни соответствия стандарту PDF в пределах Aspose.Words |  Наличие требования |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

PDF-документ представляет собой последовательность блоков, таких как заголовки, абзацы, таблицы и другие. Эти блоки образуют структуру документа – сильную или слабую.

Для PDF/A справедливы как сильная, так и слабая структуры. Microsoft Word документов имеют слабую структуру по своей природе, а Aspose.Words создает PDF со слабой структурой соответственно, а также генерирует заголовки в соответствии с уровнями структуры абзацев в исходном документе.

Для документа PDF/UA-1 со слабой структурой дополнительно требуется, чтобы номера заголовков шли по порядку, без пропусков.

{{% alert color="secondary" %}}
<details>
   <summary>В спецификации говорится следующее (разверните, чтобы увидеть подробности):</summary>
   <p></p>
   <p>Структура уровня блока может следовать одной из двух основных парадигм:</p>
   </ol>
     <li>Сильно структурированный. Элементы группировки имеют столько уровней, сколько необходимо, чтобы отразить организацию материала по статьям, разделам, подразделам и т.д. На каждом уровне дочерние элементы группирующего элемента должны состоять из заголовка (H), одного или нескольких абзацев (P) для контента на этом уровне и, возможно, одного или нескольких дополнительных элементов группировки для вложенных подразделов.</li>
     <li>Слабо структурирован. Документ относительно плоский, имеющий, возможно, только один или два уровня группировки элементов, причем все заголовки, абзацы и другие BLSE являются их непосредственными дочерними элементами. В этом случае организация материала не отражается на логической структуре; однако это может быть выражено путем использования заголовков определенных уровней (H1–H6).</li>
   </ol>
   <p></p>
   <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
   <summary>Для документов PDF/UA-1 спецификация содержит дополнение, связанное с уровнями заголовков (разверните, чтобы увидеть подробности):</summary>
   <p></p>
   <p>Если семантика документа требует нисходящей последовательности заголовков, такая последовательность должна выполняться в строгом числовом порядке и не должна пропускать промежуточный уровень заголовка. H1 H2 H3 допустимо, а H1 H3 — нет.</p>
   <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Чтобы обеспечить правильный вывод, пользователи должны убедиться, что содержимое исходного документа правильно организовано и уровни структуры правильно указаны для абзацев. В противном случае пользователю следует проверить и исправить структуру выходного PDF-документа.

{{% alert color="secondary" %}}
<details>
   <summary>В этом блоке вы можете увидеть примеры: как установить уровни структуры в Microsoft Word или проверить и исправить структуру выходного PDF-документа (разверните, чтобы увидеть подробности).</summary>
   <p></p>
   <p>В Microsoft Word стили "Заголовок X" по умолчанию можно было использовать для установки уровня структуры:</p>
   <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWЗаголовок1-2" style="width:800px"/>
   <p>Кроме того, уровень структуры можно проверить или изменить в окне "Абзац":</p>
   <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
   <p>В Acrobat структуру документа можно проверить или изменить на панели "Теги":</p>
   <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="AcrobatТегиПанель" style="width:800px"/>
</details>
{{% /alert %}}

### Маркировка контента как артефакта

|  Уровни соответствия стандарту PDF в пределах Aspose.Words |  Наличие требования |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

На данный момент Aspose.Words помечает верхние и нижние колонтитулы страниц, разделители нот, повторяющиеся ячейки заголовков таблиц и декоративные изображения как артефакты. Обратите внимание, что этот список может быть обновлен в будущем.

{{% alert color="secondary" %}}
<details>
   <summary>В спецификации говорится следующее (разверните, чтобы увидеть подробности):</summary>
   <p></p>
   <p>Графические объекты в документе можно разделить на два класса:</p>
   </ol>
     <li>Реальное содержимое документа включает объекты, представляющие материал, первоначально представленный автором документа.</li>
     <li>Артефакты — это графические объекты, которые не являются частью исходного контента автора, а скорее создаются соответствующим писателем в ходе нумерации страниц, компоновки или других строго механических процессов.</li>
   </ol>
   <p></p>
   <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Если документ содержит какой-либо другой контент, который следует пометить как артефакт, или если какой-либо артефактный контент является реальным контентом, клиенты должны исправить это в выходном PDF-файле.

{{% alert color="secondary" %}}
<details>
   <summary>В этом блоке вы можете увидеть примеры: как пометить фигуры как декоративные в Microsoft Word или пометить фигуру как артефакт в выходном PDF-документе (разверните, чтобы увидеть подробности).</summary>
   <p></p>
   <p>Например, фигуры могут быть помечены как декоративные в Microsoft Word, поэтому они будут экспортированы в PDF как артефакт:</p>
   <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWДекоративнаяФорма" style="width:800px"/>
   <p>Вы можете пометить фигуру как артефакт в выходном PDF-файле:</p>
  <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
   <p>Кроме того, вы можете переключить текст в заголовке с артефакта на реальный контент в выходном PDF-файле:</p>
   <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Спецификация естественного языка

|  Уровни соответствия стандарту PDF в пределах Aspose.Words |  Наличие требования |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Язык текста указан в Microsoft Word документе. Aspose.Words экспортирует указанный язык в выходной PDF-файл с атрибутом *Lang*, прикрепленным к последовательности маркированного содержимого или тегу Span — он контролируется свойством [export_language_to_span_tag](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/export_language_to_span_tag/). Обычно не возникает языковых проблем, когда пользователь вводит текст через номер Microsoft Word. Но существует вероятность того, что язык может быть неточным, если текст генерируется автоматически.

{{% alert color="secondary" %}}
<details>
   <summary>В спецификации говорится следующее (разверните, чтобы увидеть подробности):</summary>
   <p></p>
   <p>Естественный язык по умолчанию для всего текста в файле должен быть указан в записи Lang в словаре каталога документа.</p>
   <p>Все текстовое содержимое файла, которое отличается от языка по умолчанию, должно быть указано с помощью свойства `Lang`, прикрепленного к последовательности маркированного содержимого, или записи Lang в словаре элементов структуры...</p>
   <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
   <summary>Кроме того, для PDF/UA-1 спецификация сообщает нам следующее (разверните, чтобы увидеть подробности):</summary>
   <p></p>
   <p>Должен быть объявлен естественный язык… Должны быть объявлены изменения в естественном языке.</p>
   <p>ISO-14289-1, 7,2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
   <summary>В этом блоке вы можете увидеть примеры: как убедиться, что язык указан правильно (разверните, чтобы увидеть подробности).</summary>
   <p></p>
   <p>Пользователи должны убедиться, что язык указан правильно в исходном документе Word:</p>
   <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWЯзык" style="width:800px"/>
   <p>Или выходной PDF-документ:</p>
   <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatПроверитьИзменитьЯзык" style="width:800px"/>
</details>
{{% /alert %}}

### Альтернативные описания

|  Уровни соответствия стандарту PDF в пределах Aspose.Words |  Наличие требования |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Документы Microsoft Word позволяют пользователям добавлять альтернативный текст к изображениям, фигурам и таблицам. Aspose.Words экспортирует такой альтернативный текст в выходной PDF-файл.

{{% alert color="secondary" %}}
<details>
   <summary>В спецификации говорится следующее (разверните, чтобы увидеть подробности):</summary>
   <p></p>
   <p>Все элементы структуры, содержимое которых не имеет естественного заранее определенного текстового аналога, например изображения, формулы и т.д., должны предоставлять альтернативное текстовое описание с использованием записи Alt в словаре элементов структуры...</p>
   <p>П р и м е ч а н и е — Альтернативные описания представляют собой текстовые описания, которые помогают правильно интерпретировать нетекстовое содержимое, которое в противном случае было бы непрозрачным.</p>
   <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
   <summary>В этом блоке вы можете увидеть примеры: как сделать так, чтобы все элементы имели альтернативный текст (разверните, чтобы увидеть подробности).</summary>
   <p></p>
   <p>Пользователи должны убедиться, что все элементы имеют альтернативный текст в исходном документе Word:</p>
   <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="Мвтаблеальттекст" style="width:800px"/>
   <p></p>
   <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="Мвшапеальттекст" style="width:800px"/>
   <p>Или выходной PDF-документ:</p>
   <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
   <p></p>
   <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Текст замены

|  Уровни соответствия стандарту PDF в пределах Aspose.Words |  Наличие требования |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
   <summary>В спецификации говорится следующее (разверните, чтобы увидеть подробности):</summary>
   <p></p>
   <p>Спецификация сообщает нам следующее:</p>
   <p>Все элементы текстовой структуры, представленные нестандартным образом, например пользовательские символы или встроенная графика, должны предоставлять заменяющий текст с использованием записи `ActualText` в словаре элементов структуры...</p>
   <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Документ Microsoft Word не позволяет пользователям задавать заменяющий текст. Поэтому это необходимо проверить и исправить в выходном PDF-файле:

<img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Расширения сокращений и аббревиатур

|  Уровни соответствия стандарту PDF в пределах Aspose.Words |  Наличие требования |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
   <summary>В спецификации говорится следующее (разверните, чтобы увидеть подробности):</summary>
   <p></p>
   <p>Все экземпляры сокращений и акронимов в текстовом содержимом должны быть помещены в последовательность размеченного содержимого с помощью тега Span, свойство E которого обеспечивает текстовое расширение сокращения или акронима...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Документ Microsoft Word не позволяет пользователям устанавливать сокращения и расширения акронимов. Поэтому это необходимо проверить и исправить в выходном PDF-файле:

<img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Требования к шрифтам

|  Уровни соответствия стандарту PDF в пределах Aspose.Words |  Наличие требования |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Также имеется ряд нюансов работы со шрифтами при конвертации в форматы PDF/A-1, PDF/A-2, PDF/A-4 или PDF/UA-1 с использованием Aspose.Words. Их необходимо учитывать, если вы хотите во избежание возможных проблем с выходным документом.

В разделах ниже описаны такие нюансы и варианты их решения.

### Юридические требования к шрифтам

|  Уровни соответствия стандарту PDF в пределах Aspose.Words |  Наличие требования |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words не проверяет юридические ограничения используемых шрифтов – это на усмотрение пользователей. Другими словами, пользователь не должен предоставлять неподходящие шрифты для преобразования PDF с использованием Aspose.Words.

{{% alert color="secondary" %}}
<details>
   <summary>В спецификации говорится следующее (разверните, чтобы увидеть подробности):</summary>
   <p></p>
   <p>Должны использоваться только программы шрифтов, которые разрешены законом для встраивания в файл для неограниченного универсального рендеринга.</p>
   <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (точно одинаковые котировки в двух спеках)</p>
</details>
{{% /alert %}}

### .notdef Глиф

|  Уровни соответствия стандарту PDF в пределах Aspose.Words |  Наличие требования |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Использование глифа `.notdef` запрещено. Глиф `.notdef` появится, если документ содержит символы, которых нет в выбранном шрифте и которые также невозможно разрешить с помощью механизма возврата шрифта.

{{% alert color="secondary" %}}
<details>
   <summary>В спецификации говорится следующее (разверните, чтобы увидеть подробности):</summary>
   <p></p>
   <p>Соответствующий документ не должен содержать ссылку на глиф .notdef ни в одном из операторов отображения текста, независимо от режима рендеринга текста, в любом потоке контента.</p>
   <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (в двух спецификациях абсолютно одинаковые котировки)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
   <summary>В этом блоке вы можете увидеть примеры: как удалить или заменить эти символы (разверните, чтобы увидеть подробности).</summary>
   <p></p>
   <p>Пользователи должны удалить или заменить эти символы в исходном документе Word:</p>
   <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefГлиф" style="width:800px"/>
   <p>Или выходной PDF-документ с помощью инструмента "Редактировать PDF":</p>
   <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Зона частного использования (PUA)

|  Уровни соответствия стандарту PDF в пределах Aspose.Words |  Наличие требования |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

Символы области частного использования (PUA) появляются в основном для Windows символических шрифтов, таких как "Symbol", "Wingdings", "Webdings" и других. Форматы Microsoft Word не предоставляют возможности хранить фактический текст символов.

{{% alert color="secondary" %}}
<details>
   <summary>Спецификация сообщает нам следующее (разверните, чтобы увидеть подробности):</summary>
   <p></p>
   <p>Только для соответствия уровню А для любого символа..., который сопоставлен с кодом или кодами в области частного использования Unicode (PUA), запись ActualText... должна присутствовать для этого символа или последовательности символов, из которых такие персонаж — это часть.</p>
   <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Символ Segoe UI" — это шрифт Unicode Windows, который можно использовать в качестве альтернативы символическим шрифтам.

{{% alert color="secondary" %}}
<details>
   <summary>В этом блоке вы можете увидеть примеры: что следует сделать пользователю, чтобы решить проблему с символическими шрифтами (разверните, чтобы увидеть подробности).</summary>
   <p></p>
   <p>Замените символический шрифт на шрифт Unicode в исходном документе Word:</p>
   <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
   <p>Или добавьте запись ActualText к проблемным символам в выходном PDF-документе:</p>
   <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}