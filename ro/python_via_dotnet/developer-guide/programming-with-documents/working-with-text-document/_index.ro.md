---
title: Lucrul cu documentul Text
second_title: Aspose.Words pentru Python via .NET
articleTitle: Lucrul cu documentul Text
linktitle: Lucrul cu documentul Text
description: "Lucrați cu un document text și modificați obiectele acestuia folosind Python."
type: docs
weight: 430
url: /ro/python-net/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

În acest articol, vom afla ce opțiuni pot fi utile pentru lucrul cu un document text prin Aspose.Words. Vă rugăm să rețineți că aceasta nu este o listă completă a opțiunilor disponibile, ci doar un exemplu de lucru cu unele dintre ele.

## Adăugați Semne Bidirecționale

Puteți utiliza proprietatea [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) pentru a specifica dacă să adăugați mărci bidirecționale înainte de fiecare rulare BiDi atunci când exportați în format text simplu. Aspose.Words inserează caracterul Unicode'RIGHT-TO-LEFT MARK' (U+200F) înainte de fiecare [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) bidirecțional din text. Această opțiune corespunde opțiunii" adăugați mărci bidirecționale " din dialogul de conversie a fișierului word MS atunci când exportați într-un format text simplu. Rețineți că apare în dialog numai dacă oricare dintre limbile de editare arabă sau ebraică este adăugată în MS cuvânt.

Următorul exemplu de cod arată cum să utilizați proprietatea [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/). Valoarea implicită a acestei proprietăți este `False`:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-AddBidiMarks.py" >}}

## Recunoașteți Elementele Din Listă În Timpul Încărcării TXT

Aspose.Words poate importa elementul de listă al unui fișier text ca numere de listă sau text simplu în modelul său de obiect document. Proprietatea [detect_numbering_with_whitespaces](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_numbering_with_whitespaces/) permite specificarea modului în care sunt recunoscute elementele de listă numerotate atunci când un document este importat din format text simplu:

* Dacă această opțiune este setată la `True`, spațiile albe sunt, de asemenea, utilizate ca delimitatori de numere de listă: algoritm de recunoaștere a listei pentru numerotarea în stil arab (1., 1.1.2.) utilizează atât spații albe, cât și simboluri punct (".").
* Dacă această opțiune este setată la `False`, algoritmul de recunoaștere a listelor detectează paragrafele listei, când numerele listei se termină fie cu punct, paranteză dreaptă sau simboluri glonț (cum ar fi "•", "*", "-" sau "o").

Următorul exemplu de cod arată cum să utilizați această proprietate:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DetectNumberingWithWhitespaces.py" >}}

## Manipulați spațiile din față și din spate în timpul încărcării TXT

Puteți controla modul de manipulare a spațiilor de conducere și de final în timpul încărcării fișierului TXT. Spațiile din față ar putea fi tăiate, conservate sau convertite în indentare, iar spațiile din spate ar putea fi tăiate sau conservate.

Următorul exemplu de cod arată cum să tăiați spațiile de început și de sfârșit în timp ce importați fișierul TXT:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-HandleSpacesOptions.py" >}}

## Detectați Direcția Textului Documentului

Aspose.Words oferă proprietatea [document_direction](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/document_direction/) în clasa [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) pentru a detecta direcția textului (RTL / LTR) în document. Această proprietate setează sau primește instrucțiunile textului documentului furnizate în [DocumentDirection](https://reference.aspose.com/words/python-net/aspose.words.loading/documentdirection/) enumerare. Valoarea implicită este de la stânga la dreapta.

Următorul exemplu de cod arată cum să detectați direcția textului documentului în timp ce importați fișierul TXT:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DocumentTextDirection.py" >}}

## Export antet și subsol în Ieșire TXT

Dacă doriți să exportați antet și subsol în Ieșire TXT document, puteți utiliza [export_headers_footers_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptionsbase/export_headers_footers_mode/) proprietate. Această proprietate specifică modul în care anteturile și subsolurile sunt exportate în formatul text simplu.

Următorul exemplu de cod arată cum să exportați anteturi și subsoluri în format text simplu:

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

## Indentarea listei de Export în Ieșire TXT

Aspose.Words a introdus clasa [TxtListIndentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtlistindentation/) care permite specificarea modului în care nivelurile listei sunt indentate în timp ce se exportă într-un format de text simplu. În timp ce lucrați cu [TxtSaveOption](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/), proprietatea [list_indentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/list_indentation/) este furnizată pentru a specifica caracterul care va fi utilizat pentru indentarea nivelurilor listei și pentru a număra specificând câte caractere să utilizați ca indentare pentru un nivel de listă. Valoarea implicită pentru proprietatea caracter este '\0' indicând faptul că nu există indentare. Pentru proprietatea count, valoarea implicită este 0, ceea ce înseamnă că nu există indentare.

### Utilizarea Caracter Tab

Următorul exemplu de cod arată cum să exportați nivelurile listei folosind caractere de filă:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseTabCharacterPerLevelForListIndentation.py" >}}

### Utilizarea Caracterului Spațial

Următorul exemplu de cod arată cum să exportați nivelurile listei folosind caractere spațiale:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseSpaceCharacterPerLevelForListIndentation.py" >}}

