---
title: 文書を要約する
second_title: Aspose.WordsはPython via .NETに対してAspose.Wordsを意味します。
articleTitle: 文書を要約する
linktitle: 文書を要約する
type: docs
weight: 20
description: "文書を要約します。 Aspose.WordsforPythonは、要約の長さを指定できるようにすることで、OpenAIモデルとGoogleAIモデルを使用して文書の要約を簡素化します。"
url: /ja/python-net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

文書の要約は、コンテンツのレビュー、迅速な洞察、または抄録の準備のための貴重なツールです。 Aspose.WordsはAI搭載モデルを使用した文書の要約をサポートし、長いテキストの処理を容易にします。 この機能は[aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/)モジュールで利用可能で、*OpenAI*と*Google*の高度な生成言語モデルを統合しています。

文書の内容を要約するためのさまざまなオプションを指定できます。 ドキュメントの概要を生成するには、[summarize](https://reference.aspose.com/words/python-net/aspose.words.ai/iaimodeltext/summarize/)メソッドを使用します。 また、[summary_length](https://reference.aspose.com/words/python-net/aspose.words.ai/summarizeoptions/summary_length/)プロパティを使用して要約の長さを設定することもできます。

Aspose.Wordsを使用すると、文書の要約を実装するのは簡単です。 次のコード例は、GPT-4oモデルを使用してドキュメントを合計するhotを示しています:

{{< highlight python >}}
first_doc = aw.Document(MyDir + "Big document.docx")
second_doc = aw.Document(MyDir + "Document.docx")
api_key = os.getenv("API_KEY")
# Use OpenAI or Google generative language models.
model = aw.ai.AiModel.create(aw.ai.AiModelType.GPT_4O_MINI).with_api_key(api_key).as_open_ai_model()
options = aw.ai.SummarizeOptions()
options.summary_length = aw.ai.SummaryLength.SHORT
one_document_summary = model.summarize(first_doc, options)
oneDocumentSummary.save(ArtifactsDir + "AI.AiSummarize.One.docx")
options.summary_length = aw.ai.SummaryLength.LONG
multi_document_summary = model.summarize([first_doc, second_doc], options)
multiDocumentSummary.save(ArtifactsDir + "AI.AiSummarize.Multi.docx")
{{< /highlight >}}

{{% alert color="primary" %}}

Aspose.Wordsを使用して文書を要約すると、時間が節約され、重要な情報に集中するのに役立ちます。 詳細については、[aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/)APIのドキュメントを確認してください。

{{% /alert %}}