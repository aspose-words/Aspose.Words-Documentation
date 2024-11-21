---
title: Python에서 문서 분할
second_title: Python via .NET용 Aspose.Words
articleTitle: 문서 분할
linktitle: 문서 분할
description: "Python를 사용하여 문서를 여러 파일로 분할합니다. 분할 기능을 사용하면 제목이나 섹션은 물론 페이지나 페이지 범위별로 문서를 효과적으로 분할할 수 있습니다."
type: docs
weight: 90
url: /ko/python-net/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* 또는 *문서 분할*은 큰 문서를 더 많은 수의 작은 파일로 나누는 프로세스입니다. 파일을 분할하는 데에는 여러 가지 이유가 있습니다. 예를 들어 전체 문서가 아닌 특정 문서의 일부 페이지만 필요합니다. 또는 개인 정보 보호를 위해 문서의 일부만 다른 사람과 공유하고 싶습니다. 분할 기능을 사용하면 문서에서 필요한 부분만 가져와 마크업, 저장, 전송 등 필요한 작업을 수행할 수 있습니다.

Aspose.Words는 하나의 문서를 제목이나 섹션별로 여러 문서로 분할하는 효율적인 방법을 제공합니다. 페이지 또는 페이지 범위별로 문서를 분할할 수도 있습니다. 이 문서에서는 두 가지 분할 옵션을 모두 설명합니다.

Aspose.Words를 사용하여 문서를 더 작은 파일로 분할하려면 다음 단계를 따라야 합니다

1. 지원되는 형식으로 문서를 로드합니다.
1. 문서를 분할합니다.
1. 출력 문서를 저장합니다.

문서를 분할한 후에는 필요한 페이지, 텍스트 등으로 시작되는 모든 출력 문서를 열 수 있습니다.

{{% alert color="primary" %}}

**온라인으로 사용해 보세요**

[무료 온라인 문서 분할기](https://products.aspose.app/words/splitter)를 통해 이 기능을 사용해 볼 수 있습니다.

{{% /alert %}}

## 다른 기준 {#split-a-document-using-different-criteria}를 사용하여 문서 분할

Aspose.Words를 사용하면 EPUB 또는 HTML 문서를 다양한 기준에 따라 여러 장으로 나눌 수 있습니다. 이 과정에서 소스 문서의 스타일과 레이아웃은 출력 문서에 대해 유지됩니다.

[DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) 열거형을 사용하여 기준을 지정할 수 있습니다. 따라서 다음 기준 중 하나를 사용하여 문서를 여러 장으로 나누거나 두 개 이상의 기준을 함께 결합할 수 있습니다

- 제목 단락,
- 섹션 나누기,
- 열 나누기,
- 페이지 나누기.

출력을 HTML로 저장할 때 Aspose.Words는 각 개별 장을 별도의 HTML 파일로 저장합니다. 결과적으로 문서는 여러 HTML 파일로 분할됩니다. 출력을 EPUB에 저장할 때 Aspose.Words는 사용한 [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) 값에 관계없이 결과를 단일 EPUB 파일에 저장합니다. 따라서 EPUB 문서에 [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/)를 사용하면 리더 애플리케이션의 콘텐츠 모양에만 영향을 미칩니다. 콘텐츠는 여러 장으로 나누어지고 문서는 더 이상 연속적으로 표시되지 않습니다.

{{% alert color="primary" %}}

MHTML 형식으로 저장할 때 [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) 속성을 사용하여 문서를 분할할 수 없습니다.

{{% /alert %}}

이 섹션에서는 가능한 분할 기준 중 일부만 고려합니다.

### {#split-a-document-by-headings} 제목으로 문서 분할

문서를 제목별로 장으로 나누려면 [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) 속성의 [HEADING_PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/#HEADING_PARAGRAPH) 값을 사용하세요.

제목 1, 2, 3과 같은 특정 수준의 제목 단락으로 문서를 분할해야 하는 경우 [document_split_heading_level](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_heading_level/) 속성도 사용하세요. 출력은 지정된 제목 수준으로 형식이 지정된 단락으로 나뉩니다.

다음 코드 예제에서는 제목을 기준으로 문서를 더 작은 부분으로 분할하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentByHeadingsHtml.py" >}}

이 기준에 따라 Aspose.Words는 분할 시 HTML 형식으로의 저장만 지원합니다.

EPUB에 저장할 때 문서가 여러 파일로 분할되지 않고 출력 파일이 하나만 있게 됩니다.

### 섹션 {#split-a-document-by-sections}로 문서 분할

Aspose.Words를 사용하면 섹션 나누기를 사용하여 문서를 분할하고 HTML로 저장할 수도 있습니다. 이를 위해 [SECTION_BREAK](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/#section_break)를 [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/)로 사용합니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentBySectionsHtml.py" >}}

소스 문서를 여러 출력 문서로 분할하는 또 다른 방법이 있으며 Aspose.Words에서 지원하는 출력 형식을 선택할 수 있습니다.

다음 코드 예제에서는 [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) 속성을 사용하지 않고 섹션 나누기로 문서를 더 작은 부분으로 분할하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentBySections.py" >}}

## 페이지별 분할 {#splitting-by-pages}

문서를 페이지별로, 페이지 범위별로 분할하거나 지정된 페이지 번호부터 시작할 수도 있습니다. 이러한 경우 [extract_pages](https://reference.aspose.com/words/python-net/aspose.words/document/extract_pages/) 방법이 해당 작업을 수행할 수 있습니다.

이 섹션에서는 [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) 클래스와 [extract_pages](https://reference.aspose.com/words/python-net/aspose.words/document/extract_pages/) 메서드를 사용하여 문서를 페이지별로 나누는 여러 사용 사례를 설명합니다.

{{% alert color="primary" %}}

모든 [지원되는 문서 형식](/words/ko/python-net/supported-document-formats/)를 사용할 수 있습니다.

{{% /alert %}}

{{% alert color="primary" %}}

페이지 수를 줄이는 동안 나타나는 많은 뉘앙스로 인해 Microsoft Word 레이아웃과 완전히 일치하는 것은 상당히 복잡한 작업입니다. 따라서 문서의 복잡성에 따라 결과 문서 레이아웃이 원본 문서와 약간 다를 수 있습니다.

{{% /alert %}}

### 문서 페이지를 페이지별로 분할 {#split-a-document-page-by-page}

Aspose.Words를 사용하면 여러 페이지로 구성된 문서를 페이지별로 분할할 수 있습니다.

다음 코드 예제에서는 문서를 나누고 각 페이지를 별도의 문서로 저장하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentPageByPage.py" >}}

### 페이지 범위 {#split-a-document-by-page-ranges}로 문서 분할

Aspose.Words를 사용하면 여러 페이지로 구성된 문서를 페이지 범위별로 분할할 수 있습니다. 하나의 파일을 다양한 페이지 범위의 여러 파일로 분할하거나 하나의 범위를 선택하고 소스 문서의 이 부분만 저장할 수 있습니다. 문서의 최대 및 최소 페이지 수에 따라 페이지 범위를 선택할 수 있습니다.

다음 코드 예제에서는 특정 시작 및 끝 인덱스를 사용하여 페이지 범위별로 문서를 더 작은 부분으로 분할하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentByPageRange.py" >}}

## 분할 문서를 다른 파일 {#merge-the-split-document-with-another-file}와 병합

Aspose.Words를 사용하면 출력된 분할 문서를 다른 문서와 병합하여 새 문서를 만들 수 있습니다. 이를 문서 병합이라고 합니다.

다음 코드 예제에서는 분할 문서를 다른 문서와 병합하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-MergeSplitDocuments.py" >}}
