---
title: Trabalhando com PDF/A ou PDF/UA
second_title: Aspose.Words para Python
articleTitle: Trabalhando com PDF/A ou PDF/UA
linktitle: Trabalhando com PDF/A ou PDF/UA
description: "Converta para PDF/A-1, PDF/A-2, PDF/A-4 e PDF/UA usando Python. Existem alguns problemas ao converter para documentos PDF/A, e Aspose.Words para Python os resolve."
type: docs
weight: 28
url: /pt/python-net/working-with-pdfa-or-pdfua/
timestamp: 2024-01-27-14-07-04
---

Os formatos PDF/A e PDF/UA impõem vários requisitos relacionados ao conteúdo do documento que não podem ser atendidos durante a conversão automática de um documento no formato Word para PDF. Esses requisitos devem ser verificados e corrigidos em um documento Word antes da conversão ou em um documento PDF após a conversão, a fim de produzir um documento totalmente compatível com PDF/A e PDF/UA.

Os requisitos básicos são para a estrutura ou fontes de um documento PDF/A e PDF/UA, que consideraremos nas seções a seguir.

{{% alert color="primary" %}}

Observe que a saída PDF/UA-1 também será compatível com WCAG 2.0 e Seção 508.

{{% /alert %}}

## Requisitos de estrutura do documento

Os requisitos atuais são para os formatos PDF/A-1a, PDF/A-2a, PDF/A-4 e PDF/UA-1.

Existem algumas nuances de como o Aspose.Words funciona ao converter para vários padrões de formato PDF. Eles devem ser levados em consideração se você deseja obter o resultado esperado.

{{% alert color="primary" %}}

Observe que não há requisitos de estrutura lógica para PDF/A-4. Por esse motivo, não consideramos a versão PDF/A-4 nesta seção "Requisitos de Estrutura do Documento".

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expanda para ver detalhes):</summary>
    <p></p>
    <p>Não é aconselhável que os redatores gerem informações estruturais ou semânticas usando processos automatizados sem a verificação apropriada.</p>
    <p>ISO19005-2, 6.7.1</p>
</details>
{{% /alert %}}

As subseções abaixo descrevem as nuances de como o Aspose.Words funciona ao converter para vários padrões de formato PDF e opções para sua solução.

### Tipo de estrutura

|  Níveis de conformidade padrão de PDF em Aspose.Words |  Presença de exigência |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Um documento PDF é uma sequência de blocos como títulos, parágrafos, tabelas e outros. Esses blocos formam uma estrutura de documento – forte ou fraca.

Ambas as estruturas fortes e fracas são válidas para PDF/A. Os documentos Microsoft Word têm uma estrutura fraca por design, e o Aspose.Words cria PDF com a estrutura fraca, respectivamente, e também gera títulos de acordo com os níveis de contorno dos parágrafos no documento de origem.

Para um documento PDF/UA-1 com uma estrutura fraca, é adicionalmente necessário que os números dos títulos estejam em ordem, sem lacunas.

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expanda para ver detalhes):</summary>
    <p></p>
    <p>A estrutura em nível de bloco pode seguir um dos dois paradigmas principais:</p>
    </ol>
      <li>Fortemente estruturado. Os elementos de agrupamento são aninhados em tantos níveis quantos forem necessários para refletir a organização do material em artigos, seções, subseções e assim por diante. Em cada nível, os filhos do elemento de agrupamento devem consistir em um título (H), um ou mais parágrafos (P) para o conteúdo daquele nível e talvez um ou mais elementos de agrupamento adicionais para subseções aninhadas.</li>
      <li>Fracamente estruturado. O documento é relativamente plano, tendo talvez apenas um ou dois níveis de elementos de agrupamento, com todos os títulos, parágrafos e outros BLSEs como seus filhos imediatos. Neste caso, a organização do material não se reflete na estrutura lógica; no entanto, pode ser expresso pela utilização de títulos com níveis específicos (H1–H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Para documentos PDF/UA-1, a especificação contém um acréscimo relacionado aos níveis de cabeçalho (expanda para ver detalhes):</summary>
    <p></p>
    <p>Se a semântica do documento exigir uma sequência descendente de cabeçalhos, tal sequência deverá proceder em ordem numérica estrita e não deverá pular um nível de cabeçalho intermediário. H1 H2 H3 é permitido, enquanto H1 H3 não.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Para garantir a saída correta, os usuários devem garantir que o conteúdo do documento de origem esteja devidamente organizado e que os níveis de estrutura de tópicos sejam especificados corretamente para os parágrafos. Caso contrário, o usuário deverá verificar e corrigir a estrutura do documento PDF de saída.

{{% alert color="secondary" %}}
<details>
    <summary>Neste bloco, você pode ver exemplos: como definir níveis de estrutura de tópicos em Microsoft Word ou verificar e corrigir a estrutura do documento PDF de saída (expanda para ver detalhes).</summary>
    <p></p>
    <p>No padrão Microsoft Word, os estilos "Título X" podem ser usados para definir o nível de estrutura de tópicos:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWTtítulo 1-2" style="width:800px"/>
    <p>Além disso, o nível do contorno pode ser verificado ou alterado na janela "Parágrafo":</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>No Acrobat, a estrutura do documento pode ser verificada ou alterada no painel "Tags":</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="Painel Acrobat Tags" style="width:800px"/>
</details>
{{% /alert %}}

### Marcando o conteúdo como um artefato

|  Níveis de conformidade padrão de PDF em Aspose.Words |  Presença de exigência |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

No momento, o Aspose.Words marca cabeçalhos e rodapés de páginas, separadores de notas, células repetidas de cabeçalhos de tabelas e imagens decorativas como artefatos. Observe que esta lista pode ser atualizada no futuro.

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expanda para ver detalhes):</summary>
    <p></p>
    <p>Os objetos gráficos em um documento podem ser divididos em duas classes:</p>
    </ol>
      <li>O conteúdo real de um documento compreende objetos que representam material originalmente introduzido pelo autor do documento.</li>
      <li>Artefatos são objetos gráficos que não fazem parte do conteúdo original do autor, mas são gerados pelo escritor conforme a paginação, layout ou outros processos estritamente mecânicos.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Se um documento contiver qualquer outro conteúdo que deva ser marcado como um artefato, ou se algum conteúdo artefato for um conteúdo real, os clientes deverão corrigir isso no PDF de saída.

{{% alert color="secondary" %}}
<details>
    <summary>Neste bloco, você pode ver exemplos: como marcar formas como decorativas em Microsoft Word ou marcar formas como artefatos no documento PDF de saída (expanda para ver detalhes).</summary>
    <p></p>
    <p>Por exemplo, as formas podem ser marcadas como decorativas em Microsoft Word, para que sejam exportadas para PDF como um artefato:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDecorativoForma" style="width:800px"/>
    <p>Você pode marcar a forma como um artefato no PDF de saída:</p>
   <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>Além disso, você pode alternar o texto em um cabeçalho do artefato para conteúdo real no PDF de saída:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Especificação de linguagem natural

|  Níveis de conformidade padrão de PDF em Aspose.Words |  Presença de exigência |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

O idioma do texto é especificado em documentos Microsoft Word. Aspose.Words exporta o idioma especificado para um PDF de saída com o atributo *Lang* anexado a uma sequência de conteúdo marcado ou a uma tag Span – é controlado pela propriedade [export_language_to_span_tag](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/export_language_to_span_tag/). Geralmente não há problemas de idioma quando o texto é inserido pelo usuário via Microsoft Word. Mas existe a possibilidade de a linguagem ser imprecisa se o texto for gerado automaticamente.

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expanda para ver detalhes):</summary>
    <p></p>
    <p>O idioma natural padrão para todo o texto em um arquivo deve ser especificado pela entrada Lang no dicionário Catálogo do documento.</p>
    <p>Todo o conteúdo textual dentro de um arquivo que difere do idioma padrão deve ser indicado pelo uso de uma propriedade `Lang` anexada a uma sequência de conteúdo marcado ou por uma entrada Lang em um dicionário de elementos de estrutura ...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Além disso, para PDF/UA-1, a especificação nos diz o seguinte (expanda para ver detalhes):</summary>
    <p></p>
    <p>A linguagem natural será declarada… As alterações na linguagem natural serão declaradas.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Neste bloco você pode ver exemplos: como garantir que o idioma seja especificado corretamente (expanda para ver detalhes).</summary>
    <p></p>
    <p>Os usuários devem garantir que o idioma seja especificado corretamente no documento Word de origem:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWIdioma" style="width:800px"/>
    <p>Ou o documento PDF de saída:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Descrições alternativas

|  Níveis de conformidade padrão de PDF em Aspose.Words |  Presença de exigência |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Documentos Microsoft Word permitem aos usuários adicionar texto alternativo a imagens, formas e tabelas. Aspose.Words exporta esse texto alternativo para o PDF de saída.

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expanda para ver detalhes):</summary>
    <p></p>
    <p>Todos os elementos da estrutura cujo conteúdo não tenha um análogo textual natural pré-determinado, por exemplo, imagens, fórmulas, etc., devem fornecer uma descrição de texto alternativa usando a entrada Alt no dicionário de elementos da estrutura...</p>
    <p>NOTA Descrições alternativas fornecem descrições textuais que auxiliam na interpretação adequada de conteúdo não textual que de outra forma seria opaco.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Neste bloco você pode ver exemplos: como garantir que todos os elementos tenham um texto alternativo (expanda para ver detalhes).</summary>
    <p></p>
    <p>Os usuários devem garantir que todos os elementos tenham um texto alternativo no documento Word de origem:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Ou o documento PDF de saída:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Texto de substituição

|  Níveis de conformidade padrão de PDF em Aspose.Words |  Presença de exigência |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expanda para ver detalhes):</summary>
    <p></p>
    <p>A especificação nos diz o seguinte:</p>
    <p>Todos os elementos da estrutura textual representados de maneira não padronizada, por exemplo, caracteres personalizados ou gráficos embutidos, devem fornecer texto de substituição usando a entrada `ActualText` no dicionário de elementos da estrutura...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

O documento Microsoft Word não permite que os usuários definam texto de substituição. Portanto, isso precisa ser verificado e corrigido no PDF de saída:

<img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Expansões de abreviaturas e siglas

|  Níveis de conformidade padrão de PDF em Aspose.Words |  Presença de exigência |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expanda para ver detalhes):</summary>
    <p></p>
    <p>Todas as ocorrências de abreviaturas e siglas no conteúdo textual devem ser colocadas em uma sequência de conteúdo marcado com uma tag Span cuja propriedade E fornece uma expansão textual da abreviatura ou sigla...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

O documento Microsoft Word não permite que os usuários definam abreviações e expansões de siglas. Portanto, isso precisa ser verificado e corrigido no PDF de saída:

<img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Requisitos de fonte

|  Níveis de conformidade padrão de PDF em Aspose.Words |  Presença de exigência |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Há também uma série de nuances no trabalho com fontes ao converter para os formatos PDF/A-1, PDF/A-2, PDF/A-4 ou PDF/UA-1 usando Aspose.Words. Eles devem ser levados em consideração se você quiser evitar possíveis problemas com o documento de saída.

As seções abaixo descrevem essas nuances e opções para resolvê-las.

### Requisitos legais de fonte

|  Níveis de conformidade padrão de PDF em Aspose.Words |  Presença de exigência |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words não verifica as restrições legais das fontes utilizadas – isso depende dos usuários. Em outras palavras, um usuário não deve fornecer fontes inadequadas para conversão de PDF usando Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expanda para ver detalhes):</summary>
    <p></p>
    <p>Somente programas de fontes legalmente incorporáveis em um arquivo para renderização ilimitada e universal deverão ser usados.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (exatamente as mesmas citações em duas especificações)</p>
</details>
{{% /alert %}}

### .notdef Glyph

|  Níveis de conformidade padrão de PDF em Aspose.Words |  Presença de exigência |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

O uso do `.notdef` glyph é proibido. O `.notdef` glyph aparecerá se um documento contiver caracteres que não estão presentes na fonte selecionada e que também não podem ser resolvidos através do mecanismo Font Fallback.

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expanda para ver detalhes):</summary>
    <p></p>
    <p>Um documento em conformidade não deve conter uma referência ao .notdef glyph de qualquer operador de exibição de texto, independentemente do modo de renderização de texto, em qualquer fluxo de conteúdo.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (exatamente as mesmas citações em duas especificações)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Neste bloco você pode ver exemplos: como remover ou substituir esses caracteres (expanda para ver detalhes).</summary>
    <p></p>
    <p>Os usuários devem remover ou substituir estes caracteres no documento Word de origem:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Ou o documento PDF de saída usando a ferramenta "Editar PDF":</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Área de Uso Privado (PUA)

|  Níveis de conformidade padrão de PDF em Aspose.Words |  Presença de exigência |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

Os caracteres da área de uso privado (PUA) aparecem principalmente para fontes simbólicas Windows como "Symbol", "Wingdings", "Webdings" e outras. Os formatos Microsoft Word não oferecem uma opção para armazenar texto real para caracteres.

{{% alert color="secondary" %}}
<details>
    <summary>A especificação nos diz o seguinte (expanda para ver detalhes):</summary>
    <p></p>
    <p>Apenas para conformidade com o Nível A, para qualquer caractere ... que seja mapeado para um código ou códigos na Área de Uso Privado Unicode (PUA), uma entrada ActualText ... deve estar presente para este caractere ou uma sequência de caracteres dos quais tal um personagem é uma parte.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol" é uma fonte Windows Unicode que pode ser usada como alternativa às fontes simbólicas.

{{% alert color="secondary" %}}
<details>
    <summary>Neste bloco você pode ver exemplos: o que o usuário deve fazer para resolver o problema com fontes simbólicas (expandir para ver detalhes).</summary>
    <p></p>
    <p>Substitua a fonte simbólica por uma Unicode no documento Word de origem:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>Ou adicione uma entrada ActualText aos caracteres problemáticos no documento PDF de saída:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
