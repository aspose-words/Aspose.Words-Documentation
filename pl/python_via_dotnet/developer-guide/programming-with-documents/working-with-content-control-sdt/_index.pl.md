---
title: Praca z Content Control SDT
second_title: Aspose.Words dla Python via .NET
articleTitle: Praca z Content Control SDT
linktitle: Praca z Content Control SDT
description: "Za pomocą Pythona możesz osadzić w dokumencie semantykę zdefiniowaną przez klienta, a także jej zachowanie i wygląd."
type: docs
weight: 390
url: /pl/python-net/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

W Microsoft Word możesz utworzyć formularz, zaczynając od szablonu i dodając elementy sterujące zawartością, w tym pola wyboru, pola tekstowe, selektory dat i listy rozwijane. W formacie Aspose.Words znacznik dokumentu strukturalnego lub kontrola zawartości z dowolnego dokumentu załadowanego do Aspose.Words jest importowana jako węzeł [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/). Ustrukturyzowane znaczniki dokumentów (SDT lub kontrola treści) pozwalają na osadzenie w dokumencie semantyki zdefiniowanej przez klienta, a także jego zachowania i wyglądu. [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) może występować w dokumencie w następujących miejscach:

- Na poziomie bloku - Wśród akapitów i tabel, jako element podrzędny węzła [Body](https://reference.aspose.com/words/python-net/aspose.words/body/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/), [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) lub [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- Na poziomie wiersza - Wśród wierszy tabeli, jako element podrzędny węzła [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)
- Poziom komórki - Wśród komórek w wierszu tabeli, jako element podrzędny węzła [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/)
- Poziom inline - Wśród treści inline wewnątrz, jako dziecko [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)
- Zagnieżdżone w innym [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

## Wstawianie elementów sterujących zawartością do dokumentu

W tej wersji Aspose.Words można utworzyć następujące typy SDT lub kontroli treści:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

Poniższy przykład kodu demonstruje, jak utworzyć pole wyboru kontroli zawartości typu.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CheckBoxTypeContentControl.py" >}}

Poniższy przykład kodu demonstruje, jak utworzyć kontrolę zawartości pola tekstu sformatowanego typu.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-RichTextBoxContentControl.py" >}}

Poniższy przykład kodu demonstruje, jak utworzyć kontrolę zawartości pola kombi typu.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ComboBoxContentControl.py" >}}

## Jak zaktualizować kontrolę zawartości

W tej sekcji wyjaśniono, jak programowo zaktualizować wartości SDT lub kontroli zawartości

Poniższy przykład kodu pokazuje, jak ustawić bieżący stan pola wyboru:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetCurrentStateOfCheckBox.py" >}}

Poniższy przykład kodu pokazuje, jak modyfikować kontrolki zawartości typu zwykłego pola tekstowego, listy rozwijanej i obrazu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ModifyContentControls.py" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tych przykładów z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Powiązanie kontroli zawartości z niestandardowymi częściami XML

Możesz powiązać kontrolki treści z danymi XML (*niestandardową częścią XML*) w dokumentach Word.

Poniższy przykład kodu pokazuje, jak powiązać kontrolę zawartości z niestandardowymi częściami XML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-BindSDTtoCustomXmlPart.py" >}}

## Mapowanie XML zakresu znaczników dokumentu strukturalnego

Mapowanie zakresu znaczników dokumentu strukturalnego na dane XML można uzyskać w niestandardowej części XML bieżącego dokumentu, korzystając z właściwości [StructuredDocumentTagRangeStart.xml_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttagrangestart/xml_mapping/). Jednakże metody [set_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/xmlmapping/set_mapping/) można użyć do odwzorowania zakresu znaczników dokumentu strukturalnego na dane XML.

Poniższy przykład kodu pokazuje, jak ustawić mapowanie XML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-StructuredDocumentTagRangeStartXmlMapping.py" >}}

## Wyczyść zawartość kontroli zawartości

Możesz wyczyścić zawartość kontrolki zawartości, wyświetlając symbol zastępczy. Metoda [StructuredDocumentTag.clear](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/clear/) czyści zawartość tego znacznika dokumentu strukturalnego i wyświetla symbol zastępczy, jeśli jest zdefiniowany. Jednakże nie jest możliwe wyczyszczenie zawartości kontrolki zawartości, jeśli zawiera ona wersje. Jeśli kontrolka treści nie ma symbolu zastępczego, wstawia się pięć spacji, jak w MS Word (z wyjątkiem powtarzających się sekcji, powtarzających się elementów sekcji, grup, pól wyboru i cytatów). Jeśli formant zawartości jest mapowany na niestandardowy kod XML, węzeł XML, do którego następuje odwołanie, zostaje wyczyszczony.

Poniższy przykład kodu pokazuje, jak wyczyścić zawartość kontroli treści:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ClearContentsControl.py" >}}

## Zmień kolory tła i obramowania kontroli zawartości

Właściwość [StructuredDocumentTag.color](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/color/) pozwala uzyskać lub ustawić kolor kontroli treści. Kolor wpływa na kontrolę treści w dwóch sytuacjach:

1. MS Word podświetla tło kontroli treści, gdy mysz porusza się nad kontrolą treści. Pomaga to zidentyfikować kontrolę treści. Kolor podświetlenia jest nieco "miększy" niż *color*. Na przykład MS Word podświetla tło kolorem różowym, gdy *color* jest czerwony.
2. Kiedy wchodzisz w interakcję (edytujesz, wybierasz itp.) z kontrolą treści, granica kontroli treści jest kolorowana przez *color*.

Poniższy przykład kodu pokazuje, jak zmienić kolor kontrolki zawartości:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlColor.py" >}}

## Jak ustawić styl, aby sformatować tekst wpisywany w kontroli zawartości

Jeśli chcesz ustawić styl kontroli treści, możesz użyć właściwości [StructuredDocumentTag.style](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style/) lub [StructuredDocumentTag.style_name](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style_name/). Kiedy wpiszesz tekst do kontroli zawartości w dokumencie wyjściowym, wpisany tekst będzie miał styl "Cytat".

{{% alert color="primary" %}}

Należy pamiętać, że do kontroli treści można stosować wyłącznie style połączone i znakowe. Wyjątek ("Nie można zastosować tego stylu do SDT") jest zgłaszany, gdy stosowany jest styl, który istnieje, ale nie jest połączony lub styl znakowy.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak ustawić styl kontroli treści:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlStyle.py" >}}

## Praca z kontrolą zawartości sekcji powtarzalnych

Kontrola zawartości sekcji powtarzalnej pozwala na powtarzanie zawartej w niej treści. Za pomocą Aspose.Words można utworzyć węzły znaczników dokumentu strukturalnego sekcji powtarzalnych i typów elementów sekcji powtarzalnych i w tym celu typ wyliczeniowy [SdtType](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) zapewnia właściwość [REPEATING_SECTION_ITEM](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/#repeating_section_item).

Poniższy przykład kodu pokazuje, jak powiązać kontrolkę zawartości sekcji powtarzanej z tabelą:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CreatingTableRepeatingSectionMappedToCustomXmlPart.py" >}}
