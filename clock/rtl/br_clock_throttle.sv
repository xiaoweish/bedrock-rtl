// Copyright 2025 The Bedrock-RTL Authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Bedrock-RTL Clock Throttle
//
// Throttles a clock signal by swallowing pulses. An external trigger is used to
// control the throttling, and can be either synchronous or asynchronous to the
// input clock. The skip_value is used to control the number of clock cycles to
// skip with a trigger event occurs.

`include "br_asserts_internal.svh"
`include "br_registers.svh"

module br_clock_throttle #(
    parameter int CntrWidth   = 2,  // must be at least 2
    parameter bit SyncTrigger = 1   // 0 for async trigger, 1 for sync trigger
) (
    // Input clock
    input logic clk,
    // Synchronous active-high reset
    input logic rst,

    // Output clock
    output logic clk_out,

    // External trigger
    input logic trigger,

    // Throttle control
    input logic throttle_en,
    input logic [CntrWidth-1:0] skip_value
);

  localparam int CntrMaxValue = (2 ** CntrWidth) - 1;

  //------------------------------------------
  // Integration checks
  //------------------------------------------
  `BR_ASSERT_STATIC(cntr_width_must_be_at_least_2_a, CntrWidth >= 2)
  `BR_ASSERT_STATIC(sync_trigger_must_be_0_or_1_a, (SyncTrigger == 0) || (SyncTrigger == 1))

  //------------------------------------------
  // Implementation
  //------------------------------------------

  logic sync_trigger;
  logic cntr_en, cntr_en_set, cntr_en_clr;
  logic clk_en;
  logic [CntrWidth-1:0] cntr_value;
  logic cntr_reinit;

  // Configurable synchronization of trigger signal
  if (SyncTrigger) begin : gen_sync_trigger
    assign sync_trigger = trigger;
  end else begin : gen_async_trigger
    br_gate_cdc_sync br_gate_cdc_sync_trigger (
        .clk,
        .in (trigger),
        .out(sync_trigger)
    );
  end

  // Start the counter when throttle is enabled and trigger is asserted. It should keep running
  // until the counter reaches the max value and then we can check to see if the trigger is still
  // asserted. If the trigger is not deasserted, the counter will contine to run. It will wrap
  // around to 0 and start again.
  `BR_REG(cntr_en, cntr_en_set | (cntr_en && !cntr_en_clr))
  assign cntr_en_set = throttle_en && sync_trigger;
  assign cntr_en_clr = (cntr_value == CntrMaxValue) && (!throttle_en || !sync_trigger);

  // Reset the counter to 0 when the counter is first enabled. Once it's running, it will wrap
  // around to 0 after hitting the max value.
  assign cntr_reinit = !cntr_en && cntr_en_set;

  // Counter instance
  br_counter_incr #(
      .MaxValue(CntrMaxValue),
      .MaxIncrement(1)
  ) br_counter_incr (
      .clk,
      .rst,
      .reinit(cntr_reinit),
      .initial_value({CntrWidth{1'b0}}),
      .incr_valid(cntr_en),
      .incr(1'b1),
      .value(cntr_value),
      .value_next()
  );

  // Output clock is enabled on any of the following conditions:
  // * Throttle is disabled
  // * Trigger is not asserted
  // * Counter value is greater than or equal to skip_value
  assign clk_en = !throttle_en || !cntr_en || (cntr_value >= skip_value);

  // Clock gate
  br_gate_icg_rst br_gate_icg_rst (
      .clk,
      .en(clk_en),
      .rst,
      .clk_out
  );

endmodule
