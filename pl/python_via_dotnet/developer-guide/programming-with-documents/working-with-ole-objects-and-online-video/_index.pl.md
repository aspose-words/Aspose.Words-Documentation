---
title: Obiekty OLE i wideo online
second_title: Aspose.Words dla Python via .NET
articleTitle: Praca z obiektami OLE i wideo online
linktitle: Praca z obiektami OLE i wideo online
description: "Wstaw obiekty lub wideo online do dokumentu za pomocą Python."
type: docs
weight: 360
url: /pl/python-net/working-with-ole-objects/
---

OLE (Object Linking and Embedding) to technologia, dzięki której użytkownicy mogą pracować z dokumentami zawierającymi "obiekty" utworzone lub edytowane przez aplikacje innych firm. Oznacza to, że OLE pozwala aplikacji edycyjnej wyeksportować te "obiekty" do innej aplikacji edycyjnej, a następnie zaimportować je z dodatkową zawartością.

W tym artykule omówimy wstawianie obiektu OLE i ustawianie jego właściwości, a także wstawianie wideo online do dokumentu.

## Wstaw obiekt OLE

Jeśli chcesz obiekt OLE, wywołaj metodę [insert_ole_object](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object/) i przekaż jawnie **ProgId** z innymi parametrami.

Poniższy przykład kodu pokazuje, jak wstawić obiekt OLE do dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-DocumentBuilderInsertOleObject.py" >}}

### Ustaw nazwę pliku i rozszerzenie podczas wstawiania obiektu OLE

Pakiet OLE to starsza i "nieudokumentowana" metoda przechowywania osadzonych obiektów, jeśli procedura obsługi OLE jest nieznana.

Wczesne wersje Windows, takie jak Windows 3.1, 95 i 98, zawierały aplikację Packager.exe, której można było używać do osadzania dowolnego typu danych w dokumencie. Ta aplikacja jest teraz wykluczona z Windows, ale Microsoft Word i inne aplikacje nadal używają jej do osadzania danych, jeśli brakuje modułu obsługi OLE lub jest on nieznany. Klasa `OlePackage` umożliwia użytkownikom dostęp do właściwości pakietu OLE.

Poniższy przykład kodu pokazuje, jak ustawić nazwę pliku, rozszerzenie i nazwę wyświetlaną dla pakietu OLE:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOleObjectwithOlePackage.py" >}}

### Uzyskaj dostęp do nieprzetworzonych danych obiektu OLE

Użytkownicy mogą uzyskać dostęp do danych obiektowych OLE za pomocą różnych właściwości i metod klasy `OleFormat`. Na przykład możliwe jest uzyskanie nieprzetworzonych danych obiektu `OLE` lub ścieżki i nazwy pliku źródłowego połączonego obiektu OLE.

Poniższy przykład kodu pokazuje, jak uzyskać surowe dane obiektu OLE przy użyciu metody [get_raw_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/oleformat/get_raw_data/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-GetAccessToOLEObjectRawData.py" >}}

### Wstaw obiekt OLE jako ikonę

Obiekty OLE można również wstawiać do dokumentów jako obrazy.

Poniższy przykład kodu pokazuje, jak wstawić obiekt OLE jako ikonę. W tym celu klasa [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) udostępnia metodę [insert_ole_object_as_icon](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object_as_icon/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

Poniższy przykład kodu pokazuje, jak wstawić osadzony obiekt OLE jako ikonę ze strumienia do dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIconUsingStream.py" >}}

## Wstaw wideo online

Wideo online można wstawić do dokumentu programu Word za pomocą karty * "Wstaw" &gt; "Wideo online"*. Możesz wstawić wideo online do dokumentu w bieżącej lokalizacji, wywołując metodę [insert_online_video](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_online_video/).

Klasa [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) wprowadza cztery przeciążenia tej metody. Pierwszy z nich współpracuje z najpopularniejszymi zasobami wideo i jako parametr przyjmuje `URL` wideo. Na przykład pierwsze przeciążenie obsługuje proste wstawianie filmów online z zasobów [Youtube](https://www.youtube.com/) i [Vimeo](https://vimeo.com/).

Poniższy przykład kodu pokazuje, jak wstawić wideo online z *Vimeo* do dokumentu:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# Pass direct url from youtu.be.
url = "https://www.youtube.com/watch?v=t_1LYZ102RA"

width = 360
height = 270

shape = builder.insert_online_video(url, width, height)

doc.save(docs_base.artifacts_dir + "WorkingWithOleObjectsAndActiveX.insert_online_video.docx")
{{< /highlight >}}

Drugie przeciążenie działa ze wszystkimi innymi zasobami wideo i jako parametr przyjmuje osadzony kod HTML. Kod HTML umożliwiający osadzanie filmu wideo może się różnić w zależności od dostawcy, dlatego w celu uzyskania szczegółowych informacji należy skontaktować się z odpowiednim dostawcą.

{{% alert color="primary" %}}

Należy pamiętać, że dokument zostanie automatycznie zoptymalizowany pod kątem programu MS Word 2013 pod kątem wyświetlania wideo.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak wstawić wideo online do dokumentu przy użyciu takiego kodu HTML:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# Shape width/height.
width = 360
height = 270

# Poster frame image.
f = open(docs_base.images_dir + "Logo.jpg", "rb")
imageBytes = f.read()
f.close()

# Visible url
vimeoVideoUrl = "https://vimeo.com/52477838"

# Embed Html code.
vimeoEmbedCode = ""

builder.insert_online_video(vimeoVideoUrl, vimeoEmbedCode, imageBytes, width, height)

doc.save(docs_base.artifacts_dir + "WorkingWithOleObjectsAndActiveX.insert_online_video_with_embed_html.docx")
{{< /highlight >}}