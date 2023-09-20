simSetSimulator "-vcssv" -exec \
           "/home/stone/System_Verilog_Study/5_Interface/2_blocking_operator/simv" \
           -args "+ntb_random_seed=1"
debImport "-dbdir" \
          "/home/stone/System_Verilog_Study/5_Interface/2_blocking_operator/simv.daidir"
debLoadSimResult \
           /home/stone/System_Verilog_Study/5_Interface/2_blocking_operator/novas.fsdb
wvCreateWindow
wvResizeWindow -win $_nWave2 689 364 1211 539
srcHBDrag -win $_nTrace1
wvRenameGroup -win $_nWave2 {G1} {dut}
wvAddSignal -win $_nWave2 "/tb/dut/a\[3:0\]" "/tb/dut/b\[3:0\]" \
           "/tb/dut/sum\[4:0\]" "/tb/dut/clk"
wvSetPosition -win $_nWave2 {("dut" 0)}
wvSetPosition -win $_nWave2 {("dut" 4)}
wvSetPosition -win $_nWave2 {("dut" 4)}
wvSetCursor -win $_nWave2 42.875490 -snap {("G2" 0)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 524.803922 -snap {("G2" 0)}
wvResizeWindow -win $_nWave2 62 19 1848 1016
wvResizeWindow -win $_nWave2 682 477 1211 539
srcHBDrag -win $_nTrace1
srcHBSelect "tb" -win $_nTrace1
srcHBDrag -win $_nTrace1
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
wvZoomAll -win $_nWave2
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
wvSelectSignal -win $_nWave2 {( "dut" 4 )} 
wvSetPosition -win $_nWave2 {("dut" 4)}
wvSetPosition -win $_nWave2 {("dut" 3)}
wvSetPosition -win $_nWave2 {("dut" 2)}
wvSetPosition -win $_nWave2 {("dut" 1)}
wvSetPosition -win $_nWave2 {("dut" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("dut" 0)}
wvSetPosition -win $_nWave2 {("dut" 1)}
wvSelectSignal -win $_nWave2 {( "tb/aif(add_if)" 4 )} 
wvSetPosition -win $_nWave2 {("tb/aif(add_if)" 4)}
wvSetPosition -win $_nWave2 {("tb/aif(add_if)" 3)}
wvSetPosition -win $_nWave2 {("tb/aif(add_if)" 2)}
wvSetPosition -win $_nWave2 {("tb/aif(add_if)" 1)}
wvSetPosition -win $_nWave2 {("tb/aif(add_if)" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("tb/aif(add_if)" 0)}
wvSetPosition -win $_nWave2 {("tb/aif(add_if)" 1)}
wvSelectGroup -win $_nWave2 {tb/aif(add_if)}
wvSelectGroup -win $_nWave2 {tb}
wvSetPosition -win $_nWave2 {("tb" 0)}
wvSetPosition -win $_nWave2 {("dut" 4)}
wvSetPosition -win $_nWave2 {("dut" 3)}
wvSetPosition -win $_nWave2 {("dut" 2)}
wvSetPosition -win $_nWave2 {("dut" 1)}
wvSetPosition -win $_nWave2 {("dut" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("dut" 0)}
wvSetPosition -win $_nWave2 {("dut/tb" 0)}
wvSetPosition -win $_nWave2 {("dut/tb/aif(add_if)" 0)}
wvSetPosition -win $_nWave2 {("dut/tb/aif(add_if)" 1)}
wvSetPosition -win $_nWave2 {("dut/tb/aif(add_if)" 2)}
wvSetPosition -win $_nWave2 {("dut/tb/aif(add_if)" 3)}
wvSetPosition -win $_nWave2 {("dut/tb/aif(add_if)" 4)}
wvMoveSelected -win $_nWave2
wvSelectSignal -win $_nWave2 {( "dut/tb/aif(add_if)" 4 )} 
wvSelectGroup -win $_nWave2 {dut/tb}
wvSetPosition -win $_nWave2 {("dut/tb" 0)}
wvCollapseGroup -win $_nWave2 "dut/tb"
wvExpandGroup -win $_nWave2 "dut/tb"
wvSelectGroup -win $_nWave2 {dut/tb}
wvExpandGroup -win $_nWave2 "dut/tb"
wvCollapseGroup -win $_nWave2 "dut/tb"
wvSelectGroup -win $_nWave2 {dut/tb}
wvExpandGroup -win $_nWave2 "dut/tb"
wvCollapseGroup -win $_nWave2 "dut/tb"
wvSelectGroup -win $_nWave2 {dut/tb}
wvExpandGroup -win $_nWave2 "dut/tb"
wvCollapseGroup -win $_nWave2 "dut/tb"
wvSelectGroup -win $_nWave2 {dut/tb}
wvExpandGroup -win $_nWave2 "dut/tb"
wvCollapseGroup -win $_nWave2 "dut/tb"
wvSelectGroup -win $_nWave2 {dut/tb}
wvExpandGroup -win $_nWave2 "dut/tb"
wvCollapseGroup -win $_nWave2 "dut/tb"
wvSelectGroup -win $_nWave2 {dut/tb}
wvSelectGroup -win $_nWave2 {dut/tb}
wvSelectGroup -win $_nWave2 {dut/tb}
wvSelectGroup -win $_nWave2 {dut/tb}
wvMoveSelected -win $_nWave2
wvSelectGroup -win $_nWave2 {dut/tb/aif(add_if)}
wvSelectGroup -win $_nWave2 {dut/tb/aif(add_if)}
wvSelectGroup -win $_nWave2 {dut/tb/aif(add_if)}
wvSelectGroup -win $_nWave2 {dut/tb/aif(add_if)}
wvSelectSignal -win $_nWave2 {( "dut/tb/aif(add_if)" 1 )} 
wvSelectGroup -win $_nWave2 {G3}
wvSetCursor -win $_nWave2 51.490196 -snap {("G3" 0)}
wvTpfCloseForm -win $_nWave2
wvGetSignalClose -win $_nWave2
wvCloseWindow -win $_nWave2
srcHBSelect "tb" -win $_nTrace1
wvCreateWindow
wvResizeWindow -win $_nWave3 62 206 960 332
srcHBAddObjectToWave -clipboard
wvDrop -win $_nWave3
wvResizeWindow -win $_nWave3 62 206 1261 635
srcHBSelect "tb.dut" -win $_nTrace1
srcHBDrag -win $_nTrace1
wvSetPosition -win $_nWave3 {("G2" 0)}
wvRenameGroup -win $_nWave3 {G2} {dut}
wvAddSignal -win $_nWave3 "/tb/dut/a\[3:0\]" "/tb/dut/b\[3:0\]" \
           "/tb/dut/sum\[4:0\]" "/tb/dut/clk"
wvSetPosition -win $_nWave3 {("dut" 0)}
wvSetPosition -win $_nWave3 {("dut" 4)}
wvSetPosition -win $_nWave3 {("dut" 4)}
srcHBSelect "tb.aif" -win $_nTrace1
srcHBDrag -win $_nTrace1
wvSetPosition -win $_nWave3 {("dut" 0)}
wvSetPosition -win $_nWave3 {("dut" 2)}
wvSetPosition -win $_nWave3 {("dut" 3)}
wvSetPosition -win $_nWave3 {("dut" 4)}
wvSetPosition -win $_nWave3 {("G3" 0)}
wvSetPosition -win $_nWave3 {("dut" 0)}
wvSetPosition -win $_nWave3 {("G3" 0)}
wvRenameGroup -win $_nWave3 {G3} {aif(add_if)}
wvAddSignal -win $_nWave3 "/tb/aif/a\[3:0\]" "/tb/aif/b\[3:0\]" \
           "/tb/aif/sum\[4:0\]" "/tb/aif/clk"
wvSetPosition -win $_nWave3 {("aif(add_if)" 0)}
wvSetPosition -win $_nWave3 {("aif(add_if)" 4)}
wvSetPosition -win $_nWave3 {("aif(add_if)" 4)}
wvSetPosition -win $_nWave3 {("G4" 0)}
wvSetCursor -win $_nWave3 1.044691 -snap {("G4" 0)}
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvSetCursor -win $_nWave3 141.588785 -snap {("dut" 0)}
wvSelectGroup -win $_nWave3 {aif(add_if)}
wvSelectSignal -win $_nWave3 {( "aif(add_if)" 2 )} 
wvSelectSignal -win $_nWave3 {( "aif(add_if)" 1 )} 
wvSelectSignal -win $_nWave3 {( "aif(add_if)" 1 2 3 4 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G4" 0)}
wvSelectGroup -win $_nWave3 {G4}
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("aif(add_if)" 0)}
wvSelectGroup -win $_nWave3 {aif(add_if)}
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("dut" 4)}
wvSetPosition -win $_nWave3 {("dut" 4)}
wvSelectGroup -win $_nWave3 {G3}
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("dut" 4)}
wvSetPosition -win $_nWave3 {("dut" 4)}
wvSelectGroup -win $_nWave3 {G3}
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("dut" 4)}
wvSetPosition -win $_nWave3 {("dut" 4)}
wvSetCursor -win $_nWave3 225.598131 -snap {("G3" 0)}
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvResizeWindow -win $_nWave3 555 630 1261 390
wvSetCursor -win $_nWave3 621.102804 -snap {("dut" 3)}
wvTpfCloseForm -win $_nWave3
wvGetSignalClose -win $_nWave3
wvCloseWindow -win $_nWave3
debExit
