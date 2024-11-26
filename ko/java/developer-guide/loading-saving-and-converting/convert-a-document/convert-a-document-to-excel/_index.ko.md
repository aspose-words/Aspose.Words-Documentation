---
title: Java에서 엑셀으로 단어 변환
second_title: Aspose.WordsJava
articleTitle: 엑셀 문서 변환
linktitle: 엑셀 문서 변환
description: "PDF을 엑셀,XML을 엑셀,DOCX을 엑셀Java으로 변환합니다. Java을 사용하여 다양한 형식의 문서를XLSX에 저장합니다."
type: docs
weight: 15
url: /ko/java/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

한 형식에서 다른 형식으로 문서를 변환하는 것은Aspose.Words의 주력 기능입니다. 사용 가능한[로드 형식](https://reference.aspose.com/words/java/com.aspose.words/loadformat/)의 문서를XLSX형식으로도 변환할 수 있습니다.

## 문서를XLSX로 변환

문서를XLSX로 변환하는 것은 다소 복잡한 과정입니다. Aspose.Words를 사용하여 문서를XLSX형식으로 저장하려면[SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/)열거형에서[XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/)클래스와 새`Xlsx`요소를 사용합니다. 위에서 언급했듯이Aspose.Words에서XLSX까지 지원되는 모든 로드 형식으로 문서를 저장할 수 있습니다.

다음 코드 예제에서는PDF을XLSX에 저장하는 방법을 보여 줍니다:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

때로는 문서를XLSX로 저장 한 결과에 영향을 줄 수있는 추가 옵션을 지정해야합니다. 이러한 옵션은XLSX출력이 표시되는 방법을 결정하는 속성을 포함하는[XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/)클래스를 사용하여 지정할 수 있습니다.

{{% /alert %}}

## XLSX에 저장할 때 찾기 및 바꾸기

또한Aspose.Words을 사용하면 문서에서 특정 문자열이나 정규식을 찾아 필요한 문자열과 일치하도록 바꿀 수 있습니다. 그런 다음 결과를XLSX형식으로 저장할 수도 있습니다.

다음 코드 예제에서는 찾기 및 바꾸기 작업을 수행하고 결과를XLSX에 저장하는 방법을 보여 줍니다:

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

## XLSX에 저장할 때 압축 수준 지정

[CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/)속성을 사용하여 저장할 때 압축 수준을 지정할 수도 있습니다.

다음 코드 예제에서는XLSX형식으로 저장할 때 압축 수준을 지정하는 방법을 보여 줍니다:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## 또한 참조

- 문서 섹션 [문서 보호 또는 암호화](/words/java/protect-or-encrypt-a-document/) 문서 보호 및 암호화에 대한 자세한 내용은
- 기사 [찾기 및 바꾸기](/words/java/find-and-replace/) 원하는 콘텐츠를 찾고 교체하는 방법에 대한 자세한 내용은
