---
title: Робота з документами
second_title: Aspose.Words для Python via .NET
articleTitle: Робота з документами
linktitle: Робота з документами
description: "Робота з текстовим документом Pythonй"
type: docs
weight: 430
url: /uk/python-net/working-with-text-document/
---

У статті ми дізнаємось, які параметри можуть бути корисними для роботи з текстовим документом Aspose.Wordsй Будь ласка, зауважте, що це не повний список доступних варіантів, але тільки приклад роботи з деякими з них.

## Додати бі-прямий Марки

Ви можете використовувати [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) Введіть номер мобільного, який Ви вказали при укладаннi договору з банком - для ідентифікації. Aspose.Words вставки Unicode Character 'RIGHT-TO-LEFT MARK' (U+200F) перед кожним двостороннім [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) у тексті. Ця опція відповідає параметру "Додати двосторонні позначки" у діалоговому вікні перетворення файлів MS Word, коли ви експортуєте у формат Plain Text. Зауважте, що мова йде про діалог тільки в тому випадку, якщо будь-які з арабських або івритових мов редагування додаються в MS Word.

Приклад наступного коду показує, як використовувати [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) майно. Значення за замовчуванням цього майна `False`:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-AddBidiMarks.py" >}}

## Визначте елементи списку під час завантаження TXT

Aspose.Words може імпортувати список елементу текстового файлу як номери списку або звичайний текст у його типовій моделі об'єкта документа. Про нас [detect_numbering_with_whitespaces](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_numbering_with_whitespaces/) майно дозволяє вказати, як зареєстровані елементи списку визнаються, коли документ імпортується зі звичайного формату тексту:

* Ім'я * Якщо цей варіант встановлюється `True`, У списку також використовуються білі простори: алгоритм розпізнавання списку для кількості арабських стилів (1., 1.1.2.) використання як білих просторів, так і точок ().
* Ім'я * Якщо цей варіант встановлюється `False`, Алгоритм розпізнавання списків виявляє пункти списку, коли кінцеві числа списку з точки зору, правою дужкою або символами кулі (наприклад, "*", "-" або "o").

Приклад коду показує, як використовувати цю властивість:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DetectNumberingWithWhitespaces.py" >}}

## Ручка Провідні та підйомні місця Під час завантаження TXT

Ви можете контролювати спосіб обробки провідних і причепів при завантаженні TXT файл. Провідні простори можуть бути оброблені, збережені або перетворені в відступ і причепні приміщення можуть бути оброблені або збережені.

Наприклад, наступний код показує, як обрізати провідні та причіпні місця при імпорті TXT файл:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-HandleSpacesOptions.py" >}}

## Видалити документ Налаштування тексту

Aspose.Words Послуги [document_direction](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/document_direction/) нерухомість [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) клас для виявлення текстового напрямку (RTL / LTR) в документі. Це майно встановлює або отримує текстові напрямки документа, що надаються в [DocumentDirection](https://reference.aspose.com/words/python-net/aspose.words.loading/documentdirection/) заохочення. Значення за замовчуванням зліва направо.

Приклад наступного коду показує, як виявити текстовий напрямок документа при імпорті файлу TXT:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DocumentTextDirection.py" >}}

## Експорт заголовка та нижній колонтитул у вихідному TXT

Якщо ви хочете експортувати заголовок і нижній колонтитул у вихідному документі TXT, ви можете використовувати [export_headers_footers_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptionsbase/export_headers_footers_mode/) майно. Ця властивість вказує на те, як заголовки та нижній колонтитули експортуються в звичайний формат тексту.

Приклад коду показує, як експортувати заголовки та нижній колонтитул до звичайного формату тексту:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Document.docx")

options = aw.saving.TxtSaveOptions()
options.save_format = aw.SaveFormat.TEXT

# All headers and footers are placed at the very end of the output document.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.ALL_AT_END
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_A.txt", options)

# Only primary headers and footers are exported at the beginning and end of each section.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.PRIMARY_ONLY
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_B.txt", options)

# No headers and footers are exported.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.NONE
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_C.txt", options)
{{< /highlight >}}

## Виявлення експортного списку на виході TXT

Aspose.Words Введення [TxtListIndentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtlistindentation/) клас, який дозволяє визначити, як рівень списку відступаються при експорті до звичайного текстового формату. Під час роботи [TxtSaveOption](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/), Про нас [list_indentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/list_indentation/) майно надається, щоб вказати характер, який буде використовуватися для рівнів відступу і підрахунку, вказавши, скільки символів використовувати як відступ на один рівень списку. Значення за замовчуванням для властивості персонажа '\0' вказує на те, що немає відступу. Для підрахунку майна, значення за замовчуванням 0, що означає відсутність відступу.

### Використання символів вкладки

Приклад коду показує, як експортувати рівні списку за допомогою символів вкладки:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseTabCharacterPerLevelForListIndentation.py" >}}

### Використання космічних символів

Приклад коду показує, як експортувати рівні списку за допомогою символів простору:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseSpaceCharacterPerLevelForListIndentation.py" >}}

