---
title: Praca z dokumentem tekstowym
second_title: Aspose.Words dla Python via .NET
articleTitle: Praca z dokumentem tekstowym
linktitle: Praca z dokumentem tekstowym
description: "Pracuj z dokumentem tekstowym i modyfikuj jego obiekty za pomocą Python."
type: docs
weight: 430
url: /pl/python-net/working-with-text-document/
---

W tym artykule dowiemy się, jakie opcje mogą się przydać podczas pracy z dokumentem tekstowym poprzez Aspose.Words. Należy pamiętać, że nie jest to pełna lista dostępnych opcji, a jedynie przykład pracy z niektórymi z nich.

## Dodaj znaki dwukierunkowe

Możesz użyć właściwości [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/), aby określić, czy dodawać znaki dwukierunkowe przed każdym uruchomieniem BiDi podczas eksportowania w formacie zwykłego tekstu. Aspose.Words wstawia znak Unicode "ZNAK OD PRAWEJ DO LEWEJ" (U+200F) przed każdym dwukierunkowym plikiem [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) w tekście. Ta opcja odpowiada opcji "Dodaj znaki dwukierunkowe" w oknie dialogowym Konwersja pliku MS Word podczas eksportu do formatu zwykłego tekstu. Należy pamiętać, że pojawia się on w dialogu tylko wtedy, gdy w MS Word dodano którykolwiek z arabskich lub hebrajskich języków edycji.

Poniższy przykład kodu pokazuje, jak używać właściwości [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/). Domyślna wartość tej właściwości to `False`:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-AddBidiMarks.py" >}}

## Rozpoznaj elementy listy podczas ładowania TXT

Aspose.Words może importować elementy listy z pliku tekstowego jako numery list lub zwykły tekst w swoim modelu obiektowym dokumentu. Właściwość [detect_numbering_with_whitespaces](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_numbering_with_whitespaces/) pozwala określić sposób rozpoznawania numerowanych elementów listy, gdy dokument jest importowany z formatu zwykłego tekstu:

* Jeśli ta opcja jest ustawiona na `True`, białe znaki są również używane jako ograniczniki numerów list: algorytm rozpoznawania list dla numeracji w stylu arabskim (1., 1.1.2.) używa zarówno białych znaków, jak i symboli kropki (.").
* Jeśli ta opcja jest ustawiona na `False`, algorytm rozpoznawania list wykrywa akapity listy, gdy numery listy kończą się kropką, prawym nawiasem lub symbolami punktorów (takimi jak "•", "*", "-" lub "o").

Poniższy przykład kodu pokazuje, jak używać tej właściwości:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DetectNumberingWithWhitespaces.py" >}}

## Obsługuj spacje początkowe i końcowe podczas ładowania TXT

Możesz kontrolować sposób obsługi spacji początkowych i końcowych podczas ładowania pliku TXT. Spacje początkowe można przyciąć, zachować lub przekształcić w wcięcie, a spacje końcowe można przyciąć lub zachować.

Poniższy przykład kodu pokazuje, jak przyciąć spacje początkowe i końcowe podczas importowania pliku TXT:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-HandleSpacesOptions.py" >}}

## Wykryj kierunek tekstu dokumentu

Aspose.Words zapewnia właściwość [document_direction](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/document_direction/) w klasie [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) do wykrywania kierunku tekstu (RTL/LTR) w dokumencie. Ta właściwość ustawia lub pobiera wskazówki dotyczące tekstu dokumentu podane w wyliczeniu [DocumentDirection](https://reference.aspose.com/words/python-net/aspose.words.loading/documentdirection/). Wartość domyślna jest od lewej do prawej.

Poniższy przykład kodu pokazuje, jak wykryć kierunek tekstu w dokumencie podczas importowania pliku TXT:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DocumentTextDirection.py" >}}

## Eksportuj nagłówek i stopkę w wyjściowym formacie TXT

Jeśli chcesz wyeksportować nagłówek i stopkę w wyjściowym dokumencie TXT, możesz użyć właściwości [export_headers_footers_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptionsbase/export_headers_footers_mode/). Ta właściwość określa sposób, w jaki nagłówki i stopki są eksportowane do formatu zwykłego tekstu.

Poniższy przykład kodu pokazuje, jak eksportować nagłówki i stopki do formatu zwykłego tekstu:

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

## Eksportuj wcięcie listy w wyjściowym formacie TXT

Aspose.Words wprowadził klasę [TxtListIndentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtlistindentation/), która pozwala określić sposób wcięcia poziomów listy podczas eksportu do formatu zwykłego tekstu. Podczas pracy z formatem [TxtSaveOption](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/) dostępna jest właściwość [list_indentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/list_indentation/), która umożliwia określenie znaku używanego do wcięcia poziomów listy oraz liczbę znaków określającą, ile znaków ma być używanych jako wcięcie na jeden poziom listy. Domyślną wartością właściwości znaku jest "\0", co oznacza, że nie ma wcięcia. W przypadku właściwości count wartość domyślna to 0, co oznacza brak wcięć.

### Korzystanie ze znaku tabulacji

Poniższy przykład kodu pokazuje, jak eksportować poziomy list przy użyciu znaków tabulacji:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseTabCharacterPerLevelForListIndentation.py" >}}

### Używanie znaku spacji

Poniższy przykład kodu pokazuje, jak eksportować poziomy list przy użyciu spacji:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseSpaceCharacterPerLevelForListIndentation.py" >}}

