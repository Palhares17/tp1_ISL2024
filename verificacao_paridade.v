module VerificacaoParidade (
    input [5:0] entrada,         // Entrada de 6 bits
    output reg paridade_valida   // Saída: 1 se a paridade estiver correta, 0 caso contrário
);
    // Declaração da variável fora do bloco always
    integer soma;

    always @(*) begin
        // Conta o número de bits '1' nos 5 primeiros bits
        soma = entrada[4] + entrada[3] + entrada[2] + entrada[1] + entrada[0];
        // Verifica a paridade
        paridade_valida = (soma % 2 == entrada[5]);
    end
endmodule