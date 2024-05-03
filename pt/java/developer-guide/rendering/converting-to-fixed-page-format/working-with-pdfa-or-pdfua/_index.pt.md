---
title: Trabalhar com PDF/A ou PDF/UA
second_title: Aspose.Words para Java
articleTitle: Trabalhar com PDF/A ou PDF/UA
linktitle: Trabalhar com PDF/A ou PDF/UA
description: "Converter para PDF/A-1, PDF/A-2, PDF/A-4 e PDF/UA usando Java. Existem alguns problemas ao converter para documentos PDF/A e Aspose.Words para Java resolve-os."
type: docs
weight: 28
url: /pt/java/working-with-pdfa-or-pdfua/
---

O formato PDF/A e PDF/UA impõe vários requisitos relacionados ao conteúdo do documento que não pode ser cumprido durante a conversão automática de um documento no formato Word para PDF. Estes requisitos devem ser verificados e corrigidos em um documento do Word antes da conversão ou em um documento PDF após a conversão, a fim de produzir um documento totalmente compatível com PDF/A e PDF/UA.

Os requisitos básicos são para a estrutura ou fontes de um documento PDF/A e PDF/UA, que consideraremos nas seguintes seções.

{{% alert color="primary" %}}

Por favor, note que a saída PDF/UA-1 também será compatível com WCAG 2.0 e Section 508.

{{% /alert %}}

## Requisitos de Estrutura de Documento

Os requisitos atuais são para formatos PDF/A-1a, PDF/A-2a, PDF/A-4 e PDF/UA-1.

Há algumas nuances de como Aspose.Words funciona ao converter para vários padrões de formato PDF. Eles devem ser levados em conta se você quiser obter o resultado esperado.

{{% alert color="primary" %}}

Note que não há requisitos de estrutura lógica para PDF/A-4. Por esta razão, não consideramos a versão PDF/A-4 nesta seção "Requisitos de Estrutura de Documentação".

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expand para ver detalhes):</summary>
    <p></p>
    <p>É aconselhável que os escritores gerem informações estruturais ou semânticas utilizando processos automatizados sem verificação adequada.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

As subseções abaixo descrevem nuances de como Aspose.Words funciona ao converter para vários padrões e opções de formato PDF para sua solução.

### Tipo de estrutura

|  níveis de conformidade padrão PDF dentro Aspose.Words |  Presença de exigência |
|  --------------------------------------------------  |  -----------------------  |
|  PDF / A-1a |   {{< emoticons/tick >}}   |
|  PDF / A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Um documento PDF é uma sequência de blocos como cabeçalhos, parágrafos, tabelas e outros. Estes blocos formam uma estrutura de documentos – fortemente ou fraco.

Ambas as estruturas fortes e fracas são válidas para PDF/A. Microsoft Word documentos têm uma estrutura fraca por design, e Aspose.Words cria PDF com a estrutura fraca respectivamente e também gera cabeçalhos de acordo com os níveis de contorno dos parágrafos no documento de origem.

Para um documento PDF/UA-1 com uma estrutura fraca, é adicionalmente necessário que os números de cabeçalho ir em ordem sem lacunas.

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expand para ver detalhes):</summary>
    <p></p>
    <p>A estrutura de nível de blocos pode seguir um dos dois principais paradigmas:</p>
    </ol>
      <li>Fortemente estruturado. Os elementos de agrupamento aninham a tantos níveis quanto necessário para refletir a organização do material em artigos, seções, subseções, e assim por diante. Em cada nível, as crianças do elemento de agrupamento devem consistir em uma posição (H), um ou mais parágrafos (P) para conteúdo nesse nível, e talvez um ou mais elementos de agrupamento adicionais para subseções aninhadas.</li>
      <li>Muito estruturado. O documento é relativamente plano, tendo talvez apenas um ou dois níveis de elementos de agrupamento, com todos os títulos, parágrafos e outros BLSEs como seus filhos imediatos. Neste caso, a organização do material não se reflete na estrutura lógica; contudo, pode ser expressa pelo uso de títulos com níveis específicos (H1–H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Para documentos PDF/UA-1, a especificação contém uma adição relacionada aos níveis de posição (expand to see details):</summary>
    <p></p>
    <p>Se a semântica do documento exigir uma seqüência descendente de cabeçalhos, tal seqüência deve proceder em ordem numérica estrita e não pulará um nível de cabeçalho interveniente. H1 H2 H3 é permitido, enquanto H1 H3 não é.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Para garantir a saída correta, os usuários têm que garantir que o conteúdo do documento de origem seja adequadamente organizado e os níveis de contorno são especificados corretamente para parágrafos. Caso contrário, o usuário deve verificar e corrigir a estrutura do documento PDF de saída.

{{% alert color="secondary" %}}
<details>
    <summary>Neste bloco, você pode ver exemplos: como definir níveis de contorno em Microsoft Word ou verificar e corrigir a estrutura do documento PDF de saída (expand para ver detalhes).</summary>
    <p></p>
    <p>Em Microsoft Word padrão "Heading X" estilos podem ser usados para definir o nível de contorno:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>Além disso, o nível de contorno pode ser verificado ou alterado na janela "Paragrafo":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>No Acrobat a estrutura do documento pode ser verificada ou alterada no painel "Tags":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### Marcar o conteúdo como um artefato

|  níveis de conformidade padrão PDF dentro Aspose.Words |  Presença de exigência |
|  --------------------------------------------------  |  -----------------------  |
|  PDF / A-1a |   {{< emoticons/tick >}}   |
|  PDF / A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

No momento, Aspose.Words marcas cabeçalhos de página e rodapés, separadores de notas, células de cabeçalho de mesa repetidas e imagens decorativas como artefatos. Note que esta lista pode ser atualizada no futuro.

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expand para ver detalhes):</summary>
    <p></p>
    <p>Os objetos gráficos em um documento podem ser divididos em duas classes:</p>
    </ol>
      <li>O conteúdo real de um documento compreende objetos que representam material originalmente introduzido pelo autor do documento.</li>
      <li>Os artefatos são objetos gráficos que não fazem parte do conteúdo original do autor, mas são gerados pelo escritor em conformidade no curso da paginação, layout ou outros processos estritamente mecânicos.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Se um documento contém qualquer outro conteúdo que deve ser marcado como um artefato, ou se algum do conteúdo artefato é um conteúdo real, os clientes devem corrigir isso no PDF de saída.

{{% alert color="secondary" %}}
<details>
    <summary>Neste bloco, você pode ver exemplos: como marcar formas como decorativas em Microsoft Word ou marca a forma como um artefato no documento PDF de saída (expand para ver detalhes).</summary>
    <p></p>
    <p>Por exemplo, formas podem ser marcadas como decorativas em Microsoft Word, para que eles serão exportados para PDF como um artefato:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>Você pode marcar a forma como um artefato na saída PDF:</p>
      <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>Além disso, você pode alternar texto em um cabeçalho do artefato para conteúdo real no PDF de saída:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Especificação de linguagem natural

|  níveis de conformidade padrão PDF dentro Aspose.Words |  Presença de exigência |
|  --------------------------------------------------  |  -----------------------  |
|  PDF / A-1a |   {{< emoticons/tick >}}   |
|  PDF / A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Idioma de texto é especificado em Microsoft Word documentos. Aspose.Words exporta o idioma especificado para um PDF de saída com o *Lang* atributo anexado a uma sequência de conteúdo marcado ou uma tag de Span – é controlado pelo [ExportLanguageToSpanTag](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportLanguageToSpanTag) propriedade. Geralmente não há problemas de idioma quando o texto é inserido pelo usuário via Microsoft Word. Mas há uma possibilidade de que a linguagem possa ser imprecisa se o texto for gerado automaticamente.

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expand para ver detalhes):</summary>
    <p></p>
    <p>A linguagem natural padrão para todo o texto em um arquivo deve ser especificada pela entrada Lang no dicionário do catálogo do documento.</p>
    <p>Todo o conteúdo textual dentro de um arquivo que difere do idioma padrão deve ser indicado pelo uso de um `Lang` propriedade anexada a uma sequência marcada-conteúdo, ou por uma entrada de Lang em um dicionário elemento estrutura ...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Além de PDF/UA-1, a especificação nos diz o seguinte (expand para ver detalhes):</summary>
    <p></p>
    <p>A linguagem natural deve ser declarada... As alterações na língua natural são declaradas.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Neste bloco, você pode ver exemplos: como garantir que a linguagem é especificada corretamente (expand para ver detalhes).</summary>
    <p></p>
    <p>Os usuários devem garantir que a linguagem seja especificada corretamente no documento do Word de origem:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>Ou o documento PDF de saída:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Captura de figuras

|  níveis de conformidade padrão PDF dentro Aspose.Words |  Presença de exigência |
|  --------------------------------------------------  |  -----------------------  |
|  PDF / A-1a |                           |
|  PDF / A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word documentos permitem aos usuários adicionar legenda figura.

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expand para ver detalhes):</summary>
    <p></p>
    <p>Uma legenda que acompanha uma figura deve ser marcada com uma legenda.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

Atualmente Aspose.Words não pode exportar legendas com a tag Caption, então eles devem ser sinalizados no PDF de saída.

{{% alert color="secondary" %}}
<details>
    <summary>Neste bloco, você pode ver exemplos: como inserir a legenda (expand para ver detalhes).</summary>
    <p></p>
    <p>Em Microsoft Word, a legenda pode ser inserida através do menu de contexto:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>Em Acrobat a legenda poderia ser adicionada ou alterada via `Object` Propriedades diálogo:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Descrições alternadas

|  níveis de conformidade padrão PDF dentro Aspose.Words |  Presença de exigência |
|  --------------------------------------------------  |  -----------------------  |
|  PDF / A-1a |   {{< emoticons/tick >}}   |
|  PDF / A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word documentos permitem que os usuários adicionem texto alternativo a imagens, formas e tabelas. Aspose.Words exporta tal texto alternativo para a saída PDF.

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expand para ver detalhes):</summary>
    <p></p>
    <p>Todos os elementos de estrutura cujo conteúdo não tem um análogo textual pré-determinado natural, por exemplo, imagens, fórmulas, etc, devem fornecer uma descrição de texto alternativa usando a entrada Alt no dicionário elemento estrutura...</p>
    <p>NOTA Descrições alternadas fornecem descrições textuais que ajudam na interpretação adequada de conteúdo não textual opaco de outra forma.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Neste bloco, você pode ver exemplos: como garantir que todos os elementos tenham um texto alternativo (expandir para ver detalhes).</summary>
    <p></p>
    <p>Os usuários devem garantir que todos os elementos tenham um texto alternativo no documento fonte do Word:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Ou o documento PDF de saída:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Descrições alternadas para hiperlinks

|  níveis de conformidade padrão PDF dentro Aspose.Words |  Presença de exigência |
|  --------------------------------------------------  |  -----------------------  |
|  PDF / A-1a |                           |
|  PDF / A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Além do ponto anterior, Microsoft Word documentos também permitem que os usuários adicionem texto alternativo a hiperlinks. Aspose.Words exporta tal texto alternativo para a saída PDF.

Infelizmente, nem todas as aplicaÃ§Ãμes permitem configurar uma descrição alternativa. Por exemplo, Adobe Acrobat Atualmente não permite configurar tal descrição para hiperlinks. Mas... Microsoft Word, você pode fazer isso da seguinte forma:

<img src="/words/java/working-with-pdfa-or-pdfua/alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

Às vezes há um problema que não é possível definir texto alternativo para hiperlinks autogenerados na tabela de conteúdo (TOC) através do Microsoft Word GUI. Aspose.Words poderia atualizar tais campos e gerar os links por conta própria.

Siga o exemplo de código para atualizar `TOC` campos usando o Aspose.Words Document Object Model (DOM:

{{< highlight java >}}
Document doc = new Document(fileName);
ArrayList<FieldHyperlink> tocHyperLinks = new ArrayList<>();

for (Field field : doc.getRange().getFields()) {
    if (field.getType() == FieldType.FIELD_HYPERLINK) {
        FieldHyperlink hyperlink = (FieldHyperlink) field;
        if (hyperlink.getFieldCode().startsWith("#_Toc")) {
            tocHyperLinks.add(hyperlink);
        }
    }
}

for (FieldHyperlink link : tocHyperLinks)
    link.setScreenTip(link.getDisplayResult());

PdfSaveOptions opt = new PdfSaveOptions();
opt.setCompliance(PdfCompliance.PDF_UA_1);
opt.setDisplayDocTitle(true);
opt.setExportDocumentStructure(true);
opt.getOutlineOptions().setHeadingsOutlineLevels(3);
opt.getOutlineOptions().setCreateMissingOutlineLevels(true);

String outFile = fileName.substring(0,fileName.lastIndexOf('.')) + "_aw.pdf";
doc.save(outFile, opt);
{{< /highlight >}}

### Cabeçalhos de mesa

|  níveis de conformidade padrão PDF dentro Aspose.Words |  Presença de exigência |
|  --------------------------------------------------  |  -----------------------  |
|  PDF / A-1a |                           |
|  PDF / A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Tabelas em documentos PDF/UA-1 devem ter cabeçalhos – coluna, linha ou ambos. PDF/A só requer marcação de tabela padrão, que não tem restrições adicionais. Note que Aspose.Words gera a marcação de tabela padrão automaticamente.

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expand para ver detalhes):</summary>
    <p></p>
    <p>Tabelas devem incluir cabeçalhos... As tabelas podem conter cabeçalhos de coluna, cabeçalhos de linha ou ambos.</p>
    <p>ISO-14289-1, 7,5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Neste bloco, você pode ver exemplos: como definir o cabeçalho da tabela (expand para ver detalhes).</summary>
    <p></p>
    <p>O cabeçalho da tabela pode ser configurado ou a fonte Microsoft Word documento:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>Ou o PDF de saída:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Texto de substituição

|  níveis de conformidade padrão PDF dentro Aspose.Words |  Presença de exigência |
|  --------------------------------------------------  |  -----------------------  |
|  PDF / A-1a |   {{< emoticons/tick >}}   |
|  PDF / A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expand para ver detalhes):</summary>
    <p></p>
    <p>A especificação nos diz o seguinte:</p>
    <p>Todos os elementos de estrutura textual que são representados de forma não padrão, por exemplo, caracteres personalizados ou gráficos inline, devem fornecer texto de substituição usando o `ActualText` entrada na estrutura elemento dicionário...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word documento não permite aos usuários definir texto de substituição. Então isso precisa ser verificado e corrigido no PDF de saída:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Abreviações e Acronyms Expansões

|  níveis de conformidade padrão PDF dentro Aspose.Words |  Presença de exigência |
|  --------------------------------------------------  |  -----------------------  |
|  PDF / A-1a |   {{< emoticons/tick >}}   |
|  PDF / A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expand para ver detalhes):</summary>
    <p></p>
    <p>Todas as instâncias de abreviaturas e siglas em conteúdo textual devem ser colocadas em uma sequência marcada-conteúdo com uma tag de Span cuja propriedade E fornece uma expansão textual da abreviação ou acrônimo...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word documento não permite aos usuários definir abreviaturas e acrônimos expansões. Assim, isso precisa ser verificado e corrigido no PDF de saída:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Título do documento

|  níveis de conformidade padrão PDF dentro Aspose.Words |  Presença de exigência |
|  --------------------------------------------------  |  ------------------------------------------------------------  |
|  PDF / A-1a |                                                                |
|  PDF / A-2a |                                                                |
|  PDF/A-4 |                                                                |
|  PDF/UA-1 |  {{< emoticons/tick >}}<br/>Documento em PDF/UA-1 deve ter um título |

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expand para ver detalhes):</summary>
    <p></p>
    <p>A especificação nos diz o seguinte:</p>
    <p>O fluxo de metadados no dicionário de catálogo do documento deve conter uma entrada dc:title, onde dc é o prefixo recomendado para o esquema de metadados Dublin Core...</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Neste bloco, você pode ver exemplos: como definir o título do documento (expand para ver detalhes).</summary>
    <p></p>
    <p>O título do documento pode ser configurado ou a fonte Microsoft Word documento:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>Ou o PDF de saída:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Requisitos de fonte

|  níveis de conformidade padrão PDF dentro Aspose.Words |  Presença de exigência |
|  --------------------------------------------------  |  -----------------------  |
|  PDF / A-1a |   {{< emoticons/tick >}}   |
|  PDF / A-1b |   {{< emoticons/tick >}}   |
|  PDF / A-2a |   {{< emoticons/tick >}}   |
|  PDF / A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Há também um número de nuances de trabalhar com fontes ao converter para PDF/A-1, PDF/A-2, PDF/A-4 ou formatos PDF/UA-1 usando Aspose.Words. Eles devem ser levados em conta se você quiser evitar possíveis problemas com o documento de saída.

As seções abaixo descrevem tais nuances e opções para sua solução.

### Requisitos legais da fonte

|  níveis de conformidade padrão PDF dentro Aspose.Words |  Presença de exigência |
|  --------------------------------------------------  |  -----------------------  |
|  PDF / A-1a |   {{< emoticons/tick >}}   |
|  PDF / A-1b |   {{< emoticons/tick >}}   |
|  PDF / A-2a |   {{< emoticons/tick >}}   |
|  PDF / A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words não verifica as restrições legais das fontes usadas – cabe aos usuários. Em outras palavras, um usuário não deve fornecer fontes inadequadas para conversão de PDF usando Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expand para ver detalhes):</summary>
    <p></p>
    <p>Somente programas de fonte que são legalmente embeddable em um arquivo para renderização ilimitada, universal deve ser usado.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (exatamente as mesmas citações em duas especificações)</p>
</details>
{{% /alert %}}

### .notdef Glyph

|  níveis de conformidade padrão PDF dentro Aspose.Words |  Presença de exigência |
|  --------------------------------------------------  |  -----------------------  |
|  PDF / A-1a |                           |
|  PDF / A-1b |                           |
|  PDF / A-2a |   {{< emoticons/tick >}}   |
|  PDF / A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

O uso do `.notdef` glyph é proibido. O `.notdef` glyph aparecerá se um documento contém caracteres que não estão presentes na fonte selecionada e que também não podem ser resolvidos através do mecanismo Font Fallback.

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expand para ver detalhes):</summary>
    <p></p>
    <p>Um documento em conformidade não deve conter uma referência ao .notdef glyph de qualquer um do texto mostrando operadores, independentemente do modo de renderização de texto, em qualquer fluxo de conteúdo.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (exatamente as mesmas citações em duas especificações)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Neste bloco, você pode ver exemplos: como remover ou substituir esses caracteres (expand para ver detalhes).</summary>
    <p></p>
    <p>Os usuários devem remover ou substituir esses caracteres no documento do Word de origem:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Ou o documento PDF de saída usando a ferramenta "Editar PDF":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Área de uso privado (PUA)

|  níveis de conformidade padrão PDF dentro Aspose.Words |  Presença de exigência |
|  --------------------------------------------------  |  -----------------------  |
|  PDF / A-1a |                           |
|  PDF / A-1b |                           |
|  PDF / A-2a |   {{< emoticons/tick >}}   |
|  PDF / A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

Os caracteres Private Use Area (PUA) aparecem principalmente para Windows fontes simbólicas como "Symbol", "Wingdings", "Webdings", e outros. Microsoft Word formatos não fornecem uma opção para armazenar texto real para caracteres.

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expand para ver detalhes):</summary>
    <p></p>
    <p>Para o nível Apenas uma conformidade, para qualquer personagem ... que é mapeada para um código ou códigos na Área de Uso Privado Unicode (PUA), uma entrada ActualText ... estará presente para este personagem ou uma sequência de caracteres dos quais tal personagem é uma parte.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol" é um Windows Fonte Unicode que poderia ser usado como uma alternativa para fontes simbólicas.

{{% alert color="secondary" %}}
<details>
    <summary>Neste bloco, você pode ver exemplos: o que o usuário deve fazer para resolver o problema com fontes simbólicas (expand para ver detalhes).</summary>
    <p></p>
    <p>Substituir a fonte simbólica com um Unicode um no documento fonte do Word:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>Ou adicione uma entrada ActualText aos caracteres problemáticos no documento PDF de saída:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
