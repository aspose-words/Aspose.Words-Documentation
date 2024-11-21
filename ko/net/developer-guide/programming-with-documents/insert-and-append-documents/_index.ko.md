---
title: C#에 문서 삽입 및 추가
second_title: .NET용 Aspose.Words
articleTitle: 문서 삽입 및 추가
linktitle: 문서 삽입 및 추가
description: "문서를 하나로 결합: 찾기 및 바꾸기, 필드 병합, 책갈피를 사용하거나 단순히 C#의 문서 끝에 문서를 새 문서나 기존 문서에 삽입하거나 추가합니다."
type: docs
weight: 80
url: /ko/net/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

때로는 여러 문서를 하나로 통합해야 하는 경우도 있습니다. 이 작업을 수동으로 수행하거나 Aspose.Words 삽입 또는 추가 기능을 사용할 수 있습니다.

삽입 작업을 사용하면 이전에 생성된 문서의 내용을 새 문서나 기존 문서에 삽입할 수 있습니다.

또한 추가 기능을 사용하면 다른 문서의 끝에만 문서를 추가할 수 있습니다.

이 문서에서는 다양한 방법으로 문서를 다른 문서에 삽입하거나 추가하는 방법을 설명하고 문서를 삽입하거나 추가하는 동안 적용할 수 있는 공통 속성에 대해 설명합니다.

## 문서 {#insert-a-document} 삽입

위에서 언급했듯이 Aspose.Words에서 문서는 노드 트리로 표현되며, 한 문서를 다른 문서에 삽입하는 작업은 첫 번째 문서 트리에서 두 번째 문서 트리로 노드를 복사하는 것입니다.

다양한 위치에 다양한 방법으로 문서를 삽입할 수 있습니다. 예를 들어 바꾸기 작업, 병합 작업 중 병합 필드 또는 책갈피를 통해 문서를 삽입할 수 있습니다.

Microsoft Word에 문서를 삽입하는 것과 유사한 [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/#insertdocument/) 또는 [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/) 방법을 사용하면 이전에 가져오지 않고도 현재 커서 위치에 전체 문서를 삽입할 수 있습니다.

다음 코드 예제에서는 **InsertDocument** 메서드를 사용하여 문서를 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-with-builder.cs" >}}

다음 코드 예제에서는 **InsertDocumentInline** 메서드를 사용하여 문서를 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-inline-with-builder.cs" >}}

다음 하위 섹션에서는 한 문서를 다른 문서에 삽입할 수 있는 옵션에 대해 설명합니다.

### 찾기 및 바꾸기 작업 중에 문서 삽입 {#insert-a-document-during-find-and-replace-operation}

찾기 및 바꾸기 작업을 수행하는 동안 문서를 삽입할 수 있습니다. 예를 들어, 문서에는 [INTRODUCTION] 및 [CONCLUSION] 텍스트가 있는 단락이 포함될 수 있습니다. 하지만 최종 문서에서는 해당 단락을 다른 외부 문서에서 얻은 내용으로 바꿔야 합니다. 이를 위해서는 교체 이벤트에 대한 핸들러를 생성해야 합니다.

다음 코드 예제에서는 대체 이벤트에 대한 처리기를 만들어 나중에 삽입 프로세스에서 사용하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace-handler.cs" >}}

다음 코드 예제에서는 찾기 및 바꾸기 작업 중에 한 문서의 내용을 다른 문서에 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace.cs" >}}

### Mail Merge 작업 중 문서 삽입 {#insert-a-document-during-mail-merge-operation}

mail merge 작업 중에 병합 필드에 문서를 삽입할 수 있습니다. 예를 들어 mail merge 템플릿에는 [요약]과 같은 병합 필드가 포함될 수 있습니다. 하지만 최종 문서에서는 다른 외부 문서에서 얻은 콘텐츠를 이 병합 필드에 삽입해야 합니다. 이를 위해서는 병합 이벤트에 대한 핸들러를 생성해야 합니다.

다음 코드 예제에서는 나중에 삽입 프로세스에서 사용할 병합 이벤트에 대한 처리기를 만드는 방법을 보여줍니다

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge-handler.cs" >}}

다음 코드 예제에서는 생성된 핸들러를 사용하여 병합 필드에 문서를 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge.cs" >}}

### 북마크 {#insert-a-document-at-bookmark}에 문서 삽입

텍스트 파일을 문서로 가져와서 문서에 정의한 북마크 바로 뒤에 삽입할 수 있습니다. 이렇게 하려면 문서를 삽입할 북마크된 단락을 만듭니다.

다음 코딩 예제에서는 한 문서의 내용을 다른 문서의 책갈피에 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-bookmark.cs" >}}

{{% alert color="primary" %}}

책갈피는 최종 결과 문서에 표시할 여러 단락이나 텍스트를 포함해서는 안 됩니다.

{{% /alert %}}

## 문서 {#append-a-document} 추가

문서에서 기존 문서 끝까지 추가 페이지를 포함해야 하는 사용 사례가 있을 수 있습니다. 이렇게 하려면 [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) 메서드를 호출하여 다른 문서의 끝에 문서를 추가하면 됩니다.

{{% alert color="primary" %}}

[AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/)는 문서 내의 노드 수준 방법입니다. 예를 들어 단락을 만들고 서식 속성을 설정한 다음 **AppendChild** 메서드를 사용하여 본문에 하위 항목으로 추가할 수 있습니다.

{{% /alert %}}

다음 코드 예제에서는 다른 문서의 끝에 문서를 추가하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "keep-source-formatting.cs" >}}

## 수동으로 노드 가져오기 및 삽입 {#import-and-insert-nodes-manually}

Aspose.Words를 사용하면 이전 가져오기 요구 사항 없이 자동으로 문서를 삽입하고 추가할 수 있습니다. 그러나 섹션이나 단락과 같은 문서의 특정 노드를 삽입하거나 추가해야 하는 경우 먼저 이 노드를 수동으로 가져와야 합니다.

한 섹션이나 단락을 다른 섹션이나 단락에 삽입하거나 추가해야 하는 경우 기본적으로 [ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/) 방법을 사용하여 첫 번째 문서 노드 트리의 노드를 두 번째 노드로 가져와야 합니다. 노드를 가져온 후 [InsertAfter](https://reference.aspose.com/words/net/aspose.words/compositenode/insertafter/)/[InsertBefore](https://reference.aspose.com/words/net/aspose.words/compositenode/insertbefore/) 방법을 사용하여 참조 노드 앞/뒤에 새 노드를 삽입해야 합니다. 이를 통해 문서에서 노드를 가져와서 지정된 위치에 삽입하여 삽입 프로세스를 사용자 정의할 수 있습니다.

예를 들어 섹션 수준이 아닌 단락 수준에서 콘텐츠를 추가하려는 경우 [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) 메서드를 사용하여 하위 노드 목록 끝에 지정된 새 노드를 추가할 수도 있습니다.

다음 코드 예제에서는 **InsertAfter** 메서드를 사용하여 수동으로 노드를 가져오고 특정 노드 뒤에 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-as-nodes.cs" >}}

{{% alert color="primary" %}}

가져오기는 원본 노드의 복사본이고 대상 문서에 삽입하기에 적합한 새 노드를 만듭니다.

{{% /alert %}}

콘텐츠는 섹션별로 대상 문서 섹션으로 가져옵니다. 즉, 페이지 설정, 머리글 또는 바닥글과 같은 설정이 가져오는 동안 유지됩니다. 문서를 삽입하거나 추가할 때 서식 설정을 정의하여 두 문서를 결합하는 방법을 지정할 수 있다는 점도 알아두면 유용합니다.

## 문서 삽입 및 추가 {#common-properties-for-insert-and-append-documents}의 공통 속성

[InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/) 및 [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) 방법 모두 [ImportFormatMode](https://reference.aspose.com/words/net/aspose.words/importformatmode/) 및 [ImportFormatOptions](https://reference.aspose.com/words/net/aspose.words/importformatoptions/)를 입력 매개변수로 허용합니다. **ImportFormatMode**을 사용하면 [UseDestinationStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/net/aspose.words/importformatmode/), [KeepDifferentStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/)와 같은 다양한 형식 모드를 선택하여 한 문서에서 다른 문서로 콘텐츠를 가져올 때 문서 형식이 병합되는 방식을 제어할 수 있습니다. **ImportFormatOptions**를 사용하면 [IgnoreHeaderFooter](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/net/aspose.words/importformatoptions/keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/net/aspose.words/importformatoptions/mergepastedlists/) 및 [SmartStyleBehavior](https://reference.aspose.com/words/net/aspose.words/importformatoptions/smartstylebehavior/)과 같은 다양한 가져오기 옵션을 선택할 수 있습니다.

Aspose.Words를 사용하면 [Section](https://reference.aspose.com/words/net/aspose.words/section/) 및 [PageSetup](https://reference.aspose.com/words/net/aspose.words/documentbuilder/pagesetup/) 속성을 사용하여 삽입 또는 추가 작업에서 두 문서를 함께 추가할 때 결과 문서의 시각화를 조정할 수 있습니다. **PageSetup** 속성에는 [SectionStart](https://reference.aspose.com/words/net/aspose.words/pagesetup/sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/net/aspose.words/pagesetup/restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/net/aspose.words/pagesetup/pagestartingnumber/), [Orientation](https://reference.aspose.com/words/net/aspose.words/pagesetup/orientation/) 등과 같은 섹션의 모든 속성이 포함됩니다. 가장 일반적인 사용 사례는 **SectionStart** 속성을 설정하여 추가된 콘텐츠가 동일한 페이지에 표시되는지 아니면 새 페이지로 분할되는지 정의하는 것입니다.

{{% alert color="primary" %}}

**Section** 및 **PageSetup** 속성은 두 문서가 함께 삽입/추가되는 방식을 제어하지 않습니다. 결과 문서의 모양만 변경할 수 있습니다.

{{% /alert %}}

다음 코드 예제에서는 콘텐츠가 두 페이지로 분할되지 않도록 하면서 한 문서를 다른 문서에 추가하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "different-page-setup.cs" >}}
