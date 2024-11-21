---
title: Cechy
second_title: Aspose.Words dla Python via .NET
articleTitle: Obsługiwane funkcje
linktitle: Obsługiwane funkcje
description: "Aspose.Words dla Python via .NET zapewnia użytkownikom szeroką gamę funkcji, od prostej konwersji i modyfikowania dokumentów po tworzenie uporządkowanych i atrakcyjnych wizualnie dokumentów lub automatyzację raportowania."
type: docs
weight: 30
url: /pl/python-net/features/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words zapewnia użytkownikom szeroką gamę funkcji. Użytkownicy mogą wykonywać ogromną liczbę zadań związanych z dokumentami – od prostego konwertowania dokumentów z jednego obsługiwanego formatu na inny i modyfikowania tych dokumentów w procesie konwersji po zadania biznesowe, takie jak tworzenie uporządkowanych i atrakcyjnych wizualnie dokumentów lub automatyzacja raportowania.

Nowoczesne formaty i standardy dokumentów są złożone, a jeśli w projekcie wymagana jest konwersja dokumentów lub inne funkcje przetwarzania dokumentów, jedynym praktycznym rozwiązaniem jest często poleganie na komponencie innej firmy, który implementuje żądaną funkcjonalność. Jednak korzystanie z komponentu strony trzeciej zawsze wiąże się z pewnym ryzykiem. Jednym z wyjątkowych zagrożeń związanych z przetwarzaniem dokumentów jest pytanie, w jaki sposób całkowicie i poprawnie biblioteka implementuje określony format lub standard dokumentu.

Aspose angażuje się w dostarczanie najbardziej kompletnych i dokładnych implementacji formatów i standardów dokumentów. Zespół Aspose.Words demonstruje swoje zaangażowanie w interoperacyjność, dostarczając szczegółowe uwagi dotyczące wdrażania obsługiwanych formatów dokumentów na wielu platformach.

Poniższe tabele podsumowują i porównują dostępność funkcji Aspose.Words dla Python via .NET oraz zawierają łącza do szczegółowych opisów funkcji.

## Obsługiwane platformy

Platformy Aspose.Words dla Python via .NET mogą być używane na Windows x64 lub x86, macOS x86_x64 lub arm64 i szerokiej gamie dystrybucji Linux z zainstalowanym Python 3.5 lub nowszym. Docelowe platformy Linux i macOS mają dodatkowe wymagania:
- Biblioteki wykonawcze GCC-6 (lub nowsze)
- Zależności .NET Core Runtime. Instalacja samego .NET Core Runtime wymaga `NOT`
- W przypadku Python 3.5-3.7: wymagana jest kompilacja Python w formacie `pymalloc`. Opcja kompilacji `--with-pymalloc` Python jest domyślnie włączona. Zazwyczaj kompilacja `pymalloc` Python jest oznaczona przyrostkiem `m` w nazwie pliku.
- Współdzielona biblioteka Python `libpython`. Opcja kompilacji `--enable-shared` Python jest domyślnie wyłączona, niektóre dystrybucje Python nie zawierają biblioteki współdzielonej `libpython`. Na niektórych platformach Linux bibliotekę współdzieloną `libpython` można zainstalować za pomocą menedżera pakietów, na przykład: `sudo apt-get install libpython3.7`. Częstym problemem jest to, że biblioteka `libpython` jest instalowana w innej lokalizacji niż standardowa lokalizacja systemowa dla bibliotek współdzielonych. Problem można rozwiązać, używając opcji kompilacji Python w celu ustawienia alternatywnych ścieżek bibliotek podczas kompilacji Python lub rozwiązując go, tworząc dowiązanie symboliczne do pliku biblioteki `libpython` w standardowej lokalizacji systemowej dla bibliotek współdzielonych. Zazwyczaj nazwa pliku biblioteki współdzielonej `libpython` to `libpythonX.Ym.so.1.0` dla Python 3.5-3.7 lub libpythonX.Y.so.1.0 dla Python 3.8 lub nowszego (na przykład: `libpython3.7m.so.1.0`, `libpython3.9.so.1.0`).

Jeśli potrzebujesz wsparcia dla większej liczby platform, poszukaj produktów "bliźniaczego brata" Aspose.Words dla .NET lub Aspose.Words dla Java.

## Formaty plików i konwersje

Wielu klientów na całym świecie polega na kompleksowych funkcjach importu i eksportu dokumentów oferowanych przez Aspose.Words.

|  Funkcja | Opis | Python via .NET |
|  :-  |  :-  |  :-  |
| `Microsoft Word - DOC` | Najszybsza i najbardziej kompletna implementacja formatu DOC, jaką można znaleźć. | {{< emoticons/tick >}} |
| `WordprocessingML - DOCX and XML` | Aspose.Words zapewnia kompleksową obsługę OOXML, Flat OPC, a także XML Word 2003. | {{< emoticons/tick >}} |
| `Rich Text Format - RTF` | Kompleksowa obsługa formatu RTF w celu interakcji z różnymi aplikacjami. | {{< emoticons/tick >}} |
| `HTML, XHTML and MHTML` | Załaduj i zapisz HTML/XHTML, aby uzyskać jeszcze większą interoperacyjność. Dostępna jest także opcja Zapisz jako MHTML. | {{< emoticons/tick >}} |
| `OpenDocument - ODT` | Aspose.Words może ładować i zapisywać dokumenty w formacie `OpenDocument` Text (.odt). | {{< emoticons/tick >}} |
| `Adobe Portable Document Format - PDF` | Konwertuj dowolny dokument na format PDF z zachowaniem wysokiej wierności. Obsługiwany jest format PDF/A. | {{< emoticons/tick >}} |
| `XML Paper Specification - XPS` | Konwertuj dowolny dokument na XPS z wysoką wiernością. | {{< emoticons/tick >}} |
| `Plain Text - TXT` | Z łatwością wyodrębnij tekst, zapisując go w formacie zwykłego tekstu. | {{< emoticons/tick >}} |
| `Digital Publishing EPUB` | EPUB to popularny format e-booków. Możesz przekonwertować dowolny dokument z Aspose.Words na format IDPF EPUB. | {{< emoticons/tick >}} |
| `Printer Command Language (PCL)` | Aspose.Words dla .NET zapewnia obsługę zapisywania dokumentów w formacie PCL. | {{< emoticons/tick >}} |

## Renderowanie i drukowanie

Aspose.Words zapewnia teraz wysoką wierność renderowania stron dokumentów.

|  Funkcja | Python via .NET |
|  :-  |  :-  |
| Ułóż dokument na stronach z wysoką wiernością (dokładnie tak, jak zrobiłby to Microsoft Word®) we wszystkich poniższych formatach. | {{< emoticons/tick >}} |
| Renderuj pojedyncze strony lub całe dokumenty do formatu PDF lub XPS. | {{< emoticons/tick >}} |
| Renderuj strony dokumentu do obrazów BMP | {{< emoticons/tick >}} |
| Renderuj strony dokumentu do obrazów (PNG, EMF, JPEG, GIF). | {{< emoticons/tick >}} |
| Renderuj poszczególne kształty z dokumentu na obrazy rastrowe lub wektorowe. | {{< emoticons/tick >}} |
| Określ rozdzielczość obrazu, jakość, kompresję i inne opcje. | {{< emoticons/tick >}} |
| Renderuj strony lub kształty do obiektu graficznego .NET z transformacjami do określonego rozmiaru. | {{< emoticons/tick >}} |
| Drukuj strony dokumentów, korzystając z infrastruktury drukowania .NET. | {{< emoticons/cross >}} |
| Zaktualizuj `TOC`, numery stron i inne pola przed renderowaniem lub drukowaniem. | {{< emoticons/tick >}} |

## Funkcje zawartości dokumentu

Aspose.Words zapewnia bogaty model obiektowy składający się z ponad 100 klas publicznych, które umożliwiają programowe generowanie, łączenie, modyfikowanie, analizowanie lub w inny sposób sprawdzanie załadowanych dokumentów.

|  Funkcja | Python via .NET |
|  :-  |  :-  |
| Uzyskuj dostęp, twórz i modyfikuj akapity i tekst. | {{< emoticons/tick >}} |
| Uzyskuj dostęp, twórz i modyfikuj obrazy, pola tekstowe i kształty. | {{< emoticons/tick >}} |
| Uzyskuj dostęp, twórz i modyfikuj tabele, wiersze i komórki. | {{< emoticons/tick >}} |
| Uzyskuj dostęp, twórz i modyfikuj pola, pola formularzy, hiperłącza i zakładki. | {{< emoticons/tick >}} |
| Uzyskuj dostęp, twórz i modyfikuj sekcje, nagłówki i stopki dokumentów. | {{< emoticons/tick >}} |
| Uzyskuj dostęp, twórz i modyfikuj przypisy, przypisy końcowe i komentarze. | {{< emoticons/tick >}} |
| Uzyskuj dostęp, twórz i modyfikuj niestandardowe znaczniki XML, znaczniki inteligentne i znaczniki dokumentów strukturalnych (kontrola treści). | {{< emoticons/tick >}} |
| Uzyskuj dostęp i modyfikuj wszystkie elementy dokumentu za pomocą klas i metod podobnych do **XmlDocument**. | {{< emoticons/tick >}} |
| Aktualizuj wyniki pól `IF`, formuły i inne popularne typy pól. | {{< emoticons/tick >}} |
| Odbuduj i aktualizuj pola spisu treści (TOC) dokładnie tak, jak robi to Microsoft Word. | {{< emoticons/tick >}} |
| Kopiuj i przenoś elementy dokumentu pomiędzy dokumentami. | {{< emoticons/tick >}} |
| Łącz i dziel dokumenty. | {{< emoticons/tick >}} |
| Uzyskaj i ustaw wbudowane i niestandardowe właściwości dokumentu. | {{< emoticons/tick >}} |
| Określ ochronę dokumentów, otwieraj chronione i zaszyfrowane dokumenty. | {{< emoticons/tick >}} |
| Znajdź i zamień tekst, wylicz zawartość dokumentu. | {{< emoticons/tick >}} |
| Zaakceptuj wszystkie poprawki w dokumencie. | {{< emoticons/tick >}} |
| Zachowaj lub wyodrębnij obiekty OLE i kontrolki ActiveX z dokumentu. | {{< emoticons/tick >}} |
| Zachowaj lub usuń makra VBA z dokumentu. Zachowaj podpis cyfrowy makr VBA. | {{< emoticons/tick >}} |
| Wykrywaj i weryfikuj podpisy cyfrowe w dokumentach. | {{< emoticons/tick >}} |
| Wstaw tekst HTML. | {{< emoticons/tick >}} |
| Wyodrębnij makra VBA z dokumentu Word. | {{< emoticons/tick >}} |

## Funkcje formatowania dokumentów

Aspose.Words zapewnia szczegółowy programowy dostęp do właściwości formatowania wszystkich elementów dokumentu.

|  Funkcja | Python via .NET |
|  :-  |  :-  |
| Uzyskaj dostęp i modyfikuj całe formatowanie znaków, w tym czcionki, kolory, efekty, obramowania i cieniowanie. | {{< emoticons/tick >}} |
| Uzyskaj dostęp i modyfikuj całe formatowanie akapitów, w tym wcięcia, odstępy, obramowania i cieniowanie oraz tabulatory. | {{< emoticons/tick >}} |
| Uzyskaj dostęp i modyfikuj formatowanie wszystkich list punktowanych i numerowanych, w tym numerację i poziomy. | {{< emoticons/tick >}} |
| Uzyskaj dostęp i modyfikuj formatowanie tabeli, w tym wyrównanie, orientację, obramowanie i cieniowanie. | {{< emoticons/tick >}} |
| Uzyskaj dostęp i modyfikuj wszystkie właściwości sekcji, w tym rozmiar papieru, marginesy i orientację. | {{< emoticons/tick >}} |
| Uzyskuj dostęp, twórz i modyfikuj style dokumentów. | {{< emoticons/tick >}} |
| Uzyskuj dostęp i modyfikuj obiekty rysunkowe, w tym położenie, rozmiar, właściwości linii i wypełnienia, bajty obrazu. | {{< emoticons/tick >}} |

## Funkcje Mail Merge

Możesz używać Aspose.Words jako samodzielnego rozwiązania do raportowania. Projektuj raporty w formacie Microsoft Word, a następnie poproś Aspose.Words o wypełnienie dokumentów danymi z różnych źródeł danych.

|  Funkcja | Python via .NET |
|  :-  |  :-  |
| Używaj w swoich raportach wszystkich standardowych pól Microsoft Word mail merge, w tym `MERGEFIELD`, `NEXT`, `NEXTIF`, `ADDRESSBLOCK`, GREETINGLINE. | {{< emoticons/tick >}} |
| Wykonuj mail merge dla dokumentów zawierających nawet najbardziej złożone i zagnieżdżone pola i formuły `IF`. | {{< emoticons/tick >}} |
| Wypełniaj i dynamicznie powiększaj tabele lub fragmenty w dokumencie ze źródła danych, korzystając z regionów mail merge. | {{< emoticons/cross >}} |
| Z łatwością generuj raporty zawierające dane główne (nadrzędne-podrzędne), takie jak Order/OrderDetails. | {{< emoticons/cross >}} |
| Wypełniaj dokumenty danymi z dowolnego źródła danych .NET, takiego jak DataSet, DataTable, DataView, DataReader lub ADO Recordset. | {{< emoticons/cross >}} |
| Wypełniaj dokumenty z dowolnego źródła danych, takiego jak zapytanie LINQ, plik XML lub obiekty biznesowe, implementując interfejs [IMailMergeDataSource](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/imailmergedatasource/). | {{< emoticons/cross >}} |
| Przejmij precyzyjną kontrolę nad sposobem łączenia danych za pomocą zdarzeń, na przykład formatowaniem liczb. | {{< emoticons/cross >}} |
| Wstaw obrazy podczas mail merge. | {{< emoticons/tick >}} |
| Programowo utwórz lub zmodyfikuj źródło danych Microsoft Word mail merge dla dokumentu. Zachowaj ustawienia mail merge i źródła danych. | {{< emoticons/tick >}} |
| Pobierz nazwy pól mail merge. | {{< emoticons/tick >}} |

## Funkcje raportowania

LINQ Reporting Engine to zaawansowane narzędzie do raportowania umożliwiające generowanie dokumentów w oparciu o dokumenty szablonowe i dane uzyskane z różnych źródeł, w tym baz danych, XML, JSON, OData, obiektów niestandardowych typów CLR, dokumentów zewnętrznych i nie tylko.

| Kluczowe cechy | Python via .NET |
|  :-  |  :-  |
| Obsługa metod rozszerzenia składni C# i LINQ bezpośrednio w szablonach (nawet dla źródeł danych `ADO.NET`) | {{< emoticons/tick >}} |
| Obsługa powtarzalnych i warunkowych bloków dokumentów (pętli i warunków) dla tabel, list i wspólnej zawartości | {{< emoticons/tick >}} |
| Obsługa dynamicznie generowanych wykresów i obrazów | {{< emoticons/tick >}} |
| Obsługa wstawiania zewnętrznych dokumentów i bloków HTML do dokumentu | {{< emoticons/tick >}} |
| Obsługa wielu źródeł danych (w tym różnych typów) w celu wygenerowania jednego dokumentu | {{< emoticons/tick >}} |
| Wbudowana obsługa relacji danych (master-detail) | {{< emoticons/tick >}} |
| Kompleksowa obsługa różnorodnych manipulacji danymi takich jak grupowanie, sortowanie, filtrowanie i inne bezpośrednio w szablonach | {{< emoticons/tick >}} |
| WYSIWYG: Wygenerowany dokument zachowuje takie samo formatowanie swoich elementów, jak odpowiadający mu szablon | {{< emoticons/tick >}} |
