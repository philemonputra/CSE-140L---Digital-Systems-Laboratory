// 2:1 mux (selector) of N-wide buses
// CSE140L
module mux2 #(parameter WIDTH = 8)
 (input        [WIDTH-1:0] d0, d1, 
  input                    s, 
  output logic [WIDTH-1:0] y);
// fill in guts
// combinational (unclocked) logic -- use =, not <=
// always_comb if(...) y = ...;
// s   y
// 0   d0	y[7:0] = d0[7:0]
// 1   d1	y[7:0] = d1[7:0]
always_comb begin
	case({s})
		1'b0: y = d0;
		1'b1: y = d1;
	endcase
end
endmodule


