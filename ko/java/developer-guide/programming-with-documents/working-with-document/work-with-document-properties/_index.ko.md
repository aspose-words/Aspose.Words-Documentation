---
title: 문서 속성 작업 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 문서 속성 작업
linktitle: 문서 속성 작업
description: "Aspose.Words 제품정보 Java 문서에 대한 유용한 정보를 저장할 수 있습니다. API 및 버전 번호 또는 권한 Date, 내장 또는 사용자 정의 문서 속성에서."
type: docs
weight: 10
url: /ko/java/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

문서 속성은 문서에 대한 유용한 정보를 저장 할 수 있습니다. 이 재산은 2개 그룹으로 분할될 수 있습니다:

* 문서 제목, 저자 이름, 문서 통계 및 기타와 같은 값을 포함하는 시스템 또는 내장.
* 이름 사용자 정의 또는 사용자 정의, 사용자가 이름과 값을 정의 할 수있는 이름 값 쌍으로 제공.

그것은에 대한 정보를 알고 유용합니다 API 그리고 버전 번호는 직접 산출 문서에 기록됩니다. 예를 들어, 문서를 PDF로 변환하려면 Aspose.Words "Application"필드에 채우기 "Aspose.Words", "PDF Producer"필드와 "Aspose.Words 제품정보 Java YY.M.N, 어디 *YY.M.N* 버전의 Aspose.Words 변환에 사용됩니다. 더 자세한 내용은 [생성물 또는 생성물 이름 포함](/words/ko/java/generator-or-producer-name-included-in-output-documents/)·

{{% alert color="primary" %}}

너에게 **수 없습니다** Aspose.Words 출력 문서에서 이 정보를 변경하거나 제거하십시오.

{{% /alert %}}

## Access Document 속성

문서 속성에 액세스 Aspose.Words 사용:

* 이름 [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties) 내장 속성을 얻기 위해.

* 이름 [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties) 사용자 정의 속성을 얻기 위해.

**BuiltInDocumentProperties** · **CustomDocumentProperties** 회사 소개 [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) 기타 제품 이 개체는 이름 또는 인덱스로 인덱스 속성을 통해 얻을 수 있습니다.

**BuiltInDocumentProperties** 입력된 속성을 통해 문서 속성에 대한 추가적으로 접근을 제공합니다. **CustomDocumentProperties** 문서에서 문서 속성을 추가하거나 제거 할 수 있습니다.

더 보기 [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) 클래스는 이름, 값 및 문서 속성의 유형을 얻을 수 있습니다. [엠에디터 플러그 인 참조:Editor.aspose.com {0} 기타 제품 {1}[수탁](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString) · **DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt), 적절한 유형의 값을 얻는다.

다음 코드 예제는 문서의 모든 내장 및 사용자 정의 속성을 enumerate하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일을 다운로드 할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx)·

{{% /alert %}}

내 계정 Microsoft Word, "File → Properties" 메뉴를 사용하여 문서 속성에 액세스 할 수 있습니다.

<img src="/words/java/work-with-document-properties/work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## 문서 속성 추가 또는 제거

내장 문서 속성을 추가하거나 제거할 수 없습니다. Aspose.Words· 값을 변경하거나 업데이트할 수 있습니다.

사용자 정의 문서 속성을 추가 Aspose.Words, 이용안내 [Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean) 새로운 속성 이름과 적절한 유형의 값을 전달하는 방법. 메서드는 새로 생성 된 반환 **DocumentProperty** 이름 *

사용자 정의 속성을 제거하려면 [Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String) 방법, 제거 할 속성 이름을 전달, 또는 [RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int) 인덱스로 속성을 제거하는 방법. 또한 모든 속성을 제거 할 수 있습니다. [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear) 방법.

다음과 같은 코드 예제는 주어진 이름이있는 사용자 정의 속성이 문서에 존재하고 몇 가지 사용자 정의 문서 속성을 추가:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일을 다운로드 할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx)·

{{% /alert %}}

다음 코드 예제는 사용자 정의 문서 속성을 제거하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## 내장 문서 속성 업데이트

Aspose.Words 문서 속성을 자동으로 업데이트하지 않습니다. Microsoft Word 일부 속성을 가지고 있지만 통계적 내장 문서 속성을 업데이트하는 방법을 제공합니다. 전화 번호 [UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount) recalculate 및 다음 속성을 업데이트하는 방법:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## 새로운 사용자 정의 속성 Linked to Content

Aspose.Words 제품정보 [AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String) 콘텐츠에 연결된 새로운 사용자 정의 문서 속성을 만드는 방법. 이 속성은 새로 생성 된 속성 객체 또는 null을 반환합니다. [LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent) 유효하다.

다음 코드 예제는 사용자 정의 속성에 대한 링크를 구성하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## 문서 변수 받기

문서 변수의 수집을 얻을 수 있습니다. [Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables) 호텔 위치 변수 이름과 값은 문자열입니다.

다음 코드 예제는 문서 변수를 enumerate하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일을 다운로드 할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx)·

{{% /alert %}}

## 본문 바로가기

다른 사람들과 Word 문서를 공유하려면 저자 이름 및 회사와 같은 개인 정보를 제거 할 수 있습니다. 이 사용하려면 [RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation) 을 설정하는 플래그를 나타내는 Microsoft Word 문서 저장시 의견, 개정 및 문서 속성에서 모든 사용자 정보를 제거합니다.

{{% alert color="primary" %}}

이 옵션을 설정하면 실제로 문서 처리 중에 개인 정보를 제거하지 않습니다. Aspose.Words 그리고 단지에 영향을 Microsoft Word 이름 *

{{% /alert %}}
