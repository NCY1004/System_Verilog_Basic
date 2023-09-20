simSetSimulator "-vcssv" -exec \
           "/home/stone/System_Verilog_Study/5_Interface/11_Tweaking_monitor_scoreboard/simv" \
           -args
debImport "-dbdir" \
          "/home/stone/System_Verilog_Study/5_Interface/11_Tweaking_monitor_scoreboard/simv.daidir"
debLoadSimResult \
           /home/stone/System_Verilog_Study/5_Interface/11_Tweaking_monitor_scoreboard/novas.fsdb
wvCreateWindow
wvResizeWindow -win $_nWave2 806 241 960 332
srcHBDrag -win $_nTrace1
wvRenameGroup -win $_nWave2 {G1} {tb}
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
srcHBDrag -win $_nTrace1
wvSetPosition -win $_nWave2 {("tb" 0)}
wvSetPosition -win $_nWave2 {("tb/aif(add_if)" 0)}
wvSetPosition -win $_nWave2 {("tb" 0)}
wvSetPosition -win $_nWave2 {("tb/aif(add_if)" 4)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvRenameGroup -win $_nWave2 {G2} {dut}
wvAddSignal -win $_nWave2 "/tb/dut/a\[3:0\]" "/tb/dut/b\[3:0\]" \
           "/tb/dut/sum\[4:0\]" "/tb/dut/clk"
wvSetPosition -win $_nWave2 {("dut" 0)}
wvSetPosition -win $_nWave2 {("dut" 4)}
wvSetPosition -win $_nWave2 {("dut" 4)}
wvSetCursor -win $_nWave2 23.010663 -snap {("G3" 0)}
wvResizeWindow -win $_nWave2 1249 682 1293 695
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
wvResizeWindow -win $_nWave2 1249 692 1293 685
wvTpfCloseForm -win $_nWave2
wvGetSignalClose -win $_nWave2
wvCloseWindow -win $_nWave2
debExit
