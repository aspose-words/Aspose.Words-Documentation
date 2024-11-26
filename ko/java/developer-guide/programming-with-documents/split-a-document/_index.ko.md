---
title: 문서 분할Java
second_title: Aspose.WordsJava
articleTitle: 문서 분할
linktitle: 문서 분할
description: "Aspose.WordsJava의 경우 하나의 문서를 제목 또는 섹션,페이지 또는 페이지 범위별로 여러 문서로 분할하는 효율적인 방법을 제공합니다."
type: docs
weight: 90
url: /ko/java/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting*또는*split a document*은 큰 문서를 더 많은 수의 작은 파일로 나누는 프로세스입니다. 파일을 분할하는 데는 여러 가지 이유가 있습니다. 예를 들어 전체 문서가 아닌 특정 문서의 일부 페이지 만 필요합니다. 또는 개인 정보 보호를 위해 문서의 일부만 다른 사용자와 공유하려는 경우 분할 기능을 사용하면 문서의 필요한 부분 만 가져 와서 필요한 작업을 수행 할 수 있습니다(예:마크 업,저장 또는 보내기).

Aspose.Words제목 또는 섹션에 의해 여러 문서로 하나의 문서를 분할하는 효율적인 방법을 제공합니다. 페이지 또는 페이지 범위별로 문서를 분할할 수도 있습니다. 이 기사에서는 두 가지 분할 옵션에 대해 설명합니다.

Aspose.Words을 사용하여 문서를 더 작은 파일로 분할하려면 다음 단계를 수행해야 합니다:

1. 지원되는 형식으로 문서를 로드합니다.
1. 문서를 분할합니다.
1. 출력 문서를 저장하십시오.

문서를 분할 한 후에는 필요한 페이지,텍스트 등으로 시작하는 모든 출력 문서를 열 수 있습니다.

{{% alert color="primary" %}}

**온라인 시도**

당신은 우리의 이 기능을 시도할 수 있습니다 [무료 온라인 문서 분배기](https://products.aspose.app/words/splitter).

{{% /alert %}}

## 다른 기준을 사용하여 문서 분할 {#split-a-document-using-different-criteria}

Aspose.Words을 사용하면 다양한 기준에 따라EPUB또는HTML문서를 장으로 분할할 수 있습니다. 이 과정에서 소스 문서의 스타일과 레이아웃은 출력 문서에 대해 보존됩니다.

[DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/)열거형을 사용하여 조건을 지정할 수 있습니다. 따라서 다음 기준 중 하나를 사용하여 문서를 장으로 나누거나 둘 이상의 기준을 함께 결합할 수 있습니다:

- 제목 단락,
- 섹션 휴식,
- 열 나누기,
- 페이지 나누기.

출력을HTML에 저장할 때Aspose.Words각 개별 장을 별도의HTML파일로 저장합니다. 결과적으로 문서는 여러HTML파일로 분할됩니다. 출력을EPUB로 저장할 때Aspose.Words사용한`DocumentSplitCriteria`값에 관계없이 결과를 단일EPUB파일에 저장합니다. 따라서EPUB문서에DocumentSplitCriteria을 사용하는 것은 독자 응용 프로그램에서 콘텐츠의 모양에만 영향을 미칩니다.콘텐츠는 장으로 나뉘어지고 문서는 더 이상 연속으로 나타나지 않습니다.

{{% alert color="primary" %}}

MHTML형식으로 저장할 때[DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/)속성을 사용하여 문서를 분할할 수 없습니다.

{{% /alert %}}

이 섹션에서는 가능한 분할 기준 중 일부만 고려합니다.

### 제목 {#split-a-document-by-headings}으로 문서 분할

제목별로 문서를 장으로 분할하려면**DocumentSplitCriteria**속성의**HeadingParagraph**값을 사용합니다.

제목 1,2 및 3 과 같은 특정 수준의 제목 단락으로 문서를 분할해야 하는 경우[DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel)속성도 사용합니다. 출력은 지정된 제목 수준으로 서식이 지정된 단락으로 나뉩니다.

다음 코드 예제에서는 제목별로 문서를 더 작은 부분으로 분할하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

이 기준에 대해Aspose.Words은 분할할 때HTML형식으로만 저장을 지원합니다.

EPUB에 저장할 때 문서는 여러 파일로 분할되지 않으며 출력 파일이 하나만 있습니다.

### {#split-a-document-by-sections}섹션으로 문서 분할

Aspose.Words또한 섹션 나누기를 사용하여 문서를 분할하고HTML에 저장할 수 있습니다. 이를 위해**SectionBreak**을**DocumentSplitCriteria**으로 사용합니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

소스 문서를 여러 출력 문서로 분할하는 또 다른 방법이 있으며Aspose.Words에서 지원하는 출력 형식을 선택할 수 있습니다.

다음 코드 예제에서는`DocumentSplitCriteria`속성을 사용하지 않고 섹션 나누기를 통해 문서를 더 작은 부분으로 분할하는 방법을 보여 줍니다.:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## 페이지 나누기 {#splitting-by-pages}

문서 페이지를 페이지,페이지 범위 또는 지정된 페이지 번호로 시작하여 분할할 수도 있습니다. 이 경우[ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int)메서드가 작업을 수행 할 수 있습니다.

이 섹션에서는[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)클래스와**ExtractPages**메서드를 사용하여 페이지별로 문서를 나누는 몇 가지 사용 사례를 설명합니다.

{{% alert color="primary" %}}

당신은 어떤 것을 사용할 수 있습니다 [Aspose.Words에서 지원하는 출력 형식](/words/java/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

페이지 수를 줄이는 동안 나타나는 많은 뉘앙스로 인해Microsoft Word레이아웃과 완전히 일치하는 것은 매우 복잡한 작업입니다. 따라서 문서의 복잡성에 따라 원본 문서와 결과 문서 레이아웃에 약간의 차이가 있을 수 있습니다.

{{% /alert %}}

### 문서 페이지를 {#split-a-document-page-by-page}페이지로 분할

Aspose.Words여러 페이지 문서 페이지를 페이지별로 분할할 수 있습니다.

다음 코드 예제에서는 문서를 분할하고 각 페이지를 별도의 문서로 저장하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### 페이지 범위 {#split-a-document-by-page-ranges}로 문서 분할

Aspose.Words여러 페이지 문서를 페이지 범위별로 분할할 수 있습니다. 하나의 파일을 다양한 페이지 범위의 여러 파일로 분할하거나 하나의 범위를 선택하고 소스 문서의이 부분 만 저장할 수 있습니다. 문서의 최대 및 최소 페이지 번호에 따라 페이지 범위를 선택할 수 있습니다.

다음 코드 예제에서는 특정 시작 및 끝 인덱스가 있는 페이지 범위별로 문서를 더 작은 부분으로 분할하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## {#callback-option-for-saving-a-document}문서를 저장하는 콜백 옵션

[DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback)속성을 사용하여 이 문서를HTML형식으로 내보낼 때Aspose.Words이 문서 파트를 저장하는 방법을 제어할 수 있습니다. 이 속성을 사용하면 출력 파일의 이름을 바꾸거나 사용자 정의 스트림으로 리디렉션 할 수도 있습니다.

이 콜백은EPUB에 저장할 때 유용하지 않습니다.왜냐하면 모든 출력 부분은 하나의 컨테이너에 저장되어야 하기 때문입니다.에퍼브 파일 따라서 스트림 리디렉션은 지원되지 않으며 컨테이너 내부의 파일 이름이 변경되기 때문에 이름 변경 효과가 표시되지 않습니다.

## 분할 문서를 다른 문서 {#merge-the-split-document-with-another-file}와 병합

Aspose.Words출력 분할 문서를 다른 문서와 병합하여 새 문서를 만들 수 있습니다. 이를 문서 병합이라고 할 수 있습니다.

다음 코드 예제에서는 분할된 문서를 다른 문서와 병합하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
