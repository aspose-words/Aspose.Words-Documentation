---
title: Opcje i wygląd dokumentów słownych
second_title: Aspose.Words zamiast Java
articleTitle: Praca z opcjami i wyglądem dokumentów słownych
linktitle: Praca z opcjami i wyglądem dokumentów słownych
description: "Kontrola wyglądu dokumentów Word biorąc pod uwagę różnicę między różnymi Microsoft Word z wykorzystaniem wersji Java."
type: docs
weight: 40
url: /pl/java/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

Czasami może być konieczna zmiana wyglądu dokumentu, na przykład, ustawić preferencje językowe lub liczbę wierszy na stronie.Aspose.Words zapewnia możliwość kontrolowania wyświetlania dokumentu oraz kilka dodatkowych opcji. Artykuł ten opisuje takie możliwości.

## Ustaw opcje wyświetlania dokumentu

Możesz kontrolować sposób wyświetlania dokumentu w Microsoft Word stosowania [ViewOptions](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/) Klasa. Na przykład, można ustawić wartość powiększenia dokumentu za pomocą [ZoomPercent](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getZoomPercent) właściwość, lub tryb widzenia przy użyciu [ViewType](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getViewType) nieruchomości.

Poniższy przykład kodu pokazuje, jak zapewnić wyświetlanie dokumentu w 50% po otwarciu w Microsoft Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-SetViewOptions.java" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu dla tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/TestFile.doc).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 nie zapisuje żadnego współczynnika powiększenia do dokumentu i nie ustawia domyślnego powiększenia od wartości zapisanej do dokumentu, zamiast tego wydaje się, że używa współczynnika powiększenia ostatniego otwartego dokumentu.

{{% /alert %}}

## Ustaw opcje wyświetlania strony

Jeśli chcesz ustawić liczbę znaków na linię, użyj [CharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getCharactersPerLine) nieruchomości. Możesz również ustawić liczbę wierszy na stronę dla dokumentu Word - użyj [LinesPerPage](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getLinesPerPage) właściwość do uzyskania lub ustawienia liczby wierszy na stronę w karcie dokumentu.

{{% alert color="primary" %}}

W Microsoft Word, W oknie dialogowym "Ustawienia stron" można ustawić te same parametry tylko wtedy, gdy jest zainstalowana obsługa języka azjatyckiego.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak ustawić liczbę znaków na linię i liczbę linii na stronę dla Microsoft Word dokument:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## Ustaw preferencje językowe

Wyświetlanie dokumentu w Microsoft Word zależy od tego, które języki są ustawiane jako domyślne dla tego dokumentu. Jeśli żadne języki nie są ustawione w domyślnych, Microsoft Word pobiera informacje z okna dialogowego "Ustawienia języka pakietu", które na przykład można znaleźć w "Plik → Opcje → Język" w Microsoft Word 2019.

Z Aspose.Words, można również ustawić preferencje językowe za pomocą [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/languagepreferences/) Klasa. Należy również pamiętać, że dla prawidłowego wyświetlenia dokumentu należy ustawić Microsoft Word wersja, że proces wczytywania dokumentu powinien pasować - można to zrobić za pomocą [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) nieruchomości.

{{% alert color="primary" %}}

Jeśli u pacjenta występuje Aspose.Words wygenerowany dokument nie wygląda tak jak oczekiwano, sprawdź **LanguagePreferences** oraz **MswVersion** wartości i dostosować je w razie potrzeby, aby dopasować ustawienia dla Twojego Microsoft Word Wersja.

{{% /alert %}}

Poniższy przykład kodu pokazuje jak dodać japoński do edycji języków:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

Poniższy przykład kodu pokazuje jak ustawić język rosyjski jako domyślny język edycji:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## Optymalizacja dokumentu dla konkretnego Wersja słowna

W [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) metoda pozwala zoptymalizować zawartość dokumentu, jak również domyślnie Aspose.Words zachowania dla określonej wersji Microsoft Word. Można użyć tej metody, aby zapobiec Microsoft Word z wyświetlania wstęgi "Tryb kompatybilności" podczas wczytywania dokumentu. Zauważ, że może być również konieczne ustawienie `Compliance` nieruchomość do ISO29500 _ 2008 _ Przejściowa lub wyższa.

Poniższy przykład kodu pokazuje jak zoptymalizować zawartość dokumentu dla Microsoft Word 2016:

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Document.docx");

// Set Word2016 version for document
doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

// Save the document.
doc.save(dataDir + "output.docx");
{{< /highlight >}}
