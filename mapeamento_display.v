module MapeamentoDisplay(
    input [4:0] caractere,
    input erro,            
    output reg [6:0] display // Display de 7 segmentos (a, b, c, d, e, f, g)
);
    always @(*) begin
        if (erro == 0) begin
            display = 7'b1111011; // Representa um "E".
        end else begin
            // Mapeia caracteres válidos, liga quando for 1 e desliga quando for 0
            case (caractere)
                5'b00000: display = 7'b1101101; // "2"
                5'b00001: display = 7'b0111011; // "Y"
                5'b00010: display = 7'b1110011; // "P"
                5'b00011: display = 7'b1111110; // "O"
                5'b00100: display = 7'b0110111; // "X"
                5'b00101: display = 7'b0000110; // "R"
                5'b00110: display = 7'b0111101; // "6"
                5'b00111: display = 7'b0111101; // "D"
                5'b01000: display = 7'b0011100; // "V"
                5'b01001: display = 7'b1101101; // "S";
                5'b01010: display = 7'b0110111; // "K"
                5'b01011: display = 7'b1000111; // "F"
                5'b01100: display = 7'b0011110; // "L"
                5'b01101: display = 7'b1110011; // "Q"
                5'b01110: display = 7'b0111011; // "A"
                5'b01111: display = 7'b0111111; // "8"
                5'b10000: display = 7'b1010100; // "M"
                5'b10001: display = 7'b1001110; // "C"
                5'b10010: display = 7'b1111011; // "G"
                5'b10011: display = 7'b0101010; // "W"
                default: display  = 7'b0000000; // Display apagado para códigos fora do intervalo
            endcase
        end
    end
endmodule