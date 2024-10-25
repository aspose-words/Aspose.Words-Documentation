---
title: Trabalhar com PDF/A ou PDF/UA
second_title: Aspose.Words para C++
articleTitle: Trabalhar com PDF/A ou PDF/UA
linktitle: Trabalhar com PDF/A ou PDF/UA
description: "Converter em PDF/A-1, PDF/A-2, PDF/A-4 e PDF/UA usando C++. Existem alguns problemas ao converter para PDF/A documentos, e Aspose.Words para C++ resolve-os."
type: docs
weight: 38
url: /pt/cpp/working-with-pdfa-or-pdfua/
---

O formato PDF/A e PDF/UA impõe vários requisitos relacionados com o conteúdo do documento que não podem ser cumpridos durante a conversão automática de um documento em formato Word para PDF. Estes requisitos devem ser verificados e corrigidos num documento do Word antes da conversão ou num documento PDF após a conversão, a fim de produzir um documento totalmente compatível com PDF/A e PDF/UA.

Os requisitos básicos são para a estrutura ou fontes de um documento PDF/A e PDF/UA, que consideraremos nas seções a seguir.

{{% alert color="primary" %}}

Observe que a saída PDF/UA-1 também será WCAG 2.0 e a Seção 508 compatível.

{{% /alert %}}

## Requisitos Da Estrutura Do Documento

Os requisitos actuais são para PDF/A-1a, PDF/A-2a, PDF/A-4, e PDF/UA-1 formatos.

Existem algumas nuances de como Aspose.Words funciona ao converter para vários padrões de formato PDF. Eles devem ser levados em consideração se você deseja obter o resultado esperado.

{{% alert color="primary" %}}

Observe que não há requisitos de estrutura lógica para PDF/A-4. Por esta razão, não consideramos a versão PDF/A-4 nesta secção" requisitos da estrutura do documento".

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expandir para ver detalhes):</summary>
    <p></p>
    <p>Não é aconselhável que os escritores gerem informações estruturais ou semânticas utilizando processos automatizados sem verificação adequada.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

As subseções abaixo descrevem nuances de como Aspose.Words funciona ao converter para vários padrões de formato PDF e opções para sua solução.

### Tipo De Estrutura

| PDF níveis de Conformidade normalizados dentro de Aspose.Words | Presença de exigência |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Um documento PDF é uma sequência de blocos, como títulos, parágrafos, tabelas e outros. Esses blocos formam uma estrutura de Documento-forte ou fraca.

As estruturas fortes e fracas são válidas para PDF/A. Microsoft Word os documentos têm uma estrutura fraca por design, e Aspose.Words cria PDF com a estrutura fraca, respectivamente, e também gera títulos de acordo com os níveis de contorno dos parágrafos no documento de origem.

Para um documento PDF/UA-1 com uma estrutura fraca, é adicionalmente necessário que os números das rubricas estejam em ordem sem lacunas.

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expandir para ver detalhes):</summary>
    <p></p>
    <p>A estrutura em bloco pode seguir um dos dois principais paradigmas:</p>
    </ol>
      <li>Fortemente estruturado. Os elementos de agrupamento aninham-se em tantos níveis quantos forem necessários para reflectir a organização do material em artigos, secções, subsecções, etc. Em cada nível, os filhos do elemento de agrupamento devem ser constituídos por um título (H), um ou mais parágrafos (P) para o conteúdo desse nível e, talvez, um ou mais elementos de agrupamento adicionais para subsecções aninhadas.</li>
      <li>Fracamente estruturado. O documento é relativamente plano, tendo talvez apenas um ou dois níveis de elementos de agrupamento, com todos os títulos, parágrafos e outros BLSEs como seus filhos imediatos. Neste caso, a organização do material não se reflecte na estrutura lógica; no entanto, pode ser expressa pela utilização de títulos com níveis específicos (H1–H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Para os documentos PDF/UA-1, o caderno de especificações contém um aditamento relativo aos níveis de rubrica (expandir para ver pormenores):</summary>
    <p></p>
    <p>Se a semântica do documento exigir uma sequência decrescente de cabeçalhos, essa sequência deve proceder em estrita ordem numérica e não deve ignorar um nível de cabeçalho intermediário. H1 H2 H3 é permitido, enquanto H1 H3 não é.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Para garantir uma saída correcta, os utilizadores têm de assegurar que o conteúdo do documento de origem está devidamente organizado e que os níveis de contorno estão correctamente especificados para os parágrafos. Caso contrário, o Usuário deve verificar e corrigir a estrutura do documento de saída PDF.

{{% alert color="secondary" %}}
<details>
    <summary>Neste bloco, você pode ver exemplos: como definir níveis de contorno em Microsoft Word ou verificar e corrigir a estrutura do documento de saída PDF (expandir para ver detalhes).</summary>
    <p></p>
    <p>Em Microsoft Word, os estilos "Título X" padrão podem ser usados para definir o nível de contorno:</p>
    <img src="m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>Além disso, o nível de contorno pode ser verificado ou alterado na janela " parágrafo:</p>
    <img src="m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>No Acrobat, a estrutura do documento pode ser verificada ou alterada no painel " Tags:</p>
    <img src="acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### Marcar o Conteúdo como um artefacto

| PDF níveis de Conformidade normalizados dentro de Aspose.Words | Presença de exigência |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

No momento, Aspose.Words marca cabeçalhos e rodapés de páginas, separadores de notas, células de cabeçalho de tabela repetidas e imagens decorativas como artefatos. Note-se que esta lista poderá ser actualizada no futuro.

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expandir para ver detalhes):</summary>
    <p></p>
    <p>Os objetos gráficos em um documento podem ser divididos em duas classes:</p>
    </ol>
      <li>O conteúdo real de um documento compreende objetos que representam material originalmente introduzido pelo autor do documento.</li>
      <li>Artefatos são objetos gráficos que não fazem parte do conteúdo original do autor, mas são gerados pelo escritor em conformidade no curso de paginação, layout ou outros processos estritamente mecânicos.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Se um documento contiver qualquer outro conteúdo que deva ser marcado como um artefato, ou se algum dos conteúdos artificiais for um conteúdo real, os clientes devem corrigir isso na saída PDF.

{{% alert color="secondary" %}}
<details>
    <summary>Neste bloco, você pode ver exemplos: como marcar formas como decorativas em Microsoft Word ou marcar forma como um artefato no documento de saída PDF (expandir para ver detalhes).</summary>
    <p></p>
    <p>Por exemplo, as formas podem ser marcadas como decorativas em Microsoft Word, pelo que serão exportadas para PDF como um artefacto:</p>
    <img src="m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>Você pode marcar a forma como um artefato na saída PDF:</p>
   <img src="acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>Além disso, você pode alternar o texto em um cabeçalho do artefato para o conteúdo real na saída PDF:</p>
    <img src="acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Especificação Da Linguagem Natural

| PDF níveis de Conformidade normalizados dentro de Aspose.Words | Presença de exigência |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

O idioma do texto é especificado em Microsoft Word documentos. Aspose.Words exporta o idioma especificado para uma saída PDF com o atributo *Lang* anexado a uma sequência de conteúdo marcado ou uma tag Span-é controlado pela propriedade [ExportLanguageToSpanTag](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_exportlanguagetospantag/). Geralmente, não há problemas de idioma quando o texto é inserido pelo usuário via Microsoft Word. Mas existe a possibilidade de a linguagem ser imprecisa se o texto for gerado automaticamente.

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expandir para ver detalhes):</summary>
    <p></p>
    <p>A linguagem natural predefinida para todo o texto num ficheiro deve ser especificada pela entrada Lang no dicionário do Catálogo do documento.</p>
    <p>Todo o conteúdo textual de um ficheiro diferente do idioma predefinido deve ser indicado pelo uso de uma propriedade `Lang` anexada a uma sequência de conteúdo marcado ou por uma entrada Lang num dicionário de elementos de estrutura ...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Além disso, para PDF/UA-1, a especificação nos diz o seguinte (expanda para ver detalhes):</summary>
    <p></p>
    <p>A língua Natural deve ser declarada ... as alterações na língua natural devem ser declaradas.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Neste bloco, você pode ver exemplos: Como garantir que o idioma seja especificado corretamente (expandir para ver detalhes).</summary>
    <p></p>
    <p>Os utilizadores devem assegurar-se de que o idioma está correctamente especificado no documento do Word de origem:</p>
    <img src="m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>Ou o documento de saída PDF:</p>
    <img src="acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Legenda Da Figura

| PDF níveis de Conformidade normalizados dentro de Aspose.Words | Presença de exigência |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word os documentos permitem aos utilizadores adicionar legendas.

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expandir para ver detalhes):</summary>
    <p></p>
    <p>Uma legenda que acompanha uma figura deve ser marcada com uma etiqueta de legenda.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

Atualmente, Aspose.Words não é possível exportar legendas com a Tag Caption, portanto, elas devem ser sinalizadas na saída PDF.

{{% alert color="secondary" %}}
<details>
    <summary>Neste bloco, você pode ver exemplos: como inserir a legenda (expandir para ver detalhes).</summary>
    <p></p>
    <p>Em Microsoft Word, a legenda pode ser inserida através do menu de contexto:</p>
    <img src="figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>No Acrobat, a legenda pode ser adicionada ou alterada através da caixa de diálogo Propriedades `Object`:</p>
    <img src="figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Descrições Alternativas

| PDF níveis de Conformidade normalizados dentro de Aspose.Words | Presença de exigência |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word os documentos permitem aos utilizadores adicionar texto alternativo a imagens, formas e tabelas. Aspose.Words exporta esse texto alternativo para a saída PDF.

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expandir para ver detalhes):</summary>
    <p></p>
    <p>Todos os elementos estruturais cujo conteúdo não tenha um análogo textual predeterminado natural, por exemplo, imagens, fórmulas, etc., deve fornecer uma descrição de texto alternativo usando a entrada Alt no dicionário de elementos de estrutura...</p>
    <p>NOTE as descrições alternativas fornecem descrições textuais que auxiliam na interpretação adequada de conteúdos não textuais opacos.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Neste bloco, você pode ver exemplos: Como garantir que todos os elementos tenham um texto alternativo (expandir para ver detalhes).</summary>
    <p></p>
    <p>Os utilizadores devem assegurar que todos os elementos têm um texto alternativo no documento Word de origem:</p>
    <img src="m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Ou o documento de saída PDF:</p>
    <img src="acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Descrições alternativas para hiperligações

| PDF níveis de Conformidade normalizados dentro de Aspose.Words | Presença de exigência |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Além do ponto anterior, os documentos Microsoft Word também permitem aos utilizadores adicionar texto alternativo a hiperligações. Aspose.Words exporta esse texto alternativo para a saída PDF.

Infelizmente, nem todos os aplicativos permitem que você configure uma descrição alternativa. Por exemplo, Adobe Acrobat actualmente não permite configurar essa descrição para hiperligações. Mas em Microsoft Word, você pode fazer isso da seguinte maneira:

<img src="alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

Às vezes, há um problema que não é possível definir texto alternativo para hiperligações geradas automaticamente no índice (TOC) através do Microsoft Word GUI. Aspose.Words poderia atualizar esses campos e gerar os links por conta própria.

Siga o exemplo de código para atualizar os campos `TOC` usando o modelo de objeto de Documento Aspose.Words (DOM):

{{< highlight cpp >}}
auto doc = MakeObject<Document>(filename);
auto tocHyperLinks = doc->get_Range()->get_Fields()->
    LINQ_Where([](SharedPtr<Field> f) {return f->get_Type() == FieldType::FieldHyperlink; })->            
    LINQ_Where([](SharedPtr<FieldHyperlink> f) { return f->get_DisplayResult().StartsWith(u"#_Toc"); });

for (const auto& link : tocHyperLinks)
    link->set_ScreenTip(link->get_DisplayResult());

auto opt = MakeObject<PdfSaveOptions>();
opt->set_Compliance(PdfCompliance::PdfUa1);
opt->set_DisplayDocTitle(true);
opt->set_ExportDocumentStructure(true);
opt->get_OutlineOptions()->set_HeadingsOutlineLevels(3);
opt->get_OutlineOptions()->set_CreateMissingOutlineLevels(true);

auto outFile = filename.substr(0, filename.find_last_of('.')) + "_aw.pdf";
doc->Save(outFile, opt);
{{< /highlight >}}

### Cabeçalhos Das Tabelas

| PDF níveis de Conformidade normalizados dentro de Aspose.Words | Presença de exigência |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

As tabelas em PDF/UA-1 documentos devem ter cabeçalhos-coluna, linha ou ambos. PDF/A requer apenas marcação de tabela padrão, que não tem restrições adicionais. Observe que Aspose.Words gera a marcação de tabela padrão automaticamente.

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expandir para ver detalhes):</summary>
    <p></p>
    <p>As tabelas devem incluir cabeçalhos ... as tabelas podem conter cabeçalhos de coluna, cabeçalhos de linha ou ambos.</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Neste bloco, você pode ver exemplos: como definir o cabeçalho da tabela (expandir para ver detalhes).</summary>
    <p></p>
    <p>O cabeçalho da tabela pode ser configurado no documento de origem Microsoft Word:</p>
    <img src="table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>Ou a saída PDF:</p>
    <img src="table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Texto De Substituição

| PDF níveis de Conformidade normalizados dentro de Aspose.Words | Presença de exigência |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expandir para ver detalhes):</summary>
    <p></p>
    <p>A especificação nos diz o seguinte:</p>
    <p>Todos os elementos da estrutura textual representados de forma não normalizada, por exemplo, caracteres personalizados ou gráficos em linha, devem fornecer texto de substituição utilizando a entrada `ActualText` no dicionário de elementos da estrutura...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word o documento não permite que os utilizadores definam textos de substituição. Portanto, isso precisa ser verificado e corrigido na saída PDF:

<img src="acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Abreviaturas e acrónimos Expansões

| PDF níveis de Conformidade normalizados dentro de Aspose.Words | Presença de exigência |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expandir para ver detalhes):</summary>
    <p></p>
    <p>Todas as instâncias de abreviaturas e siglas no conteúdo textual devem ser colocadas numa sequência de conteúdo marcado com uma etiqueta Span cuja propriedade e proporcione uma expansão textual da abreviatura ou acrónimo...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word documento não permite aos utilizadores definir abreviaturas e acrónimos expansões. Portanto, isso precisa ser verificado e corrigido na saída PDF:

<img src="acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Título Do Documento

| PDF níveis de Conformidade normalizados dentro de Aspose.Words | Presença de exigência |
| -------------------------------------------------- | ------------------------------------------------------------ |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/A-4 |  |
| PDF/UA-1 | {{< emoticons/tick >}}<br />O documento em PDF/UA-1 deve ter um título. |

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expandir para ver detalhes):</summary>
    <p></p>
    <p>A especificação nos diz o seguinte:</p>
    <p>O fluxo de metadados no dicionário do Catálogo do documento deve conter uma entrada dc: title, em que dc é o prefixo recomendado para o esquema de metadados Dublin Core…</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Neste bloco, você pode ver exemplos: como definir o título do documento (expandir para ver detalhes).</summary>
    <p></p>
    <p>O título do documento pode ser configurado no documento de origem Microsoft Word:</p>
    <img src="document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>Ou a saída PDF:</p>
    <img src="document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Requisitos Da Fonte

| PDF níveis de Conformidade normalizados dentro de Aspose.Words | Presença de exigência |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Há também uma série de nuances de trabalhar com fontes ao converter para PDF/A-1, PDF/A-2, PDF/A-4 ou PDF/UA-1 formatos usando Aspose.Words. Eles devem ser levados em consideração se você quiser evitar possíveis problemas com o documento de saída.

As secções seguintes descrevem tais nuances e opções para a sua solução.

### Requisitos Legais Da Fonte

| PDF níveis de Conformidade normalizados dentro de Aspose.Words | Presença de exigência |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Aspose.Words não verifica as restrições legais das fontes utilizadas – cabe aos utilizadores. Em outras palavras, um usuário não deve fornecer fontes inadequadas para a conversão de PDF Usando Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expandir para ver detalhes):</summary>
    <p></p>
    <p>Apenas serão utilizados programas de fontes que possam ser legalmente incorporados num ficheiro para uma prestação ilimitada e universal.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (exatamente as mesmas citações em duas especificações)</p>
</details>
{{% /alert %}}

### .notdef Glyph

| PDF níveis de Conformidade normalizados dentro de Aspose.Words | Presença de exigência |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

É proibida a utilização do glifo `.notdef`. O glifo `.notdef` aparecerá se um documento contiver caracteres que não estão presentes na fonte selecionada e que também não podem ser resolvidos através do mecanismo de Fallback da fonte.

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expandir para ver detalhes):</summary>
    <p></p>
    <p>Um documento em conformidade não deve conter uma referência ao .notdef glifo de qualquer um dos operadores de exibição de texto, independentemente do modo de renderização de texto, em qualquer fluxo de conteúdo.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (exatamente as mesmas citações em duas especificações)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Neste bloco, você pode ver exemplos: como remover ou substituir esses caracteres (expandir para ver detalhes).</summary>
    <p></p>
    <p>Os usuários devem remover ou substituir esses caracteres no documento do Word de origem:</p>
    <img src="m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Ou o documento de saída PDF usando a ferramenta " Editar PDF":</p>
    <img src="acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Área De Utilização Privada (PUA)

| PDF níveis de Conformidade normalizados dentro de Aspose.Words | Presença de exigência |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

Os caracteres da área de uso privado (PUA) aparecem principalmente para Fontes simbólicas Windows como "Symbol", "Wingdings", "Webdings" e outros. Microsoft Word os formatos não fornecem uma opção para armazenar texto real para caracteres.

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expandir para ver detalhes):</summary>
    <p></p>
    <p>Apenas para conformidade de Nível A, para qualquer carácter ... isso é mapeado para um código ou códigos na área de Uso privado Unicode (PUA), uma entrada ActualText... devem estar presentes para esse carácter ou para uma sequência de caracteres da qual esse carácter faça parte.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol" é uma fonte Unicode Windows que pode ser usada como alternativa às fontes simbólicas.

{{% alert color="secondary" %}}
<details>
    <summary>Neste bloco, você pode ver exemplos: o que o Usuário deve fazer para resolver o problema com fontes simbólicas (expandir para ver detalhes).</summary>
    <p></p>
    <p>Substitua a fonte simbólica por uma fonte Unicode no documento do Word de origem:</p>
    <img src="m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>Ou adicione uma entrada ActualText aos caracteres problemáticos no documento de saída PDF:</p>
    <img src="acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}