---
title: 문서 속성 작업 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 문서 속성 작업
linktitle: 문서 속성 작업
description: "Aspose.Words 에 대한 C++ 다음과 같은 문서에 대한 유용한 정보를 저장할 수 있습니다 API 및 버전 번호 또는 승인 된 날짜,내장 또는 사용자 정의 문서 속성."
type: docs
weight: 10
url: /ko/cpp/work-with-document-properties/
---

문서 속성을 사용하면 문서에 대한 유용한 정보를 저장할 수 있습니다. 이러한 속성은 두 그룹으로 나눌 수 있습니다:

* 문서 제목,작성자 이름,문서 통계 등과 같은 값을 포함하는 시스템 또는 내장.
* 사용자 정의 또는 사용자 정의,사용자가 이름과 값을 모두 정의할 수 있는 이름-값 쌍으로 제공됩니다.

그 정보를 아는 것이 유용합니다. API 그리고 버전 번호는 출력 문서에 직접 기록됩니다. 예를 들어,문서를 PDF, Aspose.Words "응용 프로그램"필드에"Aspose.Words",그리고"PDF 프로듀서"필드"Aspose.Words 에 대한 C++ YY.엠.엔",어디 *YY.M.N* 의 버전입니다 Aspose.Words 변환에 사용됩니다. 자세한 내용은 참조 [출력 문서에 포함된 생성자 또는 생산자 이름](/words/cpp/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

당신이 **cannot direct** Aspose.Words 출력 문서에서 이 정보를 변경하거나 제거합니다.

{{% /alert %}}

## 문서 속성에 액세스

문서 속성에 액세스하려면 Aspose.Words 사용:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/) 기본 제공 속성을 얻으려면.

* [CustomDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/) 사용자 지정 속성을 얻으려면.

**BuiltInDocumentProperties**

**BuiltInDocumentProperties**

그 [DocumentProperty](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/) 클래스를 사용하면 문서 속성의 이름,값 및 유형을 가져올 수 있습니다. [Value](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_value/) 개체를 반환하지만 속성 값을 특정 형식으로 변환할 수 있는 메서드 집합이 있습니다. 당신은 속성의 유형을 알고 얻을 후,당신은 중 하나를 사용할 수 있습니다 **DocumentProperty.ToXXX** 다음과 같은 방법 **DocumentProperty.**[ToString](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/tostring/) 그리고 **DocumentProperty.**[ToInt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/toint/),적절한 타입의 값을 얻기 위해

다음 코드 예제에서는 문서의 모든 기본 제공 및 사용자 지정 속성을 열거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-EnumerateProperties.cpp" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

그 안에 Microsoft Word,"파일 속성"메뉴를 사용하여 문서 속성에 액세스 할 수 있습니다.

<img src="work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-cpp_1.png" style="width:400px"/>

## 문서 속성 추가 또는 제거

다음을 사용하여 기본 제공 문서 속성을 추가하거나 제거할 수 없습니다 Aspose.Words. 당신은 그들의 값을 변경하거나 업데이트 할 수 있습니다.

사용자 지정 문서 속성을 추가하려면 Aspose.Words,사용 [Add](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/add/) 방법,새 속성 이름과 적절한 유형의 값을 전달. 이 메서드는 새로 만든 **DocumentProperty** 객체

사용자 지정 속성을 제거하려면 다음을 사용합니다 [Remove](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/remove/) 메서드,그것을 제거 할 속성 이름을 전달하거나 [RemoveAt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/removeat/) 인덱스에 의해 속성을 제거하는 방법. 당신은 또한 사용하여 모든 속성을 제거 할 수 있습니다 [Clear](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/clear/) 방법

다음 코드 예제에서는 지정된 이름의 사용자 지정 속성이 문서에 있는지 확인하고 몇 가지 사용자 지정 문서 속성을 추가합니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomAdd.cpp" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

다음 코드 예제에서는 사용자 지정 문서 속성을 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomRemove.cpp" >}}

## 기본 제공 문서 속성 업데이트

Aspose.Words 다음과 같이 문서 속성을 자동으로 업데이트하지 않습니다 Microsoft Word 일부 속성으로 수행하지만 일부 통계 기본 제공 문서 속성을 업데이트하는 방법을 제공합니다. 전화 [UpdateWordCount](https://reference.aspose.com/words/cpp/aspose.words/document/updatewordcount/) 다음 속성을 다시 계산하고 업데이트하는 방법:

* [Characters](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characterswithspaces/)
* [Words](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_words/)
* [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_paragraphs/)
* [Lines](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lines/)

## 콘텐츠에 연결된 새 사용자 지정 속성 만들기

Aspose.Words 제공 [AddLinkToContent](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/addlinktocontent/) 콘텐츠에 연결된 새 사용자 지정 문서 속성을 만드는 방법. 이 속성은 새로 만든 속성 개체 또는 널을 반환합니다. [LinkSource](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_linksource/) 유효하지 않습니다.

다음 코드 예제에서는 사용자 지정 속성에 대한 링크를 구성하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cpp" >}}

## 문서 변수 가져오기

다음을 사용하여 문서 변수 컬렉션을 얻을 수 있습니다 [Variables](https://reference.aspose.com/words/cpp/aspose.words/document/get_variables/) 재산. 변수 이름과 값은 문자열입니다.

다음 코드 예제에서는 문서 변수를 열거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetVariables-GetVariables.cpp" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## 문서에서 개인 정보 제거

워드 문서를 다른 사람들과 공유하려는 경우 작성자 이름 및 회사와 같은 개인 정보를 제거 할 수 있습니다. 이 작업을 수행하려면 [RemovePersonalInformation](https://reference.aspose.com/words/cpp/aspose.words/document/get_removepersonalinformation/) 이를 나타내는 플래그를 설정하는 속성 Microsoft Word 문서를 저장할 때 주석,개정판 및 문서 속성에서 모든 사용자 정보를 제거합니다.

다음 코드 예제에서는 개인 정보를 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cpp" >}}

{{% alert color="primary" %}}

이 옵션을 설정해도 문서를 처리하는 동안 개인 정보가 실제로 제거되지는 않습니다. Aspose.Words 그리고 단지 영향을 미칩니다 Microsoft Word 행동.

{{% /alert %}}
