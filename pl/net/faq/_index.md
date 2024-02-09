---
title: Często zadawane pytania
second_title: Aspose.Words dla .NET
articleTitle: Często zadawane pytania – Aspose.Words dla .NET
linktitle: Często zadawane pytania – Aspose.Words dla .NET
articleTitle: Często zadawane pytania
linktitle: Często zadawane pytania
type: docs
description: "Aspose.Words dla .NET odpowiada na najczęściej zadawane pytania. Zapoznaj się z tą stroną, aby szybko rozwiązać swój problem w zakresie ogólnych pytań lub konkretnych tematów."
weight: 75
url: /pl/net/faq/
---

Na tej stronie znajdują się odpowiedzi na najczęściej zadawane pytania. Zapoznaj się proszę z aktualną stroną – być może pozwoli to szybko rozwiązać Twój problem.

Jeśli nie znalazłeś odpowiedzi na swoje pytanie, możesz zadać je na forum pomocy technicznej. Informacje o tym, jak prawidłowo zgłosić swoje pytanie lub problem, znajdziesz na stronie [Pomoc techniczna](/words/pl/net/technical-support/).

{{% alert color="primary" %}}

Dla Twojej wygody często zadawane pytania pogrupowano tematycznie.

{{% /alert %}}

## Ogólny

**P: Co to jest Aspose.Words?**

Aspose.Words for .NET to biblioteka klas, która umożliwia aplikacjom wykonywanie szerokiej gamy zadań związanych z przetwarzaniem dokumentów. Dzięki Aspose.Words dla .NET możesz generować, modyfikować, konwertować, renderować i drukować dokumenty bez aplikacji innych firm.

Szczegóły znajdziesz w naszej dokumentacji.

------

**P: Co to znaczy "Aspose.Words nie wymaga aplikacji innych firm"?**

Aspose.Words for .NET nie wymaga instalowania aplikacji innych firm ani dodatkowych pakietów oprogramowania, aby działać. Wystarczy pobrać i zainstalować Aspose.Words zgodnie z opisem w artykule [Instalacja](/words/pl/net/installation/) i zaczynać.

------

**P: Jakie platformy obsługuje Aspose.Words?**

Aspose.Words dla .NET obejmuje większość popularnych środowisk programistycznych i platform wdrożeniowych. Jego format API może być używany do tworzenia aplikacji dla szerokiej gamy systemów operacyjnych, takich jak Windows, Linux i Mac OS, oraz różnych platform.

Aby uzyskać szczegółowe informacje, zobacz stronę [Przegląd produktów](/words/pl/net/product-overview/) i sekcję [Platformy i funkcjonalność Interop](/words/net/platforms-and-interoperability/).

------

**P: Jakie formaty dokumentów obsługuje Aspose.Words?**

Aspose.Words dla .NET obsługuje większość popularnych formatów dokumentów, takich jak DOC, DOCX, HTML, Markdown, PDF, XML i inne.

Pełną listę obsługiwanych formatów można zobaczyć na stronie [Obsługiwane formaty dokumentów](/words/pl/net/supported-document-formats/).

------

**P: Jak mogę bezpłatnie wypróbować Aspose.Words?**

Możesz to zrobić na dwa sposoby – korzystając z wersji Trial lub 30-dniowej licencji tymczasowej. Wersja Trial jest taka sama jak zakupiona, zapewnia pełną funkcjonalność produktu, ale dodaje oceniający znak wodny na górze dokumentu podczas ładowania i zapisywania oraz ogranicza maksymalny rozmiar dokumentu do kilkuset akapitów. Licencja tymczasowa umożliwia testowanie Aspose.Words bez ograniczeń wersji próbnej przez 30 dni.

Więcej informacji można znaleźć na stronie [Licencjonowanie i subskrypcja](/words/pl/net/licensing/).

{{% alert color="primary" %}}

Możesz także wypróbować niektóre z najpopularniejszych funkcji Aspose.Words za pośrednictwem [Bezpłatne aplikacje internetowe Aspose.Words](https://products.aspose.app/words).

{{% /alert %}}

------

**P: Jak mogę kupić Aspose.Words?**

Aby kupić licencję Aspose.Words należy wejść na stronę [Zakup](https://purchase.aspose.com/buy), wybrać produkt "Aspose.Words" i odpowiedni dla siebie rodzaj licencji. Następnie dodaj licencję do koszyka i postępuj zgodnie z instrukcjami w koszyku.

Po zakupie złóż wniosek o licencję zgodnie z opisem w sekcji [Zakupiona licencja](/words/net/licensing/#purchased-license).

Szczegóły dotyczące instalacji Aspose.Words można przeczytać na stronie [Instalacja](/words/pl/net/installation/).

------

**P: Jak mogę uzyskać wsparcie?**

Skorzystaj z bezpłatnego forum pomocy technicznej. Szczegółowe informacje o tym, jak prawidłowo zgłosić problem i co należy zrobić przed skontaktowaniem się z forum, znajdziesz na stronie [Pomoc techniczna](/words/pl/net/technical-support/).

## Renderowanie dokumentu

{{% alert color="primary" %}}

Bardziej szczegółowe informacje na temat renderowania można znaleźć w sekcji dokumentacji [Wykonanie](/words/pl/net/rendering/).

{{% /alert %}}

**P: Dlaczego układ i czcionki w dokumencie wyjściowym różnią się od oryginału?**

Czcionka może nie być dostępna lub format czcionki jest obsługiwany przez Microsoft Word, ale nie jest obsługiwany przez Aspose.Words. Aspose.Words wykona [Manipuluj i zastępuj czcionki TrueType](/words/pl/net/manipulating-and-substitution-truetype-fonts/).

Aby sprawdzić, czy brakuje czcionki:

* W Aspose.Words należy używać ostrzeżeń o podstawieniu czcionek (więcej informacji można znaleźć w sekcji "Jak rozpoznać, że czcionka została zastąpiona" w artykule [Manipuluj i zastępuj czcionki TrueType](/words/pl/net/manipulating-and-substitution-truetype-fonts/)).
* W Microsoft Word otwórz okno dialogowe "Zastępowanie czcionek" (Plik → Opcje → Zaawansowane → Podstawianie czcionek).

------

**P: Gdzie powinienem przechowywać czcionki dla aplikacji ASP.NET?**

W `APS.NET` nie ma dostępu do folderu czcionek systemowych o średnim zaufaniu. Użytkownicy muszą przechowywać czcionki w swoim własnym folderze.

------

**P: Dlaczego czcionka zastępcza nie działa na platformach innych niż Windows, a znaki Unicode są zastępowane przez .notdef glyph?**

Często zamiast jakiegoś znaku Unicode możemy zobaczyć `.notdef` glyph. Zwykle jest to pole lub pytanie glyph.

Dzieje się tak, ponieważ domyślnie wybrane są ustawienia zastępcze Microsoft Office, a czcionki Microsoft Office nie są dostępne. Użytkownicy muszą zainstalować czcionki Microsoft Office lub zmienić ustawienia awaryjne.

------

**P: Dlaczego tekst złożony, np. tajski lub hebrajski, może z jakiegoś powodu być wyświetlany niedokładnie, np. w złym położeniu znaków diakrytycznych lub niedokładnych ligaturach?**

Niektóre złożone czcionki skryptowe wymagają przetworzenia funkcji zaawansowanej typografii w celu ich prawidłowego wyświetlenia. Zaawansowana typografia jest domyślnie wyłączona w Aspose.Words. Użytkownicy muszą włączyć zaawansowaną typografię z [TextShaperFactory](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/textshaperfactory/).

------

**P: Czy potrzebuję plików licencyjnych dla czcionek, których używam?**

Tak, robisz to. Dlatego kopiując czcionki, należy pamiętać, że większość czcionek jest chroniona prawami autorskimi. Znajdź wcześniej licencje na czcionki i sprawdź, czy można je swobodnie przenieść na inną maszynę.

## Zagnieżdżony Mail Merge

{{% alert color="primary" %}}

Bardziej szczegółowe informacje na temat mail merge można znaleźć w sekcji dokumentacji [Mail Merge i raportowanie](/words/net/mail-merge-and-reporting/).

{{% /alert %}}

**P: Dlaczego w wygenerowanym wyniku nie ma połączonych pól?**

Oryginalna nazwa pola scalania pozostaje taka sama i nie jest zastępowana wymaganymi danymi ze źródła danych, wówczas:

* Sprawdź, czy dane są prawidłowo ładowane do tabel: ustaw poprawnie [TableName](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/tablename/) ze wszystkimi wymaganymi kluczami podstawowymi i relacjami.
* Sprawdź, czy pola scalania mają prawidłowe nazwy. Użyj metody [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/), aby uzyskać nazwy wszystkich pól scalania i upewnij się, że nazwa pól scalania w szablonie jest zgodna z nazwą w źródle danych.

------

**P: Dlaczego w wyniku scalania zagnieżdżonego nie są wyświetlane dane z tabeli podrzędnej dla pierwszego wpisu w tabeli nadrzędnej, ale wyświetlane są wszystkie elementy ostatniego wpisu w tabeli nadrzędnej, nawet te, które w rzeczywistości nie są z nią połączone?**

Dzieje się tak dlatego, że regiony scalania w szablonie nie są poprawnie utworzone, co może spowodować, że wszystkie zagnieżdżone regiony mail merge przestaną w ogóle cokolwiek wyświetlać. Znacznik otwierający [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/) i znacznik zamykający [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) muszą być zgodne i znajdować się w tym samym wierszu lub komórce. Na przykład, jeśli rozpoczniesz zagnieżdżanie regionów scalania w komórce tabeli, musisz zakończyć region scalania w tym samym wierszu, co pierwsza komórka.

------

**P: Dlaczego każdy wpis z tabeli nadrzędnej wyświetla wszystkie elementy tabeli podrzędnej, nawet te, które w rzeczywistości nie są z nią połączone?**

Dzieje się tak, ponieważ relacja między tabelami nadrzędnymi i podrzędnymi nie jest skonfigurowana lub jest skonfigurowana nieprawidłowo. Konieczne jest:

* Zapewnij integralność danych w **DataSet** i użyj obiektu **DataRelation** do reprezentowania relacji rodzic-dziecko pomiędzy powiązanymi tabelami danych.
* Sprawdź sekcję "Jak skonfigurować relacje danych w zagnieżdżonym Mail Merge z regionami" w artykule [Zagnieżdżony Mail Merge z regionami](/words/net/nested-mail-merge-with-regions/).

------

**P: Dlaczego jest wyjątek: "System.ArgumentException: tego ograniczenia nie można włączyć, ponieważ nie wszystkie wartości mają odpowiadające wartości nadrzędne" podczas wykonywania zagnieżdżonego mail merge?**

Dzieje się tak, ponieważ nie każdy rekord nadrzędny ma rekord podrzędny, więc Twoje źródło danych nie spełnia następujących kryteriów: *każdy wiersz w tabeli nadrzędnej powinien mieć relację jeden do jednego z wierszami tabeli podrzędnej na podstawie rekordu podstawowego i klucz obcy*.

Wyłącz ograniczenia klucza obcego podczas tworzenia pliku **DataRelation**.

## Dołącz lub wstaw dokument

{{% alert color="primary" %}}

Bardziej szczegółowe informacje na temat programowania za pomocą dokumentów znajdziesz w dziale dokumentacja [Programowanie z dokumentami](/words/pl/net/programming-with-documents/).

{{% /alert %}}

**P: Dlaczego treść dołączona do dokumentu nie pojawia się na tej samej stronie?**

Wynik dołączenia pojawi się na osobnej stronie ze względu na różnicę w ustawieniach [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) dla sekcji, w których dokumenty są dołączane. Wprowadź identyczne ustawienia **PageSetup** dla sekcji, w których dokumenty są do siebie dołączane.

## Konwertuj dokument

{{% alert color="primary" %}}

Bardziej szczegółowe informacje na temat konwersji dokumentu można znaleźć w sekcji Dokumentacja [Konwertuj dokument](/words/pl/net/convert-a-document/).

{{% /alert %}}

**P: Jak przekonwertować plik PDF na Word?**

To bardzo proste, wystarczy załadować dokument do modelu i zapisać go w dowolnym obsługiwanym formacie.

Poniższy przykładowy kod ilustruje proces konwersji pliku PDF do formatu DOC:

{{< highlight csharp >}}
// Open the source PDF document
Document pdfDocument = new Document(_dataDir + "PDFToDOC.pdf");

// Save the file into MS document format
pdfDocument.Save(_dataDir + "PDFToDOC_out.doc", SaveFormat.Doc); // .Docx, .Rtf, .WordML, etc.
{{< /highlight >}}

------

**P: Jak przekonwertować DOCX na PDF?**

To również jest bardzo proste, wystarczy załadować dokument do modelu i zapisać go w dowolnym obsługiwanym formacie.

Poniższy przykładowy kod ilustruje proces konwersji pliku DOCX do formatu PDF:

{{< highlight csharp >}}
// Open the source DOCX document.
Document doc = new Document(_dataDir + "input.docx");

// Save the file to PDF format.
doc.Save(_dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Manipuluj dokumentem

{{% alert color="primary" %}}

Bardziej szczegółowe informacje na temat programowania za pomocą dokumentów znajdziesz w dziale dokumentacja [Programowanie z dokumentami](/words/pl/net/programming-with-documents/).

{{% /alert %}}

**P: Jak podzielić dokument strona po stronie?**

Aspose.Words umożliwia dzielenie wielostronicowego dokumentu strona po stronie.

Poniższy przykład kodu pokazuje, jak podzielić dokument i zapisać każdą stronę jako osobny dokument:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Big document.docx");

int pageCount = doc.PageCount;

for (int page = 0; page < pageCount; page++)
{
	// Save each page as a separate document.
	Document extractedPage = doc.ExtractPages(page, 1);
	extractedPage.Save(ArtifactsDir + $"SplitDocument.PageByPage_{page + 1}.docx");
}
{{< /highlight >}}

------

**P: Jak otworzyć zaszyfrowany plik** **dokument?**

Możesz spróbować otworzyć zaszyfrowany dokument bez hasła, co powinno spowodować wyjątek.

Poniższy przykład kodu pokazuje, jak otworzyć zaszyfrowany dokument za pomocą hasła:

{{< highlight csharp >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Write("Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
OoxmlSaveOptions options = new OoxmlSaveOptions(SaveFormat.Docx);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.Password = "MyPassword";
doc.Save(ArtifactsDir + "OoxmlSaveOptions.SaveAsDocx.docx", options);

// Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = new Document(ArtifactsDir + "OoxmlSaveOptions.Password.docx", new LoadOptions("MyPassword"));

Assert.AreEqual("Hello world!", doc.GetText().Trim());
{{< /highlight >}}

------

**P: Jak wydrukować dokument?**

Tylko dwie linijki kodu.

Poniższy przykład kodu pokazuje, jak wydrukować dokument na dwa sposoby:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "PrintMe.docx");

// Below are two ways of printing our document.
// 1 -  Print using the default printer:
doc.Print();

// 2 -  Specify a printer that we wish to print the document with by name:
string myPrinter = PrinterSettings.InstalledPrinters[4];

doc.Print(myPrinter);
{{< /highlight >}}

------

**P: Jak edytować dokument PDF?**

Wystarczy załadować plik PDF do modelu dokumentu Aspose.Words i wprowadzić zmiany.

Poniższy przykład kodu pokazuje, jak edytować dokument:

{{< highlight csharp >}}
// Open the source PDF document
Document pdfDocument = new Document(_dataDir + "PDFToDOC.pdf");

DocumentBuilder builder = new DocumentBuilder(pdfDocument);
builder.MoveToDocumentEnd();
builder.Writeln("New paragraph with text");

pdfDocument.Save(_dataDir + "out.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Docker

**P: Jak używać Aspose.Words w Docker?**

Aby uzyskać szczegółową odpowiedź, zapoznaj się z artykułem [Jak uruchomić Aspose.Words w Docker](/words/pl/net/how-to-run-aspose-words-in-docker/).
