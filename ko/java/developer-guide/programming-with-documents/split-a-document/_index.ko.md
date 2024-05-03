---
title: 문서 분할 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 문서 분할
linktitle: 문서 분할
description: "Aspose.Words 제품정보 Java 하나의 문서를 머리글이나 섹션으로 여러 문서로 나누는 효율적인 방법을 제공합니다."
type: docs
weight: 90
url: /ko/java/split-a-document/
---

*Splitting* 또는 *split a document*는 큰 문서를 더 큰 파일로 끊는 과정입니다. 파일을 분할하는 다양한 이유가 있습니다. 예를 들어, 특정 문서에서 일부 페이지를 필요로하고 전체가 아닙니다. 또는 개인 정보 보호상의 이유로, 당신은 다른 사람들과 문서의 일부 부분을 공유하고 싶습니다. 분할 기능으로 문서의 필수 부품만 얻을 수 있으며, 예를 들어, 저장하거나 보내려면 필요한 작업을 수행 할 수 있습니다.

Aspose.Words 하나의 문서를 headings 또는 섹션으로 여러 문서로 나누는 효율적인 방법을 제공합니다. 페이지 또는 페이지 범위로 문서를 분할할 수도 있습니다. 분할 옵션 모두이 문서에 설명됩니다.

더 작은 파일로 문서를 분할하기 Aspose.Words, 당신은이 단계를 따르는 필요:

1. 명세 지원되는 형식의 문서를 로드합니다.
1. 명세 문서 분할.
1. 명세 출력 문서를 저장합니다.

문서를 분할 한 후 필요한 페이지, 텍스트 등을 시작하는 모든 출력 문서를 열 수 있습니다.

{{% alert color="primary" %}}

**온라인 채팅**

이 기능을 사용해 보세요. [무료 온라인 문서 분배기](https://products.aspose.app/words/splitter)·

{{% /alert %}}

## 다른 Criteria를 사용하여 문서 분할 {#split-a-document-using-different-criteria}

Aspose.Words 다양한 기준에 따라 EPUB 또는 HTML 문서를 분할 할 수 있습니다. 프로세스에서 소스 문서의 스타일과 레이아웃은 출력 문서에 보존됩니다.

표준을 지정할 수 있습니다. [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) 관련 기사 따라서 다음 표준 중 하나를 사용하여 문서에 문서를 나눌 수 있으며, 한 가지 기준을 함께 결합 할 수 있습니다

- 결선,
- 단면도 틈,
- 열 휴식,
- 페이지 휴식.

출력을 HTML로 저장할 때, Aspose.Words 각 개별 장을 별도의 HTML 파일로 저장합니다. 결과적으로 문서는 여러 HTML 파일로 나뉩니다. EPUB에 출력을 저장할 때, Aspose.Words 단일 EPUB 파일에서 결과 저장 `DocumentSplitCriteria` 사용 된 값. 그래서, EPUB 문서를 위한 DocumentSplitCriteria를 사용하여 독자 신청에 있는 그들의 내용의 외관에 영향을 미칩니다: 내용은 장으로 분할되고 문서는 더 이상 지속되지 않을 것입니다.

{{% alert color="primary" %}}

문서를 분할할 수 없습니다. [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) MHTML 형식으로 저장할 때 속성.

{{% /alert %}}

이 섹션에서는 가능한 분할 표준의 일부만 고려합니다.

### Headings에 의해 문서 분할 {#split-a-document-by-headings}

headings에 의해 문서를 분할하려면, 사용 **HeadingParagraph** 가치의 **DocumentSplitCriteria** 호텔 위치

headings 1, 2 및 3과 같은 Heading 단락의 특정 수준에 의해 문서를 분할해야하는 경우, 또한 사용 [DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel) 호텔 위치 출력은 지정된 헤드링 레벨로 포맷된 단락에 의해 나뉩니다.

다음 코드 예제는 heading에 의해 문서를 더 작은 부분으로 분할하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

이 기준은 다음과 같습니다. Aspose.Words 분할 할 때 HTML 형식으로 저장 만 지원합니다.

EPUB에 저장할 때, 문서는 여러 파일로 분할되지 않으며 하나의 출력 파일 만있을 것입니다.

### 본문 바로가기 {#split-a-document-by-sections}

Aspose.Words 문서를 분할하고 HTML로 저장하기 위해 섹션을 사용합니다. 이 목적을 위해, 사용 **SectionBreak** 으로 **DocumentSplitCriteria**::

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

소스 문서를 여러 출력 문서로 분할하는 또 다른 방법이 있으며, 지원되는 출력 형식을 선택할 수 있습니다. Aspose.Words·

다음과 같은 코드 예제는 섹션의 작은 부분으로 문서를 분할하는 방법을 보여줍니다 (사용 없이 `DocumentSplitCriteria` 재산):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## 페이지 분할 {#splitting-by-pages}

페이지에 의해 문서 페이지를 분할 할 수도 있습니다, 페이지 범위, 또는 지정된 페이지 번호로 시작. 그런 경우 [ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int) 방법은 일을 할 수 있습니다.

이 섹션은 페이지를 사용하여 문서의 여러 사용 사례를 설명 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 클래스와 **ExtractPages** 방법.

{{% alert color="primary" %}}

모든 것을 사용할 수 있습니다. [지원된 문서 체재](/words/ko/java/supported-document-formats/)·

{{% /alert %}}

{{% alert color="primary" %}}

페이지 수를 줄이면서 나타나는 많은 nuances로 인해 전체 일치는 Microsoft Word 레이아웃은 매우 복잡한 작업입니다. 따라서 문서 복잡성에 따라 원본 문서의 결과 문서 레이아웃에 약간 차이가 있을 수 있습니다.

{{% /alert %}}

### 문서 페이지 분할 {#split-a-document-page-by-page}

Aspose.Words 페이지별로 멀티 페이지 문서 페이지를 분할할 수 있습니다.

다음 코드 예제는 문서를 분할하고 각 페이지를 별도의 문서로 저장하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### 페이지 범위로 문서 분할 {#split-a-document-by-page-ranges}

Aspose.Words 페이지 범위에 의해 다중 페이지 문서를 분할 할 수 있습니다. 다양한 페이지 범위와 여러 파일로 하나의 파일을 분할하거나 하나의 범위를 선택하고 소스 문서의이 부분을 저장 할 수 있습니다. 문서의 최대 및 최소 페이지 수에 따라 페이지 범위를 선택할 수 있습니다.

다음 코드 예제는 특정 시작과 끝 인덱스를 가진 페이지 범위에 의해 더 작은 부분으로 문서를 분할하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## Callback Option 문서 저장 {#callback-option-for-saving-a-document}

당신은 사용할 수 있습니다 [DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback) 관련 기사 Aspose.Words 이 문서가 HTML 형식으로 내보낼 때 문서를 저장합니다. 이 속성은 출력 파일 또는 사용자 정의 스트림으로 리디렉션 할 수 있습니다.

이 콜백은 모든 출력 부품이 단일 컨테이너로 저장되어야하기 때문에 EPUB에 저장할 때 유용합니다. .epub 파일. 그래서, 스트림 리디렉션은 지원되지 않으며, 파일이 컨테이너 내부에 이름을 붙여 넣기 때문에 이름이 표시되지 않습니다.

## 다른 문서로 Split Document 를 씁니다. {#merge-the-split-document-with-another-file}

Aspose.Words 새 문서를 작성하기 위해 다른 문서로 출력 분할 문서를 병합 할 수 있습니다. 이것은 문서 merging 라고 할 수 있습니다.

다음 코드 예제는 다른 문서와 분할 문서를 병합하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
