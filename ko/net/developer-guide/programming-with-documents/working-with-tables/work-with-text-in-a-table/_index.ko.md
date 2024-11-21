---
title: 표의 텍스트 작업
second_title: .NET용 Aspose.Words
articleTitle: 표의 텍스트 작업
linktitle: 표의 텍스트 작업
description: "C#의 테이블에 있는 텍스트를 바꿉니다. C#를 사용하여 테이블이나 셀에서 일반 텍스트를 추출합니다."
type: docs
weight: 60
url: /ko/net/work-with-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

이전 기사에서 언급했듯이 표에는 일반적으로 일반 텍스트가 포함되어 있지만 이미지나 다른 표와 같은 다른 콘텐츠도 표 셀에 배치될 수 있습니다.

테이블에 텍스트나 기타 콘텐츠를 추가하는 작업은 [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) 클래스의 적절한 메서드를 사용하여 수행되며 **"테이블 만들기"** 문서에 설명되어 있습니다. 이 기사에서는 이미 존재하는 테이블에서 텍스트로 작업하는 방법에 대해 설명합니다.

## 표의 텍스트 바꾸기

Aspose.Words의 다른 노드와 마찬가지로 테이블은 [Range](https://reference.aspose.com/words/net/aspose.words/range/) 개체에 액세스할 수 있습니다. 표 범위 개체를 사용하면 표의 텍스트를 바꿀 수 있습니다.

현재 교체 시 특수문자를 사용하는 기능이 지원되므로 기존 텍스트를 여러 단락 텍스트로 교체하는 것이 가능합니다. 이렇게 하려면 해당 [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/) 메서드에 설명된 특수 메타 문자를 사용해야 합니다.

{{% alert color="primary" %}}

일반적으로 텍스트 바꾸기는 셀 수준(셀별) 또는 단락 수준에서 수행되어야 합니다.

{{% /alert %}}

다음 코드 예제에서는 전체 테이블의 셀에 있는 텍스트 문자열의 모든 인스턴스를 바꾸는 방법을 보여줍니다

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "replace-text.cs" >}}

## 테이블이나 셀에서 일반 텍스트 추출

**Range** 개체를 사용하면 전체 테이블 범위에 대한 메서드를 호출하고 테이블을 일반 텍스트로 추출할 수도 있습니다. 이렇게 하려면 [Text](https://reference.aspose.com/words/net/aspose.words/range/text/) 속성을 사용하세요

다음 코드 예제에서는 테이블의 텍스트 범위를 인쇄하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "extract-text.cs" >}}

개별 테이블 셀에서만 콘텐츠를 추출하는 데에도 동일한 기술이 사용됩니다.

다음 코드 예제에서는 행 및 테이블 요소의 텍스트 범위를 인쇄하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "print-text-range-row-and-table.cs" >}}

## 대체 테이블 텍스트 작업

Microsoft Word 테이블에는 테이블에 포함된 정보의 대체 텍스트 표현을 제공하는 `table title` 및 `table description`이 있습니다.

Aspose.Words에서는 [Title](https://reference.aspose.com/words/net/aspose.words.tables/table/title/) 및 [Description](https://reference.aspose.com/words/net/aspose.words.tables/table/description/) 속성을 사용하여 테이블 제목과 설명을 추가할 수도 있습니다. 이러한 속성은 ISO/IEC 29500을 준수하는 DOCX 문서에 의미가 있습니다. ISO/IEC 29500 이전 형식으로 저장하는 경우 이러한 속성은 무시됩니다.

다음 코드 예제에서는 테이블의 제목 및 설명 속성을 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "table-title-and-description.cs" >}}
