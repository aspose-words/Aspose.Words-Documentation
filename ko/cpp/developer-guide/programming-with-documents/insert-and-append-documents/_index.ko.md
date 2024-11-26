---
title: 문서 삽입 및 추가 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 문서 삽입 및 추가
linktitle: 문서 삽입 및 추가
description: "문서를 하나로 결합:찾기 및 바꾸기,병합 필드,책갈피 또는 단순히 문서 끝을 사용하여 문서를 새 또는 기존 문서에 삽입하거나 추가합니다."
type: docs
weight: 80
url: /ko/cpp/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

때로는 여러 문서를 하나로 결합 할 필요가 있습니다. 이 작업을 수동으로 수행하거나 다음을 사용할 수 있습니다 Aspose.Words 기능을 삽입 또는 추가합니다.

삽입 작업을 사용하면 이전에 만든 문서의 내용을 새 문서 또는 기존 문서에 삽입 할 수 있습니다.

추가 기능을 사용하면 다른 문서의 끝 부분에만 문서를 추가할 수 있습니다.

이 문서에서는 다른 방법으로 문서를 삽입하거나 다른 문서에 추가하는 방법과 문서를 삽입하거나 추가하는 동안 적용할 수 있는 공통 속성에 대해 설명합니다.

## 문서 삽입

위에서 언급했듯이, Aspose.Words 문서는 노드 트리로 표현되며,한 문서를 다른 문서에 삽입하는 작업은 첫 번째 문서 트리에서 두 번째 문서 트리로 노드를 복사하는 것입니다.

당신은 다른 방법으로 다양한 위치에 문서를 삽입 할 수 있습니다. 예를 들어 바꾸기 작업,병합 작업 중 병합 필드 또는 책갈피를 통해 문서를 삽입할 수 있습니다.

당신은 또한 사용할 수 있습니다 [InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/) 에 문서를 삽입하는 것과 유사한 방법 Microsoft Word,이전 가져오기 없이 현재 커서 위치에 전체 문서를 삽입합니다.

다음 코드 예제에서는 다음을 사용하여 문서를 삽입하는 방법을 보여 줍니다 `InsertDocument` 방법:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-with-builder.h" >}}

다음 하위 섹션에서는 한 문서를 다른 문서에 삽입할 수 있는 옵션에 대해 설명합니다.

### 찾기 및 바꾸기 작업 중에 문서 삽입 {#insert-a-document-during-find-and-replace-operation}

찾기 및 바꾸기 작업을 수행하는 동안 문서를 삽입 할 수 있습니다. 예를 들어,문서는 텍스트와 단락을 포함 할 수 있습니다[INTRODUCTION[그리고]CONCLUSION]. 그러나 최종 문서에서는 그 단락을 다른 외부 문서에서 얻은 내용으로 대체해야합니다. 이를 위해 바꾸기 이벤트에 대한 처리기를 만들어야 합니다.

다음 코드 예제에서는 나중에 삽입 프로세스에서 사용할 교체 이벤트에 대한 처리기를 만드는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace-handler.h" >}}

다음 코드 예제에서는 찾기 및 바꾸기 작업 중에 한 문서의 내용을 다른 문서에 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace.h" >}}

### 동안 문서 삽입 Mail Merge 운영 {#insert-a-document-during-mail-merge-operation}

당신은 동안 병합 필드에 문서를 삽입 할 수 있습니다 Mail Merge 작동. 예를 들어, Mail Merge 템플릿에는[요약]과 같은 병합 필드가 포함될 수 있습니다. 그러나 최종 문서에서는 다른 외부 문서에서 얻은 콘텐츠를 이 병합 필드에 삽입해야 합니다. 이를 위해 병합 이벤트에 대한 처리기를 만들어야 합니다.

다음 코드 예제에서는 나중에 삽입 프로세스에서 사용할 병합 이벤트에 대한 처리기를 만드는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge-handler.h" >}}

다음 코드 예제에서는 생성된 처리기를 사용하여 문서를 병합 필드에 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge.h" >}}

### 책갈피에 문서 삽입

텍스트 파일을 문서로 가져와 문서에서 정의한 책갈피 바로 뒤에 삽입할 수 있습니다. 이렇게 하려면 문서를 삽입할 책갈피된 단락을 만듭니다.

다음 코딩 예제에서는 한 문서의 내용을 다른 문서의 책갈피에 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-bookmark.h" >}}

{{% alert color="primary" %}}

책갈피에는 최종 결과 문서에 표시할 단락이나 텍스트가 여러 개 포함되어서는 안 됩니다.

{{% /alert %}}

## 문서 추가

문서에서 기존 문서의 끝까지 추가 페이지를 포함해야 하는 사용 사례가 있을 수 있습니다. 이 작업을 수행하려면,당신은 단지 호출 할 필요가 [AppendDocument](https://reference.aspose.com/words/cpp/aspose.words/document/appenddocument/) 다른 문서의 끝에 문서를 추가하는 방법.

{{% alert color="primary" %}}

참고: [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) 문서 내의 노드 수준 메서드입니다. 예를 들어 단락을 만들고 서식 속성을 설정한 다음 해당 단락을 사용하여 본문에 자식으로 추가할 수 있습니다 **AppendChild** 방법

{{% /alert %}}

다음 코드 예제에서는 문서를 다른 문서의 끝에 추가하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "keep-source-formatting.h" >}}

## 수동으로 노드 가져오기 및 삽입 {#import-and-insert-nodes-manually}

Aspose.Words 이전 가져오기 요구 사항 없이 문서를 자동으로 삽입하고 추가할 수 있습니다. 그러나 섹션이나 단락과 같은 문서의 특정 노드를 삽입하거나 추가해야 하는 경우 먼저 이 노드를 수동으로 가져와야 합니다.

한 섹션이나 단락을 다른 섹션에 삽입하거나 추가해야 할 때 기본적으로 첫 번째 문서 노드 트리의 노드를 사용하여 두 번째 노드로 가져와야합니다. [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/nodeimporter/importnode/) 방법 노드를 가져온 후에는 다음을 사용해야 합니다 [InsertAfter](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertafter/)/[InsertBefore](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertbefore/) 참조 노드 뒤에/앞에 새 노드를 삽입하는 방법. 이렇게 하면 문서에서 노드를 가져와 지정된 위치에 삽입하여 삽입 프로세스를 사용자 지정할 수 있습니다.

당신은 또한 사용할 수 있습니다 [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) 예를 들어 섹션 수준이 아닌 단락 수준에서 콘텐츠를 추가하려는 경우 자식 노드 목록의 끝에 새 지정된 노드를 추가하는 방법입니다.

다음 코드 예제에서는 노드를 수동으로 가져와 특정 노드 뒤에 삽입하는 방법을 보여 줍니다. **InsertAfter** 방법:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-as-nodes.h" >}}

{{% alert color="primary" %}}

가져오기는 원래 노드의 복사본이며 대상 문서에 삽입하기에 적합한 새 노드를 만듭니다.

{{% /alert %}}

즉,페이지 설정,머리글 또는 바닥글과 같은 설정이 가져오는 동안 유지됩니다. 또한 문서를 삽입하거나 추가할 때 서식 설정을 정의하여 두 문서를 함께 결합하는 방법을 지정할 수 있습니다.

## 문서 삽입 및 추가에 대한 공통 속성 {#common-properties-for-insert-and-append-documents}

둘 다 [InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/) 그리고 [AppendDocument](https://apireference.codeporting.com/native/cs2cpp/namespace/system#a6b77ccd8c49df28c153be0462cdfdf49) 메서드 수락 [ImportFormatMode](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) 그리고 [ImportFormatOptions](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/) 입력 매개 변수로. 그 **ImportFormatMode** 다음과 같은 다른 형식 모드를 선택하여 한 문서에서 다른 문서로 콘텐츠를 가져올 때 문서 서식이 병합되는 방법을 제어할 수 있습니다 [UseDestinationStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/),그리고 [KeepDifferentStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/). 그 **ImportFormatOptions** 다음과 같은 다양한 가져오기 옵션을 선택할 수 있습니다 [IgnoreHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_mergepastedlists/),그리고 [SmartStyleBehavior](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_smartstylebehavior/).

Aspose.Words 삽입 또는 추가 작업에서 두 개의 문서를 함께 추가할 때 결과 문서의 시각화를 조정할 수 있습니다. [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) 그리고 [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup) 속성. 그 **PageSetup** 속성은 다음과 같은 섹션의 모든 특성을 포함합니다 [SectionStart](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_pagestartingnumber/), [Orientation](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_orientation/),그리고 다른 것들. 가장 일반적인 사용 사례는 **SectionStart** 추가한 콘텐츠가 동일한 페이지에 표시되는지 또는 새 페이지로 분할되는지를 정의하는 속성입니다.

{{% alert color="primary" %}}

참고: **Section** 그리고 **PageSetup** 속성은 두 문서를 함께 삽입/추가하는 방법을 제어하지 않습니다. 그들은 단지 당신이 당신의 결과 문서의 모양을 변경할 수 있습니다.

{{% /alert %}}

다음 코드 예제에서는 콘텐츠가 두 페이지에 걸쳐 분할되지 않도록 하면서 한 문서를 다른 문서에 추가하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "different-page-setup.h" >}}
