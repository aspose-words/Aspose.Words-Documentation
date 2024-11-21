---
title: 에 엑셀 단어 변환 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 엑셀 문서 변환
linktitle: 엑셀 문서 변환
description: "변환 PDF 엑셀, XML 엑셀, DOCX 엑셀 C++. 에 다양한 형식으로 문서를 저장 XLSX 사용 C++."
type: docs
weight: 15
url: /ko/cpp/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

한 형식에서 다른 형식으로 문서를 변환하는 것은 Aspose.Words. 사용 가능한 모든 문서를 변환 할 수 있습니다 [load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) 또한 XLSX 형식

## 문서를 다음으로 변환 XLSX

문서를 다음으로 변환 XLSX 다소 복잡한 과정입니다. 문서를 다음 위치에 저장하려면 XLSX 형식을 사용하여 Aspose.Words,사용 **XlsxSaveOptions** 클래스와 새로운 `Xlsx` 에 있는 요소 [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) 열거 위에서 언급 한 바와 같이,당신은에 의해 지원되는 모든로드 형식으로 문서를 저장할 수 있습니다 Aspose.Words 에 XLSX.

다음 코드 예제에서는 저장하는 방법을 보여 줍니다 PDF 에 XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Pdf Document.pdf");
doc->Save(ArtifactsDir + u"BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

## 저장 시 찾기 및 바꾸기 XLSX

또한 사용 Aspose.Words,문서에서 특정 문자열 또는 정규 표현식을 찾아 필요한 일치하는 것으로 바꿀 수 있습니다. 그럼 당신은 또한에 결과를 저장할 수 있습니다 XLSX 형식

다음 코드 예제에서는 찾기 및 바꾸기 작업을 수행하고 다음에 결과를 저장하는 방법을 보여 줍니다 XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>();
auto builder = MakeObject<DocumentBuilder>(doc);

builder->Writeln(u"Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
auto options = MakeObject<FindReplaceOptions>();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options->set_MatchCase(true);

doc->get_Range()->Replace(u"Ruby", u"Jade", options);
doc->Save(ArtifactsDir + u"BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## 저장할 때 압축 수준 지정 XLSX

다음을 사용하여 저장할 때 압축 수준을 지정할 수도 있습니다 **CompressionLevel** 재산.

다음 코드 예제에서는 저장할 때 압축 수준을 지정하는 방법을 보여 줍니다 XLSX 형식:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Document.docx");
auto saveOptions = MakeObject<XlsxSaveOptions>();
saveOptions->set_CompressionLevel(CompressionLevel::Maximum);

doc->Save(ArtifactsDir + u"BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## 또한 참조

- 문서 섹션 [문서 보호 또는 암호화](/words/cpp/protect-or-encrypt-a-document/) 문서 보호 및 암호화에 대한 자세한 내용은
- 기사 [찾기 및 바꾸기](/words/cpp/find-and-replace/) 원하는 콘텐츠를 찾고 교체하는 방법에 대한 자세한 내용은
