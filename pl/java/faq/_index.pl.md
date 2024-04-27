---
title: FAQ
second_title: Aspose.Words zamiast Java
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words zamiast Java odpowiada na najczęściej zadawane pytania. Naucz się tej strony, aby szybko rozwiązać swój problem na ogólnych pytań lub konkretnych tematów."
weight: 75
url: /pl/java/faq/
---

Ta strona zawiera odpowiedzi na najczęściej zadawane pytania. Proszę nauczyć się bieżącej strony - być może pozwoli to na szybkie rozwiązanie problemu.

Jeśli nie znalazłeś odpowiedzi na swoje pytanie, możesz zapytać na forum wsparcia. Informacje na temat właściwego zgłaszania pytań lub problemów można znaleźć w [Wsparcie techne](/words/pl/java/technical-support/) strona.

{{% alert color="primary" %}}

Często zadawane pytania są grupowane według tematów dla Twojej wygody.

{{% /alert %}}

## Ogólne

**Q: Co to jest Aspose.Words?**

Aspose.Words zamiast Java jest biblioteką klasy, która pozwala Twoim aplikacjom wykonywać szeroki wachlarz zadań związanych z przetwarzaniem dokumentów. Z Aspose.Words zamiast Java, można generować, modyfikować, konwertować, renderować i drukować dokumenty bez aplikacji trzeciej partii.

Szczegóły można znaleźć w naszej dokumentacji.

------

**Q: Co to znaczy "Aspose.Words nie wymaga aplikacji trzeciej partii "?**

Aspose.Words zamiast Java nie musi instalować żadnych aplikacji trzeciej partii lub dodatkowych pakietów oprogramowania do pracy. Wystarczy pobrać i zainstalować Aspose.Words jak opisano w [Instalacja](/words/pl/java/installation/) Artykuł i zaczynamy.

------

**Q: Co platformy robi Aspose.Words Wsparcie?**

Aspose.Words zamiast Java obejmuje większość popularnych środowisk rozwojowych i platform wdrożeniowych. Jej API mogą być wykorzystywane do opracowywania aplikacji dla szerokiego zakresu systemów operacyjnych, takich jak: Windows, Linux, i Mac OS, i różne platformy.

Szczegółowe informacje można znaleźć na stronie internetowej: [Przesuń produkt](/words/pl/java/product-overview/) strona i [Platformy oraz Interopguma](/words/java/platforms-and-interoperability/) sekcja.

------

**Q: Jakie formaty dokumentów robi Aspose.Words Wsparcie?**

Aspose.Words zamiast Java obsługuje większość popularnych formatów dokumentów, takich jak DOC, DOCX, HTML, Markdown, PDF, XML i inne.

Możesz zobaczyć pełną listę obsługiwanych formatów na [Obslugiwane formaty dokumentów](/words/pl/java/supported-document-formats/) strona.

------

**Q: Jak mogę spróbować? Aspose.Words Za darmo?**

Można to zrobić na dwa sposoby - używając wersji próbnej lub 30-dniowej tymczasowej licencji. Wersja Trial jest taka sama jak zakupiona, zapewnia pełną funkcjonalność produktu, ale dodaje oceniający znak wodny na górze dokumentu podczas załadunku i zapisu oraz ogranicza maksymalny rozmiar dokumentu do kilkuset akapitów. Tymczasowa licencja pozwala przetestować Aspose.Words bez ograniczeń procesowych przez 30 dni.

Patrz [Licencjonowanie i subskrypcja](/words/pl/java/licensing/) strona więcej informacji.

{{% alert color="primary" %}}

Można również spróbować niektórych z najbardziej popularnych Aspose.Words funkcje poprzez [Aspose.Words darmowe online Aplikacje](https://products.aspose.app/words).

{{% /alert %}}

------

**Q: Jak mogę kupić Aspose.Words?**

Aby kupić Aspose.Words prawo jazdy, musisz iść do [Zakup](https://purchase.aspose.com/buy) strona, wybierz "Aspose.Words"produkt i rodzaj licencji, która ci odpowiada. Następnie dodaj licencję do koszyka i postępuj zgodnie z instrukcjami.

Po zakupie, wystąpić o licencję, jak opisano w [Zakupiona licencja](/words/java/licensing/#purchased-license) sekcja.

Szczegóły dotyczące instalacji Aspose.Words można przeczytać na [Instalacja](/words/pl/java/installation/) strona.

------

**Q: Jak mogę uzyskać wsparcie?**

Użyj forum bezpłatnego wsparcia technicznego. Szczegółowe informacje na temat tego, jak prawidłowo zgłosić problem i co należy zrobić przed skontaktowaniem się z forum, zobacz [Wsparcie techne](/words/pl/java/technical-support/) strona.

## Renderowanie dokumentu

{{% alert color="primary" %}}

Więcej szczegółowych informacji na temat renderowania można znaleźć w [Renderowanie](/words/pl/java/rendering/) sekcja dokumentacji.

{{% /alert %}}

**Q: Dlaczego układ i czcionki w dokumencie wyjściowym różnią się od oryginału?**

Czcionka może nie być dostępna lub format czcionki jest obsługiwany przez Microsoft Word ale nie obsługiwane przez Aspose.Words. Aspose.Words wykona [Manipuluj i złóż czapki prawa. Przewoźnice](/words/pl/java/manipulate-and-substitute-truetype-fonts/).

Aby sprawdzić, czy brakuje czcionki:

- In Aspose.Words w sekcji "Jak rozpoznać, że czcionka została zastąpiona" [Manipuluj i złóż czapki prawa. Przewoźnice](/words/pl/java/manipulate-and-substitute-truetype-fonts/) Artykuł).
- In Microsoft Word Otwórz okno dialogowe "Substitution Font" (Plik → Opcje → Zaawansowane → Substitution Font).

------

**Q: Dlaczego font fallback nie działa na nie-Windows platformy i znaki Unicode zastępuje się .notdef glyph?**

Często widzimy `.notdef` glyph zamiast jakiejś postaci Unicode. Zazwyczaj jest to pudełko lub pytanie glyph.

To dlatego, że Microsoft Domyślnie wybierane są ustawienia awaryjne pakietu Office, oraz Microsoft Czcionki biurowe nie są dostępne. Użytkownicy muszą zainstalować Microsoft Czcionki biurowe lub zmienić ustawienia awaryjne.

------

**Q: Dlaczego skomplikowany tekst skryptowy, taki jak tajski czy hebrajski, może być wyświetlany niedokładnie z jakiegoś powodu, np. w złym położeniu dla diakrytyki lub niedokładnych więzadeł?**

Niektóre złożone czcionki skryptowe wymagają przetwarzania zaawansowanych funkcji typograficznych w celu ich prawidłowego wyświetlenia. Zaawansowana typografia jest wyłączona w Aspose.Words domyślnie. Użytkownicy muszą włączyć zaawansowaną typografię [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getTextShaperFactory).

------

**Q: Czy potrzebuję plików licencyjnych do czcionek, których używam?**

Tak. Dlatego przy kopiowaniu czcionek należy pamiętać, że większość czcionek jest chronionych prawami autorskimi. Zlokalizuj licencje na czcionkę wcześniej i sprawdź, czy można je swobodnie przenieść do innej maszyny.

## Nested Mail Merge

{{% alert color="primary" %}}

Więcej szczegółowych informacji na temat mail merge w [Mail Merge i świętości](/words/java/mail-merge-and-reporting/) sekcja dokumentacji.

{{% /alert %}}

**Q: Dlaczego w wygenerowanym wyjściu nie ma połączonych pól?**

Oryginalna nazwa pola połączenia pozostaje taka sama bez zastępowania go wymaganymi danymi ze źródła danych, a następnie:

- Sprawdź, czy dane są poprawnie wczytywane do tabel: ustawić [TableName](https://reference.aspose.com/words/java/com.aspose.words/imailmergedatasource/#getTableName) poprawnie ze wszystkimi wymaganymi kluczami podstawowymi i związkami.
- Sprawdź, czy pola scalające są prawidłowo nazwane. Użyj [GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames) metoda uzyskiwania wszystkich nazw pól łączenia i zapewnienia, że nazwa pól łączenia w szablonie pasuje do nazwy w źródle danych.

------

**Q: Dlaczego wynik połączenia zagnieżdżonego nie wyświetla danych z tabeli dzieci dla pierwszego wpisu w tabeli macierzystej, ale wyświetla wszystkie elementy dla ostatniego wpisu w tabeli macierzystej, nawet te, które nie są z nim faktycznie powiązane?**

Wynika to z faktu, że regiony połączenia w szablonie nie są prawidłowo utworzone, co może spowodować, że wszystkie zagnieżdżone mail merge regionów, aby zatrzymać wyświetlanie czegokolwiek. W [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) znacznik otwarcia i [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) tag zamknięcia musi pasować i być w tym samym wierszu lub komórce. Na przykład, jeśli zaczniesz gnieżdżać regiony łączące się w komórce tabeli, musisz zakończyć region łączący w tym samym wierszu co pierwsza komórka.

------

**Q: Dlaczego każdy wpis z tabeli rodzicielskiej wyświetla każdy element tabeli dziecięcej, nawet ten, który nie jest z nią powiązany?**

Dzieje się tak dlatego, że związek między tabelami rodziców i dzieci nie jest ustawiony lub jest nieprawidłowo ustawiony. Należy:

- Zapewnienie integralności danych w obrębie **DataSet** i użyć **DataRelation** obiekt do reprezentowania relacji rodzicielsko-dziecięcej pomiędzy powiązanymi tabelami danych.
- Sprawdź w sekcji "Jak ustawić relacje danych w Nested Mail Merge z regionów "w artykule [Nested Mail Merge z regionami](/words/java/nested-mail-merge-with-regions/).

------

**Q: Dlaczego wyjątek: "System. ArgumentException: Ograniczenie to nie może być włączone, ponieważ nie wszystkie wartości mają odpowiednie wartości macierzyste" podczas wykonywania zagnieżdżonych mail merge?**

Dzieje się tak, ponieważ nie każdy rekord rodzica ma rekord dziecka, więc Twoje źródło danych nie spełnia następujących kryteriów: * każdy wiersz w tabeli rodzica powinien mieć jeden-jeden związek z wierszami tabeli dziecka na podstawie kluczy pierwotnych i zagranicznych *.

Wyłącz ograniczenia klucza obcego podczas tworzenia **DataRelation**.

## Dołącz lub wstaw dokument

{{% alert color="primary" %}}

Więcej szczegółowych informacji na temat programowania z dokumentami można znaleźć w [Program z dokumentami](/words/pl/java/programming-with-documents/) sekcja dokumentacji.

{{% /alert %}}

**Q: Dlaczego zawartość załączona do dokumentu nie pojawia się na tej samej stronie?**

Wynik append pojawia się na osobnej stronie z powodu różnicy w [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) ustawienia sekcji, w których dokumenty są dołączane razem. Zrobić identyczny **PageSetup** ustawienia sekcji, w których dokumenty są dołączane razem.

## Przelicz dokument

{{% alert color="primary" %}}

Więcej szczegółowych informacji na temat konwersji dokumentu można znaleźć w [Dokument Przelicza](/words/pl/java/convert-a-document/) sekcja dokumentacji.

{{% /alert %}}

**Q: Jak przekonwertować DOCX do PDF?**

Jest to również bardzo łatwe, wystarczy załadować dokument do modelu i zapisać go do dowolnego obsługiwanego formatu.

Poniższy przykład kodu pokazuje proces konwersji pliku DOCX na PDF:

{{< highlight java >}}
// Open the source DOCX document.
Document doc = new Document(dataDir + "Input.docx");

// Save the document to PDF format.
doc.save(dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Manipuluj dokumentem

{{% alert color="primary" %}}

Więcej szczegółowych informacji na temat programowania z dokumentami można znaleźć w [Program z dokumentami](/words/pl/java/programming-with-documents/) sekcja dokumentacji.

{{% /alert %}}

**Q: Jak podzielić stronę dokumentu na stronę?**

Aspose.Words pozwala podzielić wielostronną stronę dokumentu po stronie.

Poniższy przykład kodu pokazuje jak podzielić dokument i zapisać każdą stronę jako oddzielny dokument:

{{< highlight java >}}
Document doc = new Document(dataDir + "TestFile (Split).docx");

int pageCount = doc.getPageCount();

// Save each page as a separate document.
for (int page = 0; page <= pageCount; page++)
{
	Document extractedPage = doc.extractPages(page, 1);
	extractedPage.save(dataDir + "SplitDocumentPageByPageOut_" + (page + 1) + ".docx");
}
{{< /highlight >}}

------

**Q: Jak otworzyć zaszyfrowany** **Dokument?**

Można spróbować otworzyć zaszyfrowany dokument bez hasła, co powinno prowadzić do wyjątku.

Poniższy przykład kodu pokazuje jak otworzyć zaszyfrowany dokument z hasłem:

{{< highlight java >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.write("Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
OoxmlSaveOptions options = new OoxmlSaveOptions(SaveFormat.DOCX);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.setPassword("MyPassword");
doc.save(getArtifactsDir() + "OoxmlSaveOptions.SaveAsDocx.docx", options);

// We will not be able to open this document with Microsoft Word or
// Aspose.Words without providing the correct password.
try
{
    doc = new Document(getArtifactsDir() + "OoxmlSaveOptions.Password.docx"));
}
catch (Exception e)
{
    Assert.assertTrue(e instanceof IncorrectPasswordException);
}
{{< /highlight >}}

------

**Q: Jak wydrukować dokument?**

Aby uzyskać szczegółową odpowiedź, poznaj artykuł [Drugi dokument Programy lub projekty dialogów](/words/pl/java/print-a-document-programmatically-or-using-dialogs/).
