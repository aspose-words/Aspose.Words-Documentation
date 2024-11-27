---
title: Opcje i wygląd dokumentów Word
second_title: Aspose.Words dla C++
articleTitle: Praca z opcjami i wyglądem dokumentów Word
linktitle: Praca z opcjami i wyglądem dokumentów Word
description: "Kontroluj wygląd dokumentów Word, biorąc pod uwagę różnicę między różnymi wersjami Microsoft Word."
type: docs
weight: 40
url: /pl/cpp/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

Czasami może być konieczna zmiana wyglądu dokumentu, na przykład ustawienie preferencji językowych lub liczby wierszy na stronie.Aspose.Words zapewnia możliwość kontrolowania sposobu wyświetlania dokumentu, a także kilka dodatkowych opcji. W tym artykule opisano takie możliwości.

## Ustaw Opcje Wyświetlania Dokumentu

Możesz kontrolować sposób wyświetlania dokumentu w Microsoft Word za pomocą klasy [ViewOptions](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/). Na przykład możesz ustawić wartość powiększenia dokumentu za pomocą właściwości [ZoomPercent](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/get_zoompercent/) lub trybu widoku za pomocą właściwości [ViewType](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/get_viewtype/).

Poniższy przykład kodu pokazuje, jak upewnić się, że dokument jest wyświetlany w 50% po otwarciu w Microsoft Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetViewOption-SetViewOption.cpp" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu dla tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 nie zapisuje żadnego współczynnika powiększenia do dokumentu i nie ustawia już domyślnego powiększenia z wartości zapisanej w dokumencie, zamiast tego wydaje się, że używa współczynnika powiększenia ostatniego otwartego dokumentu.

{{% /alert %}}

## Ustaw Opcje Wyświetlania Strony

Jeśli chcesz ustawić liczbę znaków w wierszu, użyj właściwości [CharactersPerLine](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_charactersperline/). Możesz także ustawić liczbę wierszy na stronę dla dokumentu Word - Użyj właściwości [LinesPerPage](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_linesperpage/), aby uzyskać lub ustawić liczbę wierszy na stronę w siatce dokumentu.

{{% alert color="primary" %}}

W Microsoft Word możesz ustawić te same parametry za pomocą zakładki "Siatka dokumentów" w oknie dialogowym "Ustawienia strony" tylko wtedy, gdy zainstalowana jest obsługa języka azjatyckiego.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak ustawić liczbę znaków w wierszu i liczbę wierszy na stronę dla dokumentu Microsoft Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cpp" >}}

## Ustaw Preferencje Językowe

Wyświetlanie dokumentu w Microsoft Word zależy od tego, które języki są ustawione jako domyślne dla tego dokumentu. Jeśli żadne języki nie są ustawione domyślnie, Microsoft Word pobiera informacje z okna dialogowego" Ustaw preferencje języka pakietu Office", które na przykład można znaleźć w" Plik → Opcje → Język " w Microsoft Word 2019.

Za pomocą Aspose.Words możesz także skonfigurować preferencje językowe za pomocą klasy [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/languagepreferences/). Należy również pamiętać, że dla prawidłowego wyświetlania dokumentu konieczne jest ustawienie wersji Microsoft Word, którą powinien odpowiadać proces ładowania dokumentu – można to zrobić za pomocą właściwości [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/).

{{% alert color="primary" %}}

Jeśli wygenerowany dokument Aspose.Words nie wygląda zgodnie z oczekiwaniami, sprawdź wartości **LanguagePreferences** i **MswVersion** i dostosuj je, jeśli to konieczne, aby dopasować ustawienia dla twojej wersji Microsoft Word.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak dodać Japoński do edycji języków:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

Poniższy przykład kodu pokazuje, jak ustawić rosyjski jako domyślny język edycji:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cpp" >}}

## Optymalizacja dokumentu dla określonej wersji Word

Metoda [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/) umożliwia optymalizację zawartości dokumentu, a także domyślne zachowanie Aspose.Words dla określonej wersji Microsoft Word. Możesz użyć tej metody, aby uniemożliwić Microsoft Word Wyświetlanie wstążki "tryb zgodności" podczas ładowania dokumentu. Pamiętaj, że może być również konieczne ustawienie właściwości `Compliance` na Iso29500_2008_Transitional lub wyższą.

Poniższy przykład kodu pokazuje, jak zoptymalizować zawartość dokumentu dla Microsoft Word 2016:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cpp" >}}
