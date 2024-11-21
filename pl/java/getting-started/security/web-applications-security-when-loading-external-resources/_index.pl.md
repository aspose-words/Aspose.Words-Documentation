---
title: Web App Security Podczas wczytywania zasobów
second_title: Aspose.Words zamiast Java
articleTitle: Bezpieczeństwo aplikacji internetowych podczas wczytywania zasobów zewnętrznych
linktitle: Bezpieczeństwo aplikacji internetowych podczas wczytywania zasobów zewnętrznych
type: docs
description: "Załaduj zdalne zasoby, to może być powodem ryzyka bezpieczeństwa. Spójrz na wspólne kwestie bezpieczeństwa i ich rozwiązania w Java."
weight: 120
url: /pl/java/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-27-14-07-04
---

Domyślnie, Aspose.Words zamiast Java może ładować zdalne zasoby, takie jak obrazy, style CSS lub zewnętrzne dokumenty HTML podczas importowania dokumentów lub wprowadzania obrazów za pomocą DocumentBuilder. To zachowanie pozwala na przetwarzanie dokumentów w pełnym szczególe, ale może być powodem niektórych zagrożeń bezpieczeństwa, jeśli biblioteka jest częścią aplikacji internetowej.

W tym artykule przyjrzymy się wspólnym kwestiom bezpieczeństwa, które mogą pojawić się podczas załadunku zasobów zewnętrznych i przedstawimy zalecenia dotyczące sposobów unikania takich problemów.

{{% alert color="primary" %}}

Aspose.Words nie działa jako oprogramowanie antywirusowe. W związku z tym nie zawiera ona informacji na temat obecności szkodliwych składników w dokumencie. Aby zapewnić bezpieczeństwo danych, sprawdź dokumenty uzyskane z zewnętrznego źródła. Z kolei, Aspose.Words przedstawia zalecenia dotyczące sposobu radzenia sobie z problemami, które mogą pojawić się podczas załadunku zasobów zewnętrznych.

{{% /alert %}}

## Kwestie bezpieczeństwa

Podczas załadunku zasobów zewnętrznych występuje szereg typowych problemów z bezpieczeństwem.

### Ujawnianie informacji o kredytach Powiązane obrazy

On Windows-based hosts, dokumenty zawierające odniesienia do zasobów, które wykorzystują ścieżki UNC, takie jak * '\\ example.com\ a\ b *' będą przetwarzane domyślnie. W środowisku domeny spowoduje to wysłanie przez hosta jego uwierzytelniania domen w formacie hashed do określonego serwera.

Jeżeli napastnik jest w stanie przekonać użytkownika lub serwer do przetwarzania dokumentu z takim odnośnikiem zasobów wskazującym na komputer, który kontrolują, atakujący otrzyma dane uwierzytelniające użytkownika lub konta usługi w formacie hash NTLM. Takie dane mogą być następnie ponownie wykorzystane w klasycznym ataku pass- the- hash, pozwalając atakującemu uzyskać dostęp do jakichkolwiek zasobów jako użytkownik ofiary lub konto serwisowe.

Jeśli dane konto używa słabego lub domyślnego hasła, napastnik może dodatkowo wykonać atak łamania haseł, aby odzyskać hasło konta do dalszego złośliwego użycia.

### Lokalne ujawnienie obrazu Powiązane obrazy

Podobnie jak w poprzednim przypadku, przetwarzanie dokumentu z odniesieniem do lokalnego pliku obrazu spowoduje włączenie tego pliku do dokumentu końcowego. Może to prowadzić do ujawnienia poufnych informacji.

### Odmowa doręczenia

Napastnik może przesłać dokument, który odnosi się lub zawiera niezwykle duże obrazy - tzw "bomby dekompresji". Podczas przetwarzania tych obrazów biblioteka zużyje ogromne ilości pamięci i czasu procesora.

### Server-Side Request Forgery Via Linked Content

Napastnik może utworzyć serię dokumentów zawierających wbudowane linki do wspólnych kombinacji wewnętrznego adresu IP i portu, a następnie przesłać je do usługi internetowej za pomocą Aspose.Words biblioteki do przetwarzania dokumentów.

Na podstawie długości czasu, jaki usługa wykorzystuje do przetwarzania dokumentu, napastnik może określić, czy dana kombinacja IP / Port jest filtrowana przez firewall:

- dłuższy czas przetwarzania wskazuje, że pakiet TCP SYN wysłany przez serwer został wycofany przez firewall
- szybki czas przetwarzania wskazuje na pomyślne połączenie

## Rozwiązania dotyczące kwestii bezpieczeństwa

Aby rozwiązać problemy opisane powyżej i poprawić bezpieczeństwo aplikacji internetowych, można kontrolować lub wyłączyć załadunek zasobów zewnętrznych za pomocą [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/).

Poniższy przykład kodu pokazuje jak wyłączyć wczytywanie zewnętrznych obrazów:

**Java**
{{< highlight csharp >}}
public void loadDocument(String documentFilename) throws Exception
{
	LoadOptions disableExternalImagesOptions = new LoadOptions();
	disableExternalImagesOptions.setResourceLoadingCallback(new DisableExternalImagesHandler());

	Document doc = new Document(documentFilename, disableExternalImagesOptions);
}

public static class DisableExternalImagesHandler implements IResourceLoadingCallback
{
	public /*ResourceLoadingAction*/int resourceLoading(ResourceLoadingArgs args)
	{
		// Skip external images loading.
		return (args.getResourceType() == ResourceType.IMAGE)
			? ResourceLoadingAction.SKIP
			: ResourceLoadingAction.DEFAULT;
	}
}
{{< /highlight >}}

Poniższy przykład kodu pokazuje jak wyłączyć zdalne zasoby:

**Java**
{{< highlight csharp >}}
public void loadDocument2(String documentFilename) throws Exception
{
	LoadOptions disableRemoteResourcesOptions = new LoadOptions();
	disableRemoteResourcesOptions.setResourceLoadingCallback(new DisableRemoteResourcesHandler());
	
	Document doc = new Document(documentFilename, disableRemoteResourcesOptions);
}	

private static class DisableRemoteResourcesHandler implements IResourceLoadingCallback
{
	public /*ResourceLoadingAction*/int resourceLoading(ResourceLoadingArgs args) throws Exception
	{
		return isLocalResource(args.getOriginalUri())
			? ResourceLoadingAction.DEFAULT
			: ResourceLoadingAction.SKIP;
	}

	// Simplified code.
	private static boolean isLocalResource(String fileName) throws Exception
	{
		String protocol = null;
	
		URI uri = new URI(fileName);
		if (uri.isAbsolute())
		{
			protocol = uri.getScheme();
		}
		else
		{
			URL url = new URL(fileName);
			protocol = url.getProtocol();
		}
	
		return "file".equalsIgnoreCase(protocol);
	}
}
{{< /highlight >}}

{{% alert color="primary" %}}

Artykuł ten oparty jest na firmie konsultingowej Independent Security Evaluators [raport](/words/java/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}

