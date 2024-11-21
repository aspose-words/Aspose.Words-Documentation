---
title: 문서 비교 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 문서 비교
linktitle: 문서 비교
type: docs
description: "지원되는 형식의 두 개의 문서를 비교하고 콘텐츠 변경을 보여줍니다. 사용할 때 고급 옵션을 적용할 수 있습니다. Java·"
weight: 60
url: /ko/java/compare-documents/
timestamp: 2024-01-27-14-07-04
---

문서를 비교하면 두 문서 사이의 변화를 식별하고 개정으로 변경 사항을 포함합니다. 이 프로세스는 특정 문서의 버전을 포함하여 두 개의 문서를 비교하고, 두 문서의 변경은 첫 번째 문서의 개정으로 표시됩니다.

비교 방법은 문자 수준 또는 단어 수준에서 단어를 비교하여 달성됩니다. 단어가 적어도 하나의 문자의 변화를 포함하면 결과의 차이는 전체 단어의 변화로 표시됩니다. 비교의이 과정은 법률 및 금융 산업의 일반적인 작업입니다.

문서의 차이를 수동으로 검색하는 대신 또는 다른 버전의 사이에서, 당신은 사용할 수 있습니다 Aspose.Words 서류를 비교하고 형식화, 헤더/footer, 테이블 등의 내용 변경을 얻고 있습니다.

이 문서는 문서와 고급 비교 속성을 지정하는 방법을 설명합니다.

{{% alert color="primary" %}}

**온라인 채팅**

온라인으로 두 개의 문서를 비교할 수 있습니다. [온라인 문서 비교](https://products.aspose.app/words/comparison) 도구.

비교 방법, 아래에 설명 된, 이 도구에 사용되어 동일한 결과를 얻기 위해. 따라서 온라인 비교 도구를 사용하거나 비교 방법을 사용하여 동일한 결과를 얻을 것이다 Aspose.Words·

{{% /alert %}}

## 제한 및 지원 파일 형식 {#limitations-and-supported-file-formats}

문서는 매우 복잡한 기능입니다. 모든 차이를 인식 할 필요가있는 내용 조합의 다양한 부분이 있습니다. 이 복잡성의 이유 때문에 Aspose.Words 같은 비교 결과를 얻는 것을 목표로 Microsoft Word 비교 알고리즘.

비교되는 두 문서의 일반적인 제한은 이 제한이 존재함에 따라 compare 메서드를 호출하기 전에 개정이 없다는 것입니다. Microsoft Word·

{{% alert color="primary" %}}

두 개의 문서를 비교할 수 있습니다. [지원된 문서 체재](/words/ko/java/supported-document-formats/)· 기본적으로 문서 객체를 비교할 수 있으며 특정 형식이 없는 스크래치에서 개체를 만들 수 있습니다.

{{% /alert %}}

## 2개의 문서 비교 {#compare-two-documents}

문서를 비교할 때, 이전의 후자 문서의 차이는 이전의 개정으로 표시됩니다. 문서를 수정할 때, 각 편집은 비교 방법을 실행한 후 자체 개정이 있을 것입니다.

Aspose.Words 문서의 차이를 식별할 수 있습니다. [Compare](https://reference.aspose.com/words/java/com.aspose.words/document/#compare-com.aspose.words.Document-java.lang.String-java.util.Date) 방법 – 이것은 이와 유사 Microsoft Word 문서 비교 기능. 문서 또는 문서 버전을 확인하고 글꼴 변경, 간격 변경, 단어 및 단락의 추가와 같은 변경을 포함하여 차이와 변경을 찾을 수 있습니다.

비교의 결과로, 문서는 동등하거나 동등하지 않기로 결정될 수 있습니다. 용어 "equal" 문서는 비교 방법이 개정으로 변경할 수 없다는 것을 의미한다. 이것은 문서 텍스트와 텍스트 형식 모두 동일하다는 것을 의미합니다. 그러나 문서의 다른 차이점이있을 수 있습니다. 예를 들어, Microsoft Word 스타일에 대한 유일한 형식의 개정을 지원하며 스타일 삽입 / 삭제를 표시 할 수 없습니다. 그래서 문서는 스타일의 다른 세트를 가질 수, 그리고 **Compare** 아직 개정이 없습니다.

다음 코드 예제는 두 개의 문서가 동일하거나 그렇지 않다면 확인 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-wordDocumentsAreEqual.java" >}}

다음 코드 예제는 단순히 적용하는 방법을 보여줍니다 `Compare` 2개의 문서에 방법:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-caseWhenDocumentHasRevisions.java" >}}

## 고급 비교 옵션 {#specify-advanced-comparing-properties}

많은 다른 속성이 있습니다. [CompareOptions](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/) 문서를 비교할 때 적용할 수 있는 클래스.

예를 들어, Aspose.Words 기존 문서의 특정 유형의 개체에 대한 비교 작업 중 변경을 무시할 수 있습니다. 객체 유형에 적합한 속성을 선택할 수 있습니다. [IgnoreHeadersAndFooters](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreHeadersAndFooters), [IgnoreFormatting](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreFormatting), [IgnoreComments](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreComments), 그리고 다른 사람들이 그들을 설정하여 "true·

또한, Aspose.Words 제품정보 [Granularity](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getGranularity) 문자 또는 단어로 변경할 수 있는지 지정할 수 있는 속성.

또 다른 일반적인 속성은 비교 변경을 보여주는 문서에서 선택입니다. 예를 들어, "Compare 문서 대화 상자" Microsoft Word 옵션이 있습니다 "Show changes in" – 이것은 또한 비교 결과에 영향을줍니다. Aspose.Words 제품정보 [Target](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getTarget) 이 목적을 제공 하는 재산.

다음 코드 예제는 고급 비교 속성을 설정하는 방법을 보여줍니다:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-AdvancedComparingProperties.java" >}}
