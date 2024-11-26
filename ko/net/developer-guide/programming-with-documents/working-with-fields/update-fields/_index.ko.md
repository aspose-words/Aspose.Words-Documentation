---
title: 필드 C# 업데이트
second_title: .NET용 Aspose.Words
articleTitle: 필드 업데이트
linktitle: 필드 업데이트
description: "C#에서 필드를 업데이트하는 방법을 알아보세요. 프로그래밍 방식으로 필드를 업데이트하거나 .NET API을 사용하여 자동 필드 업데이트를 사용합니다."
type: docs
weight: 30
url: /ko/net/update-fields/
timestamp: 2024-01-27-14-07-04
---

일반적으로 Microsoft Word에 삽입된 필드에는 이미 최신 값이 포함되어 있습니다. 예를 들어 필드가 수식이나 페이지 번호인 경우 해당 문서 버전에 대해 올바르게 계산된 값이 포함됩니다. 그러나 두 문서를 병합하거나 데이터로 채우는 등의 필드가 있는 문서를 생성하거나 수정하는 애플리케이션이 있는 경우 이상적으로는 문서가 유용하도록 모든 필드를 업데이트해야 합니다.

## 필드를 업데이트하는 방법

문서가 로드되면 Aspose.Words는 필드를 자동으로 업데이트하는 옵션이 꺼진 상태에서 Microsoft Word의 동작을 모방합니다. 동작은 다음과 같이 요약될 수 있습니다

- 문서를 열거나 저장할 때 필드는 그대로 유지됩니다
- 필요한 경우 문서의 모든 필드를 명시적으로 업데이트할 수 있습니다(예: `TOC` 다시 작성)
- PDF 또는 XPS로 인쇄/렌더링할 때 머리글/바닥글의 페이지 번호 매기기와 관련된 필드가 업데이트됩니다
- mail merge를 실행하면 모든 필드가 자동으로 업데이트됩니다

### 프로그래밍 방식으로 필드 업데이트

전체 문서의 필드를 명시적으로 업데이트하려면 [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) 메서드를 호출하면 됩니다. 문서의 일부에 포함된 필드를 업데이트하려면 [Range](https://reference.aspose.com/words/net/aspose.words/range/) 객체를 얻고 [UpdateFields](https://reference.aspose.com/words/net/aspose.words/range/updatefields/) 메서드를 호출하세요. Aspose.Words에서는 [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/) 속성을 사용하여 [Section](https://reference.aspose.com/words/net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) 등과 같은 문서 트리의 모든 노드에 대한 **Range**을 얻을 수 있습니다. [Update](https://reference.aspose.com/words/net/aspose.words.fields/field/update/) 메소드를 호출하여 단일 필드의 결과를 업데이트할 수 있습니다.

### 렌더링 중 페이지 관련 필드 자동 업데이트

문서를 고정 페이지 형식(예: PDF 또는 XPS)으로 변환하면 Aspose.Words는 문서의 머리글/바닥글에 있는 페이지 레이아웃 관련 필드 `PAGE`, `PAGEREF`를 자동으로 업데이트합니다. 이 동작은 문서를 인쇄할 때 Microsoft Word의 동작을 모방합니다.

문서의 다른 모든 필드를 업데이트하려면 문서를 렌더링하기 전에 [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/)를 호출해야 합니다.

다음 코드 예제에서는 문서를 렌더링하기 전에 모든 필드를 업데이트하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cs" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}

### Mail Merge 중 자동 필드 업데이트

mail merge를 실행하면 문서의 모든 필드가 자동으로 업데이트됩니다. mail merge는 현장 업데이트의 경우이기 때문입니다. 프로그램은 Mail Merge 필드를 발견하고 결과를 업데이트해야 하며, 여기에는 데이터 소스에서 값을 가져와 필드에 삽입하는 작업이 포함됩니다. 물론 논리는 더 복잡합니다. 예를 들어 문서/mail merge 영역의 끝에 도달했지만 아직 병합할 추가 데이터가 있는 경우 해당 영역을 복제하고 새 필드 세트를 업데이트해야 합니다.

## 더티 속성이 있는 필드 업데이트

w:dirty는 문서를 열 때 지정한 필드만 새로 고치는 필드 수준 속성입니다. 다음에 문서를 열 때 이 필드만 새로 고치도록 MS Word에 지시합니다. [UpdateDirtyFields](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/updatedirtyfields/) 속성을 사용하여 더티 속성으로 필드를 업데이트할지 여부를 지정할 수 있습니다. **UpdateDirtyFields** 값을 *true* 로 설정하면 문서 로드 시 [Field.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/field/isdirty/) 또는 [FieldChar.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/isdirty/) 속성에 대한 *true* 값이 있는 모든 필드가 업데이트됩니다.

다음 코드 예시에서는 dirty 속성이 있는 필드를 업데이트하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadOptionsUpdateDirtyFields.cs" >}}

## 저장하기 전에 LastSavedTime 속성 업데이트

문서를 저장할 때 해당 내장 문서 속성인 [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/)를 업데이트할지 여부를 [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) 속성을 사용할 수 있습니다.

다음 코드 예시에서는 이 속성을 업데이트하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cs" >}}
