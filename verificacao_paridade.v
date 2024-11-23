module VerificacaoParidade(
    input [5:0] entrada, // 6 bits: 5 bits do caractere + 1 bit de paridade
    output reg erro      // 1 para válido, 0 para erro de paridade
);
    // Declarar a variável soma fora do bloco
    integer soma;

    always @(*) begin
        soma = entrada[5] + entrada[4] + entrada[3] + entrada[2] + entrada[1]; // Soma dos 5 bits
        erro = (soma % 2 == entrada[0]) ? 1 : 0; // Verifica se a soma dos "1s" é par (válido)
    end
endmodule