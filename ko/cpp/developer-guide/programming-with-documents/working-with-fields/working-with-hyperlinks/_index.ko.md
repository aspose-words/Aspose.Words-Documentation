---
title: 하이퍼링크 작업 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 하이퍼링크 추가 또는 수정
linktitle: 하이퍼링크 추가 또는 수정
description: "다음을 사용하여 문서에 하이퍼링크를 추가하는 방법 Aspose.Words 에 대한 C++."
type: docs
weight: 180
url: /ko/cpp/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

하이퍼링크 Microsoft Word 문서는 `HYPERLINK` 필드 그 안에 Aspose.Words,하이퍼링크는 [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/) 수업

## 하이퍼링크 삽입

사용 [InsertHyperlink](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthyperlink/) 문서에 하이퍼링크를 삽입하는 방법 이 메서드는 세 가지 매개 변수를 허용합니다:

1. 문서에 표시할 링크의 텍스트
2. 링크 대상(URL 또는 문서 내부의 책갈피 이름)
3. 만약 `URL` 문서 내의 책갈피 이름입니다

그 **InsertHyperlink** 메서드는 항상 시작과 끝에 아포스트로피를 추가합니다. URL.

{{% alert color="primary" %}}

하이퍼링크 표시 텍스트의 글꼴 서식을 명시적으로 사용하여 지정해야 합니다 `Font` 재산.

{{% /alert %}}

다음 코드 예제에서는 다음을 사용하여 하이퍼링크를 문서에 삽입하는 방법을 보여 줍니다 [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## 하이퍼링크 바꾸기 또는 수정

하이퍼링크 Microsoft Word 문서는 필드입니다. 워드 문서의 필드는 필드 시작,필드 코드,필드 구분 기호,필드 결과 및 필드 끝을 포함하는 여러 노드로 구성된 복잡한 구조입니다. 필드는 중첩되고 풍부한 콘텐츠를 포함하며 문서의 여러 단락 또는 섹션에 걸쳐 있을 수 있습니다.

그 `FieldHyperlink` 클래스는 `HYPERLINK` 필드

다음 코드 예제에서는 워드 문서에서 모든 하이퍼링크를 찾고 하이퍼링크를 변경하는 방법을 보여 줍니다 `URL` 및 표시 이름:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cpp" >}}
