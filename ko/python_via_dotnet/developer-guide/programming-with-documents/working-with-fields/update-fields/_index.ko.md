---
title: 필드 Python 업데이트
second_title: Python via .NET용 Aspose.Words
articleTitle: 필드 업데이트
linktitle: 필드 업데이트
description: "Python의 다른 옵션을 사용하고 다양한 방법으로 문서의 필드를 업데이트합니다."
type: docs
weight: 30
url: /ko/python-net/update-fields/
---

일반적으로 Microsoft Word에 삽입된 필드에는 이미 최신 값이 포함되어 있습니다. 예를 들어 필드가 수식이나 페이지 번호인 경우 해당 문서 버전에 대해 올바르게 계산된 값이 포함됩니다. 그러나 두 문서를 병합하거나 데이터로 채우는 등 필드가 있는 문서를 생성하거나 수정하는 애플리케이션이 있는 경우 문서가 유용하려면 이상적으로 모든 필드를 업데이트해야 합니다.

## 필드를 업데이트하는 방법

문서가 로드되면 Aspose.Words는 필드를 자동으로 업데이트하는 옵션이 꺼진 상태에서 Microsoft Word의 동작을 모방합니다. 그 행동은 다음과 같이 요약될 수 있습니다:

- 문서를 열거나 저장할 때 필드는 그대로 유지됩니다
- 필요할 때 문서의 모든 필드를 명시적으로 업데이트할 수 있습니다(예: TOC 다시 작성)
- PDF 또는 XPS로 인쇄/렌더링할 때 머리글/바닥글의 페이지 번호 매기기와 관련된 필드가 업데이트됩니다
- mail merge를 실행하면 모든 필드가 자동으로 업데이트됩니다

### 프로그래밍 방식으로 필드 업데이트

전체 문서의 필드를 명시적으로 업데이트하려면 [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/)를 호출하면 됩니다. 문서의 일부에 포함된 필드를 업데이트하려면 [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) 객체를 얻고 [update_fields](https://reference.aspose.com/words/python-net/aspose.words/range/update_fields/) 메서드를 호출하세요. Aspose.Words에서는 [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/) 속성을 사용하여 [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) 등과 같은 문서 트리의 모든 노드에 대한 **Range**을 얻을 수 있습니다. [update](https://reference.aspose.com/words/python-net/aspose.words.fields/field/update/) 메서드를 호출하여 단일 필드의 결과를 업데이트할 수 있습니다.

### 렌더링 중 페이지 관련 필드 자동 업데이트

문서를 고정 페이지 형식(예: PDF 또는 XPS)으로 변환하면 Aspose.Words는 문서의 머리글/바닥글에 있는 페이지 레이아웃 관련 필드 `PAGE`, `PAGEREF`를 자동으로 업데이트합니다. 이 동작은 문서를 인쇄할 때 Microsoft Word의 동작을 모방합니다.

문서의 다른 모든 필드를 업데이트하려면 문서를 렌더링하기 전에 [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/)를 호출해야 합니다.

다음 코드 예제에서는 문서를 렌더링하기 전에 모든 필드를 업데이트하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-UpdateDocFields.py" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}

### Mail Merge 중 자동 필드 업데이트

mail merge를 실행하면 문서의 모든 필드가 자동으로 업데이트됩니다. mail merge는 현장 업데이트의 경우이기 때문입니다. 프로그램은 mail merge 필드를 발견하고 결과를 업데이트해야 하며, 여기에는 데이터 소스에서 값을 가져와 필드에 삽입하는 작업이 포함됩니다. 물론 논리는 더 복잡합니다. 예를 들어 문서/mail merge 영역의 끝에 도달했지만 아직 병합할 추가 데이터가 있는 경우 해당 영역을 복제하고 새 필드 세트를 업데이트해야 합니다.

## 더티 속성이 있는 필드 업데이트

w:dirty는 문서를 열 때 지정한 필드만 새로 고치는 필드 수준 속성입니다. 다음에 문서를 열 때 이 필드만 새로 고치도록 MS Word에 지시합니다. [update_dirty_fields](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/update_dirty_fields/) 속성을 사용하여 더티 속성으로 필드를 업데이트할지 여부를 지정할 수 있습니다. **update_dirty_fields** 값을 `True`로 설정하면 문서 로드 시 [Field.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/field/is_dirty/) 또는 [FieldChar.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/is_dirty/) 속성에 대한 `True` 값이 있는 모든 필드가 업데이트됩니다.

다음 코드 예시에서는 dirty 속성이 있는 필드를 업데이트하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UpdateDirtyFields.py" >}}

## 저장하기 전에 LastSavedTime 속성 업데이트

문서를 저장할 때 해당 내장 문서 속성 [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/)를 업데이트할지 여부를 [SaveOptions.update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) 속성을 사용할 수 있습니다.

다음 코드 예시에서는 이 속성을 업데이트하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

