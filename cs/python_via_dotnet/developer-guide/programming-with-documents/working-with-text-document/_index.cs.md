---
title: Práce s dokumentem
second_title: Aspose.Words místo Python via .NET
articleTitle: Práce s dokumentem
linktitle: Práce s dokumentem
description: "Práce s textovým dokumentem a úprava jeho objektů pomocí Python."
type: docs
weight: 430
url: /cs/python-net/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

V tomto článku se dozvíme, jaké možnosti mohou být užitečné pro práci s textovým dokumentem prostřednictvím Aspose.Words. Vezměte prosím na vědomí, že to není úplný seznam dostupných možností, ale jen příklad spolupráce s některými z nich.

## Přidat bi Directional Značky

Můžete použít [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) vlastnost určit, zda přidat obousměrné značky před každým spuštěním BiDi při exportu v jednoduchém textovém formátu. Aspose.Words vloží před každý obousměrný znak Unicode 'RIGHT-TO-LEFT MARK' (U+200F) [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) v textu. Tato volba odpovídá možnosti "Přidat obousměrné značky" v dialogu MS Word File Conversion, když exportujete do jednoduchého formátu textu. Všimněte si, že se v dialogu objevuje pouze tehdy, pokud jsou v MS Word přidány některé arabské nebo hebrejské editační jazyky.

Následující příklad kódu ukazuje, jak používat [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) majetek. Výchozí hodnota této vlastnosti je `False`:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-AddBidiMarks.py" >}}

## Poznejte položky seznamu během načítání TXT

Aspose.Words může importovat položku seznamu textového souboru jako čísla seznamů nebo prostý text ve svém modelu objektu dokumentu. • [detect_numbering_with_whitespaces](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_numbering_with_whitespaces/) vlastnost umožňuje určit, jak jsou očíslované položky seznamu rozpoznány při importu dokumentu z prostého textového formátu:

* Pokud je tato volba nastavena `True`, Whitespace se také používají jako oddělovače čísel seznamu: algoritmus rozpoznávání seznamu pro číslování arabského stylu (1., 1.1.2.) používá symboly Whitespace i tečka (".").
* Pokud je tato volba nastavena `False`, zobrazí rozpoznávací algoritmus seznam odstavců, kdy čísla seznamu končí buď tečkou, pravým držákem nebo symboly kulky (např. "•," "*," "-" nebo "o").

Následující příklad kódu ukazuje, jak používat tuto vlastnost:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DetectNumberingWithWhitespaces.py" >}}

## Manipulace vedoucími a trailingové prostory během načítání TXT

Během načítání TXT souboru můžete ovládat způsob manipulace s vedoucími a stezkami. Přední prostory by mohly být ořezány, konzervovány nebo přeměněny na odsazení a mohly by být ořezány nebo zachovány.

Následující příklad kódu ukazuje, jak při importu TXT souboru vystřihnout vedoucí a stopovací prostory:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-HandleSpacesOptions.py" >}}

## Detekovat dokument Směr textu

Aspose.Words poskytuje [document_direction](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/document_direction/) majetek v [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) třída pro detekci směru textu (RTL / LTR) v dokumentu. Tato vlastnost nastavuje nebo získává textové pokyny dokumentu uvedené v [DocumentDirection](https://reference.aspose.com/words/python-net/aspose.words.loading/documentdirection/) vyjmenování. Výchozí hodnota je zleva doprava.

Následující příklad kódu ukazuje, jak zjistit směr textu dokumentu při importu TXT souboru:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DocumentTextDirection.py" >}}

## Export hlavičky a zápatí ve výstupu TXT

Pokud chcete exportovat hlavičku a zápatí ve výstupním TXT dokumentu, můžete použít [export_headers_footers_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptionsbase/export_headers_footers_mode/) majetek. Tato vlastnost určuje způsob exportu hlaviček a zápatí do textového formátu.

Následující příklad kódu ukazuje, jak exportovat hlavičky a zápatí do jednoduchého formátu textu:

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

## Exportovat seznam odsazení ve výstupu TXT

Aspose.Words zavedeno [TxtListIndentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtlistindentation/) třída, která umožňuje určit, jak jsou úrovně seznamu odsazeny při exportu do jednoduchého formátu textu. Při práci s [TxtSaveOption](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/), vá [list_indentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/list_indentation/) vlastnost je poskytována pro upřesnění znaku, který má být použit pro odsazení úrovní seznamu a počet uvádějící, kolik znaků použít jako odsazení na jednu úroveň seznamu. Výchozí hodnota vlastnosti znaku je '\0' udávající, že neexistuje odsazení. U vlastnosti počítání je výchozí hodnota 0, což znamená, že není vsazena.

### Použití znaku karty

Následující příklad kódu ukazuje, jak exportovat úrovně seznamu pomocí znaků karty:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseTabCharacterPerLevelForListIndentation.py" >}}

### Použití prostorového znaku

Následující příklad kódu ukazuje, jak exportovat úrovně seznamu pomocí znaků mezer:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseSpaceCharacterPerLevelForListIndentation.py" >}}

