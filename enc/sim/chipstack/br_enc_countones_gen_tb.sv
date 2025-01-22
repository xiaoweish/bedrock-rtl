//=============================================================
// Testbench for Module: br_enc_countones
//=============================================================
// Author: ChipStack AI
// Date: 2025-01-20 18:25:27
// Description: Unit test for br_enc_countones
//=============================================================

module tb;
  timeunit 1ns;
  timeprecision 100ps;

  //===========================================================
  // Testbench Parameters
  //===========================================================
  
  
  parameter TIMEOUT = 10000000;          // Timeout value in ns
  parameter PER_TASK_TIMEOUT = 1000000; // Timeout value for each task in ns
  parameter DRAIN_TIME = 10000;        // Time to observe all results in ns
  
  
  parameter DISABLE_CHECKS = 0;  // Disable checks
  
  //===========================================================
  // DUT Imports and Includes
  //===========================================================
  
  `include "br_asserts_internal.svh"
    
  //===========================================================
  // DUT Parameters
  //===========================================================
  parameter int Width = 10;
  localparam int CountWidth = $clog2((Width + 1));

  //===========================================================
  // Other Signals and Variables
  //===========================================================
  logic[Width-1:0] in;
  logic[CountWidth-1:0] count;

  //===========================================================
  // DUT Instantiation
  //===========================================================
  br_enc_countones 
      #(
          .Width(Width)
      )  dut (
          .in(in),
          .count(count)
      );
      
  //===========================================================
  // Helper testbench variables
  //===========================================================
  int test_failed = -1;
          
  //===========================================================
  // Timeout Control
  //===========================================================
  initial begin
      
      #(TIMEOUT);
      $display("Error: Testbench timeout!");
      $finish;
  end
  
  //===========================================================
  // Initial Block to Call Tasks
  //===========================================================
  initial begin
      test_CountOnesInInputVector();
  
    $finish;
  end

  
  task automatic test_CountOnesInInputVector;
    fork
      begin
        #(PER_TASK_TIMEOUT);
        $display("Time: %0t, INFO: Timeout: test_CountOnesInInputVector. Stimuli is not observed or it needs more time to finish this test.", $time);
      end
      begin
          // Purpose: Verify the functionality of counting the number of '1's in the input vector `in`.
          
          // Local variables declaration
          int i;
          int test_failed = -1;
          logic [Width-1:0] test_input;
          logic [CountWidth-1:0] expected_count;
          logic [CountWidth-1:0] observed_count;
          
          // Test with various input vectors
          // Test case 1: All bits '0'
          test_input = '0;
          expected_count = 0;
          in = test_input;
          #1; // Allow time for the DUT to process the input
          observed_count = count;
          if (observed_count !== expected_count) begin
            $display("Time: %0t, ERROR: test_CountOnesInInputVector - Check failed. Expected %0d, got %0d", $time, expected_count, observed_count);
            test_failed = 1;
          end else begin
            $display("Time: %0t, INFO: test_CountOnesInInputVector - Check passed. Expected value for count is the same as the observed value (both are %0d).", $time, observed_count);
            if (test_failed != 1)
              test_failed = 0;
          end
          
          // Test case 2: All bits '1'
          test_input = '1;
          expected_count = Width;
          in = test_input;
          #1;
          observed_count = count;
          if (observed_count !== expected_count) begin
            $display("Time: %0t, ERROR: test_CountOnesInInputVector - Check failed. Expected %0d, got %0d", $time, expected_count, observed_count);
            test_failed = 1;
          end else begin
            $display("Time: %0t, INFO: test_CountOnesInInputVector - Check passed. Expected value for count is the same as the observed value (both are %0d).", $time, observed_count);
            if (test_failed != 1)
              test_failed = 0;
          end
          
          // Test case 3: Random input vector
          test_input = $urandom_range(0, (1 << Width) - 1);
          expected_count = 0;
          for (i = 0; i < Width; i++) begin
            expected_count += test_input[i];
          end
          in = test_input;
          #1;
          observed_count = count;
          if (observed_count !== expected_count) begin
            $display("Time: %0t, ERROR: test_CountOnesInInputVector - Check failed. Expected %0d, got %0d", $time, expected_count, observed_count);
            test_failed = 1;
          end else begin
            $display("Time: %0t, INFO: test_CountOnesInInputVector - Check passed. Expected value for count is the same as the observed value (both are %0d).", $time, observed_count);
            if (test_failed != 1)
              test_failed = 0;
          end
          
          // Final test status
          if (test_failed == 0) begin
            $display("Time: %0t, PASSED: test_CountOnesInInputVector", $time);
          end else begin
            $display("Time: %0t, FAILED: test_CountOnesInInputVector", $time);
          end
      end
    join_any
    disable fork;
  endtask
  
endmodule
  
