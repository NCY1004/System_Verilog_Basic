simSetSimulator "-vcssv" -exec \
           "/home/stone/System_Verilog_Study/5_Interface/1_Interface_simple_rtl/simv" \
           -args "+ntb_random_seed=1"
debImport "-dbdir" \
          "/home/stone/System_Verilog_Study/5_Interface/1_Interface_simple_rtl/simv.daidir"
debLoadSimResult \
           /home/stone/System_Verilog_Study/5_Interface/1_Interface_simple_rtl/novas.fsdb
wvCreateWindow
wvResizeWindow -win $_nWave2 586 404 1118 431
srcHBDrag -win $_nTrace1
wvRenameGroup -win $_nWave2 {G1} {dut}
wvAddSignal -win $_nWave2 "/tb/dut/a\[3:0\]" "/tb/dut/b\[3:0\]" \
           "/tb/dut/sum\[4:0\]"
wvSetPosition -win $_nWave2 {("dut" 0)}
wvSetPosition -win $_nWave2 {("dut" 3)}
wvSetPosition -win $_nWave2 {("dut" 3)}
wvResizeWindow -win $_nWave2 62 19 1642 852
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
wvZoomOut -win $_nWave2
wvTpfCloseForm -win $_nWave2
wvGetSignalClose -win $_nWave2
wvCloseWindow -win $_nWave2
debExit
