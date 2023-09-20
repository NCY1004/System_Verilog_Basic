verdiSetPrefEnv -bUndockNewCreatedWindow "on"
simSetSimulator "-vcssv" -exec \
           "/home/stone/System_Verilog_Study/5_Interface/3_Logic_wire_reg/simv" \
           -args
debImport "-dbdir" \
          "/home/stone/System_Verilog_Study/5_Interface/3_Logic_wire_reg/simv.daidir"
debLoadSimResult \
           /home/stone/System_Verilog_Study/5_Interface/3_Logic_wire_reg/novas.fsdb
wvCreateWindow
wvResizeWindow -win $_nWave2 62 229 960 332
srcHBDrag -win $_nTrace1
wvRenameGroup -win $_nWave2 {G1} {dut}
wvAddSignal -win $_nWave2 "/tb/dut/a\[3:0\]" "/tb/dut/b\[3:0\]" \
           "/tb/dut/sum\[4:0\]"
wvSetPosition -win $_nWave2 {("dut" 0)}
wvSetPosition -win $_nWave2 {("dut" 3)}
wvSetPosition -win $_nWave2 {("dut" 3)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvTpfCloseForm -win $_nWave2
wvGetSignalClose -win $_nWave2
wvCloseWindow -win $_nWave2
debExit
