---
title: C#에서 문서 속성 작업
second_title: .NET용 Aspose.Words
articleTitle: 문서 속성 작업
linktitle: 문서 속성 작업
description: ".NET용 Aspose.Words를 사용하면 API, 버전 번호 또는 승인된 Date와 같은 문서에 대한 유용한 정보를 C#을 사용하여 내장 또는 사용자 정의 문서 속성에 저장할 수 있습니다."
type: docs
weight: 10
url: /ko/net/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

문서 속성을 사용하면 문서에 대한 유용한 정보를 저장할 수 있습니다. 이러한 속성은 두 그룹으로 나눌 수 있습니다

* 문서 제목, 작성자 이름, 문서 통계 등과 같은 값을 포함하는 시스템 또는 내장 기능입니다.
* 사용자 정의 또는 사용자 정의. 사용자가 이름과 값을 모두 정의할 수 있는 이름-값 쌍으로 제공됩니다.

API 및 버전 번호에 대한 정보가 출력 문서에 직접 기록된다는 점을 알아두면 유용합니다. 예를 들어, 문서를 PDF로 변환할 때 Aspose.Words는 "응용 프로그램" 필드를 "Aspose.Words"로 채우고 "PDF 생산자" 필드를 ".NET YY.MN용 Aspose.Words"로 채웁니다. 여기서 *YY.M.N*는 변환에 사용된 Aspose.Words 버전입니다.. 자세한 내용은 [출력 문서에 포함된 생성자 또는 생산자 이름](/words/ko/net/generator-or-producer-name-included-in-output-documents/)을 참조하세요.

{{% alert color="primary" %}}

출력 문서에서 이 정보를 변경하거나 제거하려면 **지시할 수 없다** Aspose.Words를 수행하세요.

{{% /alert %}}

## 문서 속성에 액세스

Aspose.Words의 문서 속성에 액세스하려면 다음을 사용하세요

* 내장 속성을 얻기 위한 [BuiltInDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/builtindocumentproperties/).

* 사용자 정의 속성을 얻기 위한 [CustomDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/customdocumentproperties/).

**BuiltInDocumentProperties** 및 **CustomDocumentProperties**는 [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/) 객체의 컬렉션입니다. 이러한 개체는 이름 또는 인덱스별로 indexer 속성을 통해 얻을 수 있습니다.

**BuiltInDocumentProperties**는 적절한 유형의 값을 반환하는 입력된 속성 집합을 통해 문서 속성에 대한 액세스를 추가로 제공합니다. **CustomDocumentProperties**를 사용하면 문서에서 문서 속성을 추가하거나 제거할 수 있습니다.

[DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/) 클래스를 사용하면 문서 속성의 이름, 값 및 유형을 얻을 수 있습니다. [Value](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/value/)는 객체를 반환하지만 속성 값을 특정 유형으로 변환할 수 있는 일련의 메서드가 있습니다. 속성의 유형을 파악한 후에는 **DocumentProperty.**[ToString](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/tostring/) 및 **DocumentProperty.**[ToInt](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/toint/)와 같은 **DocumentProperty.ToXXX** 메서드 중 하나를 사용하여 적절한 유형의 값을 얻을 수 있습니다.

다음 코드 예제에서는 문서의 모든 기본 제공 속성과 사용자 지정 속성을 열거하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-EnumerateProperties.cs" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx)에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

{{% /alert %}}

Microsoft Word에서는 "파일 → 속성" 메뉴를 사용하여 문서 속성에 접근할 수 있습니다.

<img src="/words/net/work-with-document-properties/work-with-document-properties-1.png" alt="문서속성-1.png 작업" style="width:400px"/>

## 문서 속성 추가 또는 제거

Aspose.Words를 사용하여 기본 제공 문서 속성을 추가하거나 제거할 수 없습니다. 해당 값을 변경하거나 업데이트하는 것만 가능합니다.

Aspose.Words를 사용하여 사용자 정의 문서 속성을 추가하려면 [Add](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/add/#add/) 메서드를 사용하여 새 속성 이름과 적절한 유형의 값을 전달합니다. 이 메서드는 새로 생성된 **DocumentProperty** 객체를 반환합니다.

사용자 정의 속성을 제거하려면 [Remove](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/) 메서드를 사용하여 제거할 속성 이름을 전달하거나 [RemoveAt](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/at) 메서드를 사용하여 인덱스별로 속성을 제거합니다. [Clear](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/clear/) 메서드를 사용하여 모든 속성을 제거할 수도 있습니다.

다음 코드 예제에서는 특정 이름을 가진 사용자 정의 속성이 문서에 있는지 확인하고 몇 가지 사용자 정의 문서 속성을 더 추가합니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomAdd.cs" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx)에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

{{% /alert %}}

다음 코드 예제에서는 사용자 정의 문서 속성을 제거하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomRemove.cs" >}}

## 내장 문서 속성 업데이트

Aspose.Words는 Microsoft Word가 일부 속성을 수행하는 것처럼 문서 속성을 자동으로 업데이트하지 않지만 통계적으로 내장된 일부 문서 속성을 업데이트하는 방법을 제공합니다. [UpdateWordCount](https://reference.aspose.com/words/net/aspose.words/document/updatewordcount/#updatewordcount/) 메서드를 호출하여 다음 속성을 다시 계산하고 업데이트합니다

* [Characters](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characterswithspaces/)
* [Words](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/words/)
* [Paragraphs](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [Lines](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lines/)

## 콘텐츠에 연결된 새 사용자 정의 속성 생성

Aspose.Words는 콘텐츠에 연결된 새로운 사용자 정의 문서 속성을 생성하는 [AddLinkToContent](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/addlinktocontent/) 방법을 제공합니다. 이 속성은 새로 생성된 속성 개체를 반환하거나 [LinkSource](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/linksource/)이 유효하지 않은 경우 null을 반환합니다.

다음 코드 예제에서는 사용자 정의 속성에 대한 링크를 구성하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cs" >}}

## 문서 변수 가져오기

[Variables](https://reference.aspose.com/words/net/aspose.words/document/variables/) 속성을 사용하여 문서 변수 컬렉션을 가져올 수 있습니다. 변수 이름과 값은 문자열입니다.

다음 코드 예제에서는 문서 변수를 열거하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetVariables-GetVariables.cs" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx)에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

{{% /alert %}}

## 문서에서 개인 정보 제거

Word 문서를 다른 사람과 공유하려면 작성자 이름, 회사 등의 개인 정보를 제거할 수 있습니다. 이를 수행하려면 [RemovePersonalInformation](https://reference.aspose.com/words/net/aspose.words/document/removepersonalinformation/) 속성을 사용하여 Microsoft Word가 문서 저장 시 주석, 수정본 및 문서 속성에서 모든 사용자 정보를 제거함을 나타내는 플래그를 설정합니다.

다음 코드 예제에서는 개인 정보를 제거하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cs" >}}

{{% alert color="primary" %}}

이 옵션을 설정하면 Aspose.Words에서 문서를 처리하는 동안 실제로 개인 정보가 제거되지 않으며 Microsoft Word 동작에만 영향을 미칩니다.

{{% /alert %}}
