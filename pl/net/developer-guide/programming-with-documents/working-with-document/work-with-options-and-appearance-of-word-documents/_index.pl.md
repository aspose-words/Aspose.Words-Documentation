---
title: Opcje i wygląd Dokument Word
second_title: Aspose.Words dla .NET
articleTitle: Pracuj z opcjami i wyglądem dokumentów programu Word
linktitle: Pracuj z opcjami i wyglądem dokumentów programu Word
description: "Kontroluj wygląd dokumentów Worda z uwzględnieniem różnic pomiędzy różnymi wersjami Microsoft Word za pomocą C#."
type: docs
weight: 40
url: /pl/net/work-with-word-document-options-and-appearance/
---

Czasami może zaistnieć potrzeba zmiany wyglądu dokumentu, na przykład ustawienia preferencji językowych lub liczby wierszy na stronie. Aspose.Words zapewnia możliwość kontrolowania sposobu wyświetlania dokumentu, a także kilka dodatkowych opcji. W artykule opisano takie możliwości.

## Ustaw opcje wyświetlania dokumentu

Możesz kontrolować sposób wyświetlania dokumentu w Microsoft Word za pomocą klasy [ViewOptions](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/). Na przykład można ustawić wartość powiększenia dokumentu za pomocą właściwości [ZoomPercent](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/zoompercent/) lub tryb widoku za pomocą właściwości [ViewType](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/viewtype/).

Poniższy przykład kodu pokazuje, jak zapewnić wyświetlanie dokumentu w 50% po otwarciu w Microsoft Word:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetViewOption-SetViewOption.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu dla tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 nie zapisuje żadnego współczynnika powiększenia do dokumentu i nie ustawia już domyślnego powiększenia na podstawie wartości zapisanej w dokumencie, zamiast tego wydaje się używać współczynnika powiększenia ostatniego otwartego dokumentu.

{{% /alert %}}

## Ustaw opcje wyświetlania strony

Jeśli chcesz ustawić liczbę znaków w linii, użyj właściwości [CharactersPerLine](https://reference.aspose.com/words/net/aspose.words/pagesetup/charactersperline/). Możesz także ustawić liczbę wierszy na stronę w dokumencie programu Word - użyj właściwości [LinesPerPage](https://reference.aspose.com/words/net/aspose.words/pagesetup/linesperpage/), aby uzyskać lub ustawić liczbę wierszy na stronę w siatce dokumentu.

{{% alert color="primary" %}}

W Microsoft Word można ustawić te same parametry za pomocą zakładki "Siatka dokumentu" w oknie dialogowym "Ustawienia strony" tylko wtedy, gdy zainstalowana jest obsługa języka azjatyckiego.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak ustawić liczbę znaków w wierszu i liczbę wierszy na stronę dla dokumentu Microsoft Word:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cs" >}}

## Ustaw preferencje językowe

Wyświetlanie dokumentu w formacie Microsoft Word zależy od tego, jakie języki są ustawione jako domyślne dla tego dokumentu. Jeśli domyślnie nie ustawiono żadnego języka, Microsoft Word pobiera informacje z okna dialogowego "Ustaw preferencje językowe pakietu Office", które można znaleźć na przykład w "Plik → Opcje → Język" w Microsoft Word 2019.

Dzięki Aspose.Words możesz także skonfigurować preferencje językowe za pomocą klasy [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/). Pamiętaj też, że do poprawnego wyświetlenia Twojego dokumentu konieczne jest ustawienie wersji Microsoft Word, z którą ma się zgadzać proces ładowania dokumentu – można to zrobić za pomocą właściwości [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/).

{{% alert color="primary" %}}

Jeśli dokument wygenerowany w formacie Aspose.Words nie wygląda zgodnie z oczekiwaniami, sprawdź wartości **LanguagePreferences** i **MswVersion** i w razie potrzeby dostosuj je, aby odpowiadały ustawieniom Twojej wersji Microsoft Word.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak dodać język japoński do języków edycji:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cs" >}}

Poniższy przykład kodu pokazuje, jak ustawić rosyjski jako domyślny język edycji:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cs" >}}

## Zoptymalizuj dokument pod kątem określonej wersji programu Word

Metoda [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/) umożliwia optymalizację zawartości dokumentu, a także domyślnego zachowania Aspose.Words dla konkretnej wersji Microsoft Word. Możesz użyć tej metody, aby zapobiec wyświetlaniu wstążki "Tryb zgodności" w formacie Microsoft Word podczas ładowania dokumentu. Pamiętaj, że może być konieczne ustawienie właściwości `Compliance` na Iso29500_2008_Transitional lub wyższą.

Poniższy przykład kodu pokazuje, jak zoptymalizować zawartość dokumentu dla Microsoft Word 2016:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cs" >}}
