simSetSimulator "-vcssv" -exec \
           "/home/stone/System_Verilog_Study/5_Interface/7_Add_generator_pt2/simv" \
           -args
debImport "-dbdir" \
          "/home/stone/System_Verilog_Study/5_Interface/7_Add_generator_pt2/simv.daidir"
debLoadSimResult \
           /home/stone/System_Verilog_Study/5_Interface/7_Add_generator_pt2/novas.fsdb
wvCreateWindow
wvResizeWindow -win $_nWave2 464 325 1239 599
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
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("tb" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvRenameGroup -win $_nWave2 {G2} {dut}
wvAddSignal -win $_nWave2 "/tb/dut/a\[3:0\]" "/tb/dut/b\[3:0\]" \
           "/tb/dut/sum\[4:0\]" "/tb/dut/clk"
wvSetPosition -win $_nWave2 {("dut" 0)}
wvSetPosition -win $_nWave2 {("dut" 4)}
wvSetPosition -win $_nWave2 {("dut" 4)}
wvResizeWindow -win $_nWave2 972 429 1239 537
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
wvZoomOut -win $_nWawvTpfCloseForm -win $_nWave2
wvGetSignalClose -win $_nWave2
wvCloseWindow -win $_nWave2
debExit
ve2
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
wvSelectSignal -win $_nWave2 {( "dut" 2 )} 
wvResizeWindow -win $_nWave2 1275 691 1239 654
wvSetCursor -win $_nWave2 959.885496 -snap {("G3" 0)}
wvSetCursor -win $_nWave2 366.221374 -snap {("aif(add_if)" 3)}
wvTpfCloseForm -win $_nWave2
wvGetSignalClose -win $_nWave2
wvCloseWindow -win $_nWave2
debExit
