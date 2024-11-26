// Copyright 2024 The Bedrock-RTL Authors
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

// Bedrock-RTL Flow-Controlled Arbiter (Round-Robin)
//
// Grants a single request at a time with round-robin priority
// where the lowest index flow initializes with the highest priority.
// Uses ready-valid flow control for flows (push)
// and the grant (pop).
//
// 0-cycle latency, but clock and reset are still needed to manage
// the internal arbiter priority state.
//
// TODO(mgottscho): Write spec

`include "br_registers.svh"
`include "br_asserts_internal.svh"

module br_flow_arb_rr #(
    // Must be at least 2
    parameter int NumFlows = 2
) (
    input logic clk,
    input logic rst,
    output logic [NumFlows-1:0] push_ready,
    input logic [NumFlows-1:0] push_valid,
    input logic pop_ready,
    output logic pop_valid
);

  //------------------------------------------
  // Integration checks
  //------------------------------------------
  // Rely on submodule integration checks

  // TODO(mgottscho): Add more

  //------------------------------------------
  // Implementation
  //------------------------------------------
  logic [NumFlows-1:0] request;
  logic [NumFlows-1:0] can_grant;
  logic [NumFlows-1:0] grant;
  logic enable_priority_update;

  br_arb_rr_internal #(
      .NumRequesters(NumFlows)
  ) br_arb_rr_internal (
      .clk,
      .rst,
      .enable_priority_update,
      .request,
      .can_grant,
      .grant
  );

  br_flow_arb_core #(
      .NumFlows(NumFlows)
  ) br_flow_arb_core (
      .clk,
      .rst,
      .request,
      .can_grant,
      .grant,
      .enable_priority_update,
      .push_ready,
      .push_valid,
      .pop_ready,
      .pop_valid
  );

  //------------------------------------------
  // Implementation checks
  //------------------------------------------
  // Rely on submodule implementation checks

endmodule : br_flow_arb_rr
