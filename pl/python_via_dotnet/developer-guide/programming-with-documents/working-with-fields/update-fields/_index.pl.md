---
title: Aktualizacja pól Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Aktualizuj pola
linktitle: Aktualizuj pola
description: "Aktualizuj pola w dokumencie na różne sposoby i używając różnych opcji w Python."
type: docs
weight: 30
url: /pl/python-net/update-fields/
timestamp: 2024-01-27-14-07-04
---

Zazwyczaj pole wstawione do Microsoft Word zawiera już aktualną wartość. Przykładowo, jeśli polem jest formuła lub numer strony, będzie ona zawierać poprawną wyliczoną wartość dla danej wersji dokumentu. Jeśli jednak masz aplikację, która generuje lub modyfikuje dokument za pomocą pól, na przykład łącząc dwa dokumenty lub wypełniając go danymi, w idealnym przypadku wszystkie pola muszą zostać zaktualizowane, aby dokument był użyteczny.

## Jak zaktualizować pola

Po załadowaniu dokumentu Aspose.Words naśladuje zachowanie Microsoft Word z wyłączoną opcją automatycznej aktualizacji pól. Zachowanie można podsumować w następujący sposób:

- po otwarciu/zapisaniu dokumentu pola pozostają nienaruszone
- możesz jawnie zaktualizować wszystkie pola w dokumencie (np. przebudować spis treści), kiedy zajdzie taka potrzeba
- podczas drukowania/renderowania do formatu PDF lub XPS, pola związane z numeracją stron w nagłówkach/stopkach są aktualizowane
- po uruchomieniu Mail Merge wszystkie pola są aktualizowane automatycznie

### Aktualizuj pola programowo

Aby jawnie zaktualizować pola w całym dokumencie, po prostu wywołaj [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/). Aby zaktualizować pola zawarte w części dokumentu, należy uzyskać obiekt [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) i wywołać metodę [update_fields](https://reference.aspose.com/words/python-net/aspose.words/range/update_fields/). W Aspose.Words możesz uzyskać **Range** dla dowolnego węzła w drzewie dokumentu, takiego jak [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) itp., używając właściwości [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/). Możesz zaktualizować wynik pojedynczego pola, wywołując metodę [update](https://reference.aspose.com/words/python-net/aspose.words.fields/field/update/).

### Automatyczna aktualizacja pól związanych ze stroną podczas renderowania

W przypadku konwersji dokumentu do formatu o stałej stronie np. do PDF lub XPS, Aspose.Words automatycznie zaktualizuje pola związane z układem strony `PAGE`, `PAGEREF` znajdujące się w nagłówkach/stopkach dokumentu. To zachowanie naśladuje zachowanie Microsoft Word podczas drukowania dokumentu.

Jeśli chcesz zaktualizować wszystkie pozostałe pola w dokumencie, musisz wywołać [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/) przed wyrenderowaniem dokumentu.

Poniższy przykład kodu pokazuje, jak zaktualizować wszystkie pola przed wyrenderowaniem dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-UpdateDocFields.py" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### Automatyczna aktualizacja pola podczas Mail Merge

Po wykonaniu Mail Merge wszystkie pola w dokumencie zostaną automatycznie zaktualizowane. Dzieje się tak, ponieważ Mail Merge jest przypadkiem aktualizacji w terenie. Program natrafia na pole Mail Merge i musi zaktualizować jego wynik, co polega na pobraniu wartości ze źródła danych i wstawieniu jej do pola. Logika jest oczywiście bardziej skomplikowana, np. gdy osiągnięty zostanie koniec dokumentu/regionu mail merge, ale nadal pozostają dalsze dane do połączenia, wówczas region należy zduplikować i zaktualizować nowy zestaw pól.

## Zaktualizuj pola mające brudny atrybut

W:dirty to atrybut na poziomie pola, który po otwarciu dokumentu odświeży tylko określone pole. Informuje MS Word, aby tylko odświeżył to pole przy następnym otwarciu dokumentu. Możesz użyć właściwości [update_dirty_fields](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/update_dirty_fields/), aby określić, czy aktualizować pola za pomocą atrybutu brudnego. Gdy wartość **aktualizacja_dirty_fields** jest ustawiona na `True`, wszystkie pola posiadające wartość `True` dla właściwości [Field.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/field/is_dirty/) lub [FieldChar.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/is_dirty/) są aktualizowane podczas ładowania dokumentu.

Poniższy przykład kodu pokazuje, jak zaktualizować pola posiadające atrybut dirty:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UpdateDirtyFields.py" >}}

## Zaktualizuj właściwość LastSavedTime przed zapisaniem

Możesz użyć właściwości [SaveOptions.update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/), aby zaktualizować odpowiednią wbudowaną właściwość dokumentu [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) podczas zapisywania dokumentu.

Poniższy przykład kodu pokazuje, jak zaktualizować tę właściwość:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

