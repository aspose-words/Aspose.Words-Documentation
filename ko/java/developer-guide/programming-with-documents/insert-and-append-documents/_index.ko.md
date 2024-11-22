---
title: 문서 삽입 및 Append Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 삽입 및 Append 문서
linktitle: 삽입 및 Append 문서
description: "문서를 하나에 결합: 삽입하거나 문서를 찾아서 교체, 병합, 책갈피, 또는 단순히 문서 끝에 사용하여 새로운 기존 하나에 추가 Java·"
type: docs
weight: 80
url: /ko/java/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

때로는 여러 문서를 하나로 결합해야합니다. 당신은 수동으로 할 수 있습니다 또는 당신은 사용할 수 있습니다 Aspose.Words 삽입 또는 추가 기능.

삽입 작업은 이전에 생성 된 문서의 내용을 새 또는 기존에 삽입 할 수 있습니다.

턴에서 append 기능은 다른 문서의 끝에서만 문서를 추가 할 수 있습니다.

이 문서는 다른 방법으로 문서를 삽입하거나 추가하는 방법을 설명하고 삽입 또는 승인 문서 동안 적용 할 수있는 일반적인 속성을 설명합니다.

## 문서 삽입

위에서 언급했듯이 Aspose.Words 문서는 노드의 나무로 표현되며, 하나의 문서 삽입 작업은 첫 번째 문서 트리에서 두 번째 문서에 노드를 복사합니다.

다른 방법으로 다양한 위치에 문서를 삽입 할 수 있습니다. 예를 들어, 대체 작업을 통해 문서를 삽입 할 수 있습니다, 병합 작업 중 병합 필드, 또는 책갈피를 통해.

또한 사용할 수 있습니다 [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) 또는 [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) 문서 삽입과 유사한 방법 Microsoft Word, 이전 수입없이 현재 커서 위치에 전체 문서를 삽입합니다.

다음 코드 예제는 문서를 삽입하는 방법을 보여줍니다. **InsertDocument** 방법:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

다음 코드 예제는 문서를 삽입하는 방법을 보여줍니다. **InsertDocumentInline** 방법:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

다음 하위 섹션은 다른 문서에 삽입 할 수있는 옵션이 설명합니다.

### 찾기 중 문서 삽입 및 작업 교체 {#insert-a-document-during-find-and-replace-operation}

검색 및 교체 작업을 수행하는 동안 문서를 삽입 할 수 있습니다. 예를 들어, 문서는 텍스트 [INTRODUCTION]과 [CONCLUSION]로 단락을 포함 할 수 있습니다. 그러나 최종 문서에서 다른 외부 문서에서 얻은 내용으로 그 단락을 대체해야합니다. 이를 달성하기 위해, 당신은 대체 이벤트에 대한 핸들러를 만들 필요가있다.

다음 코드 예제는 삽입 프로세스에서 나중에 사용하는 대체 이벤트에 대한 핸들러를 만드는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

다음 코드 예제는 찾을 때 하나의 문서의 내용을 삽입하고 작업을 대체하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### 문서 삽입 Mail Merge - 연혁 {#insert-a-document-during-mail-merge-operation}

문서를 병합 필드에 삽입할 수 있습니다. Mail Merge 작업. 예를 들어, Mail Merge 템플릿은 [Summary]와 같은 병합 필드를 포함 할 수 있습니다. 그러나 최종 문서에서 다른 외부 문서에서 얻은 내용을 병합 필드에 삽입해야합니다. 이를 달성하기 위해 합병 사건에 대한 핸들러를 만들 필요가 있습니다.

다음 코드 예제는 삽입 프로세스에서 나중에 사용하려면 merging 이벤트에 대한 핸들러를 만드는 방법을 보여줍니다

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

다음 코드 예제는 생성 된 핸들러를 사용하여 병합 필드에 문서를 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### 즐겨찾기에 추가

문서에 텍스트 파일을 가져올 수 있으며 문서에 정의 된 책갈피 후 바로 삽입 할 수 있습니다. 이 작업을 수행하려면 문서가 삽입 될 책갈피 된 단락을 만듭니다.

다음 코딩 예제는 다른 문서의 책갈피에 한 문서의 내용을 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

책갈피는 최종 결과 문서에 나타나고 싶은 여러 단락이나 텍스트를 닫지 않아야 합니다.

{{% /alert %}}

## 본문 바로가기

문서에서 기존 문서 끝에 추가 페이지를 포함해야 하는 사용 사례가 있을 수 있습니다. 이렇게하려면 전화를해야합니다. [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) 다른 한의 끝에 문서를 추가하는 방법.

{{% alert color="primary" %}}

이름 * [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) 문서 내에서 노드 레벨 메소드입니다. 예를 들어, 단락을 만들 수 있습니다, 설정 형식 속성, 그리고 그 다음을 사용하여 신체에 아이로 추가 **AppendChild** 방법.

{{% /alert %}}

다음 코드 예제는 다른 문서의 끝에 문서를 추가하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## Nodes를 수동으로 삽입 {#import-and-insert-nodes-manually}

Aspose.Words 모든 이전 수입 요건없이 문서를 자동 삽입 및 추가 할 수 있습니다. 그러나, 삽입 또는 문서의 특정 노드를 추가해야 하는 경우, 섹션 또는 단락과 같은, 먼저이 노드를 수동으로 가져올 필요가.

한쪽 또는 단락을 다른 한쪽 또는 단락을 삽입하거나 추가 할 필요가있을 때, 먼저 문서 노드 트리의 노드를 두 번째로 사용하여 가져야합니다. [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean) 방법. 노드를 가져가면 사용해야 합니다. [InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node) 새로운 노드를 삽입하는 방법 after/before reference node. 이 문서에서 노드를 가져오고 주어진 위치에 삽입하여 삽입 프로세스를 사용자 정의 할 수 있습니다.

또한 사용할 수 있습니다 [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) 새 지정된 노드를 자녀 노드의 목록 끝에 추가하는 방법, 예를 들어, 섹션 레벨 대신 단락에서 콘텐츠를 추가하려는 경우.

다음과 같은 코드 예제는 수동으로 노드를 가져와 특정 노드를 사용하여 삽입하는 방법을 보여줍니다. **InsertAfter** 방법:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

import는 원래 노드의 복사본인 새로운 노드를 만들고 삽입을 대상 문서에 적합하게 만듭니다.

{{% /alert %}}

콘텐츠는 페이지 설정 및 헤더 또는 발러와 같은 설정을 의미하는 섹션에 의해 대상 문서 섹션으로 수입됩니다. 수입 중 보존됩니다. 문서에 삽입하거나 추가할 때 형식 설정을 정의할 수 있는 것도 유용합니다.

## 삽입 및 Append 문서의 일반적인 속성 {#common-properties-for-insert-and-append-documents}

둘 다 [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) · [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) 자주 묻는 질문 [ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/) · [ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/) 입력 매개변수로. 더 보기 **ImportFormatMode** 다른 형식 모드를 선택하여 하나의 문서에서 콘텐츠를 다른 형식으로 가져올 때 문서 포맷을 병합하는 방법을 제어 할 수 있습니다. [UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES), [KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING), · [KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES)· 더 보기 **ImportFormatOptions** 같은 다른 수입 옵션을 선택할 수 있습니다. [IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists), · [SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior)·

Aspose.Words 두 개의 문서가 삽입 또는 append 작업에 함께 추가될 때 결과 문서의 시각화를 조정할 수 있습니다. [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) · [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) 이름 * 더 보기 **PageSetup** 속성은 같은 섹션의 모든 속성을 포함합니다 [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation), 기타. 가장 일반적인 사용 케이스 설정 **SectionStart** 추가 콘텐츠가 동일한 페이지에 나타날 경우 또는 새 페이지로 나눕니다.

{{% alert color="primary" %}}

주의사항 **Section** · **PageSetup** 속성은 두 개의 문서를 삽입 / 첨부하는 방법을 제어하지 않습니다. 그들은 단지 결과 문서의 외관을 변경할 수 있습니다.

{{% /alert %}}

다음 코드 예제는 두 페이지에 걸쳐 분할에서 콘텐츠를 유지하면서 다른 한 문서를 추가하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
