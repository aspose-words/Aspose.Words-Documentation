---
title: 테이블의 텍스트 작업
second_title: Aspose.WordsJava
articleTitle: 테이블의 텍스트 작업
linktitle: 테이블의 텍스트 작업
description: "Java에서 테이블의 텍스트를 바꿉니다. Java을 사용하여 테이블 또는 셀에서 일반 텍스트를 추출합니다."
type: docs
weight: 60
url: /ko/java/extract-text-from-and-replace-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

이전 기사에서 언급했듯이 테이블에는 일반적으로 일반 텍스트가 포함되어 있지만 이미지 또는 다른 테이블과 같은 다른 내용은 테이블 셀에 배치 할 수 있습니다.

테이블에 텍스트 또는 기타 콘텐츠를 추가하는 것은[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)클래스의 적절한 방법을 사용하여 수행되며**"Create a Table"**문서에서 설명합니다. 이 기사에서는 이미 존재하는 테이블의 텍스트 작업 방법에 대해 이야기 할 것입니다.

## 표에서 텍스트 바꾸기

이 테이블은Aspose.Words의 다른 노드와 마찬가지로[Range](https://reference.aspose.com/words/java/com.aspose.words/range/)개체에 액세스할 수 있습니다. 테이블 범위 개체를 사용하여 테이블의 텍스트를 바꿀 수 있습니다.

현재 대체 할 때 특수 문자를 사용하는 기능이 지원되므로 기존 텍스트를 여러 단락 텍스트로 대체 할 수 있습니다. 이렇게 하려면 해당[Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String)메서드에 설명된 특수 메타 문자를 사용해야 합니다.

{{% alert color="primary" %}}

일반적으로 텍스트 대체는 셀 수준(셀 당)또는 단락 수준에서 수행해야합니다.

{{% /alert %}}

다음 코드 예제에서는 전체 테이블의 셀에 있는 텍스트 문자열의 모든 인스턴스를 대체하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "replace-text.java" >}}

## 테이블에서 일반 텍스트 추출

**Range**개체를 사용하여 전체 테이블 범위에서 메서드를 호출하고 일반 텍스트로 테이블을 추출할 수도 있습니다. 이렇게 하려면[Text](https://reference.aspose.com/words/java/com.aspose.words/range/#Text)속성을 사용합니다.

다음 코드 예제에서는 테이블의 텍스트 범위를 인쇄하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "extract-text.java" >}}

{{% alert color="primary" %}}

동일한 기술은 개별 테이블 셀에서만 콘텐츠를 추출하는 데 사용됩니다.

다음 코드 예제에서는 행 및 테이블 요소의 텍스트 범위를 인쇄하는 방법을 보여 줍니다:

{{% /alert %}}

다음 코드 예제에서는 행 및 테이블 요소의 텍스트 범위를 인쇄하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "print-text-range-row-and-table.java" >}}

## 대체 테이블 텍스트 작업

Microsoft Word테이블에는`table title`와`table description`이 있는데,이는 테이블에 포함된 정보의 대체 텍스트 표현을 제공합니다.

Aspose.Words에서[Title](https://reference.aspose.com/words/java/com.aspose.words/table/#getTitle)및[Description](https://reference.aspose.com/words/java/com.aspose.words/table/#getDescription)속성을 사용하여 테이블 제목과 설명을 추가할 수도 있습니다. 이러한 속성은ISO/IEC29500 을 준수하는DOCX문서에 의미가 있습니다. ISO/IEC29500 보다 이전 형식으로 저장할 때 이러한 속성은 무시됩니다.

다음 코드 예제에서는 테이블의 제목 및 설명 속성을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "table-title-and-description.java" >}}
