---
title: 이미지 작업 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 이미지 작업
linktitle: 이미지 작업
type: docs
description: "이미지 기능 소개,다음을 사용하여 이미지를 만들고 조작하는 방법 C++."
weight: 300
url: /ko/cpp/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words 사용자가 매우 유연한 방법으로 이미지를 작업 할 수 있습니다. 이 기사에서는 이미지 작업의 가능성 중 일부만 탐색 할 수 있습니다.

## 문서에서 이미지를 추출하는 방법

모든 이미지는 내부에 저장됩니다 **Shape** 노드 [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). 문서에서 특정 형식을 가진 모든 이미지 또는 이미지를 추출하려면 다음과 같이 하십시오:

- 사용 [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/) 모두 선택하는 방법 **Shape** 노드
- 결과 노드 컬렉션을 반복합니다.
- 확인 [HasImage](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_hasimage/) 부울 속성.
- 다음을 사용하여 이미지 데이터 추출 [ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/) 재산.
- 이미지 데이터를 파일에 저장합니다.

다음 코드 예제에서는 문서에서 이미지를 추출하여 파일로 저장하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cpp" >}}

## 다른 이름으로 이미지 저장 WMF

Aspose.Words 문서에서 사용 가능한 모든 이미지를 저장하는 기능을 제공합니다. [WMF ](https://docs.fileformat.com/image/wmf/)변환하는 동안 포맷 DOCX 에 RTF.

다음 코드 예제에서는 이미지를 다른 이름으로 저장하는 방법을 보여 줍니다 WMF 함께 RTF 저장 옵션:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cpp" >}}
