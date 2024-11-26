---
title: Ole개체 작업
second_title: Aspose.WordsJava
articleTitle: Ole개체 작업
linktitle: Ole개체 작업
description: "Java을 사용하여 문서에 포함된OLE을 만들고 수정합니다."
type: docs
weight: 360
url: /ko/java/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE은"객체 연결 및 임베딩"을 의미합니다. 이 기술은 사용자가 타사 응용 프로그램에서 만들거나 편집 한"개체"가 포함 된 문서로 작업 할 수있는 기술입니다. 즉,OLE을 사용하면 응용 프로그램이 편집을 위해 이러한"개체"를 다른 응용 프로그램으로 내보낸 다음 추가 콘텐츠와 함께 다시 가져올 수 있습니다.

이 기사에서는OLE개체를 삽입하고 해당 속성을 문서에 설정하는 방법에 대해 설명합니다.

## Ole개체 삽입

OLE개체를 원하는 경우[InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream)메서드를 호출하고**ProgId**을 다른 매개 변수와 함께 명시적으로 전달합니다.

다음 코드 예제에서는OLE개체를 문서에 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### OLE개체를 삽입할 때 파일 이름 및 확장명 설정

OLE패키지는OLE핸들러를 알 수없는 경우 포함 된 개체를 저장하는 레거시 및"문서화되지 않은"방법입니다.

Windows 3.1,95,98 과 같은 초기Windows버전에는Packager.exe응용 프로그램이 있었는데,이는 문서에 모든 유형의 데이터를 포함시키는 데 사용할 수 있습니다. 이 응용 프로그램은 이제Windows에서 제외되지만Microsoft Word및 기타 응용 프로그램은OLE핸들러가 없거나 알 수없는 경우 데이터를 포함하는 데 사용합니다. `OlePackage`클래스는 사용자가OLE Package속성에 액세스할 수 있도록 합니다.

다음 코드 예제에서는OLE Package의 파일 이름,확장명 및 표시 이름을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### OLE개체 원시 데이터에 액세스

사용자는`OleFormat`클래스의 다양한 속성과 메서드를 사용하여OLE개체 데이터에 액세스할 수 있습니다. 예를 들어,`OLE`객체 원시 데이터 또는 연결된OLE객체에 대한 소스 파일의 경로와 이름을 얻을 수 있습니다.

다음 코드 예제에서는[GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData)메서드를 사용하여OLE개체 원시 데이터를 가져오는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### OLE개체를 아이콘으로 삽입

OLE개체는 문서에 이미지로 삽입할 수도 있습니다.

다음 코드 예제에서는OLE개체를 아이콘으로 삽입하는 방법을 보여 줍니다. 이를 위해**DocumentBuilder**클래스는[InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String)메서드를 노출합니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

다음 코드 예제에서는 포함된OLE개체를 스트림의 아이콘으로 문서에 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## 온라인 비디오 삽입

온라인 비디오는*"Insert" > "Online Video"*탭에서 워드 문서에 삽입 할 수 있습니다. [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double)메서드를 호출하여 현재 위치의 문서에 온라인 비디오를 삽입할 수 있습니다:

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)클래스는 이 메서드의 네 가지 오버로드를 도입합니다. 첫 번째는 가장 인기있는 비디오 리소스와 함께 작동하며 비디오의`URL`를 매개 변수로 사용합니다. 예를 들어,첫 번째 과부하는 온라인 비디오의 간단한 삽입을 지원합니다. [YouTube](https://www.youtube.com/) 그리고 [비미오](https://vimeo.com/) 자원.

다음 코드 예제에서는*Vimeo*의 온라인 비디오를 문서에 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

두 번째 오버로드는 다른 모든 비디오 리소스와 함께 작동하며 포함 된HTML코드를 매개 변수로 사용합니다. 비디오를 삽입하기 위한HTML코드는 공급자에 따라 다를 수 있으므로 자세한 내용은 해당 공급자에게 문의하십시오.

{{% alert color="primary" %}}

문서가 자동으로 비디오를 표시하는MS워드 2013 에 최적화됩니다주의하시기 바랍니다.

{{% /alert %}}

다음 코드 예제에서는HTML코드를 사용하여 온라인 비디오를 문서에 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
