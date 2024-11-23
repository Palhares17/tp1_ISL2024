`include "principal.v"

module Testbench;
    reg [5:0] entrada; // 6 bits: 5 bits do caractere + 1 bit de paridade
    wire [6:0] display; // Saída para o display de 7 segmentos

    // Instanciando o módulo principal
    Principal dut (
        .entrada(entrada),
        .display(display)
    );

    initial begin
        $display("Iniciando Testbench...");
        $monitor("Entrada: %b | Display: %b", entrada, display);

        // Teste 1: Código válido com paridade correta
        entrada = 6'b000000; // Código 00000, paridade correta
        #10;

        // Teste 2: Código válido com erro de paridade
        entrada = 6'b000001; // Código 00000, paridade errada
        #10;

        // Teste 3: Código inválido (fora do intervalo)
        entrada = 6'b111111; // Fora do intervalo, paridade correta
        #10;

        // Teste 4: Código válido no limite superior
        entrada = 6'b100110; // Código 10011, paridade correta
        #10;

        // Teste 5: Outro erro de paridade
        entrada = 6'b010110; // Código 01011, paridade errada
        #10;

        // Finalizando o teste
        $finish;
    end
endmodule