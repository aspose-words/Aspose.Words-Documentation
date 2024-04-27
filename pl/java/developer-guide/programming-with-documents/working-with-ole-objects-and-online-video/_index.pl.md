---
title: Praca z obiektami Ole
second_title: Aspose.Words zamiast Java
articleTitle: Praca z obiektami Ole
linktitle: Praca z obiektami Ole
description: "Tworzenie i modyfikowanie osadzania OLE w dokumencie za pomocą Java."
type: docs
weight: 360
url: /pl/java/working-with-ole-objects/
---

OLE oznacza "Łączenie obiektów i osadzanie". Jest to technologia, za pomocą której użytkownicy mogą pracować z dokumentami zawierającymi "obiekty" utworzone lub edytowane przez aplikacje trzeciej partii. Oznacza to, że OLE pozwala na eksportowanie tych "obiektów" do innej aplikacji do edycji, a następnie importuje je z powrotem z dodatkową zawartością.

W tym artykule porozmawiamy o umieszczeniu obiektu OLE i umieszczeniu jego właściwości w dokumencie.

## Wstaw obiekt ole

Jeśli chcesz OLE Object, zadzwoń do [InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream) metody i przekazać go **ProgId** wyraźnie z innymi parametrami.

Poniższy przykład kodu pokazuje jak wstawić OLE Obiekt do dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### Ustaw nazwę i rozszerzenie pliku podczas wprowadzania obiektu OLE

Pakiet OLE jest dziedzicznym i "nieudokumentowanym" sposobem przechowywania wbudowanych obiektów, jeżeli nie jest znany opiekun OLE.

Wczesne Windows wersje takie jak Windows 3.1, 95 i 98 miały Packager. exe aplikacja, która może być wykorzystana do umieszczania w dokumencie wszelkiego rodzaju danych. Wniosek ten jest obecnie wyłączony z Windows, ale Microsoft Word i inne aplikacje nadal używają go do osadzania danych, jeśli nie ma lub nie jest znany opiekun OLE. W `OlePackage` klasa umożliwia użytkownikom dostęp do właściwości pakietu OLE.

Poniższy przykład kodu pokazuje jak ustawić nazwę pliku, rozszerzenie i nazwę wyświetlacza dla pakietu OLE:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### Uzyskaj dostęp do Surowych Danych OLE Object

Użytkownicy mogą uzyskać dostęp do danych OLE przy użyciu różnych właściwości i metod `OleFormat` Klasa. Na przykład, można uzyskać `OLE` obiekt surowe dane lub ścieżka i nazwa pliku źródłowego dla powiązanego obiektu OLE.

Poniższy przykład kodu pokazuje, jak uzyskać OLE Object surowe dane za pomocą [GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData) Metoda:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### Wstaw OLE Obiekt jako ikona

Obiekty OLE można również umieścić w dokumentach jako obrazy.

Poniższy przykład kodu pokazuje jak wstawić OLE Object jako ikonę. W tym celu **DocumentBuilder** klasa ujawnia [InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String) Metoda.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

Poniższy przykład kodu pokazuje jak umieścić wbudowany obiekt OLE jako ikonę ze strumienia do dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## Wstaw wideo online

Wideo online można umieścić w dokumencie Word z zakładki * "insert" > "Online Video" *. Można umieścić wideo online do dokumentu w obecnej lokalizacji przez wywołanie [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double) Metoda:

W [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) klasa wprowadza cztery przeciążenia tej metody. Pierwszy pracuje z najbardziej popularnych zasobów wideo i bierze `URL` obrazu jako parametru. Na przykład pierwsze przeciążenie obsługuje proste wstawianie wideo online z [YouTube](https://www.youtube.com/) oraz [Vimeo](https://vimeo.com/) zasoby.

Poniższy przykład kodu pokazuje, jak umieścić wideo online z *Vimeo* w dokumencie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

Drugie przeciążenie współpracuje ze wszystkimi innymi zasobami wideo i przyjmuje wbudowany kod HTML jako parametr. Kod HTML do umieszczania wideo może się różnić w zależności od dostawcy, więc skontaktuj się z odpowiednim dostawcą informacji.

{{% alert color="primary" %}}

Należy pamiętać, że dokument zostanie automatycznie zoptymalizowany dla MS Word 2013, aby pokazać wideo.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak umieścić wideo online w dokumencie przy użyciu takiego kodu HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
