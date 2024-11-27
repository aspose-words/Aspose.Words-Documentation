---
title: Bezpieczeństwo Aplikacji Internetowych Podczas Ładowania Zasobów
second_title: Aspose.Words dla C++
articleTitle: Bezpieczeństwo Aplikacji Internetowych Podczas Ładowania Zasobów Zewnętrznych
linktitle: Bezpieczeństwo Aplikacji Internetowych Podczas Ładowania Zasobów Zewnętrznych
type: docs
description: "Załaduj zasoby zdalne, które mogą być przyczyną zagrożeń bezpieczeństwa. Spójrz na typowe problemy bezpieczeństwa i ich rozwiązania w C++."
weight: 50
url: /pl/cpp/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-30-16-22-34
---

Domyślnie Aspose.Words dla C++ może ładować zasoby zdalne, takie jak obrazy, Style CSS lub zewnętrzne dokumenty HTML Podczas importowania dokumentów lub wstawiania obrazów za pomocą DocumentBuilder. Takie zachowanie umożliwia szczegółowe przetwarzanie dokumentów, ale może być przyczyną pewnych zagrożeń bezpieczeństwa, jeśli Biblioteka jest częścią aplikacji internetowej.

W tym artykule przyjrzymy się typowym problemom bezpieczeństwa, które mogą pojawić się podczas ładowania zasobów zewnętrznych i przedstawimy zalecenia, jak uniknąć takich problemów.

{{% alert color="primary" %}}

Aspose.Words nie działa jako oprogramowanie antywirusowe. Dlatego nie dostarcza informacji o obecności złośliwych składników w dokumencie. Aby zapewnić bezpieczeństwo swoich danych, sam sprawdź dokumenty uzyskane z zewnętrznego źródła. Z kolei Aspose.Words zawiera zalecenia dotyczące radzenia sobie z problemami, które mogą pojawić się podczas ładowania zasobów zewnętrznych.

{{% /alert %}}

## Kwestie Bezpieczeństwa

Istnieje wiele typowych problemów z bezpieczeństwem podczas ładowania zasobów zewnętrznych.

### Ujawnienie Poświadczeń Za Pośrednictwem Połączonych Obrazów

Na hostach opartych na Windows dokumenty zawierające odniesienia do zasobów korzystających ze ścieżek UNC, takich jak *'\\example.com\a\b*' będą przetwarzane domyślnie. W środowisku domeny spowoduje to, że host wyśle swoje poświadczenia domeny w formacie zaszyfrowanym do określonego serwera.

Jeśli osoba atakująca jest w stanie przekonać użytkownika lub serwer do przetworzenia dokumentu z takim łączem zasobów wskazującym na kontrolowany przez siebie host, osoba atakująca otrzyma poświadczenia konta użytkownika lub usługi w formacie NTLM skrótu. Takie dane można następnie ponownie wykorzystać w klasycznym ataku typu pass-the-hash, umożliwiając atakującemu uzyskanie dostępu do dowolnego zasobu jako użytkownika ofiary lub konta usługi.

Jeśli dane konto używa słabego lub odgadywalnego hasła, osoba atakująca może dodatkowo przeprowadzić atak łamania hasła, aby odzyskać hasło do konta w celu dalszego złośliwego użycia.

### Lokalne Ujawnianie Obrazu Za Pośrednictwem Połączonych Obrazów

Podobnie jak w poprzednim przypadku, przetwarzanie dokumentu z odniesieniem do lokalnego pliku obrazu spowoduje, że plik ten zostanie dołączony do dokumentu końcowego. Może to prowadzić do ujawnienia poufnych informacji.

### Odmowa usługi

Atakujący może przesłać dokument, który odwołuje się lub zawiera bardzo duże obrazy – tak zwane "bomby dekompresyjne". Podczas przetwarzania tych obrazów biblioteka zużywa ogromne ilości pamięci i CPU czasu.

### Żądanie Fałszowania Po Stronie Serwera Za Pośrednictwem Połączonej Zawartości

Osoba atakująca może utworzyć serię dokumentów zawierających osadzone łącza do typowych kombinacji wewnętrznego adresu i portu IP, a następnie przesłać je do usługi internetowej przy użyciu biblioteki Aspose.Words do przetwarzania dokumentów.

Na podstawie czasu, przez jaki usługa przetwarza dokument, osoba atakująca może określić, czy dana kombinacja IP / Port jest filtrowana przez zaporę ogniową:

- dłuższy czas przetwarzania wskazuje, że pakiet TCP SYN wysłany przez serwer został usunięty przez zaporę ogniową
- szybki czas przetwarzania wskazuje, że nawiązano udane połączenie

## Rozwiązania problemów bezpieczeństwa

Aby rozwiązać opisane powyżej problemy i poprawić bezpieczeństwo aplikacji internetowych, możesz kontrolować lub wyłączać ładowanie zasobów zewnętrznych za pomocą [IResourceLoadingCallback](https://reference.aspose.com/words/cpp/aspose.words.loading/iresourceloadingcallback/).

Poniższy przykład kodu pokazuje, jak wyłączyć ładowanie obrazów zewnętrznych:

**C++**
{{< highlight cpp >}}
class DisableExternalImagesHandler : public IResourceLoadingCallback
{
public:
	ResourceLoadingAction ResourceLoading(System::SharedPtr<ResourceLoadingArgs> args) override
	{
		// Skip external images loading.
		return args->get_ResourceType() == ResourceType::Image
			? ResourceLoadingAction::Skip
			: ResourceLoadingAction::Default;
		}
};

void LoadDocument(const System::String& documentFilename)
{
	auto disableExternalImagesHandler = System::MakeObject<LoadOptions>();

disableExternalImagesHandler->set_ResourceLoadingCallback(System::MakeObject<DisableExternalImagesHandler>());

	auto doc = System::MakeObject<Document>(documentFilename, disableExternalImagesHandler);
}
{{< /highlight >}}

Poniższy przykład kodu pokazuje, jak wyłączyć zasoby zdalne:

**C++**
{{< highlight cpp >}}
class DisableRemoteResourcesHandler : public IResourceLoadingCallback
{
	static bool IsLocalResource(const System::String& originalUri)
	{
		// CodePorting.CsToCpp.Native.API can handle only absolute uri
		auto uri = System::MakeObject<System::Uri>(originalUri);
		if (uri->get_IsAbsoluteUri())
		{
			return uri->get_Scheme().Equals(u"file", System::StringComparison::OrdinalIgnoreCase);
		}

		return false;
	}
public:
	ResourceLoadingAction ResourceLoading(System::SharedPtr<ResourceLoadingArgs> args) override
	{
		return IsLocalResource(args->get_OriginalUri())
			? ResourceLoadingAction::Default
			: ResourceLoadingAction::Skip;
	}
};

void LoadDocument(const System::String& documentFilename)
{
	auto disableRemoteResourcesHandler = System::MakeObject<LoadOptions>();

disableRemoteResourcesHandler->set_ResourceLoadingCallback(System::MakeObject<DisableRemoteResourcesHandler>());

	auto doc = System::MakeObject<Document>(documentFilename, disableRemoteResourcesHandler);
}
{{< /highlight >}}

{{% alert color="primary" %}}

Ten artykuł jest oparty na firmie konsultingowej Independent Security Evaluators [sprawozdanie](ise-aspose-report.pdf).

{{% /alert %}}
