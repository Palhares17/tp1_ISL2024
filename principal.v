`include "verificacao_paridade.v"
`include "mapeamento_display.v"

module Principal(
    input [5:0] entrada,  // Entrada de 6 bits: 5 bits do caractere + 1 bit de paridade
    output [6:0] display  // Saída do display de 7 segmentos
);
    wire erro; // Sinal de erro de paridade

    // Instanciando o módulo de verificação de paridade
    VerificacaoParidade verificador(
        .entrada(entrada),
        .erro(erro)
    );

    // Instanciando o módulo de mapeamento para o display
    MapeamentoDisplay mapeador(
        .caractere(entrada[5:1]),
        .erro(erro),
        .display(display)
    );
endmodule