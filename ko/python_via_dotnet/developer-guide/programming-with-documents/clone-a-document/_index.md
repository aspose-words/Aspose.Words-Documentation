---
title: Python에서 문서 복제
second_title: Python via .NET용 Aspose.Words
articleTitle: 문서 복제
linktitle: 문서 복제
type: docs
description: "Python를 사용하여 문서를 복제하여 동일한 사본을 얻으세요. 복사본을 만들 때 원본 문서의 노드와 속성이 복제됩니다."
weight: 70
url: /ko/python-net/clone-a-document/
---

문서 복제는 원본 문서와 동일한 복사본을 만드는 프로세스로, 성능을 향상시키고 잠재적인 메모리 누수를 방지할 수 있습니다.

이 문서에서는 문서 복제의 주요 사용 사례와 Aspose.Words를 사용하여 문서 복제를 만드는 방법을 설명합니다.

## 문서 복제 작업

복제 작업을 사용하면 매번 파일에서 문서를 로드하고 구문 분석할 필요가 없으므로 문서 생성 프로세스를 더 빠르게 만들 수 있습니다.

문서의 복제본을 만든 후에는 이를 편집하고 원본 문서와 비교하거나 다른 문서에 추가하거나 삽입하는 등 다양한 작업을 수행할 수 있습니다. 복제된 요소나 그 내용을 다른 문서에 삽입하기 전에 수정할 수도 있습니다.

## 문서 복제본 만들기

Aspose.Words를 사용하면 문서의 전체 복사본을 수행하고 반환하는 [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) 방법을 사용하여 문서를 복제할 수 있습니다. 즉, DOM의 전체 복사본을 가져옵니다. [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) 방법을 사용하면 문서 생성 속도가 빨라지고 문서 사본을 얻으려면 코드 한 줄만 있으면 됩니다.

복제를 수행하면 원본과 내용이 동일하지만 원본 문서 노드 각각의 고유한 복사본이 포함된 새 문서가 생성됩니다. 노드 [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) 메서드를 사용하여 문서 노드에 복제 작업을 적용할 수도 있습니다. 이를 통해 하위 노드 유무에 관계없이 복합 문서 노드를 복제할 수 있습니다.

{{% alert color="primary" %}}

복제 방법을 적용하면 모든 문서 속성이 복제됩니다.

{{% /alert %}}

다음 코드 예제에서는 문서를 복제하고 해당 문서에 섹션 복사본을 만드는 방법을 보여줍니다

{{< highlight python >}}
# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("This is the original document before applying the clone method")

# Clone the document.
clone = doc.clone().as_document()

# Edit the cloned document.
builder = aw.DocumentBuilder(clone)
builder.write("Section 1")
builder.insert_break(aw.BreakType.SECTION_BREAK_NEW_PAGE)
builder.write("Section 2")

# This shows what is in the document originally. The document has two sections.
self.assertEqual(clone.sections.count, 2)

# Duplicate the last section and append the copy to the end of the document.
lastSectionIdx = clone.sections.count - 1
newSection = clone.sections[lastSectionIdx].clone()
clone.sections.add(newSection)

# Check what the document contains after we changed it.
self.assertEqual(clone.sections.count, 3)
{{< /highlight >}}
