---
title: Praca z OLE obiektami w C++
second_title: Aspose.Words dla C++
articleTitle: Praca z obiektami OLE
linktitle: Praca z obiektami OLE
description: "Tworzenie i modyfikowanie OLE osadzanie w dokumencie za pomocą C++."
type: docs
weight: 360
url: /pl/cpp/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (łączenie i osadzanie obiektów) to technologia, dzięki której użytkownicy mogą pracować z Dokumentami zawierającymi "obiekty" utworzone lub edytowane przez aplikacje innych firm. Oznacza to, że OLE umożliwia aplikacji do edycji eksportowanie tych "obiektów" do innej aplikacji do edycji, a następnie importowanie ich z dodatkową zawartością.

W tym artykule porozmawiamy o wstawieniu obiektu OLE i ustawieniu jego właściwości w dokumencie.

## Insert OLE Object

Jeśli chcesz OLE Obiekt, wywołaj metodę [InsertOleObject](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobject/) i przekaż ją **ProgId** jawnie z innymi parametrami.

Poniższy przykład kodu pokazuje, jak wstawić obiekt OLE do dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-DocumentBuilderInsertOleObject.h" >}}

### Ustaw nazwę pliku i rozszerzenie podczas wstawiania obiektu OLE

OLE Pakiet jest starszym i" nieudokumentowanym " sposobem przechowywania osadzonych obiektów, jeśli program obsługi OLE jest nieznany.

Wczesne wersje Windows, takie jak Windows 3.1, 95 i 98, miały aplikację Packager.exe, której można było użyć do osadzenia dowolnego typu danych w dokumencie. Ta aplikacja jest teraz wykluczona z Windows, ale Microsoft Word i inne aplikacje nadal używają jej do osadzania danych, jeśli brakuje programu obsługi OLE lub jest nieznany. Klasa `OlePackage` umożliwia użytkownikom dostęp do właściwości OLE Package.

Poniższy przykład kodu pokazuje, jak ustawić nazwę pliku, rozszerzenie i nazwę wyświetlaną dla OLE Package:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOleObjectwithOlePackage.h" >}}

### Uzyskaj dostęp do nieprzetworzonych danych obiektu OLE

Użytkownicy mogą uzyskać dostęp do danych obiektów OLE przy użyciu różnych właściwości i metod klasy `OleFormat`. Na przykład możliwe jest uzyskanie surowych danych `OLE` obiektu lub ścieżki i nazwy pliku źródłowego dla połączonego obiektu OLE.

Poniższy przykład kodu pokazuje, jak uzyskać nieprzetworzone dane obiektu OLE przy użyciu metody [GetRawData](https://reference.aspose.com/words/cpp/aspose.words.drawing/oleformat/getrawdata/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-GetAccessToOLEObjectRawData.h" >}}

### Wstaw obiekt Ole jako ikonę

OLE obiekty można również wstawiać do dokumentów jako obrazy.

Poniższy przykład kodu pokazuje, jak wstawić obiekt OLE jako ikonę. W tym celu klasa [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) ujawnia metodę [InsertOleObjectAsIcon](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobjectasicon/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIcon.h" >}}

Poniższy przykład kodu pokazuje, jak wstawić osadzony obiekt OLE jako ikonę ze strumienia do dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIconUsingStream.h" >}}

## Wstaw Wideo Online

Wideo Online można wstawić do dokumentu Word z zakładki *"Insert" > "Online Video"*. Możesz wstawić wideo online do dokumentu w bieżącej lokalizacji, wywołując metodę [InsertOnlineVideo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertonlinevideo/).

Klasa [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) wprowadza cztery przeciążenia tej metody. Pierwszy z nich działa z najpopularniejszymi zasobami wideo i przyjmuje `URL` wideo jako parametr. Na przykład pierwsze przeciążenie obsługuje proste wstawianie filmów online z [YouTube](https://www.youtube.com/) oraz [Vimeo](https://vimeo.com/) zasoby.

Poniższy przykład kodu pokazuje, jak wstawić wideo online z *Vimeo* do dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideo.h" >}}

Drugie przeciążenie działa ze wszystkimi innymi zasobami wideo i przyjmuje osadzony kod HTML jako parametr. Kod HTML do osadzania wideo może się różnić w zależności od dostawcy, więc skontaktuj się z odpowiednim dostawcą, aby uzyskać szczegółowe informacje.

{{% alert color="primary" %}}

Należy pamiętać, że dokument zostanie automatycznie zoptymalizowany dla MS Word 2013, aby wyświetlić wideo.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak wstawić wideo online do dokumentu przy użyciu takiego kodu HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideoWithEmbedHtml.h" >}}
