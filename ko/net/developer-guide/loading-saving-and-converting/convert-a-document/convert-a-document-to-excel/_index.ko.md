---
title: C#에서 Word를 Excel로 변환
second_title: .NET용 Aspose.Words
articleTitle: 문서를 Excel로 변환
linktitle: 문서를 Excel로 변환
description: "PDF를 Excel로, XML을 Excel로, DOCX를 Excel C#로 변환합니다. C#를 사용하여 다양한 형식의 문서를 XLSX에 저장합니다."
type: docs
weight: 15
url: /ko/net/convert-a-document-to-excel/
timestamp: 2024-07-09-19-00-42
---

문서를 한 형식에서 다른 형식으로 변환하는 것은 Aspose.Words의 주요 기능입니다. 사용 가능한 [로드 형식](https://reference.aspose.com/words/net/aspose.words/loadformat/)의 문서를 XLSX 형식으로 변환할 수도 있습니다.

## 문서를 XLSX로 변환

문서를 XLSX로 변환하는 것은 다소 복잡한 과정입니다. Aspose.Words를 사용하여 문서를 XLSX 형식으로 저장하려면 [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) 열거형에 [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) 클래스와 새 `Xlsx` 요소를 사용하세요. 위에서 언급한 것처럼 Aspose.Words에서 XLSX까지 지원하는 모든 로드 형식으로 문서를 저장할 수 있습니다.

다음 코드 예제에서는 PDF를 XLSX에 저장하는 방법을 보여줍니다

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Pdf Document.pdf");
doc.Save(ArtifactsDir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

문서를 XLSX로 저장한 결과에 영향을 줄 수 있는 추가 옵션을 지정해야 하는 경우도 있습니다. 이러한 옵션은 XLSX 출력 표시 방법을 결정하는 속성이 포함된 [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) 클래스를 사용하여 지정할 수 있습니다.

{{% /alert %}}

## XLSX에 저장할 때 찾기 및 바꾸기

또한 Aspose.Words를 사용하면 문서에서 특정 문자열이나 정규식을 찾아 필요한 일치 항목으로 바꿀 수 있습니다. 그런 다음 결과를 XLSX 형식으로 저장할 수도 있습니다.

다음 코드 예제에서는 찾기 및 바꾸기 작업을 수행하고 결과를 XLSX에 저장하는 방법을 보여줍니다

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.Writeln("Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
FindReplaceOptions options = new FindReplaceOptions();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options.MatchCase = true;

doc.Range.Replace("Ruby", "Jade", options);
doc.Save(ArtifactsDir + "BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## XLSX에 저장할 때 압축 수준 지정

[CompressionLevel](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/compressionlevel/) 속성을 사용하여 저장할 때 압축 수준을 지정할 수도 있습니다.

다음 코드 예제에서는 XLSX 형식으로 저장할 때 압축 수준을 지정하는 방법을 보여줍니다

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Document.docx");

XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.CompressionLevel = CompressionLevel.Maximum;

doc.Save(ArtifactsDir + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## 또한보십시오

- 문서 보호 및 암호화에 대한 자세한 내용은 문서 섹션 [문서 보호 또는 암호화](/words/ko/net/protect-or-encrypt-a-document/)
- 원하는 콘텐츠 찾기 및 바꾸기에 대한 자세한 내용은 [찾기 및 바꾸기](/words/ko/net/find-and-replace/) 문서를 참조하세요
