// Archivo: tb_display.sv
module tb_display;

    // Señales
    logic [3:0] binary_code;
    logic [6:0] display_code;

    // Instanciación del módulo display
    display uut (
        .binary_code(binary_code),
        .display_code(display_code)
    );

    // Inicialización y estímulos
    initial begin
        // Aplicar todos los valores binarios posibles
        binary_code = 4'b0000; #10; $display("Binary: %b, Display: %b", binary_code, display_code);
        binary_code = 4'b0001; #10; $display("Binary: %b, Display: %b", binary_code, display_code);
        binary_code = 4'b0010; #10; $display("Binary: %b, Display: %b", binary_code, display_code);
        binary_code = 4'b0011; #10; $display("Binary: %b, Display: %b", binary_code, display_code);
        binary_code = 4'b0100; #10; $display("Binary: %b, Display: %b", binary_code, display_code);
        binary_code = 4'b0101; #10; $display("Binary: %b, Display: %b", binary_code, display_code);
        binary_code = 4'b0110; #10; $display("Binary: %b, Display: %b", binary_code, display_code);
        binary_code = 4'b0111; #10; $display("Binary: %b, Display: %b", binary_code, display_code);
        binary_code = 4'b1000; #10; $display("Binary: %b, Display: %b", binary_code, display_code);
        binary_code = 4'b1001; #10; $display("Binary: %b, Display: %b", binary_code, display_code);

        // Terminar la simulación
        $finish;
    end

    // Dump de las señales a un archivo VCD
    initial begin
        $dumpfile("display_simulation.vcd"); // Nombre del archivo VCD
        $dumpvars(0, tb_display); // Dump de todas las señales del testbench
    end

endmodule