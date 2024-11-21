---
title: Bezpieczeństwo aplikacji internetowych podczas ładowania zasobów
second_title: Aspose.Words dla .NET
articleTitle: Bezpieczeństwo aplikacji internetowych podczas ładowania zasobów zewnętrznych
linktitle: Bezpieczeństwo aplikacji internetowych podczas ładowania zasobów zewnętrznych
type: docs
description: "Załaduj zdalne zasoby, które mogą być przyczyną zagrożeń bezpieczeństwa. Przyjrzyj się częstym problemom związanym z bezpieczeństwem i ich rozwiązaniom przy użyciu C#."
weight: 100
url: /pl/net/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-27-14-07-04
---

Domyślnie Aspose.Words dla .NET może ładować zdalne zasoby, takie jak obrazy, style CSS lub zewnętrzne dokumenty HTML podczas importowania dokumentów lub wstawiania obrazów za pomocą narzędzia DocumentBuilder. Takie zachowanie umożliwia szczegółowe przetwarzanie dokumentów, ale może powodować pewne zagrożenia bezpieczeństwa, jeśli biblioteka jest częścią aplikacji internetowej.

W tym artykule przyjrzymy się typowym problemom bezpieczeństwa, które mogą wystąpić podczas ładowania zasobów zewnętrznych, i przedstawimy zalecenia, jak uniknąć takich problemów.

{{% alert color="primary" %}}

Aspose.Words nie działa jako oprogramowanie antywirusowe. Dlatego nie dostarcza informacji o obecności szkodliwych komponentów w dokumencie. Aby zapewnić bezpieczeństwo swoich danych, samodzielnie sprawdzaj dokumenty pozyskane z zewnętrznego źródła. Z kolei Aspose.Words udostępnia rekomendacje, jak postępować w przypadku problemów, które mogą pojawić się podczas ładowania zasobów zewnętrznych.

{{% /alert %}}

## Problemy z bezpieczeństwem

Istnieje wiele typowych problemów związanych z bezpieczeństwem podczas ładowania zasobów zewnętrznych.

### Ujawnianie danych uwierzytelniających za pośrednictwem połączonych obrazów

Na hostach opartych na Windows dokumenty zawierające odniesienia do zasobów korzystających ze ścieżek UNC, takich jak *'\\example.com\a\b*', będą domyślnie przetwarzane. W środowisku domeny spowoduje to wysłanie przez hosta danych uwierzytelniających domeny w formacie zahaszowanym do określonego serwera.

Jeśli atakującemu uda się przekonać użytkownika lub serwer do przetworzenia dokumentu zawierającego takie łącze do zasobu wskazującego kontrolowany przez niego host, osoba atakująca otrzyma poświadczenia konta użytkownika lub usługi w formacie skrótu NTLM. Takie dane można następnie ponownie wykorzystać w klasycznym ataku typu pass-the-hash, umożliwiając osobie atakującej uzyskanie dostępu do dowolnych zasobów, takich jak konto użytkownika lub usługi ofiary.

Jeśli dane konto używa słabego lub łatwego do odgadnięcia hasła, osoba atakująca może dodatkowo przeprowadzić atak polegający na złamaniu hasła w celu odzyskania hasła do konta w celu dalszego złośliwego wykorzystania.

### Lokalne ujawnianie zdjęć za pośrednictwem połączonych obrazów

Podobnie jak w poprzednim przypadku, przetworzenie dokumentu z odniesieniem do lokalnego pliku obrazu spowoduje, że plik ten zostanie uwzględniony w dokumencie końcowym. Może to prowadzić do ujawnienia informacji wrażliwych.

### Odmowa usługi

Osoba atakująca może przesłać dokument, który zawiera odniesienia do niezwykle dużych obrazów – tak zwanych "bomb dekompresyjnych" lub je zawiera. Podczas przetwarzania tych obrazów biblioteka zużywa ogromne ilości pamięci i czasu procesora.

### Fałszowanie żądania po stronie Server za pośrednictwem powiązanej zawartości

Osoba atakująca może utworzyć serię dokumentów zawierających osadzone łącza do typowych kombinacji wewnętrznego adresu IP i portu, a następnie przesłać je do usługi internetowej przy użyciu biblioteki Aspose.Words w celu przetworzenia dokumentów.

Na podstawie czasu, jaki usługa wykorzystuje do przetwarzania dokumentu, osoba atakująca może określić, czy dana kombinacja adresu IP/portu jest filtrowana przez zaporę sieciową:

- dłuższy czas przetwarzania oznacza, że pakiet TCP SYN wysłany przez serwer został odrzucony przez firewall
- szybki czas przetwarzania oznacza, że połączenie zostało nawiązane

## Rozwiązania problemów bezpieczeństwa

Aby rozwiązać opisane powyżej problemy i poprawić bezpieczeństwo aplikacji internetowych, możesz kontrolować lub wyłączać ładowanie zasobów zewnętrznych za pomocą [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/).

Poniższy przykład kodu pokazuje, jak wyłączyć ładowanie obrazów zewnętrznych:

**.NET**
{{< highlight csharp >}}

public class DisableExternalImagesHandler : IResourceLoadingCallback
{
    public ResourceLoadingAction ResourceLoading(ResourceLoadingArgs args)
    {
        // Skip external images loading.
        return (args.ResourceType == ResourceType.Image)
            ? ResourceLoadingAction.Skip
            : ResourceLoadingAction.Default;
    }
}
...
const string documentFilename = "input.docx";
var disableExternalImagesOptions = new LoadOptions
{
    ResourceLoadingCallback = new DisableExternalImagesHandler()
};
var doc = new Document(documentFilename, disableExternalImagesOptions);

{{< /highlight >}}

Poniższy przykład kodu pokazuje, jak wyłączyć zasoby zdalne:

**.NET**
{{< highlight csharp >}}

private class DisableRemoteResourcesHandler : IResourceLoadingCallback
{
    public ResourceLoadingAction ResourceLoading(ResourceLoadingArgs args)
    {
        return IsLocalResource(args.OriginalUri)
            ? ResourceLoadingAction.Default
            : ResourceLoadingAction.Skip;
    }

    private static bool IsLocalResource(string fileName)
    {
        DirectoryInfo dirInfo;
        try
        {
            var dirName = Path.GetDirectoryName(fileName);
            if (string.IsNullOrEmpty(dirName))
                return false;
            dirInfo = new DirectoryInfo(dirName);
        }
        catch
        {
            return false;
        }
    
        foreach (DriveInfo d in DriveInfo.GetDrives())
        {
            if (string.Compare(dirInfo.Root.FullName, d.Name, StringComparison.OrdinalIgnoreCase) == 0)
                return d.DriveType != DriveType.Network;
        }
    
        return false;
    }
}
...
var disableRemoteResourcesOptions = new LoadOptions
{
    ResourceLoadingCallback = new DisableRemoteResourcesHandler()
};
var doc = new Document(documentFilename, disableRemoteResourcesOptions);

{{< /highlight >}}

{{% alert color="primary" %}}

Artykuł ten powstał na podstawie opinii firmy konsultingowej Independent Security Evaluators [raport](/words/net/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}
