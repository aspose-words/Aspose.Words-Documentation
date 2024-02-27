---
title: C#의 문서 비교
second_title: .NET용 Aspose.Words
articleTitle: 문서 비교
linktitle: 문서 비교
description: "지원되는 형식의 두 문서를 비교하고 C#를 사용하여 콘텐츠 변경 사항을 표시합니다. 비교할 때 고급 옵션을 적용할 수 있습니다."
type: docs
weight: 60
url: /ko/net/compare-documents/
---

문서 비교는 두 문서 간의 변경 사항을 식별하고 변경 사항을 개정판으로 포함하는 프로세스입니다. 이 프로세스는 특정 문서의 버전을 포함하여 두 문서를 비교한 다음 두 문서 간의 변경 사항이 첫 번째 문서의 개정판으로 표시됩니다.

비교 방법은 문자 수준 또는 단어 수준에서 단어를 비교하여 수행됩니다. 단어에 하나 이상의 문자 변경이 포함된 경우 결과에서는 차이가 문자가 아닌 전체 단어 변경으로 표시됩니다. 이러한 비교 과정은 법률 및 금융 산업에서 일반적인 작업입니다.

문서 간 또는 문서 버전 간의 차이점을 수동으로 검색하는 대신 Aspose.Words를 사용하여 문서를 비교하고 서식, 머리글/바닥글, 표 등의 콘텐츠 변경 사항을 가져올 수 있습니다.

이 문서에서는 문서를 비교하는 방법과 고급 비교 속성을 지정하는 방법을 설명합니다.

{{% alert color="primary" %}}

**온라인으로 사용해 보세요**

[온라인 문서 비교](https://products.aspose.app/words/comparison) 도구를 사용하여 두 문서를 온라인으로 비교할 수 있습니다.

아래 설명된 비교 방법은 동일한 결과를 얻기 위해 이 도구에서 사용됩니다. 따라서 온라인 비교 도구를 사용하거나 Aspose.Words의 비교 방법을 사용해도 동일한 결과를 얻을 수 있습니다.

{{% /alert %}}

## 제한 사항 및 지원되는 파일 형식 {#limitations-and-supported-file-formats}

문서를 비교하는 것은 매우 복잡한 기능입니다. 모든 차이점을 인식하기 위해 분석해야 하는 콘텐츠 조합의 다양한 부분이 있습니다. 이렇게 복잡한 이유는 Aspose.Words가 Microsoft Word 비교 알고리즘과 동일한 비교 결과를 얻는 것을 목표로 하기 때문입니다.

비교되는 두 문서에 대한 일반적인 제한 사항은 Microsoft Word에 이러한 제한 사항이 있으므로 비교 메서드를 호출하기 전에 개정본이 없어야 한다는 것입니다.

{{% alert color="primary" %}}

[지원되는 문서 형식](/words/ko/net/supported-document-formats/) 내의 두 문서를 비교할 수 있습니다. 기본적으로 문서 개체를 비교할 수 있으며 특정 형식 없이 처음부터 해당 개체를 만들 수도 있습니다.

{{% /alert %}}

## 두 문서 비교 {#compare-two-documents}

문서를 비교할 때 전자와 후자의 문서의 차이점은 전자의 개정판으로 나타납니다. 문서를 수정하면 비교 메서드를 실행한 후 각 편집 내용에 자체 수정본이 생깁니다.

Aspose.Words를 사용하면 [Compare](https://reference.aspose.com/words/net/aspose.words/document/compare/#compare/) 방법을 사용하여 문서 차이점을 식별할 수 있습니다. 이는 Microsoft Word 문서 비교 기능과 유사합니다. 이를 통해 문서 또는 문서 버전을 확인하여 글꼴 변경, 간격 변경, 단어 및 단락 추가와 같은 서식 수정을 포함하여 차이점과 변경 사항을 찾을 수 있습니다.

비교 결과, 문서가 동일하거나 동일하지 않은 것으로 판별될 수 있습니다. "동일" 문서라는 용어는 비교 방법이 변경 사항을 개정으로 표시할 수 없음을 의미합니다. 이는 문서 텍스트와 텍스트 서식이 모두 동일하다는 것을 의미합니다. 그러나 문서 간에는 다른 차이점이 있을 수 있습니다. 예를 들어 Microsoft Word는 스타일에 대한 형식 개정만 지원하며 스타일 삽입/삭제를 나타낼 수 없습니다. 따라서 문서는 다양한 스타일 세트를 가질 수 있으며 **Compare** 방법은 여전히 수정본을 생성하지 않습니다.

다음 코드 예제에서는 두 문서가 같은지 여부를 확인하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CompareDocument-CompareForEqual.cs" >}}

다음 코드 예제에서는 `Compare` 메서드를 두 문서에 간단히 적용하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CompareDocument-ApplyCompareTwoDocuments.cs" >}}

## 고급 비교 옵션 {#specify-advanced-comparing-properties} 지정

문서를 비교할 때 적용할 수 있는 [CompareOptions](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/) 클래스의 다양한 속성이 있습니다.

예를 들어 Aspose.Words를 사용하면 원본 문서 내의 특정 유형의 개체에 대한 비교 작업 중에 변경된 내용을 무시할 수 있습니다. [IgnoreHeadersAndFooters](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/ignoreheadersandfooters/), [IgnoreFormatting](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/ignoreformatting/), [IgnoreComments](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/ignorecomments/) 등 개체 유형에 적합한 속성을 "true"으로 설정하여 선택할 수 있습니다.

또한 Aspose.Words는 문자별로 또는 단어별로 변경 사항을 추적할지 여부를 지정할 수 있는 [Granularity](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/granularity/) 속성을 제공합니다.

또 다른 공통 속성은 비교 변경 사항을 표시할 문서를 선택하는 것입니다. 예를 들어 Microsoft Word의 "문서 비교 대화 상자"에는 "변경 사항 표시" 옵션이 있으며 이는 비교 결과에도 영향을 미칩니다. Aspose.Words는 이러한 목적에 맞는 [Target](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/target/) 속성을 제공합니다.

다음 코드 예제에서는 고급 비교 속성을 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CompareDocument-SetAdvancedComparingProperties.cs" >}}
