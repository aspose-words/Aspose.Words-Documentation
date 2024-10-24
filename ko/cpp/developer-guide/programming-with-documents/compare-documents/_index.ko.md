---
title: 문서 비교 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 문서 비교
linktitle: 문서 비교
type: docs
description: "지원되는 형식의 두 문서를 비교하고 다음을 사용하여 콘텐츠 변경 사항을 보여줍니다 C++. 비교할 때 고급 옵션을 적용 할 수 있습니다."
weight: 60
url: /ko/cpp/compare-documents/
---

문서 비교는 두 문서 간의 변경 사항을 식별하고 변경 사항을 수정으로 포함하는 프로세스입니다. 이 프로세스는 하나의 특정 문서의 버전을 포함하여 두 문서를 비교 한 다음 두 문서 간의 변경 사항이 첫 번째 문서의 수정으로 표시됩니다.

비교 방법은 문자 수준이나 단어 수준에서 단어를 비교함으로써 달성됩니다. 단어에 하나 이상의 문자가 포함된 경우 결과에서 차이는 문자가 아닌 전체 단어의 변경으로 표시됩니다. 이 비교 과정은 법률 및 금융 산업에서 일반적인 작업입니다.

문서 간 또는 서로 다른 버전의 차이점을 수동으로 검색하는 대신 다음을 사용할 수 있습니다 Aspose.Words 문서를 비교하고 서식,머리글/바닥 글,표 등의 내용 변경을 가져옵니다.

이 문서에서는 문서를 비교하는 방법과 고급 비교 속성을 지정하는 방법을 설명합니다.

{{% alert color="primary" %}}

**온라인 시도**

다음을 사용하여 온라인으로 두 문서를 비교할 수 있습니다 [온라인 문서 비교](https://products.aspose.app/words/comparison) 도구.

이 도구에서는 아래에 설명된 비교 방법을 사용하여 동일한 결과를 얻을 수 있습니다. 그래서 당신은 심지어 온라인 비교 도구를 사용하거나 비교 방법을 사용하여 동일한 결과를 얻을 것이다 Aspose.Words.

{{% /alert %}}

## 제한 사항 및 지원되는 파일 형식 {#limitations-and-supported-file-formats}

문서를 비교하는 것은 매우 복잡한 기능입니다. 모든 차이점을 인식하기 위해 분석해야 하는 콘텐츠 조합의 다양한 부분이 있습니다. 이 복잡성의 이유는 다음과 같은 사실 때문입니다 Aspose.Words 같은 비교 결과를 얻는 것을 목표로 합니다. Microsoft Word 비교 알고리즘.

비교되는 두 문서의 일반적인 제한은 비교 방법을 호출하기 전에 수정되지 않아야 한다는 것입니다. Microsoft Word.

{{% alert color="primary" %}}

당신은 내 두 문서를 비교할 수 있습니다 [지원되는 파일 형식](/words/cpp/supported-document-formats/). 문서 개체를 비교할 수 있으며 특정 형식 없이도 처음부터 해당 개체를 만들 수 있습니다.

{{% /alert %}}

## 두 문서 비교 {#compare-two-documents}

문서를 비교할 때 후자의 문서와 이전의 문서의 차이점은 이전의 수정본으로 표시됩니다. 문서를 수정할 때 비교 메서드를 실행한 후 각 편집에는 자체 수정본이 있습니다.

Aspose.Words 를 사용하여 문서의 차이를 식별 할 수 있습니다 [Compare](https://reference.aspose.com/words/cpp/aspose.words/document/compare/) 방법-이 유사하다 Microsoft Word 문서 비교 기능. 문서 또는 문서 버전을 확인하여 글꼴 변경,간격 변경,단어 및 단락 추가와 같은 서식 수정을 포함하여 차이점 및 변경 사항을 찾을 수 있습니다.

비교 결과,문서는 같거나 같지 않은 것으로 결정될 수 있습니다. "평등"문서라는 용어는 비교 방법이 변경 사항을 수정으로 나타낼 수 없다는 것을 의미합니다. 즉,문서 텍스트와 텍스트 서식이 모두 동일합니다. 그러나 문서 간에는 다른 차이점이있을 수 있습니다. 예를 들어, Microsoft Word 스타일에 대한 형식 수정 만 지원하며 스타일 삽입/삭제를 나타낼 수 없습니다. 따라서 문서는 다른 스타일 세트를 가질 수 있으며 **Compare** 메서드는 여전히 개정을 생성하지 않습니다.

다음 코드 예제에서는 두 문서가 같는지 아닌지를 확인하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareForEqual.cpp" >}}

다음 코드 예제에서는 간단히 적용하는 방법을 보여 줍니다 `Compare` 두 문서에 대한 방법:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareWhenDocumentHasRevisions.cpp" >}}

## 고급 비교 옵션 지정 {#specify-advanced-comparing-properties}

많은 다른 속성이 있습니다 [CompareOptions](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/) 당신이 문서를 비교 할 때 적용 할 수있는 클래스.

예를 들어, Aspose.Words 원본 문서 내의 특정 유형의 개체에 대해 비교 작업 중에 변경한 내용을 무시할 수 있습니다. 다음과 같이 개체 유형에 적합한 속성을 선택할 수 있습니다 [IgnoreHeadersAndFooters](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignoreheadersandfooters/), [IgnoreFormatting](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignoreformatting/), [IgnoreComments](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignorecomments/),그리고 다른 사람들은"진실"으로 설정합니다.

또한, Aspose.Words 제공 [Granularity](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_granularity/) 문자 또는 단어로 변경 내용을 추적할지 여부를 지정할 수 있는 속성입니다.

또 다른 공통 속성은 비교 변경 사항을 표시 할 문서를 선택하는 것입니다. 예를 들어,"문서 비교 대화 상자"는 Microsoft Word "변경 사항 표시"옵션이 있습니다.이 옵션도 비교 결과에 영향을 미칩니다. Aspose.Words 제공 [Target](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_target/) 이 목적을 제공하는 재산.

다음 코드 예제에서는 고급 비교 속성을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareDocumentWithCompareOptions.cpp" >}}
