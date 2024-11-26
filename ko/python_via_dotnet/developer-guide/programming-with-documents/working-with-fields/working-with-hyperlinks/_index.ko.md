---
title: 하이퍼링크 작업
second_title: Python via .NET용 Aspose.Words
articleTitle: 하이퍼링크 추가 또는 수정
linktitle: 하이퍼링크 추가 또는 수정
description: "Python를 사용하여 문서의 하이퍼링크를 추가, 교체 또는 수정합니다."
type: docs
weight: 50
url: /ko/python-net/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word 문서의 하이퍼링크는 `HYPERLINK` 필드입니다. Aspose.Words에서 하이퍼링크는 [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) 클래스를 통해 구현됩니다.

## 하이퍼링크 삽입

문서에 하이퍼링크를 삽입하려면 [insert_hyperlink](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_hyperlink/) 메서드를 사용하세요. 이 메서드는 세 가지 매개변수를 허용합니다

1. 문서에 표시될 링크의 텍스트
2. 링크 대상(URL 또는 문서 내 북마크 이름)
3. `URL`가 문서 내부의 북마크 이름인 경우 true여야 하는 부울 매개변수

**InsertHyperlink** 메서드는 항상 URL의 시작과 끝에 아포스트로피를 추가합니다.

{{% alert color="primary" %}}

`Font` 속성을 사용하여 명시적으로 하이퍼링크 표시 텍스트의 글꼴 형식을 지정해야 합니다.

{{% /alert %}}

다음 코드 예제에서는 [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)를 사용하여 문서에 하이퍼링크를 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHyperlink.py" >}}

## 하이퍼링크 바꾸기 또는 수정

Microsoft Word 문서의 하이퍼링크는 필드입니다. Word 문서의 필드는 필드 시작, 필드 코드, 필드 구분 기호, 필드 결과 및 필드 끝을 포함하는 여러 노드로 구성된 복잡한 구조입니다. 필드는 중첩될 수 있고, 풍부한 콘텐츠를 포함할 수 있으며, 문서의 여러 단락이나 섹션에 걸쳐 있을 수 있습니다

하이퍼링크를 바꾸거나 수정하려면 문서에서 하이퍼링크를 찾아 해당 텍스트, URL 또는 둘 다를 바꿔야 합니다.

다음 코드 예제에서는 Word 문서에서 모든 하이퍼링크를 찾고 해당 `URL` 및 표시 이름을 변경하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ReplaceHyperlinks.py" >}}
