---
title: 문서 삽입 및 추가
second_title: Python via .NET용 Aspose.Words
articleTitle: 문서 삽입 및 추가
linktitle: 문서 삽입 및 추가
description: "문서를 하나로 결합: 찾기 및 바꾸기, 필드 병합, 책갈피를 사용하거나 단순히 Python의 문서 끝에 문서를 새 문서나 기존 문서에 삽입하거나 추가합니다."
type: docs
weight: 80
url: /ko/python-net/insert-and-append-documents/
---

때로는 여러 문서를 하나로 통합해야 하는 경우도 있습니다. 이 작업을 수동으로 수행하거나 Aspose.Words 삽입 또는 추가 기능을 사용할 수 있습니다.

삽입 작업을 사용하면 이전에 생성된 문서의 내용을 새 문서나 기존 문서에 삽입할 수 있습니다.

또한 추가 기능을 사용하면 다른 문서의 끝에만 문서를 추가할 수 있습니다.

이 문서에서는 다양한 방법으로 문서를 다른 문서에 삽입하거나 추가하는 방법을 설명하고 문서를 삽입하거나 추가하는 동안 적용할 수 있는 공통 속성에 대해 설명합니다.

## 문서 삽입

위에서 언급했듯이 Aspose.Words에서 문서는 노드 트리로 표현되며, 한 문서를 다른 문서에 삽입하는 작업은 첫 번째 문서 트리에서 두 번째 문서 트리로 노드를 복사하는 것입니다.

다양한 위치에 다양한 방법으로 문서를 삽입할 수 있습니다. 예를 들어 바꾸기 작업, 병합 작업 중 병합 필드 또는 책갈피를 통해 문서를 삽입할 수 있습니다.

Microsoft Word에 문서를 삽입하는 것과 유사한 [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) 또는 [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions) 방법을 사용하면 이전에 가져오지 않고도 현재 커서 위치에 전체 문서를 삽입할 수 있습니다.

다음 코드 예제에서는 **insert_document** 메서드를 사용하여 문서를 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-with-builder.py" >}}

다음 코드 예제에서는 **insert_document_inline** 메서드를 사용하여 문서를 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-inline-with-builder.py" >}}

다음 하위 섹션에서는 한 문서를 다른 문서에 삽입할 수 있는 옵션에 대해 설명합니다.

### 책갈피에 문서 삽입

텍스트 파일을 문서로 가져와서 문서에 정의한 북마크 바로 뒤에 삽입할 수 있습니다. 이렇게 하려면 문서를 삽입할 북마크된 단락을 만듭니다.

다음 코딩 예제에서는 한 문서의 내용을 다른 문서의 책갈피에 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-at-bookmark.py" >}}

{{% alert color="primary" %}}

책갈피는 최종 결과 문서에 표시할 여러 단락이나 텍스트를 포함해서는 안 됩니다.

{{% /alert %}}

## 문서 추가

문서에서 기존 문서 끝까지 추가 페이지를 포함해야 하는 사용 사례가 있을 수 있습니다. 이렇게 하려면 [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) 메서드를 호출하여 다른 문서의 끝에 문서를 추가하면 됩니다.

{{% alert color="primary" %}}

[append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/)는 문서 내의 노드 수준 방법입니다. 예를 들어 단락을 만들고 서식 속성을 설정한 다음 [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) 메서드를 사용하여 본문에 하위 항목으로 추가할 수 있습니다.

{{% /alert %}}

다음 코드 예제에서는 다른 문서의 끝에 문서를 추가하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "keep-source-formatting.py" >}}

## 수동으로 노드 가져오기 및 삽입

Aspose.Words를 사용하면 이전 가져오기 요구 사항 없이 자동으로 문서를 삽입하고 추가할 수 있습니다. 그러나 섹션이나 단락과 같은 문서의 특정 노드를 삽입하거나 추가해야 하는 경우 먼저 이 노드를 수동으로 가져와야 합니다.

한 섹션이나 단락을 다른 섹션이나 단락에 삽입하거나 추가해야 하는 경우 기본적으로 [import_node](https://reference.aspose.com/words/python-net/aspose.words/documentbase/import_node/) 방법을 사용하여 첫 번째 문서 노드 트리의 노드를 두 번째 문서 노드 트리로 가져와야 합니다. 노드를 가져온 후 [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/)/[insert_before](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_before/) 방법을 사용하여 참조 노드 앞/뒤에 새 노드를 삽입해야 합니다. 이를 통해 문서에서 노드를 가져와서 지정된 위치에 삽입하여 삽입 프로세스를 사용자 정의할 수 있습니다.

예를 들어 섹션 수준이 아닌 단락 수준에서 콘텐츠를 추가하려는 경우 [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) 메서드를 사용하여 하위 노드 목록 끝에 지정된 새 노드를 추가할 수도 있습니다.

다음 코드 예제에서는 [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/) 메서드를 사용하여 수동으로 노드를 가져오고 특정 노드 뒤에 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-as-nodes.py" >}}

{{% alert color="primary" %}}

가져오기는 원본 노드의 복사본이고 대상 문서에 삽입하기에 적합한 새 노드를 만듭니다.

{{% /alert %}}

콘텐츠는 섹션별로 대상 문서 섹션으로 가져옵니다. 즉, 페이지 설정, 머리글 또는 바닥글과 같은 설정이 가져오는 동안 유지됩니다. 문서를 삽입하거나 추가할 때 서식 설정을 정의하여 두 문서를 결합하는 방법을 지정할 수 있다는 점도 알아두면 유용합니다.

## 문서 삽입 및 추가의 공통 속성

[insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) 및 [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) 방법 모두 [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) 및 [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/)를 입력 매개변수로 허용합니다. [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/)을 사용하면 [USE_DESTINATION_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#use_destination_styles), [KEEP_SOURCE_FORMATTING](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_source_formatting), [KEEP_DIFFERENT_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_different_styles)와 같은 다양한 형식 모드를 선택하여 한 문서에서 다른 문서로 콘텐츠를 가져올 때 문서 형식이 병합되는 방식을 제어할 수 있습니다. [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/)를 사용하면 [ignore_header_footer](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_header_footer/), [ignore_text_boxes](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_text_boxes/), [keep_source_numbering](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/keep_source_numbering/), [merge_pasted_lists](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/merge_pasted_lists/) 및 [smart_style_behavior](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/smart_style_behavior/)와 같은 다양한 가져오기 옵션을 선택할 수 있습니다.

Aspose.Words를 사용하면 [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) 및 [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/)을 사용하여 삽입 또는 추가 작업에서 두 문서를 함께 추가할 때 결과 문서의 시각화를 조정할 수 있습니다. [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) 속성에는 [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/), [restart_page_numbering](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/restart_page_numbering/), [page_starting_number](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/page_starting_number/), [orientation](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/orientation/) 등과 같은 섹션의 모든 속성이 포함됩니다. 가장 일반적인 사용 사례는 추가된 콘텐츠가 동일한 페이지에 표시되는지 아니면 새 페이지로 분할되는지 정의하기 위해 [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/) 속성을 설정하는 것입니다.

{{% alert color="primary" %}}

[Section](https://reference.aspose.com/words/python-net/aspose.words/section/) 및 [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/)는 두 문서가 함께 삽입/추가되는 방식을 제어하지 않습니다. 결과 문서의 모양만 변경할 수 있습니다.

{{% /alert %}}

다음 코드 예제에서는 콘텐츠가 두 페이지로 분할되지 않도록 하면서 한 문서를 다른 문서에 추가하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "different-page-setup.py" >}}
