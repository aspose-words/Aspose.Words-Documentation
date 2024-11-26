---
title: 문서 분할 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 문서 분할
linktitle: 문서 분할
description: "다음을 사용하여 문서를 여러 파일로 분할 C++. 분할 기능을 사용하여 표제 또는 섹션,페이지 또는 페이지 범위별로 문서를 효과적으로 분할할 수 있습니다."
type: docs
weight: 90
url: /ko/cpp/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* 또는 *split a document* 큰 문서를 더 많은 수의 작은 파일로 나누는 과정입니다. 파일을 분할하는 데는 여러 가지 이유가 있습니다. 예를 들어 전체 문서가 아닌 특정 문서의 일부 페이지 만 필요합니다. 또는 개인 정보 보호를 위해 문서의 일부만 다른 사용자와 공유하려는 경우 분할 기능을 사용하면 문서의 필요한 부분 만 가져 와서 필요한 작업을 수행 할 수 있습니다(예:마크 업,저장 또는 보내기).

Aspose.Words 제목 또는 섹션으로 여러 문서로 하나의 문서를 분할 할 수있는 효율적인 방법을 제공합니다. 페이지 또는 페이지 범위별로 문서를 분할할 수도 있습니다. 이 기사에서는 두 가지 분할 옵션에 대해 설명합니다.

다음을 사용하여 문서를 더 작은 파일로 분할하려면 Aspose.Words,다음 단계를 수행해야 합니다:

1. 지원되는 형식으로 문서를 로드합니다.
1. 문서를 분할합니다.
1. 출력 문서를 저장하십시오.

문서를 분할 한 후에는 필요한 페이지,텍스트 등으로 시작하는 모든 출력 문서를 열 수 있습니다.

{{% alert color="primary" %}}

**온라인 시도**

당신은 우리의 이 기능을 시도할 수 있습니다 [무료 온라인 문서 분배기](https://products.aspose.app/words/splitter).

{{% /alert %}}

## 다른 기준을 사용하여 문서 분할 {#split-a-document-using-different-criteria}

Aspose.Words 분할 할 수 있습니다 EPUB 또는 HTML 다양한 기준에 따라 장으로 문서. 이 과정에서 소스 문서의 스타일과 레이아웃은 출력 문서에 대해 보존됩니다.

다음을 사용하여 조건을 지정할 수 있습니다 [DocumentSplitCriteria](https://reference.aspose.com/words/cpp/aspose.words.saving/documentsplitcriteria/) 열거 따라서 다음 기준 중 하나를 사용하여 문서를 장으로 나누거나 둘 이상의 기준을 함께 결합할 수 있습니다:

- 제목 단락,
- 섹션 휴식,
- 열 나누기,
- 페이지 나누기.

출력을 저장할 때 HTML, Aspose.Words 각 개별 장을 별도의 장으로 저장 HTML 파일 그 결과,문서는 여러 부분으로 분할됩니다 HTML 파일들 출력을 저장할 때 EPUB, Aspose.Words 하나의 결과를 저장 EPUB 에 관계없이 파일 `DocumentSplitCriteria` 당신이 사용한 가치. 그래서,사용 DocumentSplitCriteria 에 대한 EPUB 문서는 독자 응용 프로그램에서 콘텐츠의 모양에만 영향을 미칩니다.콘텐츠는 장으로 나뉘어지고 문서는 더 이상 연속으로 나타나지 않습니다.

{{% alert color="primary" %}}

다음을 사용하여 문서를 분할할 수 없습니다 [DocumentSplitCriteria](https://reference.aspose.com/words/cpp/aspose.words.saving/documentsplitcriteria/) 에 저장할 때 재산 MHTML 형식

{{% /alert %}}

이 섹션에서는 가능한 분할 기준 중 일부만 고려합니다.

### 섹션별로 문서 분할 {#split-a-document-by-sections}

Aspose.Words 또한 섹션 나누기를 사용하여 문서를 분할하고 다음에 저장할 수 있습니다 HTML. 이를 위해 다음을 사용하십시오 **SectionBreak** 그 **DocumentSplitCriteria**:

다음 코드 예제에서는 섹션 나누기를 사용하여 문서를 더 작은 부분으로 분할하는 방법을 보여 줍니다. `DocumentSplitCriteria` 재산):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SplitDocument-SplitDocumentBySections.cpp" >}}

## 페이지로 분할 {#splitting-by-pages}

문서 페이지를 페이지,페이지 범위 또는 지정된 페이지 번호로 시작하여 분할할 수도 있습니다. 이 경우 [ExtractPages](https://reference.aspose.com/words/cpp/aspose.words/document/extractpages/) 방법은 일을 할 수 있습니다.

이 섹션에서는 문서를 페이지별로 나누는 몇 가지 사용 사례에 대해 설명합니다. [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) 클래스 및 **ExtractPages** 방법

{{% alert color="primary" %}}

당신은 어떤 것을 사용할 수 있습니다 [지원되는 출력 형식 Aspose.Words](/words/cpp/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

페이지 수를 줄이면서 나타나는 많은 뉘앙스로 인해 Microsoft Word 레이아웃은 매우 복잡한 작업입니다. 따라서 문서의 복잡성에 따라 원본 문서와 결과 문서 레이아웃에 약간의 차이가 있을 수 있습니다.

{{% /alert %}}

### 페이지별로 문서 페이지 분할 {#split-a-document-page-by-page}

Aspose.Words 여러 페이지 문서 페이지를 페이지별로 분할할 수 있습니다.

다음 코드 예제에서는 문서를 분할하고 각 페이지를 별도의 문서로 저장하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Split Documents-Split document-SplitDocumentPageByPage.h" >}}

### 페이지 범위로 문서 분할 {#split-a-document-by-page-ranges}

Aspose.Words 여러 페이지 문서를 페이지 범위별로 분할할 수 있습니다. 하나의 파일을 다양한 페이지 범위의 여러 파일로 분할하거나 하나의 범위를 선택하고 소스 문서의이 부분 만 저장할 수 있습니다. 문서의 최대 및 최소 페이지 번호에 따라 페이지 범위를 선택할 수 있습니다.

다음 코드 예제에서는 특정 시작 및 끝 인덱스가 있는 페이지 범위별로 문서를 더 작은 부분으로 분할하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Split Documents-Split document-SplitDocumentByPageRange.h" >}}

## 분할 문서를 다른 문서와 병합 {#merge-the-split-document-with-another-file}

Aspose.Words 출력 분할 문서를 다른 문서와 병합하여 새 문서를 만들 수 있습니다. 이를 문서 병합이라고 할 수 있습니다.

다음 코드 예제에서는 분할된 문서를 다른 문서와 병합하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SplitDocument-MergeSplitDocuments.cpp" >}}
