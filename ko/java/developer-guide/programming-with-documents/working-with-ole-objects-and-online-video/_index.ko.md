---
title: Ole 개체 작업
second_title: Aspose.Words 제품정보 Java
articleTitle: Ole 개체 작업
linktitle: Ole 개체 작업
description: "문서에서 OLE embedding 생성 및 수정 Java·"
type: docs
weight: 360
url: /ko/java/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE는 "Object Linking and Embedding"을 의미합니다. 이것은 사용자가 제3자 응용 프로그램에 의해 생성되거나 편집 된 "objects"를 포함하는 문서와 함께 작동 할 수있는 기술입니다. 즉, OLE는 이러한 "objects"를 편집하기위한 또 다른 응용 프로그램에 수출 할 수 있으며, 그 다음 추가 내용으로 다시 가져 오기.

이 문서에서는 OLE 개체를 삽입하고 문서에 속성을 설정하는 것에 대해 이야기합니다.

## Ole 개체를 삽입

OLE 개체를 원한다면 [InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream) 방법 및 그것을 통과 **ProgId** 다른 매개 변수와 다르게.

다음 코드 예제 OLE 삽입하는 방법을 보여줍니다 문서에 개체:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### OLE 개체를 삽입 할 때 파일 이름과 확장 설정

OLE 패키지는 OLE 핸들러가 알 수없는 경우 임베디드 개체를 저장하는 레거시 및 "undocumented"방법입니다.

상세 정보 Windows 같은 버전 Windows 3.1, 95, 98은 패커가 있었다. 문서에 어떤 유형의 데이터를 포함 할 수있는 exe 응용 프로그램입니다. 이 응용 프로그램은 이제 제외됩니다 Windows, 하지만 Microsoft Word 다른 응용 프로그램은 여전히 OLE 핸들러가 누락되거나 알 수없는 경우 데이터를 embed. 더 보기 `OlePackage` 클래스는 사용자가 OLE 패키지 속성에 액세스 할 수 있습니다.

다음 코드 예제는 OLE 패키지의 파일 이름, 확장 및 표시 이름을 설정하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### OLE Object Raw Data에 대한 액세스

사용자는 다양한 속성과 방법을 사용하여 OLE 개체 데이터에 액세스 할 수 있습니다 `OleFormat` 수업. 예를 들어, 그것을 얻을 수 있습니다 `OLE` object raw data or the path and name of the source file for the connected OLE object.

다음 코드 예제는 OLE를 얻는 방법을 보여줍니다 Object raw data 사용 [GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData) 방법:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### 삽입 OLE 아이콘으로

OLE 개체는 이미지로 문서를 삽입 할 수 있습니다.

다음 코드 예제는 OLE 개체를 아이콘으로 삽입하는 방법을 보여줍니다. 이 목적을 위해, **DocumentBuilder** 클래스는 노출 [InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String) 방법.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

다음 코드 예제는 스트림에서 문서에 아이콘으로 임베디드 OLE 객체를 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## 온라인 삽입

온라인 비디오는 * "Insert" > "Online Video"* 탭에서 Word 문서에 삽입 할 수 있습니다. 현재 위치에 문서에 온라인 비디오를 삽입 할 수 있습니다. [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double) 방법:

더 보기 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 이 방법의 4개의 하중을 소개합니다. 가장 인기있는 비디오 리소스와 함께 첫 번째 작품은 소요 `URL` 매개 변수로 비디오의. 예를 들면, 첫번째 하중 초과는 온라인 영상의 간단한 삽입을에서 지원합니다 [다운로드](https://www.youtube.com/) · [비메오](https://vimeo.com/) 자료실

다음 코드 예제에서 온라인 비디오를 삽입하는 방법을 보여줍니다 *Vimeo* 문서에:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

두 번째 오버로드는 다른 모든 비디오 리소스와 함께 작동하며 임베디드 HTML 코드를 매개 변수로 사용합니다. 비디오에 따라 HTML 코드는 제공 업체에 따라 다를 수 있으므로 세부 사항에 대한 각 공급자에 문의하십시오.

{{% alert color="primary" %}}

문서는 MS Word 2013에 자동으로 최적화되어 비디오를 보여줍니다.

{{% /alert %}}

다음 코드 예제는 HTML 코드를 사용하여 문서에 온라인 비디오를 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
