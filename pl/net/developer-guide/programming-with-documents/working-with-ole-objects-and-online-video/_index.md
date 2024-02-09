---
title: Praca z obiektami OLE i wideo online w formacie C#
second_title: Aspose.Words dla .NET
articleTitle: Praca z obiektami OLE i wideo online
linktitle: Praca z obiektami OLE i wideo online
description: "Twórz i modyfikuj osadzanie OLE w swoim dokumencie za pomocą C#."
type: docs
weight: 360
url: /pl/net/working-with-ole-objects/
---

OLE (Object Linking and Embedding) to technologia, dzięki której użytkownicy mogą pracować z dokumentami zawierającymi "obiekty" utworzone lub edytowane przez aplikacje innych firm. Oznacza to, że OLE pozwala aplikacji edycyjnej wyeksportować te "obiekty" do innej aplikacji edycyjnej, a następnie zaimportować je z dodatkową zawartością.

W tym artykule omówimy wstawianie obiektu OLE i ustawianie jego właściwości, a także wstawianie wideo online do dokumentu.

## Wstaw obiekt OLE

Jeśli chcesz obiekt OLE, wywołaj metodę [InsertOleObject](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobject/) i przekaż jawnie **ProgId** z innymi parametrami.

Poniższy przykład kodu pokazuje, jak wstawić obiekt OLE do dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cs" >}}

### Ustaw nazwę pliku i rozszerzenie podczas wstawiania obiektu OLE

Pakiet OLE to starsza i "nieudokumentowana" metoda przechowywania osadzonych obiektów, jeśli procedura obsługi OLE jest nieznana.

Wczesne wersje Windows, takie jak Windows 3.1, 95 i 98, zawierały aplikację Packager.exe, której można było używać do osadzania dowolnego typu danych w dokumencie. Ta aplikacja jest teraz wykluczona z Windows, ale Microsoft Word i inne aplikacje nadal używają jej do osadzania danych, jeśli brakuje modułu obsługi OLE lub jest on nieznany. Klasa `OlePackage` umożliwia użytkownikom dostęp do właściwości pakietu OLE.

Poniższy przykład kodu pokazuje, jak ustawić nazwę pliku, rozszerzenie i nazwę wyświetlaną dla pakietu OLE:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cs" >}}

### Uzyskaj dostęp do nieprzetworzonych danych obiektu OLE

Użytkownicy mogą uzyskać dostęp do danych obiektowych OLE za pomocą różnych właściwości i metod klasy `OleFormat`. Na przykład możliwe jest uzyskanie nieprzetworzonych danych obiektu `OLE` lub ścieżki i nazwy pliku źródłowego połączonego obiektu OLE.

Poniższy przykład kodu pokazuje, jak uzyskać surowe dane obiektu OLE przy użyciu metody [GetRawData](https://reference.aspose.com/words/net/aspose.words.drawing/oleformat/getrawdata/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.cs" >}}

### Wstaw obiekt OLE jako ikonę

Obiekty OLE można również wstawiać do dokumentów jako obrazy.

Poniższy przykład kodu pokazuje, jak wstawić obiekt OLE jako ikonę. W tym celu klasa [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) udostępnia metodę [InsertOleObjectAsIcon](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobjectasicon/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cs" >}}

Poniższy przykład kodu pokazuje, jak wstawić osadzony obiekt OLE jako ikonę ze strumienia do dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.cs" >}}

{{% alert color="primary" %}}

Aby ikona wyświetlała się prawidłowo, maksymalny rozmiar ikony musi wynosić 32x32.

{{% /alert %}}

## Wstaw wideo online

Wideo online można wstawić do dokumentu programu Word za pomocą karty * "Wstaw" &gt; "Wideo online"*. Możesz wstawić wideo online do dokumentu w bieżącej lokalizacji, wywołując metodę [InsertOnlineVideo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertonlinevideo/).

Klasa [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) wprowadza cztery przeciążenia tej metody. Pierwszy z nich współpracuje z najpopularniejszymi zasobami wideo i jako parametr przyjmuje `URL` wideo. Na przykład pierwsze przeciążenie obsługuje proste wstawianie filmów online z zasobów [Youtube](https://www.youtube.com/) i [Vimeo](https://vimeo.com/).

Poniższy przykład kodu pokazuje, jak wstawić wideo online z *Vimeo* do dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideo-InsertOnlineVideo.cs" >}}

Drugie przeciążenie działa ze wszystkimi innymi zasobami wideo i jako parametr przyjmuje osadzony kod HTML. Kod HTML umożliwiający osadzanie filmu wideo może się różnić w zależności od dostawcy, dlatego w celu uzyskania szczegółowych informacji należy skontaktować się z odpowiednim dostawcą.

{{% alert color="primary" %}}

Należy pamiętać, że dokument zostanie automatycznie zoptymalizowany pod kątem programu MS Word 2013 pod kątem wyświetlania wideo.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak wstawić wideo online do dokumentu przy użyciu takiego kodu HTML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideoWithEmbedHtml-InsertOnlineVideoWithEmbedHtml.cs" >}}