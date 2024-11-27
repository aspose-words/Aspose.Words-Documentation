---
title: FAQ
second_title: Aspose.Words dla C++
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words dla C++ odpowiada na najczęściej zadawane pytania. Zapoznaj się z tą stroną, aby szybko rozwiązać problem dotyczący ogólnych pytań lub konkretnych tematów."
weight: 75
url: /pl/cpp/faq/
timestamp: 2024-01-31-14-23-37
---

Ta strona zawiera odpowiedzi na najczęściej zadawane pytania. Zapoznaj się z bieżącą stroną – być może pozwoli Ci to szybko rozwiązać problem.

Jeśli nie znalazłeś odpowiedzi na swoje pytanie, możesz zapytać na forum Pomocy technicznej. Aby uzyskać informacje o tym, jak prawidłowo zgłosić swoje pytanie lub problem, zobacz [Wsparcie Techniczne](/words/cpp/technical-support/) page.

{{% alert color="primary" %}}

Często zadawane pytania są pogrupowane według tematu dla Twojej wygody.

{{% /alert %}}

## Ogólne

**P: Co to jest Aspose.Words?**

Aspose.Words for C++ to biblioteka klas, która umożliwia aplikacjom wykonywanie szerokiej gamy zadań przetwarzania dokumentów. Za pomocą Aspose.Words dla C++ możesz generować, modyfikować, konwertować, renderować i drukować dokumenty bez aplikacji innych firm.

Szczegóły można znaleźć w naszej dokumentacji.

------

**P: Co to znaczy "Aspose.Words nie wymaga aplikacji innych firm"?**

Aspose.Words dla C++ nie trzeba instalować żadnych aplikacji innych firm ani dodatkowych pakietów oprogramowania do pracy. Wystarczy pobrać i zainstalować Aspose.Words zgodnie z opisem w ["Instalacja"](/words/cpp/installation/) artykuł i zacznij.

------

**P: Jakie platformy obsługuje Aspose.Words?**

Aspose.Words for C++ obejmuje większość popularnych środowisk programistycznych i platform wdrożeniowych. Its API może być używany do tworzenia aplikacji dla szerokiej gamy systemów operacyjnych, takich jak Windows, Linux i Mac OS oraz różnych platform.

Aby uzyskać szczegółowe informacje, zobacz [Przegląd Produktów](/words/cpp/product-overview/) page.

------

**P: Jakie formaty dokumentów obsługuje Aspose.Words?**

Aspose.Words for C++ obsługuje większość popularnych formatów dokumentów, takich jak DOC, DOCX, HTML, Markdown, PDF, XML, i inni.

Możesz zobaczyć pełną listę obsługiwanych formatów na [Obsługiwane Formaty Dokumentów](/words/cpp/supported-document-formats/) page.

------

**P: Jak mogę spróbować Aspose.Words za darmo?**

Możesz to zrobić na dwa sposoby – korzystając z wersji próbnej lub 30-dniowej licencji tymczasowej. Wersja próbna jest taka sama jak zakupiona, zapewnia pełną funkcjonalność produktu, ale dodaje oceniający znak wodny u góry dokumentu podczas ładowania i zapisywania oraz ogranicza maksymalny rozmiar dokumentu do kilkuset akapitów. Licencja tymczasowa umożliwia testowanie Aspose.Words bez ograniczeń próbnych przez 30 dni.

Zobacz [Licencjonowanie i subskrypcja](/words/cpp/licensing/) strona po więcej informacji.

{{% alert color="primary" %}}

Możesz także wypróbować niektóre z najpopularniejszych funkcji Aspose.Words za pośrednictwem [Aspose.Words darmowe aplikacje online](https://products.aspose.app/words).

{{% /alert %}}

------

**P: Jak mogę kupić Aspose.Words?**

Aby kupić licencję Aspose.Words, musisz przejść do [Zakup](https://purchase.aspose.com/buy) strona, Wybierz produkt" Aspose.Words " i typ licencji, który Ci odpowiada. Następnie dodaj licencję do koszyka i postępuj zgodnie z instrukcjami koszyka.

Po zakupie złóż wniosek o licencję zgodnie z opisem w [Zakupiona Licencja](/words/cpp/licensing/#purchased-license) sekcji.

Szczegóły dotyczące instalacji Aspose.Words można przeczytać na [Instalacja](/words/cpp/installation/) page.

------

**P: Jak mogę uzyskać wsparcie?**

Skorzystaj z bezpłatnego forum Pomocy technicznej. Aby uzyskać szczegółowe informacje na temat prawidłowego zgłoszenia problemu i co należy zrobić przed skontaktowaniem się z forum, zobacz [Wsparcie Techniczne](/words/cpp/technical-support/) page.

## Renderowanie dokumentu

{{% alert color="primary" %}}

Bardziej szczegółowe informacje na temat renderowania można znaleźć w [Rendering](/words/cpp/rendering/) sekcja dokumentacji.

{{% /alert %}}

**P: dlaczego układ i czcionki w dokumencie wyjściowym różnią się od oryginału?**

Czcionka może być niedostępna lub format czcionki jest obsługiwany przez Microsoft Word, ale nie jest obsługiwany przez Aspose.Words. Aspose.Words wykona [zastępowanie czcionek](/words/cpp/manipulate-and-substitute-truetype-fonts/).

Aby sprawdzić, czy brakuje czcionki:

- W Aspose.Words Użyj ostrzeżeń o podstawianiu czcionek (aby uzyskać szczegółowe informacje, zobacz sekcję " Jak rozpoznać, że czcionka została zastąpiona [Manipulowanie i zastępowanie czcionek TrueType ](/words/cpp/manipulate-and-substitute-truetype-fonts/) artykuł).
- W Microsoft Word Otwórz okno dialogowe "zastępowanie czcionek" (Plik → Opcje → zaawansowane → zastępowanie czcionek).

------

**P: Dlaczego funkcja rezerwowa czcionki nie działa na platformach innych niżWindows, a znaki Unicode są zastępowane .notdef glyph?**

Często możemy zobaczyć glif `.notdef` zamiast jakiegoś znaku Unicode. Zwykle jest to pudełko lub glif zapytania.

Dzieje się tak, ponieważ domyślne ustawienia zapasowe Microsoft pakietu Office są zaznaczone, a czcionki Microsoft pakietu Office nie są dostępne. Użytkownicy muszą zainstalować Microsoft czcionki biurowe lub zmienić ustawienia awaryjne.

------

**P: Dlaczego z jakiegoś powodu złożony tekst Pisma, taki jak tajski lub Hebrajski, może być wyświetlany niedokładnie, na przykład niewłaściwa pozycja znaków diakrytycznych lub niedokładne ligatury?**

Niektóre złożone czcionki Skryptowe wymagają przetworzenia zaawansowanych funkcji typografii w celu ich prawidłowego wyświetlania. Typografia zaawansowana jest domyślnie wyłączona w Aspose.Words. Użytkownicy muszą włączyć zaawansowaną typografię za pomocą [TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/).

------

**P: Czy potrzebuję plików licencyjnych dla czcionek, których używam?**

Tak, wiesz. Dlatego podczas kopiowania czcionek należy pamiętać, że większość czcionek jest chroniona prawami autorskimi. Znajdź wcześniej licencje czcionek i sprawdź, czy można je swobodnie przenieść na inny komputer.

## Dołącz lub Wstaw dokument

{{% alert color="primary" %}}

Bardziej szczegółowe informacje na temat programowania z dokumentami można znaleźć w [Programowanie z dokumentami](/words/cpp/programming-with-documents/) sekcja dokumentacji.

{{% /alert %}}

**P: Dlaczego zawartość dołączona do dokumentu nie pojawia się na tej samej stronie?**

Wynik dołączania pojawia się na osobnej stronie z powodu różnicy w Ustawieniach [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) dla sekcji, w których dokumenty są dołączane razem. Wykonaj identyczne ustawienia **PageSetup** dla sekcji, w których dokumenty są dołączane razem.

## Konwertuj dokument

{{% alert color="primary" %}}

Bardziej szczegółowe informacje na temat konwersji dokumentu można znaleźć w [Konwertuj dokument](/words/cpp/convert-a-document/) sekcja dokumentacji.

{{% /alert %}}

**P: Jak przekonwertować DOCX na PDF?**

Jest to również bardzo łatwe, wystarczy załadować dokument do modelu i zapisać go w dowolnym obsługiwanym formacie.

Poniższy przykład kodu pokazuje proces konwersji pliku DOCX na PDF:

{{< highlight csharp >}}
// Load the document from disk.
System::SharedPtr<Document> doc = System::MakeObject<Document>(inputDataDir + u"Rendering.doc");

System::String outputPath = outputDataDir + u"Doc2Pdf.SaveDoc2Pdf.pdf";
// Save the document in PDF format.
doc->Save(outputPath);
{{< /highlight >}}

## Manipuluj za pomocą dokumentu

{{% alert color="primary" %}}

Bardziej szczegółowe informacje na temat programowania z dokumentami można znaleźć w [Programowanie z dokumentami](/words/cpp/programming-with-documents/) sekcja dokumentacji.

{{% /alert %}}

**P: Jak podzielić dokument strona po stronie?**

Aspose.Words umożliwia dzielenie wielostronicowego dokumentu strona po stronie.

Poniższy przykład kodu pokazuje, jak podzielić dokument i zapisać każdą stronę jako osobny dokument:

{{< highlight csharp >}}
auto doc = MakeObject<Document>(MyDir + u"Big document.docx");

int pageCount = doc->get_PageCount();

for (int page = 0; page < pageCount; page++)
{
    // Save each page as a separate document.
    SharedPtr<Document> extractedPage = doc->ExtractPages(page, 1);
    extractedPage->Save(ArtifactsDir + String::Format(u"SplitDocument.PageByPage_{0}.docx", page + 1));
}
{{< /highlight >}}

------

**P: Jak otworzyć zaszyfrowany**

Możesz spróbować otworzyć zaszyfrowany dokument bez hasła, co powinno prowadzić do wyjątku.

Poniższy przykład kodu pokazuje, jak otworzyć zaszyfrowany dokument za pomocą hasła:

{{< highlight csharp >}}
// Create a document.
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);
builder->Write(u"Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
auto options = System::MakeObject<OoxmlSaveOptions>(SaveFormat::Docx);

// Set a password with which the document will be encrypted, and which will be required to open it.
options->set_Password(u"MyPassword");
doc->Save(u"OoxmlSaveOptions.SaveAsDocx.docx", options);

// Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = System::MakeObject<Document>(u"OoxmlSaveOptions.Password.docx", System::MakeObject<LoadOptions>(u"MyPassword"));

ASSERT_EQ(doc->GetText().Trim(), u"Hello world!");
{{< /highlight >}}
