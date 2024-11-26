---
title: 필드 업데이트 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 필드 업데이트
linktitle: 필드 업데이트
description: "필드 업데이트 방법 알아보기 C++. 프로그래밍 방식으로 필드 업데이트 또는 다음을 사용하여 자동 필드 업데이트 사용 C++ API."
type: docs
weight: 30
url: /ko/cpp/update-fields/
timestamp: 2024-01-27-14-07-04
---

일반적으로,필드는 Microsoft Word 이미 최신 값이 포함되어 있습니다. 예를 들어 필드가 수식 또는 페이지 번호인 경우 지정된 문서 버전에 대한 올바른 계산 값이 포함됩니다. 그러나 두 문서를 병합하거나 데이터로 채우는 것과 같은 필드로 문서를 생성하거나 수정하는 응용 프로그램이 있는 경우 문서가 유용하도록 모든 필드를 업데이트해야 합니다.

## 필드 업데이트 방법

문서를 로드할 때, Aspose.Words 의 행동을 모방 Microsoft Word 자동으로 필드를 업데이트 할 수있는 옵션이 꺼져 있습니다. 그 행동은 다음과 같이 요약될 수 있습니다.:

- 문서를 열거나 저장할 때 필드는 그대로 유지됩니다
- 문서의 모든 필드(예:다시 작성)를 명시적으로 업데이트할 수 있습니다 `TOC`,당신이 필요로 할 때
- 렌더링 할 때 PDF 또는 XPS 머리글/바닥글의 페이지 번호 매기기와 관련된 필드가 업데이트됩니다
- 실행할 때 Mail Merge 모든 필드는 자동으로 업데이트됩니다

### 프로그래밍 방식으로 필드 업데이트

전체 문서의 필드를 명시적으로 업데이트하려면 [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/) 방법 문서의 일부에 포함된 필드를 업데이트하려면 [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) 개체 및 호출 [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/range/updatefields/) 방법 그 안에 Aspose.Words,당신은 얻을 수 있습니다 **Range** 문서 트리의 모든 노드(예: [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) 그 밖의 를 사용하여 [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/) 재산.당신은 호출하여 단일 필드의 결과를 업데이트 할 수 있습니다 [Update](https://reference.aspose.com/words/cpp/aspose.words.fields/field/update/) 방법

### 렌더링 중 페이지 관련 필드 자동 업데이트

문서를 고정 페이지 형식으로 변환 할 때(예: PDF 또는 XPS,그럼 Aspose.Words 페이지 레이아웃 관련 필드를 자동으로 업데이트합니다 `PAGE`, `PAGEREF` 문서의 머리글/바닥글에 있습니다. 이 동작은 다음과 같은 동작을 모방합니다 Microsoft Word 문서를 인쇄 할 때.

문서의 다른 모든 필드를 업데이트하려면 다음을 호출해야 합니다 [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/) 문서를 렌더링하기 전에.

다음 코드 예제에서는 문서를 렌더링하기 전에 모든 필드를 업데이트하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cpp" >}}

### 동안 자동 필드 업데이트 Mail Merge

당신이 실행할 때 mail merge,문서의 모든 필드가 자동으로 업데이트됩니다. 이 때문에 Mail Merge 필드 업데이트의 경우입니다. 이 프로그램은 Mail Merge 데이터 소스에서 값을 가져와 필드에 삽입하는 결과를 업데이트해야 합니다. 논리는 물론 더 복잡하다,예를 들어,때 문서의 끝/mail merge 영역에 도달했지만 병합해야 할 추가 데이터가 있습니다.그러면 영역을 복제하고 새로운 필드 세트를 업데이트해야합니다.

## 업데이트 LastSavedTime 저장하기 전에 속성

당신은 사용할 수 있습니다 [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatelastsavedtimeproperty/) 속성 해당 기본 제공 문서 속성을 업데이트할지 여부 [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) 문서를 저장할 때.

다음 코드 예제에서는 이 속성을 업데이트하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cpp" >}}


