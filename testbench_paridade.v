`include "verificacao_paridade.v"

module TesteVerificacaoParidade;
    reg [5:0] entrada;
    wire paridade_valida;

    // Instanciando o módulo
    VerificacaoParidade verificador (
        .entrada(entrada),
        .paridade_valida(paridade_valida)
    );

    initial begin
        entrada = 6'b000000;
        #10 // Tempo
        if (paridade_valida == 1) begin
            $display("2: 1101101");
        end else begin
            $display("E: 1111011"); // Erro
        end
        $finish;
    end
endmodule