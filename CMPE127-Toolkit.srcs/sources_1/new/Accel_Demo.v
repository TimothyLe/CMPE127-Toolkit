`timescale 1ns / 1ps
`default_nettype none

`define VALUE_BIT_WIDTH  		 32
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 02/11/2018 05:02:44 PM
// Design Name:
// Module Name: VGA
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////

// SPI clock speeds 1MHz to 8MHz
// 12 pF loading
// ADXL is a slave on SPI bus
// MISO is high impedance state by bus keeper, except when reading data
// CPHA = 0, CPOL = 0
// 0x0A: write register
// 0x0B: read register
// 0x0D: read FIFO
// How to read/write
// CS down, command byte, address byte, data bytes for multibyte transfer, CS up

module Accel_Demo(
	// Interrupt One
	input wire int1,
	// Interrupt Two
	input wire int2,
	// Master Out Slave in
	output wire mosi,
	// Master In Slave Out
	input wire miso,
	// Slave Select Active Low
	output wire cs,
	// Serial clock 
	output wire sclk
);

//// These wires are used to demonstrate values changing on screen
wire [`VALUE_BIT_WIDTH-1:0] debug_value_0;
wire [`VALUE_BIT_WIDTH-1:0] debug_value_1;
wire [`VALUE_BIT_WIDTH-1:0] debug_value_2;
wire [`VALUE_BIT_WIDTH-1:0] debug_value_3;
wire [`VALUE_BIT_WIDTH-1:0] debug_value_4;
wire [`VALUE_BIT_WIDTH-1:0] debug_value_5;
wire [`VALUE_BIT_WIDTH-1:0] debug_value_6;
wire [`VALUE_BIT_WIDTH-1:0] debug_value_7;
wire [`VALUE_BIT_WIDTH-1:0] debug_value_8;
wire [`VALUE_BIT_WIDTH-1:0] debug_value_9;

endmodule 

flex_spi(.ss(),
		 .sck(),
		 .mosi(),
		 .miso(),
		 .clk(),
		 .rst(),
		 .en(),
		 .oe(),
		 .we(),
		 .cpol(),
		 .cpha(),
		 .xfer_len(),
		 .busy(),
		 .done(),
		 .data(),
		 // All wires
		 // All regs
		 )