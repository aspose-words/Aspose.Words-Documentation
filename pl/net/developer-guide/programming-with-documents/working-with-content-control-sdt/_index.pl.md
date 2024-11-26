---
title: Praca z Content Control SDT
second_title: Aspose.Words dla .NET
articleTitle: Praca z Content Control SDT
linktitle: Praca z Content Control SDT
description: "Zaawansowane zarządzanie treścią dokumentów, jak tworzyć i manipulować kontrolkami treści (tagami dokumentów strukturalnych) przy użyciu C#."
type: docs
weight: 390
url: /pl/net/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

W Microsoft Word możesz utworzyć formularz, zaczynając od szablonu i dodając elementy sterujące zawartością, w tym pola wyboru, pola tekstowe, selektory dat i listy rozwijane. W formacie Aspose.Words znacznik dokumentu strukturalnego lub kontrola zawartości z dowolnego dokumentu załadowanego do Aspose.Words jest importowana jako węzeł StructuredDocumentTag. Ustrukturyzowane znaczniki dokumentów (SDT lub kontrola treści) pozwalają na osadzenie w dokumencie semantyki zdefiniowanej przez klienta, a także jego zachowania i wyglądu.

StructuredDocumentTag może występować w dokumencie w następujących miejscach:

- Na poziomie bloku – pomiędzy akapitami i tabelami, jako element podrzędny węzła treści, nagłówka, stopki, komentarza, przypisu lub węzła kształtu
- Na poziomie wiersza – Wśród wierszy tabeli, jako element podrzędny węzła tabeli
- Na poziomie komórki – Wśród komórek w wierszu tabeli, jako element podrzędny węzła Wiersz
- Poziom wbudowany - wśród treści wbudowanej w środku, jako element podrzędny akapitu
- Zagnieżdżone w innym StructuredDocumentTag

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

Poniższy przykład kodu pokazuje, jak utworzyć pole wyboru kontroli treści typu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.cs" >}}

Poniższy przykład kodu pokazuje, jak utworzyć kontrolę zawartości pola tekstu sformatowanego typu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-RichTextBoxContentControl-RichTextBoxContentControl.cs" >}}

Poniższy przykład kodu pokazuje, jak utworzyć kontrolę zawartości pola kombi typu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-ComboBoxContentControl-ComboBoxContentControl.cs" >}}

## Jak zaktualizować kontrolę zawartości

W tej sekcji wyjaśniono, jak programowo zaktualizować wartości SDT lub kontroli zawartości.

Poniższy przykład kodu pokazuje, jak ustawić bieżący stan pola wyboru:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-SetCurrentStateOfCheckBox.cs" >}}

Poniższy przykład kodu pokazuje, jak modyfikować kontrolki zawartości typu zwykłego pola tekstowego, listy rozwijanej i obrazu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-ModifyContentControls.cs" >}}

## Powiązanie kontroli zawartości z niestandardowymi częściami XML

Możesz powiązać kontrolki treści z danymi XML (*niestandardową częścią XML*) w dokumentach Word.

Poniższy przykład kodu pokazuje, jak powiązać kontrolę zawartości z niestandardowymi częściami XML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-BindSDTtoCustomXmlPart.cs" >}}

## Mapowanie XML zakresu znaczników dokumentu strukturalnego

Możesz uzyskać mapowanie zakresu znaczników dokumentu strukturalnego na dane XML w niestandardowej części XML bieżącego dokumentu za pomocą **Właściwość StructuredDocumentTagRangeStart.XmlMapping**. Jednakże metody [SetMapping](https://reference.aspose.com/words/net/aspose.words.markup/xmlmapping/setmapping/) można użyć do odwzorowania zakresu znaczników dokumentu strukturalnego na dane XML.

Poniższy przykład kodu pokazuje, jak ustawić mapowanie XML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-StructuredDocumentTagRangeStartXmlMapping.cs" >}}

## Wyczyść zawartość kontroli zawartości

Możesz wyczyścić zawartość kontrolki zawartości, wyświetlając symbol zastępczy. Metoda **StructuredDocumentTag.Clear** czyści zawartość tego znacznika dokumentu strukturalnego i wyświetla symbol zastępczy, jeśli jest zdefiniowany. Jednakże nie jest możliwe wyczyszczenie zawartości kontrolki zawartości, jeśli zawiera ona wersje. Jeśli kontrolka treści nie ma symbolu zastępczego, wstawianych jest pięć spacji, jak w Microsoft Word (z wyjątkiem sekcji powtarzających się, elementów sekcji powtarzających się, grup, pól wyboru i cytatów). Jeśli formant zawartości jest mapowany na niestandardowy kod XML, węzeł XML, do którego następuje odwołanie, zostaje wyczyszczony.

Poniższy przykład kodu pokazuje, jak wyczyścić zawartość kontroli treści:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-ClearContentsControl.cs" >}}

## Zmień kolory tła i obramowania kontroli zawartości

Właściwość `StructuredDocumentTag.Color` pozwala uzyskać lub ustawić kolor kontroli treści. Kolor wpływa na kontrolę treści w dwóch sytuacjach:

1. MS Word podświetla tło kontroli treści, gdy mysz porusza się nad kontrolą treści. Pomaga to zidentyfikować kontrolę treści. Kolor podświetlenia jest nieco "miększy" niż *Color*. Na przykład MS Word podświetla tło kolorem różowym, gdy *Color* ma kolor czerwony.
2. Kiedy wchodzisz w interakcję (edytujesz, wybierasz itp.) z kontrolą treści, granica kontroli treści jest kolorowana przez *Color*.

Poniższy przykład kodu pokazuje, jak zmienić kolor kontrolki zawartości:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlColor.cs" >}}

## Jak ustawić styl, aby sformatować tekst wpisywany w kontroli zawartości

Jeśli chcesz ustawić styl kontroli treści, możesz użyć właściwości `StructuredDocumentTag.Style` lub `StructuredDocumentTag.StyleName`. Kiedy wpiszesz tekst do kontroli zawartości w dokumencie wyjściowym, wpisany tekst będzie miał styl "Cytat".

{{% alert color="primary" %}}

Należy pamiętać, że do kontroli treści można stosować wyłącznie style połączone i znakowe. Wyjątek InvalidOperationException ("Nie można zastosować tego stylu do zestawu SDT") jest zgłaszany, gdy stosowany jest styl, który istnieje, ale nie jest połączony lub styl znakowy.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak ustawić styl kontroli treści:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cs" >}}

## Praca z kontrolą zawartości sekcji powtarzalnych

Kontrola zawartości sekcji powtarzalnej pozwala na powtarzanie zawartej w niej treści. Za pomocą Aspose.Words można utworzyć węzły znaczników dokumentu strukturalnego dla sekcji powtarzalnych i typów elementów sekcji powtarzalnych i w tym celu [Typ wyliczeniowy SdtType](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/) udostępnia właściwość **RepeatingSectionItem**.

Poniższy przykład kodu pokazuje, jak powiązać kontrolkę zawartości sekcji powtarzanej z tabelą.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cs" >}}
