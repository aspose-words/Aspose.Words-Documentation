---
title: Praca z Content Control SDT w Java
second_title: Aspose.Words zamiast Java
articleTitle: Praca z kontrolą zawartości SDT
linktitle: Praca z kontrolą zawartości SDT
type: docs
description: "Zaawansowane zarządzanie treścią dokumentu, jak tworzyć i manipulować sterowaniem treścią (Structured Document Tags) za pomocą Java."
weight: 390
url: /pl/java/working-with-content-control-sdt/
---

W Microsoft Word, Możesz utworzyć formularz, zaczynając od szablonu i dodając kontrolę zawartości, w tym pola wyboru, pola tekstowe, znaczniki daty i listy rozwijane. W <span notrans="<span notrans=" Aspose.Words"=""></span>", > Strukturalny znacznik dokumentu lub kontrola zawartości z dowolnego dokumentu załadowanego do Aspose.Words jest importowany jako węzeł StructuredDocumentTag. Strukturalne znaczniki dokumentów (SDT lub control content) umożliwiają osadzanie semantyki zdefiniowanej przez użytkownika, jak również jej zachowania i wygląd w dokumencie.

StructuredDocument Znacznik może wystąpić w dokumencie w następujących miejscach:

- Poziom blokady - Wśród akapitów i tabel, jako dziecko ciała, HeaderFooter, Komentarz, Footnote lub węzeł kształtowy.
- Row- poziom - Wśród rzędów w tabeli, jako dziecko z węzła stołowego.
- Poziom komórkowy - Pośród komórek w rzędzie stołowym, jako dziecko węzła wiersza.
- Poziom inline- Wśród inline treści wewnątrz, jako dziecko paragrafu.
- Wewnątrz innego StructuredDocumentTag.

## Włączenie kontroli zawartości do dokumentu

W tej wersji Aspose.Words, można utworzyć następujące rodzaje SDT lub kontroli zawartości:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

Poniższy przykład kodu pokazuje, jak utworzyć kontrolę treści w polu wyboru typu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

Poniższy przykład kodu pokazuje, jak utworzyć kontrolę treści typu bogatego pola tekstowego:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

Poniższy przykład kodu pokazuje, jak utworzyć kontrolę treści w polu combo typu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## Jak zaktualizować kontrolę zawartości

W tej sekcji wyjaśniono, w jaki sposób aktualizować wartości SDT lub kontroli zawartości programowo.

Poniższy przykład kodu pokazuje jak ustawić aktualny stan pola wyboru:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

Poniższy przykład kodu pokazuje, jak modyfikować sterowanie treścią zwykłego pola tekstowego, listy rozwijanej i obrazka:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tych przykładów z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Wiążąca kontrola zawartości do własnych części XML

Możesz powiązać sterowanie treścią z danymi XML (* niestandardowa część XML *) w dokumentach Word

Poniższy przykład kodu pokazuje, jak powiązać kontrolę zawartości z niestandardowymi częściami XML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## Wyczyść zawartość kontroli zawartości

Możesz wyczyścić zawartość sterowania treścią wyświetlając uchwyt. **StructuredDocumentTag.clear ()** Metoda oczyszcza zawartość tego usystematyzowanego znacznika dokumentu i wyświetla właściciela miejsca, jeśli jest on zdefiniowany. Jednakże, Nie jest możliwe wyczyszczenie zawartości kontroli zawartości, jeśli zawiera ona zmiany. Jeżeli sterownik zawartości nie ma uchwytu, to w MS Word umieszcza się pięć spacji (z wyjątkiem powtarzania sekcji, powtarzania elementów sekcji, grup, pól wyboru, cytowania). Jeżeli kontrola zawartości jest przyporządkowana do własnego XML, odnośny węzeł XML jest oczyszczony.

Poniższy przykład kodu pokazuje jak usunąć zawartość kontroli zawartości:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## Zmiana kontroli treści Tło i kolory granic

W `StructuredDocumentTag.Color` właściwość pozwala uzyskać lub ustawić kolor kontroli zawartości. Kolor wpływa na kontrolę zawartości w dwóch sytuacjach:

1. MS Word podkreśla tło kontroli zawartości, gdy mysz porusza się nad kontrolą zawartości. Pomaga to w identyfikacji kontroli zawartości. Kolor podświetlania jest nieco "miększy" niż *Color*. Na przykład MS Word podkreśla tło różowym kolorem, kiedy *Color* Red.
2. Podczas interakcji (edycja, wybieranie itp.) z kontrolą zawartości, granica kontroli treści jest kolorowa z *Color*.

Poniższy przykład kodu pokazuje jak zmienić kolor kontroli zawartości:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## Jak ustawić styl do formatowania tekstu wpisanego do kontroli zawartości

Jeśli chcesz ustawić styl kontroli zawartości, możesz użyć `StructuredDocumentTag.Style` lub `StructuredDocumentTag.StyleName` nieruchomości. Po wpisaniu tekstu do kontroli treści w dokumencie wyjściowym, wpisany tekst będzie miał styl "Cyt".

{{% alert color="primary" %}}

Należy pamiętać, że do kontroli zawartości można stosować tylko style Linked i Character. InvalidOperationException ("Nie można zastosować tego stylu do SDT") jest rzucany, gdy styl, który istnieje, ale nie jest Powiązany lub charakter stylu jest stosowany.

{{% /alert %}}

Poniższy przykład kodu pokazuje jak ustawić styl sterowania treścią:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## Praca z powtarzającą się kontrolą treści sekcji

Regulacja powtarzania zawartości sekcji pozwala na powtarzanie zawartości w niej zawartej. Stosowanie Aspose.Words, można utworzyć ustrukturyzowane węzły znaczników dokumentów powtarzającej się sekcji i powtarzających się typów pozycji sekcji i w tym celu, [Typ zapasu SdtType](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) zapewnia członka REPEATING _ SEKCJA _ ITEM.

Poniższy przykład kodu pokazuje, jak powiązać powtarzającą się kontrolę zawartości sekcji z tabelą:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

