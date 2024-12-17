# Copyright 2024 The Bedrock-RTL Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""Bedrock-internal Verilog rules for Bazel."""

load("//bazel:verilog.bzl", "verilog_elab_and_lint_test_suite", "verilog_fpv_test_suite", "verilog_sim_test_suite")

def br_verilog_elab_and_lint_test_suite(name, **kwargs):
    """Wraps three instances of verilog_elab_and_lint_test_suite.

    Not intended to be called by Bedrock users.

    (1) The first instance defines "BR_ASSERT_ON" and uses the provided name.
        This is to test the design is elab/lint clean when it will be integrated into a user's design.
    (2) The second instance defines "BR_ASSERT_ON" and "BR_ENABLE_IMPL_CHECKS".
        This is to test the design is elab/lint clean with all Bedrock-internal assertions enabled.
    (3) The third instance has no defines.
        This is to test the design is elab/lint clean without any assertions.

    Args:
        name (str): The base name of the test suite.
        **kwargs: Additional keyword arguments passed to verilog_elab_and_lint_test_suite. Do not pass defines.
    """

    if "defines" in kwargs:
        fail("Do not pass defines to br_verilog_elab_and_lint_test_suite. They are hard-coded in the macro.")

    verilog_elab_and_lint_test_suite(
        name = name,
        defines = ["BR_ASSERT_ON", "BR_ENABLE_ASSERT_COMB"],
        tags = ["assert"],
        **kwargs
    )

    verilog_elab_and_lint_test_suite(
        name = name + "_allassert",
        defines = ["BR_ASSERT_ON", "BR_ENABLE_ASSERT_COMB", "BR_ENABLE_IMPL_CHECKS"],
        tags = ["allassert"],
        **kwargs
    )

    verilog_elab_and_lint_test_suite(
        name = name + "_noassert",
        defines = [],
        tags = ["noassert"],
        **kwargs
    )

def br_verilog_sim_test_suite(name, tool, opts = [], **kwargs):
    """Wraps verilog_sim_test_suite with Bedrock-internal settings. Not intended to be called by Bedrock users.

    * Defines `BR_ASSERT_ON` and `BR_ENABLE_IMPL_CHECKS`.
    * Sets tool to exit on first assertion failure.

    Args:
        name (str): The base name of the test suite.
        tool (str): The simulator tool to use.
        opts (List[str]): Additional options to pass to the simulator.
        **kwargs: Additional keyword arguments passed to verilog_sim_test_suite. Do not pass defines.
    """

    if "defines" in kwargs:
        fail("Do not pass defines to br_verilog_sim_test_suite. They are hard-coded in the macro.")

    if tool == "vcs":
        opts = opts + ["-assert global_finish_maxfail=1+offending_values"]

    verilog_sim_test_suite(
        name = name,
        tool = tool,
        opts = opts,
        defines = ["BR_ASSERT_ON", "BR_ENABLE_ASSERT_COMB", "BR_ENABLE_IMPL_CHECKS"],
        **kwargs
    )

def br_verilog_fpv_test_suite(name, **kwargs):
    """Wraps verilog_fpv_test_suite with Bedrock-internal settings. Not intended to be called by Bedrock users.

    * Defines `BR_ASSERT_ON`, `BR_ENABLE_IMPL_CHECKS`, `BR_ENABLE_ASSERT_COMB` and `BR_ENABLE_FPV`.

    Args:
        name (str): The base name of the test suite.
        **kwargs: Additional keyword arguments passed to verilog_fpv_test_suite. Do not pass defines.
    """

    if "defines" in kwargs:
        fail("Do not pass defines to br_verilog_fpv_test_suite. They are hard-coded in the macro.")

    verilog_fpv_test_suite(
        name = name,
        defines = ["BR_ASSERT_ON", "BR_ENABLE_IMPL_CHECKS", "BR_ENABLE_ASSERT_COMB", "BR_ENABLE_FPV"],
        **kwargs
    )
