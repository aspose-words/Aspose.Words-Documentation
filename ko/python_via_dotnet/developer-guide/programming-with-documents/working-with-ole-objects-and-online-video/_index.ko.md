---
title: OLE 개체 및 온라인 비디오
second_title: Python via .NET용 Aspose.Words
articleTitle: OLE 개체 및 온라인 비디오 작업
linktitle: OLE 개체 및 온라인 비디오 작업
description: "Python를 사용하여 문서에 객체나 온라인 vodeo를 삽입합니다."
type: docs
weight: 360
url: /ko/python-net/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE(Object Linking and Embedding)는 사용자가 타사 응용 프로그램에서 생성하거나 편집한 "개체"가 포함된 문서로 작업할 수 있는 기술입니다. 즉, OLE를 사용하면 편집 응용 프로그램에서 이러한 "객체"를 다른 편집 응용 프로그램으로 내보낸 다음 추가 콘텐츠와 함께 가져올 수 있습니다.

이 기사에서는 OLE 개체 삽입 및 속성 설정, 온라인 비디오를 문서에 삽입하는 방법에 대해 설명합니다.

## OLE 개체 삽입

OLE 개체를 원하는 경우 [insert_ole_object](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object/) 메서드를 호출하고 다른 매개변수와 함께 명시적으로 **ProgId**를 전달합니다.

다음 코드 예제에서는 OLE 개체를 문서에 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-DocumentBuilderInsertOleObject.py" >}}

### OLE 개체 삽입 시 파일 이름 및 확장자 설정

OLE 패키지는 OLE 처리기를 알 수 없는 경우 포함된 개체를 저장하는 레거시 및 "문서화되지 않은" 방법입니다.

Windows 3.1, 95, 98과 같은 초기 Windows 버전에는 모든 유형의 데이터를 문서에 포함시키는 데 사용할 수 있는 Packager.exe 응용 프로그램이 있었습니다. 이 애플리케이션은 이제 Windows에서 제외되지만 OLE 핸들러가 없거나 알 수 없는 경우 Microsoft Word 및 기타 애플리케이션은 여전히 이를 사용하여 데이터를 포함합니다. `OlePackage` 클래스를 사용하면 사용자가 OLE 패키지 속성에 액세스할 수 있습니다.

다음 코드 예제에서는 OLE 패키지의 파일 이름, 확장자 및 표시 이름을 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOleObjectwithOlePackage.py" >}}

### OLE 개체 원시 데이터에 액세스

사용자는 `OleFormat` 클래스의 다양한 속성과 메서드를 사용하여 OLE 개체 데이터에 액세스할 수 있습니다. 예를 들어, `OLE` 개체 원시 데이터 또는 연결된 OLE 개체에 대한 소스 파일의 경로 및 이름을 가져올 수 있습니다.

다음 코드 예제에서는 [get_raw_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/oleformat/get_raw_data/) 메서드를 사용하여 OLE 개체 원시 데이터를 가져오는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-GetAccessToOLEObjectRawData.py" >}}

### OLE 개체를 아이콘으로 삽입

OLE 개체를 이미지로 문서에 삽입할 수도 있습니다.

다음 코드 예제에서는 OLE 개체를 아이콘으로 삽입하는 방법을 보여줍니다. 이를 위해 [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) 클래스는 [insert_ole_object_as_icon](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object_as_icon/) 메서드를 노출합니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

다음 코드 예제에서는 포함된 OLE 개체를 스트림의 아이콘으로 문서에 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIconUsingStream.py" >}}

## 온라인 비디오 삽입

*"삽입" &gt; "온라인 비디오"* 탭에서 온라인 비디오를 Word 문서에 삽입할 수 있습니다. [insert_online_video](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_online_video/) 메서드를 호출하면 문서의 현재 위치에 온라인 비디오를 삽입할 수 있습니다.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) 클래스는 이 메서드의 네 가지 오버로드를 도입합니다. 첫 번째는 가장 인기 있는 비디오 리소스로 작동하며 비디오의 `URL`를 매개변수로 사용합니다. 예를 들어 첫 번째 오버로드는 [유튜브](https://www.youtube.com/) 및 [비메오](https://vimeo.com/) 리소스에서 온라인 비디오의 간단한 삽입을 지원합니다.

다음 코드 예제에서는 *Vimeo*의 온라인 비디오를 문서에 삽입하는 방법을 보여줍니다

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

두 번째 오버로드는 다른 모든 비디오 리소스와 함께 작동하며 포함된 HTML 코드를 매개변수로 사용합니다. 동영상 삽입을 위한 HTML 코드는 제공업체에 따라 다를 수 있으므로 자세한 내용은 해당 제공업체에 문의하세요.

{{% alert color="primary" %}}

문서는 비디오를 표시하기 위해 MS Word 2013에 자동으로 최적화됩니다.

{{% /alert %}}

다음 코드 예제에서는 HTML 코드를 사용하여 문서에 온라인 비디오를 삽입하는 방법을 보여줍니다

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
