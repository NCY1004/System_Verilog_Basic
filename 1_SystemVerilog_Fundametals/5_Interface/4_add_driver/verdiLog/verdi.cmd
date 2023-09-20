verdiSetPrefEnv -bUndockNewCreatedWindow "on"
simSetSimulator "-vcssv" -exec \
           "/home/stone/System_Verilog_Study/5_Interface/4_add_driver/simv" \
           -args "+ntb_random_seed=1"
debImport "-dbdir" \
          "/home/stone/System_Verilog_Study/5_Interface/4_add_driver/simv.daidir"
debLoadSimResult \
           /home/stone/System_Verilog_Study/5_Interface/4_add_driver/novas.fsdb
wvCreateWindow
wvResizeWindow -win $_nWave2 62 229 960 332
srcHBDrag -win $_nTrace1
wvRenameGroup -win $_nWave2 {G1} {dut}
wvAddSignal -win $_nWave2 "/tb/dut/a\[3:0\]" "/tb/dut/b\[3:0\]" \
           "/tb/dut/sum\[4:0\]" "/tb/dut/clk"
wvSetPosition -win $_nWave2 {("dut" 0)}
wvSetPosition -win $_nWave2 {("dut" 4)}
wvSetPosition -win $_nWave2 {("dut" 4)}
srcHBSelect "tb.aif" -win $_nTrace1
srcHBDrag -win $_nTrace1
wvSetPosition -win $_nWave2 {("dut" 0)}
wvSetPosition -win $_nWave2 {("dut" 2)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvRenameGroup -win $_nWave2 {G2} {tb}
wvSetPosition -win $_nWave2 {("tb" 0)}
wvSetPosition -win $_nWave2 {("tb/aif(add_if)" 0)}
wvAddSubGroup -win $_nWave2 -holdpost {aif(add_if)}
wvAddSignal -win $_nWave2 "/tb/aif/a\[3:0\]" "/tb/aif/b\[3:0\]" \
           "/tb/aif/sum\[4:0\]" "/tb/aif/clk"
wvSetPosition -win $_nWave2 {("tb/aif(add_if)" 0)}
wvSetPosition -win $_nWave2 {("tb/aif(add_if)" 4)}
wvSetPosition -win $_nWave2 {("tb/aif(add_if)" 4)}
wvSetPosition -win $_nWave2 {("tb" 0)}
wvSetPosition -win $_nWave2 {("tb/aif(add_if)" 4)}
wvSetWindowTimeUnit -win $_nWave2 1.000000 ns
wvResizeWindow -win $_nWave2 889 400 960 592
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
wvSetCursor -win $_nWave2 41.371912 -snap {("dut" 3)}
wvTpfCloseForm -win $_nWave2
wvGetSignalClose -win $_nWave2
wvCloseWindow -win $_nWave2
