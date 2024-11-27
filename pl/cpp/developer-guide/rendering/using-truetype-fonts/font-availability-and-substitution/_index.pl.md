---
title: MFont dostępność i zamiana w C++
second_title: Aspose.Words dla C++
articleTitle: Dostępność i zastępowanie czcionek
linktitle: Dostępność i zastępowanie czcionek
description: "Gdy nie można znaleźć dokładnej czcionki podstawienia, Aspose.Words musi zamiast tego zastąpić ją podobną czcionką. W tym artykule opisano proces znajdowania najbardziej odpowiedniej czcionki."
type: docs
weight: 12
url: /pl/cpp/font-availability-and-substitution/
timestamp: 2024-09-24-14-35-44
---

Tekst w dokumencie można sformatować za pomocą różnych czcionek, takich jak Arial, Times New Roman, Verdana i inne. Gdy Aspose.Words renderuje dokument, próbuje wybrać czcionki określone w dokumencie.

Istnieją jednak sytuacje, w których nie można znaleźć dokładnej czcionki i Aspose.Words musi zamiast tego zastąpić ją podobną czcionką. Aspose.Words wybiera czcionkę zgodnie z następującym procesem:

1. Aspose.Words próbuje znaleźć czcionkę wśród dostępnych źródeł czcionek z dokładną nazwą czcionki.
1. Aspose.Words próbuje znaleźć wymaganą czcionkę wśród czcionek osadzonych w oryginalnym dokumencie. Niektóre formaty dokumentów, takie jak DOCX, mogą zawierać osadzone czcionki.
1. Jeśli Aspose.Words nie jest w stanie zlokalizować wymaganej czcionki z dokładnym dopasowaniem nazwy i właściwością [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/) zdefiniowaną dla tej czcionki, Aspose.Words znajdzie czcionkę zdefiniowaną za pomocą **AltName** z klasy [FontInfo](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_info), która określa informacje o czcionce.
1. Jeśli Aspose.Words nie jest w stanie zlokalizować zdefiniowanej czcionki, a **AltName** nie jest również zdefiniowany, wówczas reguły zastępowania czcionek są stosowane jeden po drugim, jak opisano poniżej (po znalezieniu odpowiedniego zastępowania proces zastępowania czcionek zatrzymuje się, a następny krok nie jest wykonywany):
   1. Aspose.Words spróbuje zastosować ustawienia czcionek OS, jeśli są dostępne, za pomocą narzędzia `FontConfig`. Ta funkcja nie - Windows musi być używana z FontConfig-Kompatybilny OS. Prawie każdy oparty na systemie Unix OS ma już bibliotekę `FontConfig` zaprojektowaną w celu zapewnienia ogólnosystemowej konfiguracji czcionek, dostosowywania i dostępu do aplikacji. W przeciwnym razie ta biblioteka może być łatwo zainstalowana przez użytkownika.<br>
      Aspose.Words wie, jak wyszukiwać dane i interpretować wyniki FontConfig dla własnych celów. Domyślnie narzędzie `FontConfig` jest wyłączone. Możesz go włączyć w następujący sposób:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontConfigSubstitution()->set_Enabled(true);
      {{< /highlight >}}
   1. Następnym krokiem jest prosty, ale niesamowicie potężny mechanizm o nazwie [TableSubstitutionRule](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.table_substitution_rule). Domyślnie ta funkcja jest aktywna i dostępna dla dowolnego OS. Aspose.Words używa XML tabel, które definiują podstawowe reguły podstawienia dla różnych OS. Zgodnie z regułą podstawienia tabeli zostanie użyta lista zastępczych nazw czcionek.<br>
**XML**
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - czcionka do zastąpienia, SubstituteFonts - lista wariantów podstawienia, oddzielona przecinkiem. Pierwsza dostępna czcionka służy do wymiany.<br>
      Główną cechą tej reguły jest możliwość ładowania własnych tabel podstawienia, jak pokazano w poniższym przykładzie:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Load(u"Table.xml");
      {{< /highlight >}}
      Możesz wziąć za podstawę istniejącą tabelę z słoika lub zapisać ją programowo w następujący sposób:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Save(u"MyTable.xml");
      {{< /highlight >}}
      Pomimo elastyczności tego mechanizmu, w niektórych przypadkach lepiej go wyłączyć, jak pokazano poniżej:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->set_Enabled(false);
      {{< /highlight >}}
   1. Reguła podstawienia **FontInfo** zostanie zastosowana, jeśli reguła podstawienia tabeli nie może znaleźć czcionki. Ten mechanizm jest domyślnie włączony. Aspose.Words znajduje najbardziej odpowiednią czcionkę zgodnie z informacjami o czcionce zawartymi w określonym dokumencie. Informacje te można uzyskać z klasy **FontInfo**, Jak pokazano poniżej:<br>
**C++**
      {{< highlight cpp >}}
      System::SharedPtr<FontInfoCollection> fontInfos = doc->get_FontInfos();
      {{< /highlight >}}
      Użytkownicy nie mogą ingerować w przepływ pracy tej funkcji, chyba że zdecydują się ją wyłączyć w przypadku niezadowalających wyników:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontInfoSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      Jeśli **FontInfo** nie jest dostępny dla brakującej czcionki, proces zostanie zatrzymany.
   1. Reguła substytucji **DefaultFont** zostanie zastosowana w przypadku, gdy substytucja `FontInfo` również się nie powiodła. Ta reguła jest również domyślnie włączona. Zgodnie z tą regułą Aspose.Words spróbuje użyć domyślnej czcionki określonej we właściwości [DefaultFontName](https://reference.aspose.com/words/cpp/aspose.words.fonts/defaultfontsubstitutionrule/get_defaultfontname/). Jeśli użytkownik nie wybrał własnej domyślnej czcionki, "Times New Roman" zostanie użyty jako domyślna czcionka. Tę regułę można wyłączyć, jak pokazano poniżej:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      Aby sprawdzić bieżącą domyślną czcionkę, użyj:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->get_DefaultFontName();
      {{< /highlight >}}
      Aby skonfigurować własną opcję wymiany, zastosuj:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_DefaultFontName(u"Arial");
      {{< /highlight >}}
1. Jeśli Aspose.Words nie jest w stanie wykonać podstawienia czcionki, próbuje pobrać pierwszą dostępną czcionkę z dostępnych źródeł czcionek.
1. Wreszcie, jeśli Aspose.Words nie może znaleźć żadnych czcionek wśród dostępnych źródeł czcionek, renderuje dokument przy użyciu bezpłatnej czcionki Fanwood, która jest osadzona w zestawie Aspose.Words.

{{% alert color="primary" %}}

Jeśli **FontInfo** jest dostępny, *FontInfo substitution rule* zawsze rozwiąże czcionkę i zastąpi domyślną regułę czcionki. Jeśli chcesz użyć domyślnej reguły czcionki, należy wyłączyć *FontInfo substitution rule*. Zauważ, że *FontConfig substitution rule* rozwiąże czcionkę w większości przypadków, a tym samym zastąpi wszystkie inne reguły.

{{% /alert %}}


