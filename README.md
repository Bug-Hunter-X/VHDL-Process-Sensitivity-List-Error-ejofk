# VHDL Process Sensitivity List Error

This repository demonstrates a subtle but important error in VHDL related to process sensitivity lists.  The `bad_process.vhdl` file contains a process that only responds to the `clk` signal in its sensitivity list. This works fine for synchronous designs, but can cause issues with asynchronous signals. 

The `fixed_process.vhdl` illustrates how to correct this error.  This example correctly handles asynchronous input signals and ensures reliable data transfer. 

## Problem

The original process only includes `clk` in its sensitivity list.  If `data_in` changes asynchronously (not on a clock edge), the process won't update `data_out` until the next rising edge of `clk`.  This leads to unpredictable behavior and potential glitches.

## Solution

The solution involves adding `data_in` to the sensitivity list. This ensures that the process is triggered whenever `data_in` changes, regardless of the clock. This is crucial for handling asynchronous input signals correctly.

## Learning Points

This example highlights the importance of carefully considering the sensitivity list when designing VHDL processes.  An incorrect sensitivity list can lead to subtle and hard-to-debug errors.  Always include all signals that can affect the process's output in the sensitivity list, even those that appear to be controlled by external timing.