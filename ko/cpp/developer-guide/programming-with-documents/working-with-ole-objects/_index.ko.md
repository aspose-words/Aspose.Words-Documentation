---
title: 함께 작업 OLE 객체 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 함께 작업 OLE 개체
linktitle: 함께 작업 OLE 개체
description: "생성 및 수정 OLE 다음을 사용하여 문서에 포함 C++."
type: docs
weight: 360
url: /ko/cpp/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (객체 연결 및 임베딩)은 사용자가 타사 응용 프로그램에서 만들거나 편집한"객체"를 포함하는 문서로 작업할 수 있는 기술입니다. 그게 바로, OLE 편집 응용 프로그램에서 이러한"개체"를 다른 편집 응용 프로그램으로 내보낸 다음 추가 콘텐츠와 함께 가져올 수 있습니다.

이 기사에서는 다음을 삽입하는 것에 대해 이야기 할 것입니다 OLE 개체 및 해당 속성을 문서로 설정합니다.

## 삽입 OLE 개체

당신이 원하는 경우 OLE 개체,호출 [InsertOleObject](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobject/) 방법 및 그것을 통과 **ProgId** 명시 적으로 다른 매개 변수와 함께.

다음 코드 예제에서는 삽입하는 방법을 보여 줍니다 OLE 문서에 개체:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-DocumentBuilderInsertOleObject.h" >}}

### 삽입할 때 파일 이름 및 확장명 설정 OLE 개체

OLE 패키지는 다음과 같은 경우 포함 된 객체를 저장하는 레거시 및"문서화되지 않은"방법입니다 OLE 핸들러는 알 수 없습니다.

일찍 Windows 다음과 같은 버전 Windows 3.1 95 번과 98 번에는 포장업자가 있었습니다.모든 유형의 데이터를 문서에 포함시키는 데 사용할 수 있는 응용 프로그램입니다. 이 응용 프로그램은 이제 제외됩니다 Windows,하지만 Microsoft Word 그리고 다른 응용 프로그램은 여전히 데이터를 포함하는 데 사용합니다 OLE 핸들러가 없거나 알 수 없습니다. 그 `OlePackage` 클래스는 사용자가 액세스 할 수 있습니다 OLE 패키지 속성.

다음 코드 예제에서는 파일 이름,확장명 및 표시 이름을 설정하는 방법을 보여 줍니다 OLE 패키지:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOleObjectwithOlePackage.h" >}}

### 에 액세스 할 수 있습니다 OLE 객체 원시 데이터

사용자가 액세스 할 수 있습니다 OLE 다양한 속성과 방법을 사용하는 객체 데이터 `OleFormat` 수업 예를 들어, `OLE` 개체 원시 데이터 또는 연결된 원본 파일의 경로 및 이름 OLE 객체

다음 코드 예제에서는 가져오는 방법을 보여 줍니다 OLE 객체 원시 데이터를 사용하여 [GetRawData](https://reference.aspose.com/words/cpp/aspose.words.drawing/oleformat/getrawdata/) 방법:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-GetAccessToOLEObjectRawData.h" >}}

### 올레 개체를 아이콘으로 삽입

OLE 개체를 이미지로 문서에 삽입할 수도 있습니다.

다음 코드 예제에서는 삽입하는 방법을 보여 줍니다 OLE 아이콘으로 개체. 이 목적을 위해, [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) 클래스는 [InsertOleObjectAsIcon](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobjectasicon/) 방법:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIcon.h" >}}

다음 코드 예제에서는 임베디드를 삽입하는 방법을 보여 줍니다 OLE 스트림에서 문서로 아이콘으로 개체:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIconUsingStream.h" >}}

## 온라인 비디오 삽입

온라인 비디오는 다음에서 워드 문서에 삽입 할 수 있습니다 *"Insert" > "Online Video"* 탭 당신은 전화를하여 현재 위치에 문서에 온라인 비디오를 삽입 할 수 있습니다 [InsertOnlineVideo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertonlinevideo/) 방법

그 [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) 클래스는이 방법의 네 가지 오버로드를 소개합니다. 첫 번째는 가장 인기 있는 비디오 리소스와 함께 작동 하 고 걸립니다 `URL` 매개 변수로 비디오의. 예를 들어,첫 번째 과부하는 온라인 비디오의 간단한 삽입을 지원합니다. [YouTube](https://www.youtube.com/) 그리고 [비미오](https://vimeo.com/) 자원.

다음 코드 예제에서는 온라인 비디오를 삽입하는 방법을 보여 줍니다 *Vimeo* 문서로:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideo.h" >}}

두 번째 오버로드는 다른 모든 비디오 리소스와 함께 작동하며 임베디드 HTML 매개 변수로 코드. 그 HTML 비디오를 삽입하는 코드는 공급자에 따라 다를 수 있으므로 자세한 내용은 해당 공급자에게 문의하십시오.

{{% alert color="primary" %}}

이 문서는 다음에 대해 자동으로 최적화됩니다 MS 워드 2013 비디오를 표시합니다.

{{% /alert %}}

다음 코드 예제에서는 이러한 방법을 사용하여 온라인 비디오를 문서에 삽입하는 방법을 보여 줍니다 HTML 코드:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideoWithEmbedHtml.h" >}}
