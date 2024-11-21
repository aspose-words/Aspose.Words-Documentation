---
title: Drukowanie dokumentu w formacie C#
second_title: Aspose.Words dla .NET
articleTitle: Drukowanie dokumentu programowo lub przy użyciu okien dialogowych
linktitle: Drukowanie dokumentu programowo lub przy użyciu okien dialogowych
description: "Wydrukuj dokument w formacie Server przy użyciu niezarządzanego XpsPrint API lub na wybranej drukarce za pomocą ustawień i okien dialogowych podglądu wydruku w formacie C#."
type: docs
weight: 55
url: /pl/net/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-31-14-23-37
---

W tym artykule opisano sposób drukowania dokumentu edytora tekstu z aplikacji usługi ASP.NET lub Windows przy użyciu formatów Aspose.Words i `XpsPrint` API. Pokazuje także metody drukowania dokumentu w oknach dialogowych Ustawienia, Podgląd wydruku i Postęp drukowania oraz wyjaśnia, jak skrócić czas pierwszego wywołania w celu wydrukowania dokumentu.

## Drukowanie dokumentu w formacie Server za pośrednictwem formatu `XpsPrint` API

Ta sekcja jest przeznaczona dla użytkowników, którzy chcą przesłać dokument XPS do niezarządzanego XpsPrint API z aplikacji .NET przy użyciu Aspose.Words.

### Ograniczenia drukowania dokumentu w aplikacjach Serwisu ASP.NET lub Windows

Podczas tworzenia aplikacji .NET, która generuje wydruki, zazwyczaj można używać klas znajdujących się w przestrzeni nazw *System.Drawing.Printing* lub klas Windows Prezentacja Foundation (WPF). Jeśli jednak aplikacja jest aplikacją usługi ASP.NET lub Windows, możliwości drukowania są ograniczone, ponieważ Microsoft odradza korzystanie z tego podejścia. Klasy drukowania .NET Framework nie są obsługiwane przez aplikację usług. Obejmuje to strony ASP, które zazwyczaj działają w kontekście usługi serwera.

Klasy w przestrzeni nazw *System.Drawing.Printing* nie są obsługiwane w ramach usługi Windows ani aplikacji lub usługi ASP.NET, a próba ich użycia może spowodować zmniejszenie wydajności usługi, wyjątki w czasie wykonywania i inne problemy. Użycie WPF do tworzenia usług Windows również nie jest obsługiwane. Ponieważ WPF jest technologią prezentacji, usługa Windows wymaga odpowiednich uprawnień do wykonywania operacji wizualnych obejmujących interakcję użytkownika. Jeśli usługa Windows nie ma takich uprawnień, mogą wystąpić nieoczekiwane rezultaty.

Obiekt Aspose.Words [Document](https://reference.aspose.com/words/net/aspose.words/document/) udostępnia rodzinę metod [Print](https://reference.aspose.com/words/net/aspose.words/document/methods/print/index) do drukowania dokumentów. Metody te wykorzystują klasy drukowania .NET zdefiniowane w przestrzeni nazw *System.Drawing.Printing*. Jest wielu klientów Aspose.Words, którzy z powodzeniem wykorzystują je do drukowania w swoich aplikacjach serwerowych. Niemniej jednak w tym artykule przedstawiono alternatywną metodę drukowania zgodną z zaleceniami Microsoft.

### Metody drukowania dokumentu w formacie Server

Właściwym sposobem drukowania dokumentów zgodnie z Microsoft jest użycie niezarządzanego XpsPrint API. Ten plik API jest dostępny w formatach Windows 7, Windows Server 2008 R2 i Windows Vista, pod warunkiem zainstalowania aktualizacji platformy dla Windows Vista.

Ponieważ Aspose.Words może łatwo przekonwertować dowolny dokument na XPS, wystarczy napisać kod, który przekaże dokument XPS do `XpsPrint` API. Jedynym problemem jest to, że plik `XpsPrint` API nie jest zarządzany i wymaga pewnej wiedzy na temat technologii Platform Invoke.

Aby wydrukować dokument, Aspose.Words udostępnia klasę **XpsPrintHelper** zawierającą prostą metodę Print, w której wystarczy określić następujące parametry (więcej szczegółów w artykule [Wydrukuj dokument poprzez XPS API](/words/net/missing-features-in-openxml/)):

- Dokument, który chcesz wydrukować.
- Nazwa drukarki.
- Nazwa stanowiska (opcjonalnie).
- Wartość logiczna określająca, czy program powinien czekać na zakończenie zadania drukowania. Dlatego system albo sprawdzi, czy dokument został pomyślnie wydrukowany, albo wróci natychmiast po wysłaniu zadania drukowania. W tym ostatnim przypadku nie da się stwierdzić, czy zadanie drukowania zakończyło się sukcesem.

W przypadku napotkania problemów z przesłaniem lub wydrukowaniem dokumentu, metoda zgłosi wyjątek.

Poniższy przykład kodu pokazuje, jak wydrukować dokument przy użyciu klasy **XpsPrintHelper**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintDocViaXpsPrint-PrintDocViaXpsPrint.cs" >}}

Po uruchomieniu projekt drukuje przykładowy dokument na określonej drukarce i otwiera okno konsoli w celu wyświetlenia wyników drukowania. Po zakończeniu zadania drukowania lub wystąpieniu błędów system wyświetli komunikat o powodzeniu lub tekst zgłoszonego wyjątku.

Możesz także ustawić niektóre ustawienia drukowania za pomocą klasy [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/). Na przykład w Microsoft Word tace drukarki są zdefiniowane dla każdej sekcji i są specyficzne dla drukarki. Dlatego możesz programowo zmienić te wartości dla każdej sekcji za pomocą właściwości [FirstPageTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/firstpagetray/) i [OtherPagesTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/otherpagestray/).

{{% alert color="primary" %}}

W niektórych przypadkach może być konieczne użycie tego przykładu bez Aspose.Words. Na przykład, jeśli masz już dokument XPS i chcesz go wydrukować z aplikacji usługi ASP.NET lub Windows. Następnie możesz po prostu usunąć metodę `Print`.

{{% /alert %}}

Istnieją dwa przeciążenia metody **XpsPrintHelper**.**Print**. Pierwsze przeciążenie pobiera obiekt [Document](https://reference.aspose.com/words/net/aspose.words/document/) i zapisuje go w formacie `MemoryStream` w formacie XPS. Drugie przeciążenie akceptuje obiekt `Stream`. Strumień musi zawierać dokument w formacie XPS.

Przykłady przeciążeń metod można pobrać z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/MissingFeaturesofOpenXMLWordsv1.1/Print.Document.via.XPS.API.zip).

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## Drukowanie dokumentu z ustawieniami i oknami dialogowymi podglądu wydruku

Podczas pracy z dokumentami często konieczne jest wydrukowanie ich na wybranej drukarce. Pomocne jest skorzystanie z okna dialogowego podglądu wydruku, aby wizualnie sprawdzić wygląd drukowanego dokumentu i wybrać odpowiednie opcje drukowania.

Aspose.Words nie ma wbudowanych okien dialogowych ani formularzy, ale implementuje klasę [AsposeWordsPrintDocument](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/) opartą na klasie .NET **PrintDocument**. Instancję tej klasy można przekazać do formularza **PrintPreviewDialog** w celu podglądu i wydrukowania dokumentu. Ponadto klasa [Okno dialogowe wydruku podglądu](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.printpreviewdialog?view=netframework-4.8) definiuje dane wyjściowe do przesłania do drukarki.

Poniższy przykład pokazuje, jak używać tych klas do drukowania dokumentu z Aspose.Words za pośrednictwem okien dialogowych Podgląd wydruku i Ustawienia:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialog.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialogEvent.cs" >}}

{{% alert color="primary" %}}

Właściwość **AllowSomePages** umożliwia wybranie zakresu stron do wydrukowania, jeśli wartość tej właściwości to True. Domyślnie do drukowania wybrane są wszystkie strony w zakresie.

{{% /alert %}}

Aby zoptymalizować wygląd ustawień okna dialogowego Podgląd wydruku, określ właściwości klasy **PrintPreviewDialog**.

## Drukowanie wielu stron na jednym arkuszu

Większa elastyczność podczas drukowania dokumentów jest zawsze korzystna. Korzystając z formatów .NET i Aspose.Words, można łatwo dostosować operację drukowania w celu wdrożenia niestandardowej logiki, definiując sposób, w jaki dokument będzie wyglądał na drukowanej stronie.

Podobnie jak w poprzedniej sekcji, Aspose.Words implementuje klasę **MultipagePrintDocument**, która jest oparta na klasie .NET **PrintDocument**. Oznacza to, że istniejącą infrastrukturę druku .NET można wykorzystać w taki sposób, aby okna dialogowe wydruku i podglądu wydruku umożliwiały wizualizację dokumentu przed drukiem. Klasa **MultipagePrintDocument** zapewnia możliwość wydruku kilku stron na jednym arkuszu papieru.

{{% alert color="primary" %}} You can download an example of using the **MultipagePrintDocument** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MultipagePrintDocumentExample). {{% /alert %}}

Wynik tego przykładowego kodu pokazano poniżej:

![print-a-document-programmatically-or-using-dialogs-aspose-words-net](/words/net/print-a-document-programmatically-or-using-dialogs/print-a-document-programmatically-or-using-dialogs-1.png)

## Ukrywanie okna dialogowego postępu drukowania podczas drukowania dokumentu

Okno dialogowe postępu drukowania nie pojawia się podczas drukowania dokumentu metodą [Print](https://reference.aspose.com/words/net/aspose.words/document/print/). Jednakże to okno dialogowe pojawia się podczas drukowania inną metodą [Print](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/). W takim przypadku, aby zapobiec pojawieniu się okna dialogowego Drukowanie, należy określić prawidłowe ustawienia drukarki i standardowy kontroler druku w tej metodzie, jak pokazano w poniższym przykładzie:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintProgressDialog-PrintProgressDialog.cs" >}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## Jak skrócić czas pierwszej rozmowy telefonicznej w celu wydrukowania dokumentu

Aspose.Words odczytuje i buforuje niektóre pola **PrinterSettings**, aby skrócić czas drukowania. Można to osiągnąć wywołując metodę [CachePrinterSettings](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/cacheprintersettings/). Metoda ta wywoływana jest przed rozpoczęciem drukowania, jeżeli nie była wcześniej wykonywana. Należy pamiętać, że całkowity czas drukowania z wywołaniem tej metody i bez niej jest prawie taki sam. Celem stosowania tej metody jest skrócenie czasu pierwszego wywołania metody [Print](https://reference.aspose.com/words/net/aspose.words/document/print/). Poniższy przykład kodu pokazuje, jak używać tej metody:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-Print_CachePrinterSettings-CachePrinterSettings.cs" >}}

## Zobacz też

- [Aktualizacja platformy dla Windows Vista](https://docs.microsoft.com/en-us/windows/win32/win7ip/platform-update-for-windows-vista-overview)
