---
title: 고정 페이지 형식으로 저장 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 고정 페이지 형식으로 문서 저장
linktitle: 고정 페이지 형식으로 문서 저장
description: "고정 페이지 형식으로 문서를 저장하는 방법 – PDF, XPS, HTML, XAML, PostScript,그리고 PCL? 지침을 참조하십시오."
type: docs
weight: 15
url: /ko/cpp/saving-a-document-to-fixed-page-format/
---

페이지 레이아웃이 작성되고 객체의 지오메트리와 페이지에서의 위치가 계산된 후,문서는 다음에서 지원하는 고정 페이지 형식으로 저장할 수 있습니다 Aspose.Words.

문서를 고정 페이지 형식으로 저장할 때 이러한 모든 형식에 공통된 렌더링 옵션을 사용할 수 있습니다. 그들은 통제 할 수 있습니다:

- 출력 문서에 포함된 페이지 수와 범위([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/)).
- 페이지별 문서 저장 진행률([PageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pagesavingcallback/)).
- 숫자 렌더링에 사용되는 문자 집합([NumeralFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_numeralformat/)).
- 메타 파일 플레이어([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_metafilerenderingoptions/)). 자세한 내용은 [취급 Windows 메타파일](/words/cpp/handling-windows-metafiles/) 기사
- 재압축을 위한 질 비율 JPEG 선택한 저장 형식에 따라 값이 약간 다를 수 있는 이미지([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_jpegquality/)).
- 벡터 그래픽 최적화 Aspose.Words 출력([OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/)).
- 그래픽 옵션을 저장할 때 사용할 수 있습니다.[UseAntiAliasing](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_usehighqualityrendering/)).
- 문서를 회색조로 저장)[ColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_colormode/)).
- 도형과 대체 도형의 렌더링 간 전환([DmlRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmlrenderingmode/)).
- 사이 전환 DML 효과 렌더링 모드([DmlEffectsRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmleffectsrenderingmode/)).

아래 예제에서는 다음에 문서를 저장하는 방법을 보여 줍니다 JPEG 형식을 사용하여 `Save` 메서드 및 렌더링 옵션:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveDocumentToJPEG-SaveDocumentToJPEG.cpp" >}}
