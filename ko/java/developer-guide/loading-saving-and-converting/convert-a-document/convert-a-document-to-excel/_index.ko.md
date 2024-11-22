---
title: Word를 Excel로 변환 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 문서를 Excel로 변환
linktitle: 문서를 Excel로 변환
description: "PDF를 Excel로 변환, XML로 Excel로, DOCX로 Excel로 Java· 다양한 형식으로 문서를 XLSX로 저장 Java·"
type: docs
weight: 15
url: /ko/java/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

다른 형식으로 문서를 변환하는 것은 주력 기능입니다. Aspose.Words· 문서 변환을 할 수 있습니다. [짐 체재](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) XLSX 형식도 있습니다.

## 문서를 XLSX로 변환

XLSX에 문서를 변환하는 것은 오히려 복잡한 과정입니다. 문서를 XLSX 형식으로 저장 Aspose.Words· 이용안내 [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) 클래스와 새로운 `Xlsx` 이름 * [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) 관련 기사 위에서 언급했듯이, 지원되는 모든 부하 형식으로 문서를 저장할 수 있습니다. Aspose.Words XLSX에.

다음 코드 예제는 PDF를 XLSX로 저장하는 방법을 보여줍니다:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

때로는 XLSX로 문서를 저장하는 결과에 영향을 줄 수있는 추가 옵션을 지정해야합니다. 이 옵션은 사용할 수 있습니다. [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) XLSX 출력이 어떻게 표시되는지 결정하는 속성을 포함하는 클래스.

{{% /alert %}}

## XLSX에 저장할 때 찾기 및 교체

자주 묻는 질문 Aspose.Words, 문서의 특정 문자열 또는 정규 표현식을 찾을 수 있으며, 해당 항목에 해당합니다. 그런 다음 XLSX 형식으로 결과를 저장할 수 있습니다.

다음과 같은 코드 예제는 찾기 및 교체 작업을 수행하고 XLSX에 결과를 저장하는 방법을 보여줍니다:

{{< highlight java >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.writeln("Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
FindReplaceOptions options = new FindReplaceOptions();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options.setMatchCase(true);

doc.getRange().replace("Ruby", "Jade", options);
doc.save(getArtifactsDir() + "BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## XLSX로 저장할 때 압축 레벨 지정

압축 레벨을 지정할 수도 있습니다. [CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/) 호텔 위치

다음 코드 예제는 XLSX 형식으로 저장할 때 압축 수준을 지정하는 방법을 보여줍니다

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## 더 보기

- 문서 영역 [문서의 보호 또는 암호화](/words/ko/java/protect-or-encrypt-a-document/) 더 많은 정보를 위해 보호하고 문서를 암호화
- 기사 [찾기 및 교체](/words/ko/java/find-and-replace/) 더 많은 정보를 찾아서 원하는 콘텐츠를 교체
