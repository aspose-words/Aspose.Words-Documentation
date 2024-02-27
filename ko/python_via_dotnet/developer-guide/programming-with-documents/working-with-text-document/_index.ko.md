---
title: 텍스트 문서 작업
second_title: Python via .NET용 Aspose.Words
articleTitle: 텍스트 문서 작업
linktitle: 텍스트 문서 작업
description: "텍스트 문서로 작업하고 Python를 사용하여 해당 개체를 수정합니다."
type: docs
weight: 430
url: /ko/python-net/working-with-text-document/
---

이 기사에서는 Aspose.Words를 통해 텍스트 문서 작업에 유용한 옵션이 무엇인지 알아봅니다. 이는 사용 가능한 옵션의 전체 목록이 아니며 일부 옵션에 대한 작업 예일 뿐입니다.

## 양방향 표시 추가

[add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) 속성을 사용하여 일반 텍스트 형식으로 내보낼 때 각 BiDi 실행 전에 양방향 표시를 추가할지 여부를 지정할 수 있습니다. Aspose.Words는 텍스트의 각 양방향 [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) 앞에 유니코드 문자 'RIGHT-TO-LEFT MARK'(U+200F)를 삽입합니다. 이 옵션은 일반 텍스트 형식으로 내보낼 때 MS Word 파일 변환 대화 상자의 "양방향 표시 추가" 옵션에 해당합니다. MS Word에 아랍어나 히브리어 편집 언어가 추가된 경우에만 대화 상자에 나타납니다.

다음 코드 예제에서는 [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) 속성을 사용하는 방법을 보여줍니다. 이 속성의 기본값은 `False`입니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-AddBidiMarks.py" >}}

## TXT를 로드하는 동안 목록 항목 인식

Aspose.Words는 문서 개체 모델의 목록 번호 또는 일반 텍스트로 텍스트 파일의 목록 항목을 가져올 수 있습니다. [detect_numbering_with_whitespaces](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_numbering_with_whitespaces/) 속성을 사용하면 일반 텍스트 형식에서 문서를 가져올 때 번호가 매겨진 목록 항목을 인식하는 방법을 지정할 수 있습니다

* 이 옵션이 `True`로 설정된 경우 공백은 목록 번호 구분 기호로도 사용됩니다. 아랍어 스타일 번호 매기기(1., 1.1.2.)에 대한 목록 인식 알고리즘은 공백과 점(".") 기호를 모두 사용합니다.
* 이 옵션이 `False`로 설정된 경우 목록 인식 알고리즘은 목록 번호가 점, 오른쪽 대괄호 또는 글머리 기호 기호(예: "•", "*", "-" 또는 "o")로 끝나는 경우 목록 단락을 감지합니다.

다음 코드 예제에서는 이 속성을 사용하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DetectNumberingWithWhitespaces.py" >}}

## TXT를 로드하는 동안 선행 및 후행 공백 처리

TXT 파일을 로드하는 동안 선행 및 후행 공백을 처리하는 방법을 제어할 수 있습니다. 선행 공백은 잘라내거나 유지하거나 들여쓰기로 변환할 수 있으며 후행 공백은 잘라내거나 보존할 수 있습니다.

다음 코드 예제에서는 TXT 파일을 가져오는 동안 선행 및 후행 공백을 자르는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-HandleSpacesOptions.py" >}}

## 문서 텍스트 방향 감지

Aspose.Words는 문서의 텍스트 방향(RTL/LTR)을 감지하기 위해 [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) 클래스에 [document_direction](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/document_direction/) 속성을 제공합니다. 이 속성은 [DocumentDirection](https://reference.aspose.com/words/python-net/aspose.words.loading/documentdirection/) 열거에 제공된 문서 텍스트 방향을 설정하거나 가져옵니다. 기본값은 왼쪽에서 오른쪽입니다.

다음 코드 예제에서는 TXT 파일을 가져오는 동안 문서의 텍스트 방향을 감지하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DocumentTextDirection.py" >}}

## 출력 TXT의 머리글 및 바닥글 내보내기

출력 TXT 문서에서 머리글과 바닥글을 내보내려면 [export_headers_footers_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptionsbase/export_headers_footers_mode/) 속성을 사용할 수 있습니다. 이 속성은 머리글과 바닥글을 일반 텍스트 형식으로 내보내는 방법을 지정합니다.

다음 코드 예제에서는 머리글과 바닥글을 일반 텍스트 형식으로 내보내는 방법을 보여줍니다

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Document.docx")

options = aw.saving.TxtSaveOptions()
options.save_format = aw.SaveFormat.TEXT

# All headers and footers are placed at the very end of the output document.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.ALL_AT_END
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_A.txt", options)

# Only primary headers and footers are exported at the beginning and end of each section.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.PRIMARY_ONLY
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_B.txt", options)

# No headers and footers are exported.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.NONE
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_C.txt", options)
{{< /highlight >}}

## 출력 TXT의 목록 들여쓰기 내보내기

Aspose.Words에는 일반 텍스트 형식으로 내보내는 동안 목록 수준을 들여쓰는 방법을 지정할 수 있는 [TxtListIndentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtlistindentation/) 클래스가 도입되었습니다. [TxtSaveOption](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/)로 작업하는 동안 목록 수준 들여쓰기에 사용할 문자를 지정하고 목록 수준 하나당 들여쓰기로 사용할 문자 수를 지정하는 개수를 지정하기 위해 [list_indentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/list_indentation/) 속성이 제공됩니다. 문자 속성의 기본값은 들여쓰기가 없음을 나타내는 '\0'입니다. count 속성의 경우 기본값은 들여쓰기가 없음을 의미하는 0입니다.

### 탭 문자 사용

다음 코드 예제에서는 탭 문자를 사용하여 목록 수준을 내보내는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseTabCharacterPerLevelForListIndentation.py" >}}

### 공백 문자 사용

다음 코드 예제에서는 공백 문자를 사용하여 목록 수준을 내보내는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseSpaceCharacterPerLevelForListIndentation.py" >}}

